-- MySQL Script generated by MySQL Workbench
-- Sun Jun  9 21:04:01 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `ID_Cliente` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `Total_Pessoas_Trazidas` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tempo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tempo` (
  `ID_Tempo` INT NOT NULL AUTO_INCREMENT,
  `Ano` INT NOT NULL,
  `Mes` INT NOT NULL,
  `Dia` INT NOT NULL,
  PRIMARY KEY (`ID_Tempo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pedido_Fato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pedido_Fato` (
  `ID_Pedido` INT NOT NULL AUTO_INCREMENT,
  `ID_Cliente` INT NOT NULL,
  `ID_Tempo` INT NOT NULL,
  `Valor_Total` DECIMAL(10,2) NULL,
  `Valor_Unitario` DECIMAL(10,2) NOT NULL,
  `Quantidade` INT NOT NULL,
  PRIMARY KEY (`ID_Pedido`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
