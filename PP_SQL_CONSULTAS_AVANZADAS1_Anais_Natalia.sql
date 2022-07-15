USE northwind;.

#1

select min(unit_price) as lowest_price, max(unit_price) as highest_price
from products;

#2

select count(units_in_stock), avg(unit_price)
from products;

#3

select max(freight), min(freight)
from orders
where ship_country in ('UK');

#4

select count(units_in_stock), avg(unit_price)
from products;

select unit_price
from products
where unit_price > 28.86
order by unit_price desc;

#5

select discontinued bool
from products
where discontinued = 1;

#6

select product_id, product_name
from products
order by product_id desc
limit 10;
