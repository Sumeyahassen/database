-- 1 Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.
-- Use an INNER JOIN to combine the employees table with the offices table using the officeCode column.
USE employe;

CREATE TABLE employe (
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(100),
    officecode INT,
    PRIMARY KEY (email) -- Assuming email is unique
);

CREATE TABLE office (
    name VARCHAR(50),
    officecode INT,
    PRIMARY KEY (officecode)
);

SELECT firstname, lastname, email, employe.officecode 
FROM employe
INNER JOIN office 
   ON office.officecode = employe.officecode;
--     Question 2 🛍️
-- Write an SQL query to get the productName, productVendor, and productLine from the products table.
-- Use a LEFT JOIN to combine the products table with the productlines table using the productLine column.
 CREATE TABLE prodact (
 prodactname VARCHAR(100),
 prodactvender VARCHAR(100),
 prodactline VARCHAR(100));
 CREATE TABLE productlines(
 prodactline VARCHAR(100));
 SELECT prodactname,prodactvender,prodact.prodactline 
 FROM  prodact
 LEFT JOIN prodactlines
 ON prodact.prodactline=prodact.prodactline;
--  Question 3 📦
-- Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.
 CREATE TABLE orders(
 orderdate DATE ,
 shippeddate DATE,
 states VARCHAR(100),
 custemernumber INT);
 CREATE TABLE custemer(
  custemernumber int);
  SELECT *FROM orders 
  RIGHT JOIN custemer
  ON custemer. custemernumber=orders. custemernumber
WHERE   custemernumber <=10;
  