<?php
namespace Kaitai\Struct\Tests;

class ExprIoEofTest extends TestCase {
    public function testExprIoEof() {
        $r = ExprIoEof::fromFile(self::SRC_DIR_PATH . "/fixed_struct.bin");

        $this->assertEquals(1262698832, $r->substream1->one);
        $this->assertNull($r->substream1->two);

        $this->assertEquals(4294914349, $r->substream2->one);
        $this->assertEquals(1262698832, $r->substream2->two);
    }
}