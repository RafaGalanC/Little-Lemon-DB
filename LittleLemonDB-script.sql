-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LittleLemonDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDB` DEFAULT CHARACTER SET utf8 ;
USE `LittleLemonDB` ;

-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Bookings` (
  `Booking ID` INT NOT NULL AUTO_INCREMENT,
  `Date` DATE NOT NULL,
  `Table Number` DECIMAL NOT NULL,
  PRIMARY KEY (`Booking ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Customers` (
  `Customer ID` INT NOT NULL AUTO_INCREMENT,
  `FullName` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `ContactNumber` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Customer ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Menu` (
  `Menu Item ID` INT NOT NULL AUTO_INCREMENT,
  `Menu Category` VARCHAR(45) NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Price` DECIMAL NOT NULL,
  PRIMARY KEY (`Menu Item ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Staff Information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Staff Information` (
  `Staff ID` INT NOT NULL AUTO_INCREMENT,
  `Role` VARCHAR(45) NOT NULL,
  `Salary` DECIMAL NOT NULL,
  PRIMARY KEY (`Staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Orders` (
  `Order ID` INT NOT NULL AUTO_INCREMENT,
  `Booking ID` INT NOT NULL,
  `Order Date` DATE NOT NULL,
  `Quantity` DECIMAL NOT NULL,
  `Total Cost` DECIMAL NOT NULL,
  `Customer ID` INT NOT NULL,
  `Menu Item ID` INT NOT NULL,
  `Staff ID` INT NOT NULL,
  PRIMARY KEY (`Order ID`),
  INDEX `Booking ID_fk_idx` (`Booking ID` ASC) VISIBLE,
  INDEX `Customer ID_fk_idx` (`Customer ID` ASC) VISIBLE,
  INDEX `Menu ID_fk_idx` (`Menu Item ID` ASC) VISIBLE,
  INDEX `Staff ID_fk_idx` (`Staff ID` ASC) VISIBLE,
  CONSTRAINT `Booking ID_fk`
    FOREIGN KEY (`Booking ID`)
    REFERENCES `LittleLemonDB`.`Bookings` (`Booking ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Customer ID_fk`
    FOREIGN KEY (`Customer ID`)
    REFERENCES `LittleLemonDB`.`Customers` (`Customer ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Menu Item ID_fk`
    FOREIGN KEY (`Menu Item ID`)
    REFERENCES `LittleLemonDB`.`Menu` (`Menu Item ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Staff ID_fk`
    FOREIGN KEY (`Staff ID`)
    REFERENCES `LittleLemonDB`.`Staff Information` (`Staff ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LittleLemonDB`.`Order Delivery Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Order Delivery Status` (
  `Order ID` INT NOT NULL AUTO_INCREMENT,
  `Delivery Date` DATE NOT NULL,
  `Delivery Status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Order ID`),
  CONSTRAINT `Order ID_fk`
    FOREIGN KEY (`Order ID`)
    REFERENCES `LittleLemonDB`.`Orders` (`Order ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
