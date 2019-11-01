# NAA.
# i.e., https://pythonspot.com/flask-hello-world/
# - test to see if loading Flask dependencies correctly

from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"

if __name__ == "__main__":
    app.run()
