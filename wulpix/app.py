from flask import Flask, request, render_template

wulpix = Flask(__name__)

@wulpix.route('/')
def index():
    return render_template('index.html')

@wulpix.route('/welcome', methods=['POST'])
def welcome():
    username = request.form['username']
    return render_template('welcome.html', username=username)

if __name__ == '__main__':
    wulpix.run(debug=True, port=8000, host='0.0.0.0')
