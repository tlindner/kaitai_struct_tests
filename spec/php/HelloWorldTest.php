<?php
// Autogenerated from KST: please remove this line if doing any edits by hand!

namespace Kaitai\Struct\Tests;

class HelloWorldTest extends TestCase {
    public function testHelloWorld() {
        $r = HelloWorld::fromFile(self::SRC_DIR_PATH . '/fixed_struct.bin');

        $this->assertEquals(80, $r->one());
    }
}
