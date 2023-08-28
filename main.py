from fastapi import FastAPI
from fastapi.responses import PlainTextResponse


app = FastAPI()

@app.get('/hello', response_class=PlainTextResponse)
async def hello():
    return "SALAM!\n"


if __name__ == "__main__":
    import uvicorn
    uvicorn.run("main:app", host="0.0.0.0", port=52026, reload=True)
