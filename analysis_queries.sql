-- Total Orders and Revenue
SELECT COUNT(order_id) AS total_orders, SUM(amount) AS total_revenue
FROM orders;

-- Top Restaurants by Revenue
SELECT r.restaurant_name, SUM(o.amount) AS revenue
FROM orders o
JOIN restaurants r ON o.restaurant_id = r.restaurant_id
GROUP BY r.restaurant_name
ORDER BY revenue DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month, SUM(amount) AS total_sales
FROM orders
GROUP BY month;

-- Top Customers
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 5;

-- Most Ordered Items
SELECT m.item_name, SUM(od.quantity) AS total_quantity
FROM order_details od
JOIN menu_items m ON od.menu_item_id = m.menu_item_id
GROUP BY m.item_name
ORDER BY total_quantity DESC;

On Mon, Apr 20, 2026, 2:54 PM Vijay Kumar <vijaysanthosh012@gmail.com> wrote:
https://img1.wsimg.com/blobby/go/711db972-37f4-4efb-9f69-23eda6aad1cd/downloads/0e6205bd-5409-4e25-9738-699e4232418e/INTRODUCTION%20SQL%20PRO%20CHALLENGE.pdf?ver=1776529685487
 
