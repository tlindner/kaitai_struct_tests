require 'fileutils'
require 'set'

require_relative 'partial_builder'
require_relative 'shellconfig'

class ObjcBuilder < PartialBuilder
  attr_accessor :mode

  def initialize(src_dir, objc_spec_dir, objc_test_out_dir)
    super()

    @src_dir = src_dir
    @objc_spec_dir = objc_spec_dir
    @test_out_dir = objc_test_out_dir

    @obj_dir = "#{@src_dir}/bin"
    @disposable_cmake = "#{@obj_dir}/disposable.cmake"
    @abs_objc_test_out_dir = File.absolute_path(@test_out_dir)
    @test_dir = Dir.pwd

    # Copy any *existing* tests into the spec directory
    list = Dir.glob("#{@objc_spec_dir}/*.m")
    list.each { |x| FileUtils.cp_r("#{@objc_spec_dir}/../ks/out/objc/" + File.basename(x), x) }

   end

  def list_mandatory_files
    list = Dir.glob("#{@objc_spec_dir}/prereq/*.m")
  end

  def list_disposable_files
    # list = Dir.glob("#{@objc_spec_dir}/*.m") + Dir.glob("#{@src_dir}/*.m")
    list = Dir.glob("#{@objc_spec_dir}/*.m")

    # add the format for each test found
    secondaryList = []
    list.each { |x| secondaryList.push("#{@src_dir}/" + File.basename(x)[5..-1]) }
    list = list + secondaryList

    # The format for process_coerce_switch.ksy isn't currently compiling. Will check back later
    list.delete_if { |x| x.end_with? "test_process_coerce_switch.m" }

    list.map { |x|
      r = File.absolute_path(x)
    }
  end

  def create_project(mand_files, disp_files)
    FileUtils.mkdir_p(@obj_dir)
    File.open(@disposable_cmake, 'w') { |f|
      f.puts("set(DISPOSABLE_SOURCES")
      (mand_files + disp_files).each { |l| f.puts(l) }
      f.puts(")")
    }
    @disposable_cmake
  end

  def build_project(log_file)
    log "doing pre-build: cmake"
    e1 = run_cmake("cmake_#{log_file}")
    return e1 if e1 != 0

    log "doing build"
    e2 = run_build(log_file)
    return e2
  end

  def run_cmake(log_file)
    orig_dir = Dir.pwd
    Dir.chdir(@obj_dir)

    cmake_cli = [
      "cmake",
      "-DCMAKE_BUILD_TYPE=Debug",
      "-DINC_PATH=#{File.absolute_path(@disposable_cmake)}",
      "-DKS_PATH=#{File.absolute_path(@src_dir)}",
    ]

    cmake_cli << @objc_spec_dir

    r = run_and_tee({"LC_ALL" => "en_US.UTF-8"}, cmake_cli, log_file).exitstatus
    Dir.chdir(orig_dir)
    r
  end

  def run_build(log_file)
    abs_log_file = File.absolute_path(log_file)

    orig_dir = Dir.pwd
    Dir.chdir(@obj_dir)

    r = run_and_tee(
			{"LC_ALL" => "en_US.UTF-8"},
#			["make", "-j8", "-k"],
			["make", "-k"],
      abs_log_file
    )

    Dir.chdir(orig_dir)
    r
  end

  def parse_failed_build(log_file)
    list = Set.new

    orig_objc_filename = nil
    parse_mode = :normal

    File.open(log_file, 'r') { |f|
      f.each_line { |l|
        l.chomp!
        case l
        when /^In file included from (.+?):(\d+)(:\d+)?:$/
          orig_objc_filename = $1
        when /^(.+?):(\d+):(\d+): error: (.*)$/
          filename = $1
          #row = $2
          #col = $3
          #msg = $4

          # .h files are not members of disposable_files per se,
          # they are always included from some other .m
          # files. Thus, we report error against original .m file,
          # which we've memorized previously.
          if filename =~ /\.h$/
            raise "Found error in #{filename.inspect} file, but no original .m file reference found before" if orig_objc_filename.nil?
            filename = orig_objc_filename
          end

          list << filename
        # Linux ld
        when /^(.+?):(\d+): undefined reference/
          filename = $1
          #row = $2
          list << filename
        # Mac OS X ld
        when /, referenced from:$/
          parse_mode = :osx_ld
        when /^\s*(.*?) in (.*?\.m)\.o$/
          if parse_mode == :osx_ld
            #method = $1
            filename = $2
            list << [:bare, filename]
          end
        end
      }
    }

    list
  end

  def file_to_test(filename)
    # Treat bare files as all others
    if filename.respond_to?(:[]) and filename[0] == :bare
      filename = filename[1]
    end

    # File.basename only forwards with forward slashes, and we might
    # get some backslashes on Windows systems, so we normalize for
    # that first.
    fn = File.basename(filename.gsub(/\\/, '/'))
    if fn =~ /^test_(.*)\.(m|h)$/
      [:spec, luc_to_ucc($1)]
    elsif fn =~ /^(.*)\.(m|h)$/
      [:format, luc_to_ucc($1)]
    else
      [:unknown, fn]
    end
  end

  def run_tests
    xml_log = "#{@abs_objc_test_out_dir}/results.xml"

    ks_tests_bin = "#{@obj_dir}/ks_tests"

    tests_cli = [
      ks_tests_bin,
      xml_log
    ]

    # Actually run the tests
    Dir.chdir(@test_dir)
    run_and_tee({}, tests_cli, "#{@abs_objc_test_out_dir}/test_run.stdout")

    File.exists?(xml_log)
  end

  private
  # Converts `lower_underscore_case` to `UpperCamelCase`
  def luc_to_ucc(s)
    s.split(/_/).map { |word| word.capitalize }.join
  end
end