import mysql.connector
alx_book_store = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "r20062501",
        database = "alx_book_store"
)
SHOW DATABASE,
USE alx_book_store;
SHOW TABLES,
print("Tables present")