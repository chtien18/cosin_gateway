from flask import Flask, render_template, redirect, request, jsonify, url_for
import atexit
import os
import json
from flask_bootstrap import Bootstrap

app = Flask(__name__)
bootstrap = Bootstrap(app)


# When running this app on the local machine, default the port to 8080
port = int(os.getenv('PORT', 8080))

# Custom error pages

@app.route('/')
def home():
    return render_template('index.html')
@app.route('/run')
def run():
    return 'run'


# route for handling the login page logic
@app.route('/login', methods=['GET', 'POST'])
def login():
    error = None
    if request.method == 'POST':
        if request.form['username'] != 'admin' or request.form['password'] != 'admin':
            error = 'Invalid Credentials. Please try again.'
        else:
            return redirect(url_for('home'))
    return render_template('login.html', error=error)

@atexit.register
def shutdown():
    if client:
        client.disconnect()

#error page
@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404

@app.errorhandler(500)
def internal_server_error(e):
    return render_template('500.html'), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=port, debug=True)
