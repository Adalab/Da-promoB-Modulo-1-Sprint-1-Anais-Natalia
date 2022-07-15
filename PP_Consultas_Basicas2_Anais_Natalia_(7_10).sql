USE northwind

#ejercicio 7

SELECT category_name AS "NombreDeCategoria"
FROM categories;

#ejercicio 8

SELECT shipped_date AS "FechasRetrasadas"
FROM orders
WHERE (DATEADD (required_date, INTERVAL 5 DAY) > CURDATE());

#ejercicio 9

SELECT * 
FROM products
WHERE unit_price BETWEEN 15 AND 50;

#ejercicio 10

SELECT *
FROM products
WHERE unit_price IN (18,19,20);
