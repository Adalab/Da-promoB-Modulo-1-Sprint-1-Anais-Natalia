USE northwind;

|#1
SELECT employee_id, last_name, first_name 
FROM employees;

#2
SELECT unit_price
FROM products
WHERE unit_price= 0<5;

#3
SELECT unit_price
FROM products
WHERE unit_price= 18
OR unit_price= 19
OR unit_price= 20;

#4
select unit_price
from products
where unit_price >= 15
and unit_price <= 50;

#5
select unit_price
from products 
where unit_price is null;

#6
SELECT unit_price
FROM products
WHERE unit_price <15
and product_id <10;

#7
SELECT unit_price
FROM products
WHERE NOT unit_price <15
and not product_id <10;

#8
select ship_country
from orders;