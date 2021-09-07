# CHAPTER 8

# Number 1:
SELECT list_price,
	FORMAT(list_price, 1),
    CONVERT(list_price, SIGNED) AS integer_price,
    CONVERT(list_price, SIGNED) AS integer_price,
    CAST(list_price AS SIGNED) AS integer_price
FROM products;


# CHAPTER 9

# Number 1: 
SELECT list_price,
	discount_percent,
    ROUND((list_price * discount_percent), 2) AS discount_amount,
    ROUND(list_price + (list_price * discount_percent), 2) AS new_price
FROM products;

# Number 2:
SELECT order_date,
	DATE_FORMAT(order_date, '%Y') AS order_year,
    DATE_FORMAT(order_date, '%b-%d-%Y') AS order_date_abbr
FROM orders;
