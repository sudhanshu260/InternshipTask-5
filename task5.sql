create database custord;

use custord;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers VALUES
(1, 'Alice', 'Delhi'),
(2, 'Bob', 'Mumbai'),
(3, 'Charlie', 'Chennai'),
(4, 'David', 'Kolkata');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 60000),
(102, 2, 'Phone', 25000),
(103, 1, 'Mouse', 1200),
(104, 3, 'Keyboard', 2000),
(105, 5, 'Monitor', 15000);


INSERT INTO Customers VALUES
(5, 'Eva', 'Pune'),
(6, 'Frank', 'Bangalore');
  
  
  SELECT Customers.customer_name, Orders.product, Orders.amount
FROM Customers
INNER JOIN Orders ON Customers.customer_id = Orders.customer_id;


SELECT Customers.customer_name, Orders.product, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id;


SELECT Customers.customer_name, Orders.product, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;


SELECT Customers.customer_name, Orders.product, Orders.amount
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
UNION
SELECT Customers.customer_name, Orders.product, Orders.amount
FROM Customers
RIGHT JOIN Orders ON Customers.customer_id = Orders.customer_id;

