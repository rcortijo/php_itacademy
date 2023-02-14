

-- -----------------------------------------------------
-- Schema spotify
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `spotify` DEFAULT CHARACTER SET utf8 ;
USE `spotify` ;

-- -----------------------------------------------------
-- Table `spotify`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`pais` (
  `idpais` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `nombre_usuario` VARCHAR(45) NOT NULL,
  `fecha_nacimiento` DATE NOT NULL,
  `sexo` ENUM('M', 'F') NOT NULL,
  `codigo_postal` VARCHAR(10) NOT NULL,
  `tipo_usuario` ENUM('free', 'premium') NOT NULL,
  `pais` INT NOT NULL,
  PRIMARY KEY (`idusuario`),
  INDEX `fk_usuario_pais1_idx` (`pais` ASC) ,
  CONSTRAINT `fk_usuario_pais1`
    FOREIGN KEY (`pais`)
    REFERENCES `spotify`.`pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`pago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`pago` (
  `idpago` INT NOT NULL AUTO_INCREMENT,
  `fecha_hora` DATETIME NOT NULL,
  `numeroOrden` INT NOT NULL,
  `total` DOUBLE NOT NULL,
  `tipo_pago` ENUM('tarjeta', 'paypal') NOT NULL,
  `usuario` INT NOT NULL,
  PRIMARY KEY (`idpago`),
  INDEX `fk_pago_usuario1_idx` (`usuario` ASC) ,
  CONSTRAINT `fk_pago_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `spotify`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`suscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`suscripcion` (
  `idsuscripcion` INT NOT NULL AUTO_INCREMENT,
  `fecha_inicio` DATE NOT NULL,
  `fecha_renovacion` DATE NOT NULL,
  `estado` ENUM('activa', 'inactiva') NULL,
  `pago` INT NOT NULL,
  PRIMARY KEY (`idsuscripcion`),
  INDEX `fk_suscripcion_pago1_idx` (`pago` ASC) ,
  CONSTRAINT `fk_suscripcion_pago1`
    FOREIGN KEY (`pago`)
    REFERENCES `spotify`.`pago` (`idpago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`tarjeta_credito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`tarjeta_credito` (
  `pago` INT NOT NULL,
  `numero_tarjeta` VARCHAR(45) NOT NULL,
  `mes_caducidad` CHAR(2) NOT NULL,
  `anio_caducidad` INT(4) NOT NULL,
  `codigo_seguridad` CHAR(3) NOT NULL,
  INDEX `fk_tarjeta_credito_pago1_idx` (`pago` ASC) ,
  CONSTRAINT `fk_tarjeta_credito_pago1`
    FOREIGN KEY (`pago`)
    REFERENCES `spotify`.`pago` (`idpago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`paypal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`paypal` (
  `pago` INT NOT NULL,
  `nombre_usuario` VARCHAR(45) NOT NULL,
  INDEX `fk_paypal_pago1_idx` (`pago` ASC) ,
  CONSTRAINT `fk_paypal_pago1`
    FOREIGN KEY (`pago`)
    REFERENCES `spotify`.`pago` (`idpago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`playlist` (
  `idplaylist` INT NOT NULL AUTO_INCREMENT,
  `fecha_hora` DATETIME NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `nro_canciones` INT NOT NULL,
  `estado` ENUM('privada', 'compartida') NULL,
  `tipo` ENUM('activa', 'borrada') NOT NULL,
  `fecha_elimina` DATETIME NULL,
  `usuario` INT NOT NULL,
  PRIMARY KEY (`idplaylist`),
  INDEX `fk_playlist_usuario1_idx` (`usuario` ASC) ,
  CONSTRAINT `fk_playlist_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `spotify`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`artista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`artista` (
  `idartista` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `imagen` VARCHAR(100) NULL,
  PRIMARY KEY (`idartista`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`genero` (
  `idgenero` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idgenero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`album`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`album` (
  `idalbum` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `anio_publicacion` INT NOT NULL,
  `imagen_portada` VARCHAR(100) NULL,
  `artista` INT NOT NULL,
  `genero` INT NOT NULL,
  PRIMARY KEY (`idalbum`),
  INDEX `fk_album_artista1_idx` (`artista` ASC) ,
  INDEX `fk_album_Genero1_idx` (`genero` ASC) ,
  CONSTRAINT `fk_album_artista1`
    FOREIGN KEY (`artista`)
    REFERENCES `spotify`.`artista` (`idartista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_album_Genero1`
    FOREIGN KEY (`genero`)
    REFERENCES `spotify`.`genero` (`idgenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`cancion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`cancion` (
  `idcancion` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(45) NOT NULL,
  `duracion` TIME NOT NULL,
  `nro_reproducciones` INT NULL DEFAULT 0,
  `album` INT NOT NULL,
  PRIMARY KEY (`idcancion`),
  INDEX `fk_cancion_album1_idx` (`album` ASC) ,
  CONSTRAINT `fk_cancion_album1`
    FOREIGN KEY (`album`)
    REFERENCES `spotify`.`album` (`idalbum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`playlist_cancion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`playlist_cancion` (
  `fecha_hora` DATETIME NOT NULL,
  `playlist` INT NOT NULL,
  `cancion` INT NOT NULL,
  INDEX `fk_playlist_cancion_playlist1_idx` (`playlist` ASC) ,
  INDEX `fk_playlist_cancion_cancion1_idx` (`cancion` ASC) ,
  CONSTRAINT `fk_playlist_cancion_playlist1`
    FOREIGN KEY (`playlist`)
    REFERENCES `spotify`.`playlist` (`idplaylist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_playlist_cancion_cancion1`
    FOREIGN KEY (`cancion`)
    REFERENCES `spotify`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`seguidor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`seguidor` (
  `idseguidor` INT NOT NULL AUTO_INCREMENT,
  `usuario` INT NOT NULL,
  `artista` INT NOT NULL,
  PRIMARY KEY (`idseguidor`),
  INDEX `fk_seguidor_usuario1_idx` (`usuario` ASC) ,
  INDEX `fk_seguidor_artista1_idx` (`artista` ASC) ,
  CONSTRAINT `fk_seguidor_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `spotify`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_seguidor_artista1`
    FOREIGN KEY (`artista`)
    REFERENCES `spotify`.`artista` (`idartista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`album_favorito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`album_favorito` (
  `usuario` INT NOT NULL,
  `album` INT NOT NULL,
  INDEX `fk_album_favorito_usuario1_idx` (`usuario` ASC) ,
  INDEX `fk_cancion_favorita_album1_idx` (`album` ASC) ,
  CONSTRAINT `fk_album_favorito_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `spotify`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cancion_favorita_album1`
    FOREIGN KEY (`album`)
    REFERENCES `spotify`.`album` (`idalbum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`cancion_favorita`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`cancion_favorita` (
  `cancion` INT NOT NULL,
  `usuario` INT NOT NULL,
  INDEX `fk_cancion_favorita_cancion1_idx` (`cancion` ASC) ,
  INDEX `fk_cancion_favorita_usuario1_idx` (`usuario` ASC) ,
  CONSTRAINT `fk_cancion_favorita_cancion1`
    FOREIGN KEY (`cancion`)
    REFERENCES `spotify`.`cancion` (`idcancion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cancion_favorita_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `spotify`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `spotify`.`artista_relacionado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `spotify`.`artista_relacionado` (
  `artista` INT NOT NULL,
  INDEX `fk_relacion_artista1_idx` (`artista` ASC) ,
  CONSTRAINT `fk_relacion_artista1`
    FOREIGN KEY (`artista`)
    REFERENCES `spotify`.`artista` (`idartista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

