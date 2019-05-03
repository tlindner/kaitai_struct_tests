cmake_minimum_required(VERSION 2.6)

project(KS_TEST_OBJC)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")

find_package(ZLIB REQUIRED)

set(CMAKE_C_FLAGS "-F/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -ferror-limit=1 -fobjc-arc -fmodules -mmacosx-version-min=10.13 --sysroot=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -arch x86_64")
set(CMAKE_EXE_LINKER_FLAGS  "-rpath /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Frameworks -framework Cocoa -framework XCTest")

set(RUNTIME_SRC_PATH ../../../runtime/objc)
set(PREREQ_PATH prereq)

include(${INC_PATH})

set(PREREQ_SOURCES
	${PREREQ_PATH}/my_custom_fx.m
	${PREREQ_PATH}/custom_fx.m
)

set(RUNTIME_SOURCES
	${RUNTIME_SRC_PATH}/kaitai/kaitaistream.m
)

add_executable (ks_tests
	${RUNTIME_SOURCES}
	${PREREQ_SOURCES}
	${DISPOSABLE_SOURCES}
)

include_directories(
	"${PROJECT_BINARY_DIR}"
	"${KS_PATH}"
	"${RUNTIME_SRC_PATH}"
	"${PREREQ_PATH}"
	"${ZLIB_INCLUDE_DIRS}"
)

# NB: no quotes around variables here, as it messes up new "optimized
# A debug B" syntax which gets generated on Windows platforms
target_link_libraries(ks_tests
	${ZLIB_LIBRARIES}
)

target_compile_definitions(ks_tests PRIVATE -DKS_ZLIB)

add_test(ks_tests ks_tests)

enable_testing()
