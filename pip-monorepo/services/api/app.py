from flask import Flask
import requests

app = Flask(__name__)


@app.route("/")
def home():
    return {"hello": "world"}
