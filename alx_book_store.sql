CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
)
CREATE TABLE Books (
   book_id INT PRIMARY KEY,
   title VARCHAR(130),
   FOREIGN KEY (author_id) REFERENCES Authors(author_id),
   price DOUBLE,
   publication_date DATE

);
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT,

);
CREATE TABLE Orders (
    order_id INT ,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    
);
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Orders(orders_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE,
)
