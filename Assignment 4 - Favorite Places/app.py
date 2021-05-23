
from flask import Flask, render_template, request, json, redirect, jsonify
from flaskext.mysql import MySQL
from flask import session
import csv
app = Flask(__name__)

mysql = MySQL()

# MySQL configurations
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'FavoritePlaces'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_PORT'] = 3306
mysql.init_app(app)



app.secret_key = 'secret key can be anything!'


@app.route("/")
def main():
    return render_template("index.html")


@app.route("/listFavorites")
def listFavorites():
    try:
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM restaurants")
        row_headers=[x[0] for x in cursor.description]
        rows = cursor.fetchall()
        if len(rows) == 0:
            return render_template('error.html', error = 'An error occurred!')
        else:
            json_data=[]
            for result in rows:
                json_data.append(dict(zip(row_headers,result)))
            response = jsonify(json_data)
            return response
    except Exception as e:
        return render_template('error.html', error = str(e))
if __name__ == "__main__":
    app.run()   
