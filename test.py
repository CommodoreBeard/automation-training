import requests
import unittest

class TestGreeting(unittest.TestCase):

    def test_greeting(self):

        # When
        response = requests.get("http://localhost:5000/greeting")

        # Then
        self.assertEqual(response.status_code, 200)


if __name__ == '__main__':
    unittest.main()