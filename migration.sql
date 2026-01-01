USE normalized_db;

INSERT INTO customers (name, email, phone)
SELECT DISTINCT
    customer_name,
    customer_email,
    customer_phone
FROM legacy_db.sales_legacy;

SELECT * FROM customers;

INSERT INTO suppliers (name, city)
SELECT DISTINCT
    supplier_name,
    supplier_city
FROM legacy_db.sales_legacy;

SELECT * FROM suppliers;

INSERT INTO products (name, category, price, supplier_id)
SELECT DISTINCT
    l.product_name,
    l.product_category,
    l.product_price,
    s.supplier_id
FROM legacy_db.sales_legacy l
JOIN suppliers s
  ON l.supplier_name = s.name;
  
SELECT * FROM products;

INSERT INTO orders (order_date, customer_id, product_id, quantity)
SELECT
    l.order_date,
    c.customer_id,
    p.product_id,
    l.quantity
FROM legacy_db.sales_legacy l
JOIN customers c
  ON l.customer_email = c.email
JOIN products p
  ON l.product_name = p.name;

SELECT * FROM orders;




