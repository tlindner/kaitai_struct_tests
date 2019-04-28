package io.kaitai.struct.testtranslator.specgenerators

import _root_.io.kaitai.struct.ClassTypeProvider
import _root_.io.kaitai.struct.datatype.DataType
import _root_.io.kaitai.struct.datatype.DataType._
import _root_.io.kaitai.struct.exprlang.Ast
import _root_.io.kaitai.struct.languages.ObjcCompiler
import _root_.io.kaitai.struct.testtranslator.{Main, TestAssert, TestSpec}
import _root_.io.kaitai.struct.translators.ObjcTranslator
import _root_.io.kaitai.struct.{ClassTypeProvider, RuntimeConfig}

class ObjcSG(spec: TestSpec, provider: ClassTypeProvider) extends BaseGenerator(spec) {
  val className = ObjcCompiler.types2class(List(spec.id))
  val translator = new ObjcTranslator(provider, importList)

  override def fileName(name: String): String = s"test_$name.m"

  importList.add("<XCTest/XCTest.h>")
  importList.add("\"" + s"${spec.id}" + ".h\"")

  override def header() = {
    out.puts
    out.puts("@interface " + spec.id + " : XCTestCase")
    out.puts("@property (strong) " + className + " *r;")
    out.puts("@end")
    out.puts
    out.puts("@implementation " + spec.id)
    out.puts
    out.puts("- (void)setUp {")
    out.inc
    out.puts("[super setUp];")
    out.puts("NSURL *dataURL = [NSURL fileURLWithPath:@\"src/" + spec.data + "\"];")
    out.puts("kstream *ks = [kstream streamWithURL:dataURL];")
    out.puts(s"self.r = [$className structWith:ks];")
    out.dec
    out.puts("}")
    out.puts
    out.puts("- (void)tearDown {")
    out.inc
    out.puts("[super tearDown];")
    out.puts("self.r = nil;")
    out.dec
    out.puts("}")
    out.puts
    out.puts("- (void)test_" + spec.id + " {")
    out.inc
  }

  override def footer() = {
    out.dec
    out.puts("}")
    out.puts("@end")
  }

  def simpleAssert(check: TestAssert): Unit = {
    val actType = translator.detectType(check.actual)
    val actStr = translateAct(check.actual)
    val expStr = translator.translate(check.expected)
    actType match {
      case _: NumericType | _: BooleanType =>
        out.puts(s"XCTAssertEqual($actStr, $expStr);")
      case _ =>
        out.puts(s"XCTAssertEqualObjects($actStr, $expStr);")
    }
  }

  def nullAssert(actual: Ast.expr): Unit = {
    val nullCheckStr = actual match {
      case Ast.expr.Attribute(x, Ast.identifier(attrName)) =>
        translateAct(x) + s"->_is_null_$attrName()"
    }
    out.puts(s"BOOST_CHECK($nullCheckStr);")
  }

  def trueArrayAssert(check: TestAssert, elType: DataType, elts: Seq[Ast.expr]): Unit = {
    val elTypeName = "temp"
    val eltsStr = elts.map((x) => translator.translate(x)).mkString(", ")
    val actStr = translateAct(check.actual)
    out.puts(s"COMPARE_ARRAY($elTypeName, $actStr, $eltsStr);")
  }

  override def indentStr: String = "    "

  override def results: String = {
    "// " + AUTOGEN_COMMENT + "\n\n" +
      importList.toList.map((x) => s"#import $x").mkString("", "\n", "\n") +
      out.result
  }

  def translateAct(x: Ast.expr) =
    translator.translate(x).replace(Main.INIT_OBJ_NAME, "_r").replace("self.","")
}
