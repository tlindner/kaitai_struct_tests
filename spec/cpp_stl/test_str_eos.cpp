#include <boost/test/unit_test.hpp>

#include <str_eos.h>

#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_str_eos) {
    std::ifstream ifs("src/term_strz.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    str_eos_t* r = new str_eos_t(&ks);

    BOOST_CHECK_EQUAL(r->str(), "foo|bar|baz@");

    delete r;
}