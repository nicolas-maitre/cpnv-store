-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cpnvstore
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cpnvstore` ;

-- -----------------------------------------------------
-- Schema cpnvstore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cpnvstore` DEFAULT CHARACTER SET utf8 ;
USE `cpnvstore` ;

-- -----------------------------------------------------
-- Table `cpnvstore`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cpnvstore`.`roles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `index` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cpnvstore`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cpnvstore`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NULL,
  `last_name` VARCHAR(100) NULL,
  `email` VARCHAR(100) NULL,
  `role_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_users_roles1`
    FOREIGN KEY (`role_id`)
    REFERENCES `cpnvstore`.`roles` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cpnvstore`.`apps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cpnvstore`.`apps` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `description` VARCHAR(1000) NULL,
  `image` INT NULL,
  `download_count` INT NULL DEFAULT 0,
  `location` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cpnvstore`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cpnvstore`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cpnvstore`.`app_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cpnvstore`.`app_category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `category_id` INT NOT NULL,
  `app_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_app_category_categories1`
    FOREIGN KEY (`category_id`)
    REFERENCES `cpnvstore`.`categories` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_app_category_apps1`
    FOREIGN KEY (`app_id`)
    REFERENCES `cpnvstore`.`apps` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
