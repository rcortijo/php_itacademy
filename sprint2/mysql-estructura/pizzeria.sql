
-- -----------------------------------------------------
-- Schema pizzeria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pizzeria` DEFAULT CHARACTER SET utf8 ;
USE `pizzeria` ;

-- -----------------------------------------------------
-- Table `pizzeria`.`categoria_pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`categoria_pizza` (
  `idcategoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`tipo_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`tipo_producto` (
  `idtipoproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipoproducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `descripcion` VARCHAR(150) NULL,
  `imagen` VARCHAR(150) NULL,
  `precio` DOUBLE NOT NULL,
  `tipoproducto` INT NOT NULL,
  `categoria` INT NULL,
  PRIMARY KEY (`idproducto`),
  INDEX `fk_producto_categoria_idx` (`categoria` ASC) ,
  INDEX `fk_producto_tipo_producto1_idx` (`tipoproducto` ASC) ,
  CONSTRAINT `fk_producto_categoria`
    FOREIGN KEY (`categoria`)
    REFERENCES `pizzeria`.`categoria_pizza` (`idcategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_tipo_producto1`
    FOREIGN KEY (`tipoproducto`)
    REFERENCES `pizzeria`.`tipo_producto` (`idtipoproducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`provincia` (
  `idprovincia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idprovincia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`localidad` (
  `idlocalidad` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `provincia` INT NOT NULL,
  PRIMARY KEY (`idlocalidad`),
  INDEX `fk_localidad_provincia1_idx` (`provincia` ASC) ,
  CONSTRAINT `fk_localidad_provincia1`
    FOREIGN KEY (`provincia`)
    REFERENCES `pizzeria`.`provincia` (`idprovincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`tienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`tienda` (
  `idtienda` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(145) NOT NULL,
  `codigo_postal` VARCHAR(45) NULL,
  `localidad` INT NOT NULL,
  PRIMARY KEY (`idtienda`),
  INDEX `fk_tienda_localidad1_idx` (`localidad` ASC) ,
  CONSTRAINT `fk_tienda_localidad1`
    FOREIGN KEY (`localidad`)
    REFERENCES `pizzeria`.`localidad` (`idlocalidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `nif` CHAR(9) NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  `correo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `persona` INT NOT NULL,
  PRIMARY KEY (`idcliente`),
  INDEX `fk_cliente_persona1_idx` (`persona` ASC) ,
  CONSTRAINT `fk_cliente_persona1`
    FOREIGN KEY (`persona`)
    REFERENCES `pizzeria`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`cargo` (
  `idcargo` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`empleado` (
  `idempleado` INT NOT NULL AUTO_INCREMENT,
  `fecha_ingreso` VARCHAR(45) NULL,
  `persona` INT NOT NULL,
  `tienda` INT NOT NULL,
  `cargo` INT NOT NULL,
  PRIMARY KEY (`idempleado`),
  INDEX `fk_empleado_persona1_idx` (`persona` ASC) ,
  INDEX `fk_empleado_tienda1_idx` (`tienda` ASC) ,
  INDEX `fk_empleado_cargo1_idx` (`cargo` ASC) ,
  CONSTRAINT `fk_empleado_persona1`
    FOREIGN KEY (`persona`)
    REFERENCES `pizzeria`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleado_tienda1`
    FOREIGN KEY (`tienda`)
    REFERENCES `pizzeria`.`tienda` (`idtienda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleado_cargo1`
    FOREIGN KEY (`cargo`)
    REFERENCES `pizzeria`.`cargo` (`idcargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`pedido` (
  `idpedido` INT NOT NULL AUTO_INCREMENT,
  `fecha_hora` DATETIME NOT NULL,
  `tipo` ENUM('reparto', 'recojo') NOT NULL,
  `precio_total` DOUBLE NOT NULL,
  `direccion_entrega` VARCHAR(150) NULL,
  `cliente` INT NOT NULL,
  `empleado` INT NOT NULL,
  PRIMARY KEY (`idpedido`),
  INDEX `fk_pedido_cliente1_idx` (`cliente` ASC) ,
  INDEX `fk_pedido_empleado1_idx` (`empleado` ASC) ,
  CONSTRAINT `fk_pedido_cliente1`
    FOREIGN KEY (`cliente`)
    REFERENCES `pizzeria`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_empleado1`
    FOREIGN KEY (`empleado`)
    REFERENCES `pizzeria`.`empleado` (`idempleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`pedido_detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`pedido_detalle` (
  `cantidad` INT NOT NULL,
  `precio_unitario` DOUBLE NULL,
  `importe` DOUBLE NULL,
  `pedido` INT NOT NULL,
  `producto` INT NOT NULL,
  INDEX `fk_pedido_detalle_pedido1_idx` (`pedido` ASC) ,
  INDEX `fk_pedido_detalle_producto1_idx` (`producto` ASC) ,
  CONSTRAINT `fk_pedido_detalle_pedido1`
    FOREIGN KEY (`pedido`)
    REFERENCES `pizzeria`.`pedido` (`idpedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_detalle_producto1`
    FOREIGN KEY (`producto`)
    REFERENCES `pizzeria`.`producto` (`idproducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pizzeria`.`pedido_entrega`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pizzeria`.`pedido_entrega` (
  `fecha_hora` DATETIME NOT NULL,
  `pedido` INT NOT NULL,
  `repartidor` INT NOT NULL,
  INDEX `fk_pedido_entrega_pedido1_idx` (`pedido` ASC) ,
  INDEX `fk_pedido_entrega_empleado1_idx` (`repartidor` ASC) ,
  CONSTRAINT `fk_pedido_entrega_pedido1`
    FOREIGN KEY (`pedido`)
    REFERENCES `pizzeria`.`pedido` (`idpedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pedido_entrega_empleado1`
    FOREIGN KEY (`repartidor`)
    REFERENCES `pizzeria`.`empleado` (`idempleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
