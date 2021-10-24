from flask import Flask, render_template

app = Flask(__name__)

# Routes to Render 
@app.route('/')
def home():
    return render_template('login.html')

@app.route('/transition.html')
def transition():
    return render_template('transition.html')

@app.route('/user_dash.html')
def dash():
    return render_template('user_dash.html')

@app.route('/comsult.html')
def consult():
    return render_template('comsult.html')

# Make sure this we are executing this file
if __name__ == '__main__':
    app.run(debug=True)