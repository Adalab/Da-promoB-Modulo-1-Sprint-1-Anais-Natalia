USE Tienda_de_zapatillas;

ALTER TABLE zapatillas
ADD marca VARCHAR (45) NOT NULL,
ADD talla INT NOT NULL;

ALTER TABLE empleados
MODIFY COLUMN salario FLOAT NULL;

ALTER TABLE clientes
DROP COLUMN pais;

ALTER TABLE clientes
MODIFY COLUMN codigo_postal INT (5) NOT NULL;

ALTER TABLE facturas
ADD COLUMN total FLOAT (45) NOT NULL;


