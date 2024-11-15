USE restaurant_db;

-- View the order_details table.
SELECT * FROM order_details;

-- What is the date range of the table?
SELECT min(order_date), MAX(order_date) FROM order_details;

-- How many orders were made within this date range?
SELECT count(DISTINCT order_id) FROM order_details;

-- How many items were ordered within this date range?
SELECT COUNT(*) FROM order_details;


-- Which orders has the most number of items?
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- How many orders had more than 12 items?
SELECT COUNT(*) FROM

(SELECT order_id, COUNT(item_id) AS num_items 
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders;