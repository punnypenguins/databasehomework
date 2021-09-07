# CHAPTER 6

# Number 1: 
SELECT COUNT(order_id) AS order_count,
	SUM(tax_amount) AS tax
FROM orders;

# Number 2:
SELECT category_name, COUNT(*) AS product_count, 
MAX(list_price) AS priciest_item
FROM categories JOIN products
	ON categories.category_id = products.category_id
GROUP BY category_name
ORDER BY product_count DESC;

# Number 3:
SELECT email_address, SUM(item_price * quantity) AS item_price_total, 
SUM(discount_amount * quantity) AS discount_amount_total
FROM customers
JOIN orders 
	ON customers.customer_id = orders.customer_id
JOIN order_items ON orders.order_id = order_items.order_id
GROUP BY email_address
ORDER BY item_price_total DESC
