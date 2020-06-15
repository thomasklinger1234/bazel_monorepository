import unittest
import lib

class TestCase(unittest.TestCase):
    def test_welcome_message(self):
        # given
        expected_msg = "welcome to py_app built from bazel!"
        # when
        actual_msg = lib.welcome_message()
        # then
        self.assertEqual(expected_msg, actual_msg)

if __name__ == '__main__':
    unittest.main()
