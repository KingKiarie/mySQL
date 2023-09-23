
-- This is a continuation of the ABC Database business problem. Here you will practice your querying skills. Your task is to answer the following two questions:

-- Which product has the highest price? Only return a single row.
-- Which order_id had the highest number of items in terms of quantity

-- DESCRIBE customer;
-- DESCRIBE order_id;
-- DESCRIBE orders;
-- DESCRIBE products;

--  SELECT * FROM order_id;

-- question 3
-- SELECT * FROM products ORDER BY price DESC LIMIT 1;

-- question 2
-- SELECT * FROM order_id ORDER BY quantity DESC LIMIT 1;

-- Which customer has made the most orders?

-- SELECT order_count AS(
--     SELECT customer_id COUNT(order_id) AS order_count
--     FROM orders
--     GROUP BY order_id,customer_id
-- ),
-- max_order_count AS(
--     SELECT max(order_count) AS max_order_count
--     FROM orders
-- )
-- SELECT first_name,last_name FROM
-- customer

-- JOIN order_count oc ON customer = oc.customer
-- JOIN max_order_count moc ON oc.order_count = moc.max_order_count;

-- what is the total revenue per product

SELECT product_name,
price * sum(quantity) AS total_revenue
FROM products 
JOIN order_id ON product_id = product_id
GROUP BY quantity product_id,price,
ORDER BY 2 DESC; 
