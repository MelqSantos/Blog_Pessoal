-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tb_usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `nickname` VARCHAR(45) NULL,
  `senha` VARCHAR(45) NOT NULL,
  `foto` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_postagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tb_postagem` (
  `id_postagem` INT NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `texto` VARCHAR(365) NOT NULL,
  `data` DATETIME NOT NULL,
  `id_usuario` INT NOT NULL,
  PRIMARY KEY (`id_postagem`),
  INDEX `fk_id_postagem_idx` (`id_usuario` ASC),
  CONSTRAINT `fk_id_postagem`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `mydb`.`tb_usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tb_temas` (
  `id_tema` INT NOT NULL,
  `noticia` VARCHAR(45) NULL,
  `podcast` VARCHAR(45) NULL,
  `livre` VARCHAR(45) NULL,
  `id_postagem` INT NOT NULL,
  PRIMARY KEY (`id_tema`),
  INDEX `fk_id_postagem_idx` (`id_postagem` ASC),
  CONSTRAINT `fk_id_postagem`
    FOREIGN KEY (`id_postagem`)
    REFERENCES `mydb`.`tb_postagem` (`id_postagem`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
