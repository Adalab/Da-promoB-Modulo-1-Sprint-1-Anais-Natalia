USE northwind

#1

select product_name, unit_price
from products
order by product_id
limit 10;

#2
select product_name, unit_price
from products
order by product_id desc
limit 10;

#3
select distinct product_id
from order_details;

#4
select distinct product_id
from order_details
where product_id between 1 and 2;

 #5
 select unit_price * quantity_per_unit as importeTotal
 from products
 order by unit_price desc 
 limit 3; 
 
 #6
 select product_id, unit_price * quantity_per_unit as importeTotal
 from products
 where product_id  between 5 and 10;
 

#7

SELECT category_name AS "NombreDeCategoria"
FROM categories;

#8

SELECT shipped_date AS "FechasRetrasadas"
FROM orders
WHERE (DATEADD (required_date, INTERVAL 5 DAY) > CURDATE());

#9

SELECT * 
FROM products
WHERE unit_price BETWEEN 15 AND 50;

#10

SELECT *
FROM products
WHERE unit_price IN (18,19,20);
