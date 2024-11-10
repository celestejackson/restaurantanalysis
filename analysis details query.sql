-- 1. Combine the menu items and order_Details into a single table.
select * from menu_items;
select * from order_details;

select * 
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id;

-- 2. What were the least and most ordered items? What categories were they in?
select item_name, COUNT(order_details_id) AS num_purchases 
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by item_name
order by num_purchases;

select item_name, COUNT(order_details_id) AS num_purchases 
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by item_name 
order by num_purchases DESC;

-- 3. What were the top 5 orders that spent the most money?
select order_id, SUM(price) AS total_spend
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
group by order_id
order by total_spend DESC
LIMIT 5;

-- 4. View the details of the highest spend order. What insights can you gather from this information?
select category, COUNT(item_id) AS num_items
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
where order_id=440
group by category;

-- 5. View the details of the top 5 highest spend orders. What insights can you gather from this information?
select category, COUNT(item_id) AS num_items
from order_details od
left join menu_items mi
on od.item_id=mi.menu_item_id
where order_id in (440, 2075, 1957,330,2675)
group by order_id, category;