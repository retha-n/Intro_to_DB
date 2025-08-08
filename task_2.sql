import mysql.connector
  alx_book_store = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "r20062501",
        database = "alx_book_store"
    )
    mycursor = alx_book_store.cursor()
    mycursor.execute("""
CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
)
CREATE TABLE IF NOT EXISTS Books (
   book_id INT PRIMARY KEY,
   title VARCHAR(130),
   FOREIGN KEY (author_id) REFERENCES Authors(author_id),
   price DOUBLE,
   publication_date DATE

);
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT,

);
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT ,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    
);
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE,
)
""")
print("Database and tables created successfully.")

