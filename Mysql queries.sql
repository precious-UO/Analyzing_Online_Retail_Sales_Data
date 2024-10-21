-- Create a new database
CREATE DATABASE IF NOT EXISTS online_retail;

-- Use database
USE online_retail;

-- Create four new tables
CREATE TABLE IF NOT EXISTS customers (
	customer_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
	registration_date DATETIME NOT NULL
);
CREATE TABLE IF NOT EXISTS products (
	product_id INT PRIMARY KEY NOT NULL, 
    product_name VARCHAR(50) NOT NULL, 
    category INT NOT NULL, 
    price DECIMAL(10,2) NOT NULL
);
CREATE TABLE IF NOT EXISTS orders (
	order_id INT PRIMARY KEY NOT NULL,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE IF NOT EXISTS order_items (
	order_item_id INT PRIMARY KEY NOT NULL, 
    order_id INT, 
    product_id INT, 
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- SHOW tables;

-- Insert values into customers table
INSERT INTO customers (customer_id, first_name, last_name, email, registration_date)
VALUES 
(1, 'John', 'Doe', 'john.doe@example.com', '2000-01-15 10:30:00'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2001-02-16 11:00:00'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '2002-03-17 12:00:00'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '2003-04-18 13:30:00'),
(5, 'David', 'Brown', 'david.brown@example.com', '2004-05-19 14:00:00'),
(6, 'Sarah', 'Wilson', 'sarah.wilson@example.com', '2005-06-20 15:00:00'),
(7, 'James', 'Taylor', 'james.taylor@example.com', '2006-07-21 16:00:00'),
(8, 'Linda', 'Anderson', 'linda.anderson@example.com', '2007-08-22 17:30:00'),
(9, 'Robert', 'Thomas', 'robert.thomas@example.com', '2008-09-23 18:00:00'),
(10, 'Jessica', 'Jackson', 'jessica.jackson@example.com', '2009-10-24 19:00:00'),
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
(23, 'Paul', 'Hall', 'paul.hall@example.com', '2022-11-06 17:00:00'),
(24, 'Laura', 'Allen', 'laura.allen@example.com', '2023-12-07 18:00:00'),
(25, 'Randy', 'Young', 'randy.young@example.com', '2024-01-08 19:00:00'),
(26, 'Laura', 'King', 'laura.king@example.com', '2000-02-09 20:00:00'),
(27, 'Scott', 'Wright', 'scott.wright@example.com', '2001-03-10 21:00:00'),
(28, 'Sharon', 'Scott', 'sharon.scott@example.com', '2002-04-11 22:00:00'),
(29, 'Steven', 'Torres', 'steven.torres@example.com', '2003-05-12 23:00:00'),
(30, 'Angela', 'Nguyen', 'angela.nguyen@example.com', '2004-06-13 09:30:00'),
(31, 'Edward', 'Hernandez', 'edward.hernandez@example.com', '2005-07-14 10:30:00'),
(32, 'Dorothy', 'Lopez', 'dorothy.lopez@example.com', '2006-08-15 11:30:00'),
(33, 'Daniel', 'Gonzalez', 'daniel.gonzalez@example.com', '2007-09-16 12:30:00'),
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

-- See customers table content
SELECT *
FROM customers;

-- Insert values into products table
INSERT INTO products (product_id, product_name, category, price) 
VALUES
(1, 'Wireless Mouse', 1, 25.99),
(2, 'Mechanical Keyboard', 1, 49.99),
(3, 'USB-C Hub', 2, 19.99),
(4, 'HDMI Cable', 2, 9.99),
(5, 'Bluetooth Headphones', 1, 89.99),
(6, 'Laptop Stand', 3, 29.99),
(7, 'Smartphone Charger', 4, 15.99),
(8, 'Gaming Monitor', 5, 299.99),(9, 'External SSD', 2, 119.99),
(10, 'Webcam', 6, 69.99),
(11, 'Portable Speaker', 1, 39.99),
(12, 'Wireless Earbuds', 1, 79.99),
(13, 'Gaming Mouse Pad', 1, 14.99),
(14, 'Ethernet Cable', 2, 6.99),
(15, 'VR Headset', 5, 399.99),
(16, 'Desk Organizer', 3, 24.99),
(17, 'Office Chair', 3, 199.99),
(18, 'Graphic Card', 5, 499.99),
(19, 'Smartwatch', 4, 199.99),
(20, 'Action Camera', 6, 249.99),
(21, 'Drone', 7, 599.99),
(22, 'Fitness Tracker', 4, 99.99),
(23, 'Gaming Console', 8, 299.99),
(24, 'LED Monitor', 5, 199.99),
(25, 'Bluetooth Speaker', 1, 89.99),
(26, 'Noise Cancelling Headphones', 1, 149.99),
(27, 'Surge Protector', 2, 29.99),
(28, 'Gaming Chair', 3, 299.99),
(29, 'Portable SSD', 2, 89.99),
(30, 'Smartphone Stand', 4, 19.99),
(31, 'Streaming Device', 8, 49.99),
(32, 'Microphone', 6, 99.99),
(33, 'Graphics Tablet', 9, 199.99),
(34, 'Digital Camera', 6, 799.99),
(35, 'Tablet', 4, 299.99),
(36, 'Smart Home Hub', 7, 79.99),
(37, 'Game Controller', 8, 49.99),
(38, 'Wireless Charger', 4, 29.99),
(39, 'Multi-Port Charger', 4, 39.99),
(40, 'Fitness Equipment', 10, 199.99),
(41, 'Laptop Backpack', 3, 49.99),
(42, 'Digital Watch', 4, 129.99),
(43, 'E-Reader', 4, 99.99),
(44, 'VR Game', 8, 39.99),
(45, 'Soundbar', 1, 199.99),
(46, 'External Monitor', 5, 239.99),
(47, 'Action Camera Accessories', 6, 49.99),
(48, 'Photography Tripod', 6, 89.99),
(49, 'USB Flash Drive', 2, 15.99),
(50, 'Wireless Home Security Camera', 7, 129.99);

-- See products table contents
SELECT *
FROM products;

-- Insert values into orders table
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
(1, 1, '2024-01-15 10:30:00', 129.99),
(2, 2, '2024-01-16 11:00:00', 59.99),
(3, 3, '2024-01-17 12:00:00', 249.99),
(4, 4, '2024-01-18 13:30:00', 89.99),
(5, 5, '2024-01-19 14:00:00', 199.99),
(6, 6, '2024-01-20 15:00:00', 79.99),
(7, 7, '2024-01-21 16:00:00', 299.99),
(8, 8, '2024-01-22 17:30:00', 49.99),
(9, 9, '2024-01-23 18:00:00', 119.99),
(10, 10, '2024-01-24 19:00:00', 49.99),
(11, 11, '2024-01-25 20:30:00', 39.99),
(12, 12, '2024-01-26 21:00:00', 89.99),
(13, 13, '2024-01-27 22:00:00', 169.99),
(14, 14, '2024-01-28 23:00:00', 59.99),
(15, 15, '2024-01-29 09:00:00', 99.99),
(16, 16, '2024-01-30 10:00:00', 299.99),
(17, 17, '2024-01-31 11:00:00', 149.99),
(18, 18, '2024-02-01 12:00:00', 199.99),
(19, 19, '2024-02-02 13:00:00', 89.99),
(20, 20, '2024-02-03 14:00:00', 39.99),
(21, 21, '2024-02-04 15:00:00', 129.99),
(22, 22, '2024-02-05 16:00:00', 299.99),
(23, 23, '2024-02-06 17:00:00', 249.99),
(24, 24, '2024-02-07 18:00:00', 69.99),
(25, 25, '2024-02-08 19:00:00', 179.99),
(26, 26, '2024-02-09 20:00:00', 59.99),
(27, 27, '2024-02-10 21:00:00', 199.99),
(28, 28, '2024-02-11 22:00:00', 149.99),
(29, 29, '2024-02-12 23:00:00', 99.99),
(30, 30, '2024-02-13 09:30:00', 39.99),
(31, 31, '2024-02-14 10:30:00', 69.99),
(32, 32, '2024-02-15 11:30:00', 79.99),
(33, 33, '2024-02-16 12:30:00', 289.99),
(34, 34, '2024-02-17 13:30:00', 139.99),
(35, 35, '2024-02-18 14:30:00', 49.99),
(36, 36, '2024-02-19 15:30:00', 89.99),
(37, 37, '2024-02-20 16:30:00', 129.99),
(38, 38, '2024-02-21 17:30:00', 249.99),
(39, 39, '2024-02-22 18:30:00', 199.99),
(40, 40, '2024-02-23 19:30:00', 59.99),
(41, 41, '2024-02-24 20:30:00', 99.99),
(42, 42, '2024-02-25 21:30:00', 169.99),
(43, 43, '2024-02-26 22:30:00', 299.99),
(44, 44, '2024-02-27 23:30:00', 149.99),
(45, 45, '2024-02-28 09:30:00', 79.99),
(46, 46, '2024-03-01 10:30:00', 99.99),
(47, 47, '2024-03-02 11:30:00', 219.99),
(48, 48, '2024-03-03 12:30:00', 159.99),
(49, 49, '2024-03-04 13:30:00', 49.99),
(50, 50, '2024-03-05 14:30:00', 129.99);

-- See orders table contents
SELECT *
FROM orders;

-- Insert values into order_item table
INSERT INTO order_items (order_item_id, order_id, product_id, quantity)
VALUES
(1, 1, 3, 1),
(2, 1, 5, 2),
(3, 2, 1, 1),
(4, 2, 4, 3),
(5, 3, 2, 1),
(6, 3, 8, 1),
(7, 4, 6, 1),
(8, 4, 12, 2),
(9, 5, 11, 1),
(10, 5, 20, 1),
(11, 6, 7, 1),
(12, 6, 16, 2),
(13, 7, 10, 1),
(14, 7, 14, 1),
(15, 8, 19, 2),
(16, 8, 25, 1),
(17, 9, 13, 1),
(18, 9, 27, 1),
(19, 10, 21, 3),
(20, 10, 22, 1),
(21, 11, 24, 1),
(22, 11, 26, 2),
(23, 12, 17, 1),
(24, 12, 28, 2),
(25, 13, 1, 2),
(26, 13, 12, 1),
(27, 14, 3, 1),
(28, 14, 15, 1),
(29, 15, 5, 2),
(30, 15, 9, 1),
(31, 16, 8, 1),
(32, 16, 18, 1),
(33, 17, 4, 1),
(34, 17, 23, 1),
(35, 18, 2, 1),
(36, 18, 29, 1),
(37, 19, 6, 1),
(38, 19, 24, 1),
(39, 20, 7, 1),
(40, 20, 30, 1),
(41, 21, 8, 1),
(42, 21, 11, 1),
(43, 22, 12, 2),
(44, 22, 19, 1),
(45, 23, 10, 1),
(46, 23, 13, 1),
(47, 24, 14, 2),
(48, 24, 25, 1),
(49, 25, 1, 1),
(50, 25, 22, 1);

-- See order_item tables content
SELECT *
FROM order_items;







