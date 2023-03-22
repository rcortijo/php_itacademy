-- -----------------------------------------------------
-- Schema youtube
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `youtube` DEFAULT CHARACTER SET utf8 ;
USE `youtube` ;

-- -----------------------------------------------------
-- Table `youtube`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`pais` (
  `idpais` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`usuario` (
  `idusuario` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `nombre_usuario` VARCHAR(45) NULL,
  `fecha_nacimiento` DATE NULL,
  `sexo` ENUM('M', 'F') NULL,
  `codigo_postal` VARCHAR(45) NULL,
  `pais` INT NOT NULL,
  PRIMARY KEY (`idusuario`),
  INDEX `fk_usuario_pais_idx` (`pais` ASC) ,
  CONSTRAINT `fk_usuario_pais`
    FOREIGN KEY (`pais`)
    REFERENCES `youtube`.`pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`categoria_video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`categoria_video` (
  `idcategoria_video` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategoria_video`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`categoria_canal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`categoria_canal` (
  `idcategoria_canal` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategoria_canal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`canal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`canal` (
  `idcanal` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(250) NULL,
  `usuario` INT NOT NULL,
  `categoria_canal` INT NOT NULL,
  PRIMARY KEY (`idcanal`),
  INDEX `fk_canal_usuario1_idx` (`usuario` ASC) ,
  INDEX `fk_canal_categoria_canal1_idx` (`categoria_canal` ASC) ,
  CONSTRAINT `fk_canal_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `youtube`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_canal_categoria_canal1`
    FOREIGN KEY (`categoria_canal`)
    REFERENCES `youtube`.`categoria_canal` (`idcategoria_canal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`video` (
  `idvideo` INT NOT NULL,
  `titulo` VARCHAR(45) NULL,
  `descripcion` VARCHAR(250) NULL,
  `tamanio` INT NULL,
  `nombre_archivo` VARCHAR(45) NULL,
  `duracion` TIME NULL,
  `thumbnail` VARCHAR(45) NULL,
  `estado` ENUM('publico', 'privado', 'oculto') NULL,
  `nro_reproducciones` INT NULL,
  `nro_likes` INT NULL,
  `nro_dislikes` INT NULL,
  `categoria_video` INT NOT NULL,
  `canal` INT NOT NULL,
  PRIMARY KEY (`idvideo`),
  INDEX `fk_video_categoria_video1_idx` (`categoria_video` ASC) ,
  INDEX `fk_video_canal1_idx` (`canal` ASC) ,
  CONSTRAINT `fk_video_categoria_video1`
    FOREIGN KEY (`categoria_video`)
    REFERENCES `youtube`.`categoria_video` (`idcategoria_video`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_video_canal1`
    FOREIGN KEY (`canal`)
    REFERENCES `youtube`.`canal` (`idcanal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`publicacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`publicacion` (
  `idpublicacion` INT NOT NULL AUTO_INCREMENT,
  `fecha_hora` DATETIME NOT NULL,
  `texto` TEXT NOT NULL,
  `nro_reproducciones` INT NULL,
  `nro_likes` INT NULL,
  `nro_dislikes` INT NULL,
  `imagen` VARCHAR(80) NULL,
  `video` INT NULL,
  `canal` INT NOT NULL,
  PRIMARY KEY (`idpublicacion`),
  INDEX `fk_publicacion_video1_idx` (`video` ASC) ,
  INDEX `fk_publicacion_canal1_idx` (`canal` ASC) ,
  CONSTRAINT `fk_publicacion_video1`
    FOREIGN KEY (`video`)
    REFERENCES `youtube`.`video` (`idvideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicacion_canal1`
    FOREIGN KEY (`canal`)
    REFERENCES `youtube`.`canal` (`idcanal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`video_etiqueta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`video_etiqueta` (
  `idetiqueta` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idetiqueta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`suscripcion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`suscripcion` (
  `fecha_hora` DATETIME NULL,
  `usuario` INT NOT NULL,
  `canal` INT NOT NULL,
  INDEX `fk_suscripcion_usuario1_idx` (`usuario` ASC) ,
  INDEX `fk_suscripcion_canal1_idx` (`canal` ASC) ,
  CONSTRAINT `fk_suscripcion_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `youtube`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_suscripcion_canal1`
    FOREIGN KEY (`canal`)
    REFERENCES `youtube`.`canal` (`idcanal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`publicacion_reaccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`publicacion_reaccion` (
  `fecha_hora` DATETIME NOT NULL,
  `tipo_reaccion` ENUM('Like', 'Dislike') NULL,
  `usuario` INT NOT NULL,
  `publicacion` INT NOT NULL,
  INDEX `fk_video_reaccion_usuario1_idx` (`usuario` ASC) ,
  INDEX `fk_video_reaccion_publicacion1_idx` (`publicacion` ASC) ,
  CONSTRAINT `fk_video_reaccion_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `youtube`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_video_reaccion_publicacion1`
    FOREIGN KEY (`publicacion`)
    REFERENCES `youtube`.`publicacion` (`idpublicacion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`playlist` (
  `idplaylist` INT NOT NULL AUTO_INCREMENT,
  `fecha_hora` DATETIME NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `estado` ENUM('publico', 'privado') NOT NULL,
  `usuario` INT NOT NULL,
  PRIMARY KEY (`idplaylist`),
  INDEX `fk_playlist_usuario1_idx` (`usuario` ASC) ,
  CONSTRAINT `fk_playlist_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `youtube`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`playlist_video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`playlist_video` (
  `video` INT NOT NULL,
  `playlist` INT NOT NULL,
  INDEX `fk_playlist_video_video1_idx` (`video` ASC) ,
  INDEX `fk_playlist_video_playlist1_idx` (`playlist` ASC) ,
  CONSTRAINT `fk_playlist_video_video1`
    FOREIGN KEY (`video`)
    REFERENCES `youtube`.`video` (`idvideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_playlist_video_playlist1`
    FOREIGN KEY (`playlist`)
    REFERENCES `youtube`.`playlist` (`idplaylist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`comentario` (
  `idcomentario` INT NOT NULL,
  `comentario` VARCHAR(300) NOT NULL,
  `fecha_hora` DATETIME NOT NULL,
  `usuario` INT NOT NULL,
  `video` INT NOT NULL,
  PRIMARY KEY (`idcomentario`),
  INDEX `fk_comentario_usuario1_idx` (`usuario` ASC) ,
  INDEX `fk_comentario_video1_idx` (`video` ASC) ,
  CONSTRAINT `fk_comentario_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `youtube`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_video1`
    FOREIGN KEY (`video`)
    REFERENCES `youtube`.`video` (`idvideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`comentario_reaccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`comentario_reaccion` (
  `fecha_hora` DATETIME NOT NULL,
  `tipo_reaccion` ENUM('Like', 'Dislike') NOT NULL,
  `usuario` INT NOT NULL,
  `comentario` INT NOT NULL,
  INDEX `fk_comentario_reaccion_usuario1_idx` (`usuario` ASC) ,
  INDEX `fk_comentario_reaccion_comentario1_idx` (`comentario` ASC) ,
  CONSTRAINT `fk_comentario_reaccion_usuario1`
    FOREIGN KEY (`usuario`)
    REFERENCES `youtube`.`usuario` (`idusuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comentario_reaccion_comentario1`
    FOREIGN KEY (`comentario`)
    REFERENCES `youtube`.`comentario` (`idcomentario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youtube`.`video_etiqueta_has_video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youtube`.`video_etiqueta_has_video` (
  `video_etiqueta` INT NOT NULL,
  `video` INT NOT NULL,
  PRIMARY KEY (`video_etiqueta`, `video`),
  INDEX `fk_video_etiqueta_has_video_video1_idx` (`video` ASC) ,
  INDEX `fk_video_etiqueta_has_video_video_etiqueta1_idx` (`video_etiqueta` ASC) ,
  CONSTRAINT `fk_video_etiqueta_has_video_video_etiqueta1`
    FOREIGN KEY (`video_etiqueta`)
    REFERENCES `youtube`.`video_etiqueta` (`idetiqueta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_video_etiqueta_has_video_video1`
    FOREIGN KEY (`video`)
    REFERENCES `youtube`.`video` (`idvideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
