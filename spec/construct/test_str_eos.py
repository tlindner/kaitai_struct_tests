# Autogenerated from KST: please remove this line if doing any edits by hand!

import unittest

from str_eos import _schema

class TestStrEos(unittest.TestCase):
    def test_str_eos(self):
        r = _schema.parse_file('src/term_strz.bin')
        self.assertEqual(r.str, u"foo|bar|baz@")