-- Create the database
CREATE DATABASE IF NOT EXISTS online_retail2;
USE online_retail2;

-- Create the customers table with some errors
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    registration_date DATE
);

INSERT INTO customers (customer_id, first_name, last_name, email, registration_date) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '2023-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2023-02-20'),
(3, 'Bob', 'Johnson', 'bob.johnson@example.com', '2023-03-10'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', NULL), -- Missing registration_date
(5, 'David', 'Brown', 'david.brown@example.com', '2023-04-19'),
(6, 'Sarah', 'Wilson', NULL, '2023-05-20'), -- Missing email
(7, 'James', 'Taylor', 'james.taylor@example.com', '2023-06-21'),
(8, 'Linda', 'Anderson', 'linda.anderson@example.com', '2023-07-22'),
(9, 'Robert', 'Thomas', 'robert.thomas@example.com', '2023-08-23'),
(10, 'Jessica', 'Jackson', 'jessica.jackson@example.com', '2023-09-24'),
(11, 'Daniel', 'White', 'daniel.white@example.com', '2010-11-25 20:30:00'),
(12, 'Laura', 'Harris', 'laura.harris@example.com', '2011-12-26 21:00:00'),
(13, 'Kevin', 'Martin', 'kevin.martin@example.com', '2012-01-27 22:00:00'),
(14, 'Karen', 'Thompson', 'karen.thompson@example.com', '2013-02-28 23:00:00'),
(15, 'Brian', 'Garcia', 'brian.garcia@example.com', '2014-03-29 09:00:00'),
(16, 'Nancy', 'Martinez', 'nancy.martinez@example.com', '2015-04-30 10:00:00'),
(17, 'Chris', 'Robinson', 'chris.robinson@example.com', '2016-05-31 11:00:00'),
(18, 'Amy', 'Clark', 'amy.clark@example.com', '2017-06-01 12:00:00'),
(19, 'George', 'Rodriguez', 'george.rodriguez@example.com', '2018-07-02 13:00:00'),
(20, 'Betty', 'Lewis', 'betty.lewis@example.com', '2019-08-03 14:00:00'),
(21, 'Samuel', 'Lee', 'samuel.lee@example.com', '2020-09-04 15:00:00'),
(22, 'Megan', 'Walker', 'megan.walker@example.com', '2021-10-05 16:00:00'),
(23, 'Paul', 'Hall', NULL, '2022-11-06 17:00:00'),
(24, 'Laura', 'Allen', 'laura.allen@example.com', '2023-12-07 18:00:00'),
(25, 'Randy', 'Young', 'randy.young@example.com', '2024-01-08 19:00:00'),
(26, 'Laura', 'King', 'laura.king@example.com', '2000-02-09 20:00:00'),
(27, 'Scott', 'Wright', NULL, '2001-03-10 21:00:00'),
(28, 'Sharon', 'Scott', 'sharon.scott@example.com', '2002-04-11 22:00:00'),
(29, 'Steven', 'Torres', 'steven.torres@example.com', '2003-05-12 23:00:00'),
(30, 'Angela', 'Nguyen', 'angela.nguyen@example.com', '2004-06-13 09:30:00'),
(31, 'Edward', 'Hernandez', 'edward.hernandez@example.com', '2005-07-14 10:30:00'),
(32, NULL, 'Lopez', 'dorothy.lopez@example.com', '2006-08-15 11:30:00'),
(33, 'Daniel', 'Gonzalez', NULL, '2007-09-16 12:30:00'),
(34, 'Hannah', 'Parker', 'hannah.parker@example.com', '2008-10-17 13:30:00'),
(35, 'Jessica', 'Evans', 'jessica.evans@example.com', '2009-11-18 14:30:00'),
(36, 'Adam', 'Edwards', 'adam.edwards@example.com', '2010-12-19 15:30:00'),
(37, 'Anna', 'Collins', 'anna.collins@example.com', '2011-01-20 16:30:00'),
(38, 'Jacob', 'Stewart', 'jacob.stewart@example.com', '2012-02-21 17:30:00'),
(39, 'Tyler', 'Sanchez', 'tyler.sanchez@example.com', '2013-03-22 18:30:00'),
(40, 'Madison', 'Morris', 'madison.morris@example.com', '2014-04-23 19:30:00'),
(41, 'Gary', 'Rogers', 'gary.rogers@example.com', '2015-05-24 20:30:00'),
(42, 'Katherine', 'Reed', 'katherine.reed@example.com', '2016-06-25 21:30:00'),
(43, 'Zachary', 'Cook', 'zachary.cook@example.com', '2017-07-26 22:30:00'),
(44, 'Julia', 'Bailey', 'julia.bailey@example.com', '2018-08-27 23:30:00'),
(45, 'Benjamin', 'Bell', 'benjamin.bell@example.com', '2019-09-28 09:30:00'),
(46, 'Pamela', 'Gonzales', 'pamela.gonzales@example.com', '2020-10-29 10:30:00'),
(47, 'Jordan', 'Cruz', 'jordan.cruz@example.com', '2021-11-30 11:30:00'),
(48, 'Samantha', 'Diaz', 'samantha.diaz@example.com', '2022-12-31 12:30:00'),
(49, 'Victoria', 'Reyes', 'victoria.reyes@example.com', '2023-01-01 13:30:00'),
(50, 'Nina', 'Chavez', 'nina.chavez@example.com', '2024-02-01 14:30:00');

-- Create the products table with some errors
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, NULL, 'Electronics', 599.99),
(3, 'T-shirt', 'Clothing', 19.99),
(4, 'Running Shoes', 'Footwear', 79.99),
(5, 'Desk Lamp', NULL, 24.99), -- Missing category
(6, 'Wireless Mouse', 'Electronics', NULL), -- Missing price
(7, 'Mechanical Keyboard', 'Electronics', 49.99),
(8, 'HDMI Cable', 'Electronics', 9.99),
(9, 'Bluetooth Headphones', 'Electronics', 89.99),
(10, 'Laptop Stand', 'Office Supplies', 29.99); -- Incorrect category

