from flask import Flask, render_template

app = Flask(__name__)

# Routes to Render 
@app.route('/')
def home():
    return render_template('login.html')

# Make sure this we are executing this file
if __name__ == '__main__':
    app.run(debug=True)