#include <boost/test/unit_test.hpp>

#include <default_endian_expr_is_be.h>

#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_default_endian_expr_is_be) {
    std::ifstream ifs("src/endian_expr.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    default_endian_expr_is_be_t* r = new default_endian_expr_is_be_t(&ks);

    // LE
    BOOST_CHECK_EQUAL(r->docs()->at(0)->indicator(), "II");
    BOOST_CHECK_EQUAL(r->docs()->at(0)->main()->some_int(), 0x42);
    BOOST_CHECK_EQUAL(r->docs()->at(0)->main()->some_int_be(), 0x42);
    BOOST_CHECK_EQUAL(r->docs()->at(0)->main()->some_int_le(), 0x42);

    BOOST_CHECK_EQUAL(r->docs()->at(0)->main()->inst_int(), 0x42);
    BOOST_CHECK_EQUAL(r->docs()->at(0)->main()->inst_sub()->foo(), 0x42);

    // BE
    BOOST_CHECK_EQUAL(r->docs()->at(1)->indicator(), "MM");
    BOOST_CHECK_EQUAL(r->docs()->at(1)->main()->some_int(), 0x42);
    BOOST_CHECK_EQUAL(r->docs()->at(1)->main()->some_int_be(), 0x42);
    BOOST_CHECK_EQUAL(r->docs()->at(1)->main()->some_int_le(), 0x42);

    BOOST_CHECK_EQUAL(r->docs()->at(1)->main()->inst_int(), 0x42000000);
    BOOST_CHECK_EQUAL(r->docs()->at(1)->main()->inst_sub()->foo(), 0x42000000);

    // Weird => LE
    BOOST_CHECK_EQUAL(r->docs()->at(2)->indicator(), "XX");
    BOOST_CHECK_EQUAL(r->docs()->at(2)->main()->some_int(), 0x42000000);
    BOOST_CHECK_EQUAL(r->docs()->at(2)->main()->some_int_be(), 0x42);
    BOOST_CHECK_EQUAL(r->docs()->at(2)->main()->some_int_le(), 0x42);

    BOOST_CHECK_EQUAL(r->docs()->at(2)->main()->inst_int(), 0x42);
    BOOST_CHECK_EQUAL(r->docs()->at(2)->main()->inst_sub()->foo(), 0x42);

    delete r;
}
