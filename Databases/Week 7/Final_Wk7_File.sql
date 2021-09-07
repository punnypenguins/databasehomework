# EXERCISE 1:

CREATE OR REPLACE VIEW order_item_products AS
SELECT order_id,
	order_date, 
    tax_amount,
    ship_date,
    item_price,
    discount_amount, 
    (item_price - discount_amount) AS final_price,
    quantity,
    ((item_price - discount_amount) * quantity) AS item_total,
    product_name
FROM orders, order_items, products
WHERE orders.item_id = order_items.item_id AND order_items.item_id = products.item_id
ORDER BY order_id;


# EXERCISE 2:

USE my_guitar_shop;

DROP PROCEDURE IF EXISTS test;

DELIMITER //

CREATE PROCEDURE test()
BEGIN
	DECLARE count_of_products DECIMAL(9, 2);
    
    SELECT COUNT(*) AS product_count
    INTO count_of_products
    FROM products;
    
    IF count_of_products >= 7 THEN
		SELECT 'The number of products is greater than or equal to 7.' AS message;
	ELSE 
		SELECT 'The number of products is less than 7.' AS message;
	END IF;
END//

DELIMITER ;

CALL test();
