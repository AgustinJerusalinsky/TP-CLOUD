# reference: https://fastapi.tiangolo.com/deployment/docker/
from typing import Union

from fastapi import FastAPI

app = FastAPI()


@app.get("/health-check")
def health_check():
    return {"status": "ok"}

@app.get("/users")
def read_root():
    return {
        "data": "User Service online"
    }
