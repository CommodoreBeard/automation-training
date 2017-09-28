import requests
import unittest

class TestApp(unittest.TestCase):

    base_url = "http://localhost:5000"

    def format_url(self, endpoint):
        if endpoint[0] == '/':
            endpoint = endpoint[1:]
        return "{}/{}".format(self.base_url, endpoint)

    def test_index(self):

        # When
        response  = requests.get(self.format_url('/'))

        # Then
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.headers['Content-Type'], 'text/html; charset=utf-8')


    def test_greeting(self):

        # When
        response = requests.get(self.format_url('/greeting'))

        # Then
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.headers['Content-Type'], 'application/json')
        self.assertEqual(response.json(), {'greeting': 'hello world!'})

if __name__ == '__main__':
    unittest.main()