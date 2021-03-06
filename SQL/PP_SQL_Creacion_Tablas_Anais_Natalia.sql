CREATE SCHEMA `Tienda_de_zapatillas`;

USE Tienda_de_zapatillas;


#1
CREATE TABLE zapatillas(
id_zapatilla INT AUTO_INCREMENT NOT NULL,
modelo VARCHAR (45) NOT NULL,
color VARCHAR (45) NOT NULL,
PRIMARY KEY (id_zapatilla)
);

#2
 CREATE TABLE clientes(
 id_cliente INT AUTO_INCREMENT NOT NULL,
 nombre VARCHAR (45) NOT NULL,
 numero_telefono INT (9) NOT NULL, 
 email VARCHAR (45) NOT NULL,
 direccion VARCHAR (45) NOT NULL,
 ciudad VARCHAR (45) NULL,
 provincia VARCHAR (45) NOT NULL,
 pais VARCHAR (45) NOT NULL,
 codigo_postal VARCHAR (45) NOT NULL,
 PRIMARY KEY (id_cliente)
);


#3
CREATE TABLE empleados(
id_empleado INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (45) NOT NULL,
tienda VARCHAR (45) NOT NULL,
salario INT NULL,
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado)
);


#4
CREATE TABLE IF NOT EXISTS facturas(
id_factura INT AUTO_INCREMENT NOT NULL,
numero_factura VARCHAR (45) NOT NULL,
fecha DATE NOT NULL,
id_zapatilla INT NOT NULL,
id_empleado INT NOT NULL,
id_cliente INT NOT NULL,
PRIMARY KEY (id_factura),
CONSTRAINT fk_facturas
	FOREIGN KEY (id_zapatilla)
	REFERENCES facturas (id_factura),
CONSTRAINT fk_facturas
	FOREIGN KEY (id_empleado)
    REFERENCES facturas  (id_factura),
CONSTRAINT fk_facturas
	FOREIGN KEY (id_cliente)
    REFERENCES facturas  (id_factura));
    








