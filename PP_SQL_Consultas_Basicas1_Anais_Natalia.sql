USE northwind;

SELECT employee_id, last_name, first_name 
FROM employees;

SELECT unit_price
FROM products
WHERE unit_price= 0<5;

 18, 19 o 20 dólares (un rango muy concreto de precios 
del que la empresa quiere maximizar sus ventas en un futuro).

SELECT unit_price
FROM products
WHERE unit_price= <18,19, 20>;

