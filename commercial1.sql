-- Create customers table
-- CREATE TABLE customers (
--     customer_id SERIAL PRIMARY KEY,
--     customer_name VARCHAR(255) NOT NULL
-- );
-- 
-- 
-- 
-- Insert sample data into customers table
-- 
-- SELECT c.customer_name, SUM(oi.quantity * p.price) AS total_cost
-- FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id
-- JOIN order_items oi ON o.order_id = oi.order_id
-- JOIN products p ON oi.product_id = p.product_id
-- WHERE p.product_name IN ('Candy', 'Cookies')
-- GROUP BY c.customer_name
-- HAVING COUNT(DISTINCT p.product_name) = 2;
--  
-- SELECT c.customer_name, SUM(oi.quantity * p.price) AS total_cost
-- FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id
-- JOIN order_items oi ON o.order_id = oi.order_id
-- JOIN products p ON oi.product_id = p.product_id
-- WHERE p.product_name = 'Ice Cream'
-- GROUP BY c.customer_name;
-- 
-- 
-- 
-- SELECT p.product_name, SUM(oi.quantity) AS total_quantity
-- FROM products p
-- JOIN order_items oi ON p.product_id = oi.product_id
-- GROUP BY p.product_name;
-- SELECT c.customer_name, COUNT(o.order_id) AS total_orders
-- FROM customers c
-- JOIN orders o ON c.customer_id = o.customer_id
-- GROUP BY c.customer_name
-- ORDER BY total_orders DESC
-- LIMIT 1;
-- SELECT p.product_name, SUM(oi.quantity) AS total_quantity
-- FROM products p
-- JOIN order_items oi ON p.product_id = oi.product_id
-- GROUP BY p.product_name
-- ORDER BY total_quantity DESC
-- LIMIT 1;
SELECT c.customer_name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(DISTINCT EXTRACT(DOW FROM o.order_date)) = 7;







