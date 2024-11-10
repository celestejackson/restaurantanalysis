use restaurant_db;

-- 1. View the menu items table.
SELECT * From menu_items;

-- 2. Find the number of items on the menu.
SELECT COUNT(*) From menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT * FROM menu_items
ORDER BY price;

SELECT * FROM menu_items
ORDER BY price desc;

-- 4. How many italian dishes are on the menu?
SELECT COUNT(*) from menu_items
where category='Italian';

-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT * FROM menu_items
where category='Italian'
ORDER BY price;

SELECT * FROM menu_items
Where category='Italian'
ORDER BY price desc;

-- 6. How many dishes are in each category?
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY Category;

-- 7. What is the average dish price within each category?
SELECT category, AVG(price) AS num_dishes
FROM menu_items
GROUP BY Category;