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
    TABLE_NAME = 'customer';
sql = INSERT INTO customer (customer_id, customer_name, email, address) VALUES (%s, %s, %s, %s) 
multiple_values = ("2", "Blessing Malik", "bmalik@sandtech.com", "124 Happiness  Ave."),
      ("3", "Obed Ehoneah", "eobed@sandtech.com", "125 Happiness  Ave."),
      ("4", "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happiness  Ave.")

mycursor.execute(sql, multiple_values)
alx_book_store.commit()      