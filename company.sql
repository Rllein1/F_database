-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 04:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dname` varchar(25) NOT NULL,
  `dnumber` int(11) NOT NULL,
  `mgrssn` char(9) NOT NULL,
  `mgrstartdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dname`, `dnumber`, `mgrssn`, `mgrstartdate`) VALUES
('Headquarters', 1, '888665555', '1971-06-19'),
('Administration', 4, '987654321', '1985-01-01'),
('Research', 5, '333445555', '1978-05-22'),
('Software', 6, '111111100', '1999-05-15'),
('Hardware', 7, '444444400', '1998-05-15'),
('Sales', 8, '555555500', '1997-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `essn` char(9) NOT NULL,
  `dependent_name` varchar(15) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `relationship` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES
('123456789', 'Alice', 'F', '1978-12-31', 'Daughter'),
('123456789', 'Elizabeth', 'F', NULL, 'Spouse'),
('123456789', 'Michael', 'M', '1978-01-01', 'Son'),
('333445555', 'Alice', 'F', '1976-04-05', 'Daughter'),
('333445555', 'Joy', 'F', '1948-05-03', 'Spouse'),
('333445555', 'Theodore', 'M', '1973-10-25', 'Son'),
('444444400', 'Johnny', 'M', '1997-04-04', 'Son'),
('444444400', 'Tommy', 'M', '1999-06-07', 'Son'),
('444444401', 'Chris', 'M', '1969-04-19', 'Spouse'),
('444444402', 'Sam', 'M', '1964-02-14', 'Spouse'),
('987654321', 'Abner', 'M', '1932-02-29', 'Spouse');

-- --------------------------------------------------------

--
-- Table structure for table `dept_locations`
--

CREATE TABLE `dept_locations` (
  `dnumber` int(11) NOT NULL,
  `dlocation` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_locations`
--

INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Houston'),
(5, 'Sugarland'),
(6, 'Atlanta'),
(6, 'Sacramento'),
(7, 'Milwaukee'),
(8, 'Chicago'),
(8, 'Dallas'),
(8, 'Miami'),
(8, 'Philadephia'),
(8, 'Seattle');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `fname` varchar(15) NOT NULL,
  `minit` varchar(1) DEFAULT NULL,
  `lname` varchar(15) NOT NULL,
  `ssn` char(9) NOT NULL,
  `bdate` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `superssn` char(9) DEFAULT NULL,
  `dno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`fname`, `minit`, `lname`, `ssn`, `bdate`, `address`, `sex`, `salary`, `superssn`, `dno`) VALUES
('Jared', 'D', 'James', '111111100', '1966-10-10', '123 Peachtree, Atlanta, GA', 'M', '85000.00', NULL, 6),
('Jon', 'C', 'Jones', '111111101', '1967-11-14', '111 Allgood, Atlanta, GA', 'M', '45000.00', '111111100', 6),
('Justin', 'n', 'Mark', '111111102', '1966-01-12', '2342 May, Atlanta, GA', 'M', '40000.00', '111111100', 6),
('Brad', 'C', 'Knight', '111111103', '1968-02-13', '176 Main St., Atlanta, GA', 'M', '44000.00', '111111100', 6),
('John', 'B', 'Smith', '123456789', '1955-01-09', '731 Fondren, Houston, TX', 'M', '30000.00', '333445555', 5),
('Evan', 'E', 'Wallis', '222222200', '1958-01-16', '134 Pelham, Milwaukee, WI', 'M', '92000.00', NULL, 7),
('Josh', 'U', 'Zell', '222222201', '1954-05-22', '266 McGrady, Milwaukee, WI', 'M', '56000.00', '222222200', 7),
('Andy', 'C', 'Vile', '222222202', '1944-06-21', '1967 Jordan, Milwaukee, WI', 'M', '53000.00', '222222200', 7),
('Tom', 'G', 'Brand', '222222203', '1966-12-16', '112 Third St, Milwaukee, WI', 'M', '62500.00', '222222200', 7),
('Jenny', 'F', 'Vos', '222222204', '1967-11-11', '263 Mayberry, Milwaukee, WI', 'F', '61000.00', '222222201', 7),
('Chris', 'A', 'Carter', '222222205', '1960-03-21', '565 Jordan, Milwaukee, WI', 'F', '43000.00', '222222201', 7),
('Kim', 'C', 'Grace', '333333300', '1970-10-23', '6677 Mills Ave, Sacramento, CA', 'F', '79000.00', NULL, 6),
('Jeff', 'H', 'Chase', '333333301', '1970-01-07', '145 Bradbury, Sacramento, CA', 'M', '44000.00', '333333300', 6),
('Franklin', 'T', 'Wong', '333445555', '1945-12-08', '638 Voss, Houston, TX', 'M', '40000.00', '888665555', 5),
('Alex', 'D', 'Freed', '444444400', '1950-10-09', '4333 Pillsbury, Milwaukee, WI', 'M', '89000.00', NULL, 7),
('Bonnie', 'S', 'Bays', '444444401', '1956-06-19', '111 Hollow, Milwaukee, WI', 'F', '70000.00', '444444400', 7),
('Alec', 'C', 'Best', '444444402', '1966-06-18', '233 Solid, Milwaukee, WI', 'M', '60000.00', '444444400', 7),
('Sam', 'S', 'Snedden', '444444403', '1977-07-31', '987 Windy St, Milwaukee, WI', 'M', '48000.00', '444444400', 7),
('Joyce', 'A', 'English', '453453453', '1962-07-31', '5631 Rice, Houston, TX', 'F', '25000.00', '333445555', 5),
('John', 'C', 'James', '555555500', '1975-06-30', '7676 Bloomington, Sacramento, CA', 'M', '81000.00', NULL, 6),
('Nandita', 'K', 'Ball', '555555501', '1969-04-16', '222 Howard, Sacramento, CA', 'M', '62000.00', '555555500', 6),
('Bob', 'B', 'Bender', '666666600', '1968-04-17', '8794 Garfield, Chicago, IL', 'M', '96000.00', NULL, 8),
('Jill', 'J', 'Jarvis', '666666601', '1966-01-14', '6234 Lincoln, Chicago, IL', 'F', '36000.00', '666666600', 8),
('Kate', 'W', 'King', '666666602', '1966-04-16', '1976 Boone Trace, Chicago, IL', 'F', '44000.00', '666666600', 8),
('Lyle', 'G', 'Leslie', '666666603', '1963-06-09', '417 Hancock Ave, Chicago, IL', 'M', '41000.00', '666666601', 8),
('Billie', 'J', 'King', '666666604', '1960-01-01', '556 Washington, Chicago, IL', 'F', '38000.00', '666666603', 8),
('Jon', 'A', 'Kramer', '666666605', '1964-08-22', '1988 Windy Creek, Seattle, WA', 'M', '41500.00', '666666603', 8),
('Ray', 'H', 'King', '666666606', '1949-08-16', '213 Delk Road, Seattle, WA', 'M', '44500.00', '666666604', 8),
('Gerald', 'D', 'Small', '666666607', '1962-05-15', '122 Ball Street, Dallas, TX', 'M', '29000.00', '666666602', 8),
('Arnold', 'A', 'Head', '666666608', '1967-05-19', '233 Spring St, Dallas, TX', 'M', '33000.00', '666666602', 8),
('Helga', 'C', 'Pataki', '666666609', '1969-03-11', '101 Holyoke St, Dallas, TX', 'F', '32000.00', '666666602', 8),
('Naveen', 'B', 'Drew', '666666610', '1970-05-23', '198 Elm St, Philadelphia, PA', 'M', '34000.00', '666666607', 8),
('Carl', 'E', 'Reedy', '666666611', '1977-06-21', '213 Ball St, Philadelphia, PA', 'M', '32000.00', '666666610', 8),
('Sammy', 'G', 'Hall', '666666612', '1970-01-11', '433 Main Street, Miami, FL', 'M', '37000.00', '666666611', 8),
('Red', 'A', 'Bacher', '666666613', '1980-05-21', '196 Elm Street, Miami, FL', 'M', '33500.00', '666666612', 8),
('Ramesh', 'K', 'Narayan', '666884444', '1952-09-15', '971 Fire Oak, Humble, TX', 'M', '38000.00', '333445555', 5),
('James', 'E', 'Borg', '888665555', '1927-11-10', '450 Stone, Houston, TX', 'M', '55000.00', NULL, 1),
('Jennifer', 'S', 'Wallace', '987654321', '1931-06-20', '291 Berry, Bellaire, TX', 'F', '43000.00', '888665555', 4),
('Ahmad', 'V', 'Jabbar', '987987987', '1959-03-29', '980 Dallas, Houston, TX', 'M', '25000.00', '987654321', 4),
('Alicia', 'J', 'Zelaya', '999887777', '1958-07-19', '3321 Castle, Spring, TX', 'F', '25000.00', '987654321', 4);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pname` varchar(25) NOT NULL,
  `pnumber` int(11) NOT NULL,
  `plocation` varchar(15) DEFAULT NULL,
  `dnum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pname`, `pnumber`, `plocation`, `dnum`) VALUES
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Newbenefits', 30, 'Stafford', 4),
('OperatingSystems', 61, 'Jacksonville', 6),
('DatabaseSystems', 62, 'Birmingham', 6),
('Middleware', 63, 'Jackson', 6),
('InkjetPrinters', 91, 'Phoenix', 7),
('LaserPrinters', 92, 'LasVegas', 7);

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `essn` char(9) NOT NULL,
  `pno` int(11) NOT NULL,
  `hours` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES
