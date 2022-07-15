USE northwind;


SELECT product_name, unit_price
FROM products
ORDER BY product_id
LIMIT 10;

SELECT product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;

SELECT DISTINCT order_id
FROM order_details;


SELECT DISTINCT order_id
FROM order_details
LIMIT 2;


SELECT order_id , (unit_price)*(quantity) AS importe_total
FROM order_details
ORDER BY unit_price DESC
LIMIT 3;

SELECT order_id, (unit_price)*(quantity) AS importe_total
FROM order_details
ORDER BY unit_price DESC
LIMIT 10
OFFSET 4;




