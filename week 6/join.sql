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
    