from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

@app.route('/')
def index():
    return "<h1> Running Python with Flask - UNIVA NE, Alumno Emanuel </h1>"

#This will be on the search var
#http://127.0.0.1:3000/home/Emanuel%20Camarena
@app.route('/home/<user_name>')
# def home(user_name):
#     return "Welcome HOME - " + user_name

@app.route('/home/<user_name>')
def home(user_name):
    return """
        Welcome HOME Student {}
    """.format(user_name)

#This will bring the template already created on HTML
#HTML MUST BE ON templates folder
@app.route('/about')
def about():
    return render_template('about.html')

#Here it will load the file and the variable as well
@app.route('/hello/<user_name>')
def hello(user_name):
    return render_template("hello.html",user_name=user_name) #gets the variable called user_name and calls it user_name)

#Redirecciona a la pagina de w3school
@app.route('/w3schools')
def w3schools():
    return redirect("https://www.w3schools.com/python")

#Busca el metodo w3school y lo ejecuta
@app.route('/python')
def python():
    return redirect(url_for('w3schools'))

if __name__ == "__main__":
    app.run(port=3000, debug=True)