-- Combine the menu items and order_Details into a single table.
select * from menu_items;
select * from order_details;

select * 
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id;

-- What were the least and most ordered items? What categories were they in?
select item_name, category, COUNT(order_details_id) AS num_purchases 
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by item_name, category
order by num_purchases;

select item_name, category, COUNT(order_details_id) AS num_purchases 
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by item_name, category
order by num_purchases DESC;

-- What were the top 5 orders that spent the most money?
select order_id, SUM(price) AS total_spend
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by order_id
order by total_spend DESC
LIMIT 5;

-- View the details of the highest spend order. What insights can you gather from this information?
select category, COUNT(item_id) AS num_items
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
where order_id=440
group by category;

-- View the details of the top 5 highest spend orders. What insights can you gather from this information?
select category, COUNT(item_id) AS num_items
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
where order_id in (440, 2075, 1957,330,2675)
group by order_id, category
LIMIT 5;

-- Top 5 Items overall 
select menu_item_id, price, COUNT(item_id) AS num_items 
 from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by menu_item_id;

select menu_item_id, item_name, COUNT(item_id) AS num_purchased
 from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by menu_item_id
order by num_purchased DESC
LIMIT 5;

select menu_item_id, item_name, COUNT(item_id) AS num_purchased
 from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by menu_item_id
order by num_purchased 
LIMIT 6;

-- Total revenue?
select SUM(price)
from order_details od
inner join menu_items mi
on od.item_id=mi.menu_item_id;



-- AVERAGE PRICE OF ORDER
select avg(price) as avg_order
from order_details od
inner join menu_items mi
on od.item_id=mi.menu_item_id;

-- Number of Orders BY DATE ASC
SELECT COUNT(order_id) as num_orders, order_date
from order_details od
inner join menu_items mi
on od.item_id=mi.menu_item_id
group by order_date;

-- TOP 5 MOST # OF ORDERS (BY DATE)
SELECT COUNT(order_id) as num_orders, order_date
from order_details od
inner join menu_items mi
on od.item_id=mi.menu_item_id
group by order_date
order by num_orders DESC
LIMIT 5;

-- TOP 5 LEAST # OF ORDERS (BY DATE)SELECT COUNT(order_id) as num_orders, order_date
SELECT COUNT(order_id) as num_orders, order_date
from order_details od
inner join menu_items mi
on od.item_id=mi.menu_item_id
group by order_date
order by num_orders ASC
LIMIT 5;

-- COUNT FOR CATEGORY
SELECT COUNT(order_id) as num_orders, category
from order_details od
inner join menu_items mi
on od.item_id=mi.menu_item_id
group by category
order by num_orders;

-- TOTAL PRICE PER CATEGORY
SELECT SUM(price) as num_orders, category
from order_details od
inner join menu_items mi
on od.item_id=mi.menu_item_id
group by category
order by num_orders;