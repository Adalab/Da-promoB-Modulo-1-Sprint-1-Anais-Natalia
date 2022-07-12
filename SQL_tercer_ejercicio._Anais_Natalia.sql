USE Tienda_de_zapatillas;

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

INSERT INTO zapatillas (color
VALUES 


UPDATE zapatillas
SET color = amarillo
WHERE id_zapatilla = 2

UPDATE empleados
SET tienda = A Coruña
WHERE id_empleado = 7



