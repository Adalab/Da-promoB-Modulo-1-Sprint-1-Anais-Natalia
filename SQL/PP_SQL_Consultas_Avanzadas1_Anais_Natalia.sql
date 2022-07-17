USE northwind;

#1

SELECT product_name, unit_price
FROM products
ORDER BY product_id
LIMIT 10;

#2

SELECT product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;

#3

SELECT DISTINCT order_id
FROM order_details;

#4

SELECT DISTINCT order_id
FROM order_details
LIMIT 2;

#5

SELECT order_id , (unit_price)*(quantity) AS importe_total
FROM order_details
ORDER BY unit_price DESC
LIMIT 3;

#6

SELECT order_id, (unit_price)*(quantity) AS importe_total
FROM order_details
ORDER BY unit_price DESC
LIMIT 10
OFFSET 4;




