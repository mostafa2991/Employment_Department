CREATE DATABASE  IF NOT EXISTS `empitblocks` ;
USE `empitblocks`;

DROP TABLE IF EXISTS `employee`;
DROP TABLE IF EXISTS `department`;
DROP TABLE IF EXISTS `emp_dep`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `department` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

CREATE TABLE `emp_dep` (
  `employee_id` int,
  `department_id` int,
  FOREIGN KEY (employee_id) REFERENCES employee(id) ,
  FOREIGN KEY (department_id) REFERENCES department(id) ,
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO `employee` VALUES (1,'Nagy Mohamed'),
							  (2,'Ramy Sayed '),
							  (3,'Mona Ahmed '),
							  (4,'Mostafa Moosa '),
							  (5,'Marna Adel '),
							  (6,'Soma Hussin '),
							  (7,'Raly Elshazly '),
							  (8,'Doda wezo '),
							  (9,'lamia Adly '),
							  (10,'Ramy mandela ');
							  
INSERT INTO `department`VALUES(1,'Sales'),
							  (2,'IT'),
							  (3,'Java Developer'),
							  (4,'Engineer');
							  (5,'HR');
							  
INSERT INTO `emp_dep`VALUES(1,5),(2,4),(3,1),(4,4),(5,1),(6,2),(7,4),(8,1),(9,3),(10,1);


