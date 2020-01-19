-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema statelakedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `statelakedb` ;

-- -----------------------------------------------------
-- Schema statelakedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `statelakedb` DEFAULT CHARACTER SET utf8 ;
USE `statelakedb` ;

-- -----------------------------------------------------
-- Table `Lake`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Lake` ;

CREATE TABLE IF NOT EXISTS `Lake` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `size_in_acer` INT NULL,
  `open_for_ice_fishing` TINYINT NULL,
  `entry_fee` INT NULL,
  `fish_species_in_lake` VARCHAR(100) NULL,
  `elevation` INT NULL,
  `county` VARCHAR(45) NULL,
  `notes` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS kaishu@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'kaishu'@'localhost' IDENTIFIED BY 'kaishu';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'kaishu'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Lake`
-- -----------------------------------------------------
START TRANSACTION;
USE `statelakedb`;
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (1, 'Acascosa Lake', NULL, NULL, NULL, NULL, 10984, 'Conejos', NULL);
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (2, 'Antero Reservoir', 2500, true, 0, 'Rainbow Trout, cutbow Trout, Brown Trout', 8942, 'Park', 'Very famous for catching big trout');
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (3, 'Aurora Reservoir', 31650, true, 13, 'Rainbow Trout, Small mouth bass, walleye', NULL, 'Aurora', 'Owns by Denver Water, State park pass won\'t apply');
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (4, 'Barr Lake', 2715, true, 7, NULL, NULL, 'Adams', NULL);
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (5, 'Boulder Reservoir', 13270, NULL, NULL, NULL, 5177, 'Boulder', NULL);
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (6, 'Blue Mesa Reservoir', 9180, true, 0, 'Rainbow Trout, Lake Trout, Brown Trout, Northern Pike', 7519, 'Gunnison', 'Huge lake with large fish.');
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (7, 'Cherry Creek Reservoir', 3346, true, 7, 'Rainbow Trout, Lake Trout, Bass, Northern Pike', NULL, 'Arapahoe', 'Located in heart of Denver Metro, be careful ice fishing since ice condition changes daily');
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (8, 'Chatfield Reservoir', 3018, true, 7, 'Rainbow Trout, Lake Trout, Bass, Northern Pike', NULL, 'Douglas and Jeffeson', 'Good lake for walleye fishing');
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (9, 'Dillon Reservoir', 3233, true, 0, 'Rainbow Trout, kokanee salmon,Arctic Char, Northern Pike', 9017, 'Summit', NULL);
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (10, 'Eleven Mile Reservoir', 7662, true, NULL, 'Rainbow Trout, Lake Trout, Bass, Northern Pike', NULL, 'Park', '');
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (11, 'Grand Lake', 507, true, 0, 'Rainbow Trout, Lake Trout, Bass, Northern Pike', 8367, 'Grand', '389 ft deep');
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (12, 'John Martin Reservoir', 3852, false, 7, 'Bass, Trout, Drum', 3840, 'Bent', 'Very good bass fishing lake');
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (13, 'Twin Lakes', NULL, true, NULL, NULL, NULL, 'lake', NULL);
INSERT INTO `Lake` (`id`, `name`, `size_in_acer`, `open_for_ice_fishing`, `entry_fee`, `fish_species_in_lake`, `elevation`, `county`, `notes`) VALUES (14, 'Jackson Lake', NULL, NULL, NULL, NULL, NULL, '', NULL);

COMMIT;

