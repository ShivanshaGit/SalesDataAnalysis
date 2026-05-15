CREATE DATABASE sales_project;

USE sales_project;

CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price_per_unit DECIMAL(10,2),
    city VARCHAR(50),
    order_date DATE
);

INSERT INTO sales VALUES
(101, 'Aman', 'Laptop', 'Electronics', 1, 55000, 'Delhi', '2025-01-10'),
(102, 'Priya', 'Phone', 'Electronics', 2, 20000, 'Mumbai', '2025-01-11'),
(103, 'Rohit', 'Shoes', 'Fashion', 3, 2500, 'Kolkata', '2025-01-12'),
(104, 'Neha', 'Watch', 'Accessories', 1, 4000, 'Delhi', '2025-01-13'),
(105, 'Karan', 'Tablet', 'Electronics', 2, 18000, 'Pune', '2025-01-14'),
(106, 'Simran', 'Bag', 'Fashion', 4, 1500, 'Mumbai', '2025-01-15'),
(107, 'Arjun', 'Headphones', 'Electronics', 2, 3000, 'Chennai', '2025-01-16'),
(108, 'Pooja', 'T-shirt', 'Fashion', 5, 800, 'Delhi', '2025-01-17'),
(109, 'Vikas', 'Monitor', 'Electronics', 1, 12000, 'Bangalore', '2025-01-18'),
(110, 'Sneha', 'Keyboard', 'Electronics', 3, 1500, 'Pune', '2025-01-19'),
(111, 'Rahul', 'Mouse', 'Electronics', 4, 700, 'Mumbai', '2025-01-20'),
(112, 'Anjali', 'Dress', 'Fashion', 2, 3500, 'Kolkata', '2025-01-21'),
(113, 'Deepak', 'Speaker', 'Electronics', 1, 5000, 'Delhi', '2025-01-22'),
(114, 'Meera', 'Sunglasses', 'Accessories', 2, 2000, 'Chennai', '2025-01-23'),
(115, 'Aakash', 'Smartwatch', 'Electronics', 1, 10000, 'Bangalore', '2025-01-24');