-- Create the orders table with some errors
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, total_amount) VALUES
(1, 1, '2023-04-01', 1019.98),
(2, 2, '2023-04-15', 599.99),
(3, 3, '2023-05-01', 99.98),
(4, 4, '2023-05-10', 679.98),
(5, 5, '2023-06-01', 199.99),
(6, 6, '2023-07-01', 79.99), 
(7, 7, '2023-08-01', 299.99),
(8, 8, '2023-09-01', 49.99),
(9, 9, '2023-10-01', 119.99),
(10, 10, '2023-11-01', 49.99);

-- Create the order_items table with some errors
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 2, 2, 1),
(4, 2, 4, 3),
(5, 3, 3, 2),
(6, 3, 8, 1),
(7, 4, 6, 1), -- Product 6 has no price
(8, 4, 4, 2),
(9, 5, 7, 1),
(10, 5, 10, 1), -- Product 10 has incorrect category
(11, 6, 5, 2), -- Product 5 has no category
(12, 6, 9, 1),
(13, 7, 1, 1),
(14, 7, 2, 1),
(15, 8, 3, 1),
(16, 8, 4, 1),
(17, 9, 5, 1), -- Product 5 has no category
(18, 9, 7, 1),
(19, 10, 8, 1),
(20, 10, 9, 1);

-- --------------------------------- Find and add missing values in registration date from customers table -----------------------
SELECT *
FROM customers
WHERE registration_date IS NULL;

UPDATE customers
SET registration_date = '2023-04-05'
WHERE customer_id = 4;

-- ------------------------------- Find and add missing values to first name in customers table ----------------------------------------------
SELECT *
FROM customers
WHERE first_name IS NULL;

UPDATE customers
SET first_name = 'Dorothy'
WHERE customer_id = 32;

-- ---------------------------------- Find and add missing values to email in customers table ---------------------------------------------------
SELECT *
FROM customers
WHERE email IS NULL;

UPDATE customers
SET email = 'paul.hall@example.com'
WHERE customer_id = 23;

UPDATE customers
SET email = 'scott.wright@example.com'
WHERE customer_id = 27;

UPDATE customers
SET email = 'daniel.gonzalez@example.com'
WHERE customer_id = 33;


-- ------------------------------ Replace email values  in customers table --------------------------------------------------------

SELECT customer_id, email
FROM customers
WHERE email LIKE '%@example.com';

UPDATE customers
SET email = REPLACE(email, '@example.com', '@gmail.com')
WHERE email LIKE '%@example.com';

SELECT customer_id, email
FROM customers;


-- ------------------------------- Find and add missing values to product name in products table ---------------------------------

SELECT *
FROM products
WHERE product_name IS NULL;

UPDATE products
SET product_name = 'Pressing iron'
WHERE product_id = 2;

SELECT *
FROM products
WHERE product_id = 2;

-- ---------------------------- Find and add missing values to category in products table ------------------------------------------------

SELECT *
FROM products
WHERE category IS NULL;

UPDATE products
SET category = 'Electronics'
WHERE product_id = 5;

SELECT *
FROM products
WHERE product_id = 5;

-- ------------------------------ Find and add missing values to price in products table -----------------------------------------------

SELECT *
FROM products
WHERE price IS NULL;

UPDATE products
SET price = 50.00
WHERE product_id = 6;

SELECT *
FROM products
WHERE product_id = 6;