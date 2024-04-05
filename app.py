from flask import Flask, render_template
app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/user")
def user():
    return "Hello users!"

@app.route("/products")
def products():
    return "Prodcuts here!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=int("5000"), debug=True)

