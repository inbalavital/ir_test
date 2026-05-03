import requests
from celery import Celery

app = Celery("worker")
