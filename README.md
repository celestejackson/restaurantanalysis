Restaurant Analysis SQL Project

Overview

The Restaurant Analysis SQL Project provides an in-depth look into a quarter’s worth of data from a fictitious restaurant specializing in international cuisine. Through this project, we aim to analyze and extract actionable insights from a dataset that includes detailed information about menu items, customer orders, and spending patterns. The goal is to use data-driven insights to enhance the restaurant’s operations, optimize its menu, and refine pricing strategies.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Data Description

The data is broken down into several key tables that will help us paint a complete picture of the restaurant’s performance. Here's what each table represents:

Orders Details: This table holds the key details about each order placed.

order_details_id: primary key for table entries
order_id: unique identifier for each order
order_date:The date when the order was placed.
order_time: The time the order was placed.
item_id: Details about the specific items customers ordered.

Menu Details: This table provides the core information about the items listed on the menu.

menu_item_id: Unique identifier for each menu item.
item_name: The name of the menu item (e.g., "Spaghetti," "Hotdog").
category: The food origin category to which the item belongs (e.g., "Italian," "American").
price: The price of the menu item.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Key Analysis Areas

1. Menu Item Analysis
Identifying Popular and Expensive Items: I analyzed the least and most expensive menu items and categorized them to understand pricing trends and identify areas where pricing adjustments could be made.
Category Breakdown: I examined how many dishes fall into each menu category and calculated the average price within each category to assess the balance of the menu and identify potential pricing strategies.
2. Order Insights
Order Volume: I determined the total number of orders and items ordered within a specific date range, which helped establish the overall activity level of the restaurant during this period.
Large Orders Analysis: By identifying orders with more than 12 items, I assessed the frequency of large group or bulk orders and what this might suggest about customer behavior.
3. Popular Items and Spending Patterns
Most and Least Ordered Items: By combining order details with menu items, I identified the top-selling items as well as those that are underperforming. This helps in deciding which items might need promotions or should be removed from the menu.
High-Value Orders: I analyzed the top 5 highest-spending orders to understand which menu items are contributing to larger transactions, offering insights into where there might be opportunities for upselling or refining pricing.
4. Customer Behavior Analysis
Spending Patterns: I examined the behavior of high-spending customers, identifying the categories and dishes that are frequently purchased in larger orders. This information can guide decisions about pricing and customer targeting.
Order Trends and Personalization: By correlating the size of customer orders with spending, I uncovered trends that could be used to personalize offers, drive repeat business, and increase revenue from high-value customers.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Conclusion

This analysis provides a comprehensive view of the restaurant's menu and customer ordering patterns, offering actionable insights to guide business decisions. Key findings include:

Menu Optimization: The restaurant now has a clear understanding of which dishes are most popular and which categories are underrepresented. This can inform decisions about menu expansion or modification.
Pricing Strategy: By analyzing the price range of dishes within categories and comparing it with customer demand, the restaurant can better align its pricing strategy to customer expectations.
Customer Segmentation: By identifying high-spending customers and the items they prefer, the restaurant can develop targeted marketing strategies, optimize the customer experience, and increase revenue.
Order Trends: Analyzing peak order volumes and large orders reveals times of high demand, allowing the restaurant to optimize staffing, inventory, and promotional efforts accordingly.

Ultimately, this analysis serves as a powerful tool for the restaurant to fine-tune its operations, increase profitability, and enhance the overall customer experience. With these data-driven insights, the restaurant can make informed decisions about menu offerings, pricing, and customer engagement strategies.
