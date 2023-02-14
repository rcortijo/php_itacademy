-- -----------------------------------------------------
-- Schema optica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `optica` DEFAULT CHARACTER SET utf8 ;
USE `optica` ;

-- -----------------------------------------------------
-- Table `optica`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`pais` (
  `idpais` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `optica`.`ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`ciudad` (
  `idciudad` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `pais` INT NOT NULL,
  PRIMARY KEY (`idciudad`),
  INDEX `fk_ciudad_pais1_idx` (`pais` ASC) ,
  CONSTRAINT `fk_ciudad_pais1`
    FOREIGN KEY (`pais`)
    REFERENCES `optica`.`pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `optica`.`proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`proveedor` (
  `idproveedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL,
  `nif` CHAR(9) NULL,
  `calle` VARCHAR(45) NULL,
  `numero` VARCHAR(45) NULL,
  `piso` VARCHAR(45) NULL,
  `puerta` VARCHAR(45) NULL,
  `codigo_postal` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `fax` VARCHAR(45) NULL,
  `ciudad` INT NOT NULL,
  PRIMARY KEY (`idproveedor`),
  INDEX `fk_proveedor_ciudad1_idx` (`ciudad` ASC) ,
  CONSTRAINT `fk_proveedor_ciudad1`
    FOREIGN KEY (`ciudad`)
    REFERENCES `optica`.`ciudad` (`idciudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `direccion_postal` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `correo` VARCHAR(45) NULL,
  `fechacrea` DATETIME NULL,
  PRIMARY KEY (`idpersona`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`cargo` (
  `idcargo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcargo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`empleado` (
  `idempleado` INT NOT NULL AUTO_INCREMENT,
  `fecha_ingreso` DATE NOT NULL,
  `persona` INT NOT NULL,
  `cargo` INT NOT NULL,
  PRIMARY KEY (`idempleado`),
  INDEX `fk_empleado_persona1_idx` (`persona` ASC) ,
  INDEX `fk_empleado_cargo1_idx` (`cargo` ASC) ,
  CONSTRAINT `fk_empleado_persona1`
    FOREIGN KEY (`persona`)
    REFERENCES `optica`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_empleado_cargo1`
    FOREIGN KEY (`cargo`)
    REFERENCES `optica`.`cargo` (`idcargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`compra` (
  `idcompra` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `total` DOUBLE NOT NULL DEFAULT 0.00,
  `proveedor` INT NOT NULL,
  `empleado` INT NOT NULL,
  INDEX `fk_compra_proveedor1_idx` (`proveedor` ASC) ,
  PRIMARY KEY (`idcompra`),
  INDEX `fk_compra_empleado1_idx` (`empleado` ASC) ,
  CONSTRAINT `fk_compra_proveedor1`
    FOREIGN KEY (`proveedor`)
    REFERENCES `optica`.`proveedor` (`idproveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_compra_empleado1`
    FOREIGN KEY (`empleado`)
    REFERENCES `optica`.`empleado` (`idempleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`marca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`marca` (
  `idmarca` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `proveedor` INT NOT NULL,
  PRIMARY KEY (`idmarca`),
  INDEX `fk_marca_proveedor1_idx` (`proveedor` ASC) ,
  CONSTRAINT `fk_marca_proveedor1`
    FOREIGN KEY (`proveedor`)
    REFERENCES `optica`.`proveedor` (`idproveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`tipo_montura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`tipo_montura` (
  `idtipomontura` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipomontura`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`producto` (
  `idproducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `color_montura` VARCHAR(45) NOT NULL,
  `color_vidrio` VARCHAR(45) NOT NULL,
  `precio_venta` DOUBLE NOT NULL DEFAULT 0.00,
  `stock` INT NOT NULL DEFAULT 0,
  `marca` INT NOT NULL,
  `tipomontura` INT NOT NULL,
  INDEX `fk_producto_marca_idx` (`marca` ASC) ,
  PRIMARY KEY (`idproducto`),
  INDEX `fk_producto_tipo_montura1_idx` (`tipomontura` ASC) ,
  CONSTRAINT `fk_producto_marca`
    FOREIGN KEY (`marca`)
    REFERENCES `optica`.`marca` (`idmarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_producto_tipo_montura1`
    FOREIGN KEY (`tipomontura`)
    REFERENCES `optica`.`tipo_montura` (`idtipomontura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`compra_detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`compra_detalle` (
  `compra` INT NOT NULL,
  `producto` INT NOT NULL,
  `cantidad` INT NOT NULL,
  `precio` DOUBLE NOT NULL,
  `importe` DOUBLE NOT NULL,
  INDEX `fk_detalle_compra_compra1_idx` (`compra` ASC) ,
  INDEX `fk_detalle_compra_producto1_idx` (`producto` ASC) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`periodo_venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`periodo_venta` (
  `idperiodoventa` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `fecha_inicio` DATE NULL,
  `fecha_fin` DATE NULL,
  PRIMARY KEY (`idperiodoventa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `persona` INT NOT NULL,
  `cliente_recomienda` INT NOT NULL,
  INDEX `fk_cliente_persona1_idx` (`persona` ASC) ,
  PRIMARY KEY (`idcliente`),
  INDEX `fk_cliente_cliente1_idx` (`cliente_recomienda` ASC) ,
  CONSTRAINT `fk_cliente_persona1`
    FOREIGN KEY (`persona`)
    REFERENCES `optica`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_cliente1`
    FOREIGN KEY (`cliente_recomienda`)
    REFERENCES `optica`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`venta` (
  `idventa` INT NOT NULL,
  `fecha` DATE NULL,
  `total` DOUBLE NULL,
  `cliente` INT NOT NULL,
  `empleado` INT NOT NULL,
  `periodoventa` INT NOT NULL,
  PRIMARY KEY (`idventa`),
  INDEX `fk_venta_cliente1_idx` (`cliente` ASC) ,
  INDEX `fk_venta_empleado1_idx` (`empleado` ASC) ,
  INDEX `fk_venta_periodo_venta1_idx` (`periodoventa` ASC) ,
  CONSTRAINT `fk_venta_cliente1`
    FOREIGN KEY (`cliente`)
    REFERENCES `optica`.`cliente` (`idcliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_empleado1`
    FOREIGN KEY (`empleado`)
    REFERENCES `optica`.`empleado` (`idempleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_periodo_venta1`
    FOREIGN KEY (`periodoventa`)
    REFERENCES `optica`.`periodo_venta` (`idperiodoventa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `optica`.`venta_detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `optica`.`venta_detalle` (
  `cantidad` INT NOT NULL,
  `venta` INT NOT NULL,
  `producto` INT NOT NULL,
  INDEX `fk_venta_detalle_venta1_idx` (`venta` ASC) ,
  INDEX `fk_venta_detalle_producto1_idx` (`producto` ASC) ,
  CONSTRAINT `fk_venta_detalle_venta1`
    FOREIGN KEY (`venta`)
    REFERENCES `optica`.`venta` (`idventa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_venta_detalle_producto1`
    FOREIGN KEY (`producto`)
    REFERENCES `optica`.`producto` (`idproducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;