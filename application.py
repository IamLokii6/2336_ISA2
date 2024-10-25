# app.py
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello_world():
    return " My roll number is 2336."
