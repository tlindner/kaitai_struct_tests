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
    out.puts("KSStream *ks = [KSStream streamWithURL:dataURL];")
    out.puts(s"self.r = [$className structWithStream:ks];")
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
    val expStr = translateExp(check.expected)
    actType match {
      case _: NumericType | _: BooleanType =>
        out.puts(s"XCTAssertEqual($actStr, $expStr);")
      case _ =>
        out.puts(s"XCTAssertEqualObjects($actStr, ($expStr));")
    }
  }

  def nullAssert(actual: Ast.expr): Unit = {
    val nullCheckStr = actual match {
      case Ast.expr.Attribute(x, Ast.identifier(attrName)) =>
        translateAct(x) + s".$attrName"
    }
    out.puts(s"XCTAssertNil($nullCheckStr);")
  }

  def trueArrayAssert(check: TestAssert, elType: DataType, elts: Seq[Ast.expr]): Unit = {
  	simpleAssert(check)
  }

  override def indentStr: String = "    "

  override def results: String = {
    "// " + AUTOGEN_COMMENT + "\n\n" +
      importList.toList.map((x) => s"#import $x").mkString("", "\n", "\n") +
      out.result
  }

  def translateAct(x: Ast.expr) =
    translator.translate(x).replace(Main.INIT_OBJ_NAME, "_r").replace("self.","")

  def translateExp(x: Ast.expr) =
    translator.translate(x).replace("self._root", "_r._root")
}
