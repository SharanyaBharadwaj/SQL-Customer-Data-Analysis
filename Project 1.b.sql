SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Payments;

--Question 1: How many customers do we have?
SELECT COUNT(*) AS total_customers
FROM customers;

--Question 2 — How many different cities do our customers come from?
SELECT COUNT(DISTINCT city) AS total_cities
FROM customers;

--Question 3 — List all customers from Bangalore
SELECT * FROM customers
WHERE city = 'Bangalore';

--Question 4 — Which cities have the most customers?
SELECT
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
ORDER BY customer_count DESC;

--Question 5 — What is the total sales?
SELECT SUM(sales_amount) AS total_sales
FROM Orders;

--Question 6 — What is the average order value?
SELECT AVG(sales_amount) AS average_order_value
FROM orders;

--Question 7 — Which products generate the highest sales?
SELECT
    product,
    SUM(sales_amount) AS total_sales
FROM orders
GROUP BY product
ORDER BY total_sales DESC;

--Question 8 — Which category generates the most revenue?
SELECT
    category,
    SUM(sales_amount) AS total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;

--Question 9 — Which customers generated the most revenue?
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.sales_amount) AS total_sales
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_sales DESC;

--Question 10 — Which customers are repeat customers?
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS number_of_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY number_of_orders DESC;