('111111100', 61, '40.0'),
('111111101', 61, '40.0'),
('111111102', 61, '40.0'),
('111111103', 61, '40.0'),
('123456789', 1, '32.5'),
('123456789', 2, '7.5'),
('222222200', 62, '40.0'),
('222222201', 62, '48.0'),
('222222202', 62, '40.0'),
('222222203', 62, '40.0'),
('222222204', 62, '40.0'),
('222222205', 62, '40.0'),
('333333300', 63, '40.0'),
('333333301', 63, '46.0'),
('333445555', 2, '10.0'),
('333445555', 3, '10.0'),
('333445555', 10, '10.0'),
('333445555', 20, '10.0'),
('444444400', 91, '40.0'),
('444444401', 91, '40.0'),
('444444402', 91, '40.0'),
('444444403', 91, '40.0'),
('453453453', 1, '20.0'),
('453453453', 2, '20.0'),
('555555500', 92, '40.0'),
('555555501', 92, '44.0'),
('666666601', 91, '40.0'),
('666666603', 91, '40.0'),
('666666604', 91, '40.0'),
('666666605', 92, '40.0'),
('666666606', 91, '40.0'),
('666666607', 61, '40.0'),
('666666608', 62, '40.0'),
('666666609', 63, '40.0'),
('666666610', 61, '40.0'),
('666666611', 61, '40.0'),
('666666612', 61, '40.0'),
('666666613', 61, '30.0'),
('666666613', 62, '10.0'),
('666666613', 63, '10.0'),
('666884444', 3, '40.0'),
('888665555', 20, '0.0'),
('987654321', 20, '15.0'),
('987654321', 30, '20.0'),
('987987987', 10, '35.0'),
('987987987', 30, '5.0'),
('999887777', 10, '10.0'),
('999887777', 30, '30.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dnumber`),
  ADD UNIQUE KEY `uk_dname` (`dname`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`essn`,`dependent_name`);

--
-- Indexes for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD PRIMARY KEY (`dnumber`,`dlocation`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ssn`),
  ADD KEY `fk_employee_department` (`dno`),
  ADD KEY `fk_employee_employee` (`superssn`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pnumber`),
  ADD UNIQUE KEY `uc_pnumber` (`pname`),
  ADD KEY `fk_project_department` (`dnum`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD PRIMARY KEY (`essn`,`pno`),
  ADD KEY `fk_workson_project` (`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `fk_dependent_employee` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD CONSTRAINT `fk_deptlocations_department` FOREIGN KEY (`dnumber`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee_department` FOREIGN KEY (`dno`) REFERENCES `department` (`dnumber`),
  ADD CONSTRAINT `fk_employee_employee` FOREIGN KEY (`superssn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `fk_project_department` FOREIGN KEY (`dnum`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `works_on`
--
ALTER TABLE `works_on`
  ADD CONSTRAINT `fk_workson_employee` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`),
  ADD CONSTRAINT `fk_workson_project` FOREIGN KEY (`pno`) REFERENCES `project` (`pnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
