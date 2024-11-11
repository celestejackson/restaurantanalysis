use restaurant_db;

-- View the menu items table.
SELECT * From menu_items;

-- Find the number of items on the menu
SELECT COUNT(*) From menu_items;

-- What are the least and most expensive items on the menu?
SELECT * FROM menu_items
ORDER BY price;

SELECT * FROM menu_items
ORDER BY price desc;
-- What are the categories of food that are sold?
SELECT distinct category 
FROM menu_items
group by category;

-- How many dishes are in each category?
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY Category;

-- Average dish price within each category
SELECT category, AVG(price) AS num_dishes
FROM menu_items
GROUP BY Category;

-- How many Italian dishes are on the menu?
SELECT COUNT(*) from menu_items
where category='Italian';

-- What are the least and most expensive Italian dishes on the menu?
SELECT * FROM menu_items
where category='Italian'
ORDER BY price;

SELECT * FROM menu_items
Where category='Italian'
ORDER BY price desc;

-- How many American dishes are on the menu?
SELECT COUNT(*) from menu_items
where category='American';

-- What are the least and most expensive American dishes on the menu?
SELECT * FROM menu_items
where category='American'
ORDER BY price;

SELECT * FROM menu_items
Where category='American'
ORDER BY price desc;

-- How many Mexican dishes are on the menu?
SELECT COUNT(*) from menu_items
where category='mexican';

-- What are the least and most expensive Mexican dishes on the menu?
SELECT * FROM menu_items
where category='mexican'
ORDER BY price;

SELECT * FROM menu_items
Where category='mexican'
ORDER BY price desc;

-- How many Asian dishes are on the menu?
SELECT COUNT(*) from menu_items
where category='asian';

-- What are the least and most expensive Asian dishes on the menu?
SELECT * FROM menu_items
where category='asian'
ORDER BY price;

SELECT * FROM menu_items
Where category='asian'
ORDER BY price desc;

