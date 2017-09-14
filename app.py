import json
from flask import Flask

app = Flask(__name__)

@app.route('/greeting')
def index():
    greeting = {
        'greeting': 'hello world!'
    }
    return (json.dumps(greeting), 200)

if __name__ == '__main__':
    app.run(debug=True)