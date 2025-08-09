import mysql.connector
alx_book_store = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "r20062501",
        database = "alx_book_store"
)
SHOW DATABASES,
USE alx_book_store;
SELECT
    COLUMN_NAME,
    COLUMN_TYPE,
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    TABLE_SCHEMA = 'alx_book_store'

    TABLE_NAME = 'books';
