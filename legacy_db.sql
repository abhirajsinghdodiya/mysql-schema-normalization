-- Legacy denormalized database
CREATE DATABASE legacy_db;
USE legacy_db;

CREATE TABLE sales_legacy (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_phone VARCHAR(15),
    product_name VARCHAR(100),
    product_category VARCHAR(50),
    product_price DECIMAL(10,2),
    quantity INT,
    supplier_name VARCHAR(100),
    supplier_city VARCHAR(50)
);

INSERT INTO sales_legacy VALUES
(1, '2024-01-05', 'Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Laptop', 'Electronics', 55000, 1, 'TechSupplier', 'Delhi'),
(2, '2024-01-06', 'Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Mouse', 'Accessories', 800, 2, 'AccessoryHub', 'Mumbai'),
(3, '2024-01-07', 'Anita Verma', 'anita@gmail.com', '9123456780', 'Laptop', 'Electronics', 55000, 1, 'TechSupplier', 'Delhi'),
(4, '2024-01-08', 'Amit Patel', 'amit@gmail.com', '9988776655', 'Keyboard', 'Accessories', 1500, 1, 'AccessoryHub', 'Mumbai');


USE legacy_db;
SELECT * FROM sales_legacy;
