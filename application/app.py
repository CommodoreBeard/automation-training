from flask import Flask, jsonify, render_template, request

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/greeting')
def greeting():
    greeting = {
        'greeting': 'hello world!'
    }
    return (jsonify(greeting), 200)


@app.route('/redpill', methods=['POST'])
def redpill():
    return render_template('redpill.html', redpill=request.form)


@app.route('/user', methods=['POST'])
def user():
    print("USERNAME FROM FORM: {}".format(request.form['user_name']))
    print("PASSWORD FROM FORM: {}".format(request.form['password']))
    return render_template('user.html', user=request.form)

def shutdown_server():
    func = request.environ.get('werkzeug.server.shutdown')
    if func is None:
        raise RuntimeError('Not running with the Werkzeug Server')
    func()

@app.route('/shutdown', methods=['POST'])
def shutdown():
    shutdown_server()
    return 'Server shutting down...'

if __name__ == '__main__':
    import logging
    logging.basicConfig(filename='app.log',level=logging.DEBUG)
    app.run(debug=True)
