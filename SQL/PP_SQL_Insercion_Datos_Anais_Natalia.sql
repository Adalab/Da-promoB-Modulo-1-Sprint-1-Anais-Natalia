USE Tienda_de_zapatillas;


#1
INSERT INTO zapatillas (modelo, color, marca, talla)
VALUES ('XQYUN', 'negro', 'nike', 42),
('UOPMN', 'rosas', 'nike', 39),
('OPNYT', 'verdes', 'adidas', 35);

INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Laura', 'Alcobendas', 25987, '2010-09-03'),
('Maria', 'Sevilla', 0 , '2001-04-11'),
('Ester', 'Oviedo', 30166.98, '2000-11-29');

INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES ('Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', 28176),
('Lorena', '289345678', 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
('Carmen', '298463759', 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', '23456');

INSERT INTO facturas (numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
VALUES (123, '2001-11-12', 1, 2, 1, 54.98),
(1234, '2005-05-23', 1, 1, 3, 89.91),
(12345, '2015-09-18', 2, 3, 3, 76.23);

#2
SET SQL_SAFE_UPDATES = 0; 
UPDATE zapatillas
SET color = "amarillo"
WHERE color = "rosas";

UPDATE empleados
SET tienda = "A Coruña"
WHERE nombre = "Laura";

SET SQL_SAFE_UPDATES = 0; 
UPDATE clientes
SET numero_telefono = "123456728"
WHERE nombre = "Monica";

UPDATE facturas
SET total = 89.91
WHERE id_cliente = 2;

