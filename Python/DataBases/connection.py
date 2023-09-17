import sqlite3
from sqlite3 import Error

def create_connection(path):
    connection = None
    try:
        connection = sqlite3.connect(path)
    except Error as e:
        print(f"The error'{e}' ocurred")
    
    return connection

def execute_query(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query("SELECT * FROM Products"))
        connection.commit()
        print("Query executed succesfully")
    except Error as e:
        print(f"The Error '{e}' ocurred")
    
