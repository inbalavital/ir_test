from celery import Celery
from shared_lib import util

app = Celery("worker")
