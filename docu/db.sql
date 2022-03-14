
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP DATABASE IF EXISTS t1;
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `t1` DEFAULT CHARACTER SET utf8 ;
USE `t1` ;

-- -----------------------------------------------------
-- Table `mydb`.`CITY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `t1`.`CITY` (
  `cno` INT NOT NULL AUTO_INCREMENT,
  `cname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cno`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `t1`.`LOCAL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `t1`.`LOCAL` (
  `lno` INT NOT NULL AUTO_INCREMENT,
  `lname` VARCHAR(45) NOT NULL,
  `CITY_no` INT NOT NULL,
  PRIMARY KEY (`lno`),
  INDEX `fk_LOCAL_CITY_idx` (`CITY_no` ASC) VISIBLE,
  CONSTRAINT `fk_LOCAL_CITY`
    FOREIGN KEY (`CITY_no`)
    REFERENCES `t1`.`CITY` (`cno`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

 show tables;
 use t1;
 select * from city;
 select * from 'local';
 
insert into city(cname) value('서울');

insert into local(lname,CITY_no) value('강남구',1);
insert into local(lname,CITY_no) value('노원구',1);
insert into local(lname,CITY_no) value('도봉구',1);
insert into local(lname,CITY_no) value('강북구',1);
insert into local(lname,CITY_no) value('성북구',1);
insert into local(lname,CITY_no) value('은평구',1);
 