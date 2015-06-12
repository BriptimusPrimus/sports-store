SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `sportsstore` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `sportsstore` ;

-- -----------------------------------------------------
-- Table `sportsstore`.`products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sportsstore`.`products` ;

CREATE TABLE IF NOT EXISTS `sportsstore`.`products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

USE `sportsstore` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
