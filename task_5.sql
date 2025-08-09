import mysql.connector
alx_book_store = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "my_password",
        database = "alx_book_store"
)

mycursor = alx_book_store.cursor()
USE alx_book_store;
WHERE
    TABLE_SCHEMA = 'alx_book_store'
    TABLE_NAME = 'Customer';
sql = INSERT INTO customer (customer_id, customer_name, email, address)
val = VALUES (1, Cole Baidoo, cbaidoo@sandtech.com, 123 Happiness Ave. )
mycursor.execute(sql, val)

alx_book_store.commit()

