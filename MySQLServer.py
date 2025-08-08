import mysql.connector
try:
    alx_book_store = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "r20062501",
        database = "alx_book_store"
    )
    mycursor = alx_book_store.cursor()
    mycursor.execute("""
    CREATE DATABASE IF NOT EXISTS alx_book_store(
    )
    """)
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
    print(f"except mysql.connector.Error")