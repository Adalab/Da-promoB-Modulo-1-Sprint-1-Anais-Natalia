USE Tienda_de_zapatillas;


#1
ALTER TABLE zapatillas
ADD marca VARCHAR (45) NOT NULL,
ADD talla INT NOT NULL;


#2
ALTER TABLE empleados
MODIFY COLUMN salario FLOAT NULL;

#3
ALTER TABLE clientes
DROP COLUMN pais;

ALTER TABLE clientes
MODIFY COLUMN codigo_postal INT (5) NOT NULL;


#4
ALTER TABLE facturas
ADD COLUMN total FLOAT (45) NOT NULL;


