# CHAPTER 7

# Number 1:
SELECT category_name 
FROM categories 
WHERE category_name IN 
	(
		SELECT DISTINCT category_name 
        FROM categories 
		JOIN products
			ON categories.category_id = products.category_id 
			ORDER BY category_name
	);

# Number 2:
SELECT product_name, list_price
FROM products
WHERE list_price > 
	(
		SELECT AVG(list_price)
        FROM products
	)
ORDER BY list_price DESC;

# Number 3:
SELECT category_name
FROM categories
WHERE NOT EXISTS
	(
		SELECT category_id
        FROM products
	);
