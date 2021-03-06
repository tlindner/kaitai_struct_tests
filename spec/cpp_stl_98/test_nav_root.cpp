// Autogenerated from KST: please remove this line if doing any edits by hand!

#include <boost/test/unit_test.hpp>
#include <nav_root.h>
#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_nav_root) {
    std::ifstream ifs("src/nav.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    nav_root_t* r = new nav_root_t(&ks);

    BOOST_CHECK_EQUAL(r->header()->qty_entries(), 2);
    BOOST_CHECK_EQUAL(r->header()->filename_len(), 8);
    BOOST_CHECK_EQUAL(r->index()->entries()->size(), 2);
    BOOST_CHECK_EQUAL(r->index()->entries()->at(0)->filename(), std::string("FIRST___"));
    BOOST_CHECK_EQUAL(r->index()->entries()->at(1)->filename(), std::string("SECOND__"));

    delete r;
}
