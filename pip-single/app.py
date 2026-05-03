import requests
from flask import Flask

app = Flask(__name__)


@app.route("/")
def home():
    r = requests.get("https://example.com")
    return {"status": r.status_code}
