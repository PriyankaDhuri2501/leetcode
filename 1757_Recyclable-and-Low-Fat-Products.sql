CREATE DATABASE sql2;

USE sql2;

-- Create a table named 'Products'
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    low_fats ENUM('Y', 'N'),
    recyclable ENUM('Y', 'N')
);

-- Insert data into the Products table
INSERT INTO Products (product_id, low_fats, recyclable) VALUES
    (0, 'Y', 'N'),
    (1, 'Y', 'Y'),
    (2, 'N', 'Y'),
    (3, 'Y', 'Y'),
    (4, 'N', 'N');

-- Find products that are both low fat and recyclable
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';