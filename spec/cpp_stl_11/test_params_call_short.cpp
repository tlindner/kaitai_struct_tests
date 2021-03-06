// Autogenerated from KST: please remove this line if doing any edits by hand!

#include <boost/test/unit_test.hpp>
#include <params_call_short.h>
#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_params_call_short) {
    std::ifstream ifs("src/term_strz.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    params_call_short_t* r = new params_call_short_t(&ks);

    BOOST_CHECK_EQUAL(r->buf1()->body(), std::string("foo|b"));
    BOOST_CHECK_EQUAL(r->buf2()->body(), std::string("ar|ba"));
    BOOST_CHECK_EQUAL(r->buf2()->trailer(), 122);

    delete r;
}
