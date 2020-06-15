import unittest
import lib

class TestCase(unittest.TestCase):
    def test_calculate(self):
        expected = 4
        actual = lib.add(2, 2)
        self.assertEqual(expected, actual)

if __name__ == '__main__':
    unittest.main()
