<?php
// Autogenerated from KST: please remove this line if doing any edits by hand!

namespace Kaitai\Struct\Tests;

class RepeatEosBitTest extends TestCase {
    public function testRepeatEosBit() {
        $r = RepeatEosBit::fromFile(self::SRC_DIR_PATH . '/enum_0.bin');

        $this->assertEquals(16, count($r->nibbles()));
    }
}
