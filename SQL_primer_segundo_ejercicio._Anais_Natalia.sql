CREATE SCHEMA `Tienda_de_zapatillas`;
CREATE TABLE zapatillas(
id_zapatilla INT AUTO_INCREMENT NOT NULL,
modelo VARCHAR (45) NOT NULL,
color VARCHAR (45) NOT NULL,
PRIMARY KEY (id_zapatilla)
);
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
CREATE TABLE empleados(
id_empleado INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (45) NOT NULL,
tienda VARCHAR (45) NOT NULL,
salario INT NULL,
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleado)
);

CREATE TABLE IF NOT EXISTS `facturas` (
  `id_factura` INT NOT NULL AUTO_INCREMENT,
  `id_zapatilla` INT NOT NULL,
  `numero factura` INT NOT NULL,
  PRIMARY KEY (`id_factura`),
  CONSTRAINT `fk_facturas`
	FOREIGN KEY (`id_zapatilla`)
    REFERENCES `facturas`  (id_factura) ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `facturas` (
  `id_factura` INT NOT NULL AUTO_INCREMENT,
  `id_empleado` INT NOT NULL,
  `numero factura` INT NOT NULL,
  PRIMARY KEY (`id_factura`),
  CONSTRAINT `fk_facturas`
	FOREIGN KEY (`id_empleado`)
    REFERENCES `facturas`  (id_factura) ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `facturas` (
  `id_factura` INT NOT NULL AUTO_INCREMENT,
  `id_cliente` INT NOT NULL,
  `numero factura` INT NOT NULL,
  PRIMARY KEY (`id_factura`),
  CONSTRAINT `fk_facturas`
	FOREIGN KEY (`id_cliente`)
    REFERENCES `facturas`  (id_factura) ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE = InnoDB;

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











