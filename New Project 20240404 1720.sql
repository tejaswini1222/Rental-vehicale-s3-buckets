-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.17-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema rentalservice
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ rentalservice;
USE rentalservice;

--
-- Table structure for table `rentalservice`.`adregist`
--

DROP TABLE IF EXISTS `adregist`;
CREATE TABLE `adregist` (
  `Full_name` varchar(45) NOT NULL default '',
  `Mobile_no` int(10) default NULL,
  `Address` varchar(45) default NULL,
  `Email` varchar(45) default NULL,
  `username` varchar(45) default NULL,
  `password` varchar(45) default NULL,
  PRIMARY KEY  (`Full_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`adregist`
--

/*!40000 ALTER TABLE `adregist` DISABLE KEYS */;
/*!40000 ALTER TABLE `adregist` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`alogin`
--

DROP TABLE IF EXISTS `alogin`;
CREATE TABLE `alogin` (
  `username` varchar(45) NOT NULL default '',
  `password` varchar(45) default NULL,
  `scanner` varchar(45) default NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`alogin`
--

/*!40000 ALTER TABLE `alogin` DISABLE KEYS */;
INSERT INTO `alogin` (`username`,`password`,`scanner`) VALUES 
 ('abc','98765','GooglePay_QR.png');
/*!40000 ALTER TABLE `alogin` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`asearch_vehi`
--

DROP TABLE IF EXISTS `asearch_vehi`;
CREATE TABLE `asearch_vehi` (
  `Username` varchar(45) NOT NULL default '',
  `Booking_date` decimal(10,0) default NULL,
  `Vehical_type` varchar(45) default NULL,
  PRIMARY KEY  (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`asearch_vehi`
--

/*!40000 ALTER TABLE `asearch_vehi` DISABLE KEYS */;
/*!40000 ALTER TABLE `asearch_vehi` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`avehiclinfo`
--

DROP TABLE IF EXISTS `avehiclinfo`;
CREATE TABLE `avehiclinfo` (
  `Id` int(10) unsigned NOT NULL default '0',
  `Vehical_company` varchar(45) default NULL,
  `Vehical_type` varchar(45) default NULL,
  `Seats` int(11) default NULL,
  `Model_type` varchar(45) default NULL,
  `Oil_type` varchar(45) default NULL,
  `rent_vehical` int(11) default NULL,
  `unit` varchar(45) default NULL,
  `Image_Path` varchar(45) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 4096 kB';

--
-- Dumping data for table `rentalservice`.`avehiclinfo`
--

/*!40000 ALTER TABLE `avehiclinfo` DISABLE KEYS */;
INSERT INTO `avehiclinfo` (`Id`,`Vehical_company`,`Vehical_type`,`Seats`,`Model_type`,`Oil_type`,`rent_vehical`,`unit`,`Image_Path`) VALUES 
 (1,'Honda','Scooty',2,'Activa(Honda)','Petrol',40,'per km','images/activa.jpg'),
 (2,'Honda','Bike',2,'HONDA Shine','Petrol',40,'per km','images/honda shine.jpg'),
 (3,'KTM','Bike',2,'Duke (KTM)','Petrol',40,'per km','images/duke.jpg'),
 (4,'Suzuki','Cars',8,'ERTIGA(Suzuki)','CNG',70,'per km','images/ERTiGA.jpg'),
 (5,'TATA','Cars',5,'Nexon(TATA)','Petrol',70,'per km','images/tata-nexon-1.jpg'),
 (6,'Toyaota','Cars',8,'Innova(Toyota)','Disel',70,'per km','images/innova.jpg'),
 (7,'MAHINDRA','Cars',12,'Scorpio(Mahindra)','Disel',70,'per km','images/scorpio.jpg'),
 (8,'Toyaota','Cars',8,'Innova(Toyota)','Disel',70,'per km','');
/*!40000 ALTER TABLE `avehiclinfo` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`cancle_booking`
--

DROP TABLE IF EXISTS `cancle_booking`;
CREATE TABLE `cancle_booking` (
  `Username` varchar(45) NOT NULL default '',
  `Booking_id` int(11) default NULL,
  `Booking_date` text,
  `Vehical_id` int(11) default NULL,
  `Vehical_type` varchar(45) default NULL,
  `Vehical_company` varchar(45) default NULL,
  `Reason` varchar(45) default NULL,
  PRIMARY KEY  (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`cancle_booking`
--

/*!40000 ALTER TABLE `cancle_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `cancle_booking` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`cash`
--

DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash` (
  `id` int(11) NOT NULL default '0',
  `booking_date` text,
  `Full_name` varchar(45) default NULL,
  `mobile_number` int(11) default NULL,
  `vehicle_type` varchar(45) default NULL,
  `kms` int(11) default NULL,
  `rent` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`cash`
--

/*!40000 ALTER TABLE `cash` DISABLE KEYS */;
INSERT INTO `cash` (`id`,`booking_date`,`Full_name`,`mobile_number`,`vehicle_type`,`kms`,`rent`) VALUES 
 (20,'2024-02-27','kiran Patil',1234567890,'Scooty',50,2000),
 (22,'2024-03-03','kiran Patil',1234567890,'Bike',50,2000),
 (24,'2024-03-04','kiran Patil',1234567890,'Bike',50,2000),
 (32,'2024-03-01','Najmin',1234567890,'Cars',40,2800),
 (36,'2024-03-02','Najmin',1234567890,'Bike',40,1600),
 (42,'2024-03-05','Najmin',1234567890,'Bike',200,8000),
 (44,'2024-03-11','kiran Patil',1234567890,'Cars',100,7000),
 (46,'2024-03-12','kiran Patil',1234567890,'Cars',100,7000),
 (53,'2024-03-22','kiran Patil',1234567890,'Scooty',200,8000);
/*!40000 ALTER TABLE `cash` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`contactus`
--

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE `contactus` (
  `Full_name` varchar(45) NOT NULL default '',
  `Email` varchar(45) default NULL,
  `Mobile_number` decimal(10,0) default NULL,
  PRIMARY KEY  (`Full_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`contactus`
--

/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`dbpg`
--

DROP TABLE IF EXISTS `dbpg`;
CREATE TABLE `dbpg` (
  `Booking_Id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`Booking_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`dbpg`
--

/*!40000 ALTER TABLE `dbpg` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbpg` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(45) NOT NULL default '',
  `email` varchar(45) default NULL,
  `feedback` text,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`email`,`feedback`) VALUES 
 ('kiran Patil','abc@gmail.com','          thanks for giving a best service                                     ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`finalbooking`
--

DROP TABLE IF EXISTS `finalbooking`;
CREATE TABLE `finalbooking` (
  `id` int(11) NOT NULL default '0',
  `Booking_date` text,
  `Full_name` varchar(45) default NULL,
  `Mobile_number` int(11) default NULL,
  `Vehical_id` int(11) default NULL,
  `Vehical_type` varchar(45) default NULL,
  `Vehical_company` varchar(45) default NULL,
  `Model_type` varchar(45) default NULL,
  `oil_type` varchar(45) default NULL,
  `rent_vehical` varchar(45) default NULL,
  `kms` int(11) default NULL,
  `Total_seat` int(45) default NULL,
  `Return_date` text,
  `Username` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 3072 kB; InnoDB free: 3072 kB';

--
-- Dumping data for table `rentalservice`.`finalbooking`
--

/*!40000 ALTER TABLE `finalbooking` DISABLE KEYS */;
INSERT INTO `finalbooking` (`id`,`Booking_date`,`Full_name`,`Mobile_number`,`Vehical_id`,`Vehical_type`,`Vehical_company`,`Model_type`,`oil_type`,`rent_vehical`,`kms`,`Total_seat`,`Return_date`,`Username`) VALUES 
 (8,'2024-02-29','Najmin',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol','40',60,2,'null','pqrs'),
 (10,'2024-02-27','Najmin',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol','40',50,2,'null','pqrs'),
 (12,'2024-02-28','Najmin',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol','40',50,2,'null','pqrs'),
 (14,'2024-02-29','Najmin',1234567890,7,'Cars','MAHINDRA','Scorpio(Mahindra)','Disel','70',200,9,'2024-03-05','pqrs'),
 (16,'2024-03-01','Najmin',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol','40',50,2,'2024-03-03','pqrs'),
 (18,'2024-03-01','kiran Patil',1234567890,5,'Cars','Toyaota','Innova(Toyota)','Disel','70',200,9,'2024-03-04','abc'),
 (20,'2024-02-27','kiran Patil',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol','40',50,2,'2024-02-29','abc'),
 (22,'2024-03-03','kiran Patil',1234567890,3,'Bike','Honda','HONDA Shine','Petrol','40',50,2,'2024-03-05','abc'),
 (24,'2024-03-04','kiran Patil',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol','40',50,2,'2024-03-05','abc');
INSERT INTO `finalbooking` (`id`,`Booking_date`,`Full_name`,`Mobile_number`,`Vehical_id`,`Vehical_type`,`Vehical_company`,`Model_type`,`oil_type`,`rent_vehical`,`kms`,`Total_seat`,`Return_date`,`Username`) VALUES 
 (28,'2024-03-02','Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol','70',200,9,'2024-03-04','pqrs'),
 (32,'2024-03-01','Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol','70',40,2,'','pqrs'),
 (36,'2024-03-02','Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol','40',40,2,'2024-03-03','pqrs'),
 (40,'2024-03-04','Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol','40',40,2,'2024-03-06','pqrs'),
 (42,'2024-03-05','Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol','40',200,2,'2024-03-06','pqrs'),
 (44,'2024-03-11','kiran Patil',1234567890,7,'Cars','MAHINDRA','Scorpio(Mahindra)','Disel','70',100,9,'2024-03-13','abc'),
 (46,'2024-03-12','kiran Patil',1234567890,6,'Cars','Toyaota','Innova(Toyota)','Disel','70',100,9,'2024-03-14','abc'),
 (49,'2024-03-12','kiran Patil',1234567890,6,'Cars','Toyaota','Innova(Toyota)','Disel','70',200,2,'2024-03-14','abc'),
 (53,'2024-03-22','kiran Patil',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol','40',200,9,'2024-03-24','abc');
INSERT INTO `finalbooking` (`id`,`Booking_date`,`Full_name`,`Mobile_number`,`Vehical_id`,`Vehical_type`,`Vehical_company`,`Model_type`,`oil_type`,`rent_vehical`,`kms`,`Total_seat`,`Return_date`,`Username`) VALUES 
 (55,'2024-03-18','kiran Patil',1234567890,2,'Bike','Honda','HONDA Shine','Petrol','40',200,2,'2024-03-24','abc');
/*!40000 ALTER TABLE `finalbooking` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`online`
--

DROP TABLE IF EXISTS `online`;
CREATE TABLE `online` (
  `id` int(11) NOT NULL default '0',
  `booking_date` text,
  `Full_name` varchar(45) default NULL,
  `mobile_number` int(10) default NULL,
  `vehicle_type` varchar(45) default NULL,
  `kms` int(11) default NULL,
  `rent` varchar(45) default NULL,
  `type` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`online`
--

/*!40000 ALTER TABLE `online` DISABLE KEYS */;
INSERT INTO `online` (`id`,`booking_date`,`Full_name`,`mobile_number`,`vehicle_type`,`kms`,`rent`,`type`) VALUES 
 (20,'2024-02-27','kiran Patil',1234567890,'Scooty',50,'2000',NULL),
 (22,'2024-03-03','kiran Patil',1234567890,'Bike',50,'2000',NULL),
 (24,'2024-03-04','kiran Patil',1234567890,'Bike',50,'2000',NULL),
 (28,'2024-03-02','Najmin',1234567890,'Cars',200,'14000',NULL),
 (40,'2024-03-04','Najmin',1234567890,'Bike',40,'1600',NULL),
 (42,'2024-03-05','Najmin',1234567890,'Bike',200,'8000',NULL),
 (44,'2024-03-11','kiran Patil',1234567890,'Cars',100,'7000','null'),
 (49,'2024-03-12','kiran Patil',1234567890,'Cars',200,'14000','null'),
 (53,'2024-03-22','kiran Patil',1234567890,'Scooty',200,'8000','null'),
 (55,'2024-03-18','kiran Patil',1234567890,'Bike',200,'8000','null');
/*!40000 ALTER TABLE `online` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`pbooking`
--

DROP TABLE IF EXISTS `pbooking`;
CREATE TABLE `pbooking` (
  `booking_id` int(11) NOT NULL default '0',
  `Full_name` varchar(45) default NULL,
  `Mobile_number` int(11) default NULL,
  `Vehical_id` int(11) default NULL,
  `Vehical_type` varchar(45) default NULL,
  `Vehical_Company` varchar(45) default NULL,
  `Model_type` varchar(45) default NULL,
  `oil_type` varchar(45) default NULL,
  `rent_vehical` int(11) default NULL,
  `unit` varchar(45) default NULL,
  PRIMARY KEY  (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`pbooking`
--

/*!40000 ALTER TABLE `pbooking` DISABLE KEYS */;
INSERT INTO `pbooking` (`booking_id`,`Full_name`,`Mobile_number`,`Vehical_id`,`Vehical_type`,`Vehical_Company`,`Model_type`,`oil_type`,`rent_vehical`,`unit`) VALUES 
 (1,'Najmin',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (2,'Najmin',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (3,'Najmin',1234567890,3,'Bike','Honda','HONDA Shine','Petrol',40,'per km'),
 (4,'Najmin',1234567890,3,'Bike','Honda','HONDA Shine','Petrol',40,'per km'),
 (5,'Najmin',1234567890,5,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km'),
 (6,'Najmin',1234567890,5,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km'),
 (7,'Najmin',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (8,'Najmin',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (9,'Najmin',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (10,'Najmin',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (11,'Najmin',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (12,'Najmin',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km');
INSERT INTO `pbooking` (`booking_id`,`Full_name`,`Mobile_number`,`Vehical_id`,`Vehical_type`,`Vehical_Company`,`Model_type`,`oil_type`,`rent_vehical`,`unit`) VALUES 
 (13,'Najmin',1234567890,7,'Cars','MAHINDRA','Scorpio(Mahindra)','Disel',70,'per km'),
 (14,'Najmin',1234567890,7,'Cars','MAHINDRA','Scorpio(Mahindra)','Disel',70,'per km'),
 (15,'Najmin',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (16,'Najmin',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (17,'kiran Patil',1234567890,5,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km'),
 (18,'kiran Patil',1234567890,5,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km'),
 (19,'kiran Patil',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (20,'kiran Patil',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (21,'kiran Patil',1234567890,3,'Bike','Honda','HONDA Shine','Petrol',40,'per km'),
 (22,'kiran Patil',1234567890,3,'Bike','Honda','HONDA Shine','Petrol',40,'per km'),
 (23,'kiran Patil',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol',40,'per km');
INSERT INTO `pbooking` (`booking_id`,`Full_name`,`Mobile_number`,`Vehical_id`,`Vehical_type`,`Vehical_Company`,`Model_type`,`oil_type`,`rent_vehical`,`unit`) VALUES 
 (24,'kiran Patil',1234567890,2,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (25,'Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol',70,'per km'),
 (26,'Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol',70,'per km'),
 (27,'Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol',70,'per km'),
 (28,'Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol',70,'per km'),
 (29,'Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol',70,'per km'),
 (30,'Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol',70,'per km'),
 (31,'Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol',70,'per km'),
 (32,'Najmin',1234567890,5,'Cars','TATA','Nexon(TATA)','Petrol',70,'per km'),
 (33,'Najmin',1234567890,NULL,'null','null','null','null',0,'null'),
 (34,'Najmin',1234567890,NULL,'null','null','null','null',0,'null'),
 (35,'Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol',40,'per km');
INSERT INTO `pbooking` (`booking_id`,`Full_name`,`Mobile_number`,`Vehical_id`,`Vehical_type`,`Vehical_Company`,`Model_type`,`oil_type`,`rent_vehical`,`unit`) VALUES 
 (36,'Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (37,'Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (38,'Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (39,'Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (40,'Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (41,'Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (42,'Najmin',1234567890,3,'Bike','KTM','Duke (KTM)','Petrol',40,'per km'),
 (43,'kiran Patil',1234567890,7,'Cars','MAHINDRA','Scorpio(Mahindra)','Disel',70,'per km'),
 (44,'kiran Patil',1234567890,7,'Cars','MAHINDRA','Scorpio(Mahindra)','Disel',70,'per km'),
 (45,'kiran Patil',1234567890,6,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km'),
 (46,'kiran Patil',1234567890,6,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km'),
 (47,'kiran Patil',1234567890,6,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km');
INSERT INTO `pbooking` (`booking_id`,`Full_name`,`Mobile_number`,`Vehical_id`,`Vehical_type`,`Vehical_Company`,`Model_type`,`oil_type`,`rent_vehical`,`unit`) VALUES 
 (48,'kiran Patil',1234567890,6,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km'),
 (49,'kiran Patil',1234567890,6,'Cars','Toyaota','Innova(Toyota)','Disel',70,'per km'),
 (50,'Najmin',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (51,'Najmin',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (52,'kiran Patil',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (53,'kiran Patil',1234567890,1,'Scooty','Honda','Activa(Honda)','Petrol',40,'per km'),
 (54,'kiran Patil',1234567890,2,'Bike','Honda','HONDA Shine','Petrol',40,'per km'),
 (55,'kiran Patil',1234567890,2,'Bike','Honda','HONDA Shine','Petrol',40,'per km');
/*!40000 ALTER TABLE `pbooking` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`plogin`
--

DROP TABLE IF EXISTS `plogin`;
CREATE TABLE `plogin` (
  `Username` varchar(45) NOT NULL default '',
  `Password` varchar(45) default NULL,
  PRIMARY KEY  (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`plogin`
--

/*!40000 ALTER TABLE `plogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `plogin` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`ppayment`
--

DROP TABLE IF EXISTS `ppayment`;
CREATE TABLE `ppayment` (
  `id` int(11) NOT NULL default '0',
  `booking_date` text,
  `Full_name` varchar(45) default NULL,
  `mobile_number` int(10) default NULL,
  `vehicle_type` varchar(45) default NULL,
  `kms` int(11) default NULL,
  `rent` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`ppayment`
--

/*!40000 ALTER TABLE `ppayment` DISABLE KEYS */;
INSERT INTO `ppayment` (`id`,`booking_date`,`Full_name`,`mobile_number`,`vehicle_type`,`kms`,`rent`) VALUES 
 (20,'2024-02-27','kiran Patil',1234567890,'Scooty',50,2000),
 (22,'2024-03-03','kiran Patil',1234567890,'Bike',50,2000),
 (24,'2024-03-04','kiran Patil',1234567890,'Bike',50,2000),
 (28,'2024-03-02','Najmin',1234567890,'Cars',200,14000),
 (32,'2024-03-01','Najmin',1234567890,'Cars',40,2800),
 (36,'2024-03-02','Najmin',1234567890,'Bike',40,1600),
 (40,'2024-03-04','Najmin',1234567890,'Bike',40,1600),
 (42,'2024-03-05','Najmin',1234567890,'Bike',200,8000),
 (44,'2024-03-11','kiran Patil',1234567890,'Cars',100,7000),
 (46,'2024-03-12','kiran Patil',1234567890,'Cars',100,7000),
 (49,'2024-03-12','kiran Patil',1234567890,'Cars',200,14000),
 (53,'2024-03-22','kiran Patil',1234567890,'Scooty',200,8000),
 (55,'2024-03-18','kiran Patil',1234567890,'Bike',200,8000);
/*!40000 ALTER TABLE `ppayment` ENABLE KEYS */;


--
-- Table structure for table `rentalservice`.`pregister`
--

DROP TABLE IF EXISTS `pregister`;
CREATE TABLE `pregister` (
  `Serial_no` int(11) NOT NULL default '0',
  `Full_name` varchar(45) default NULL,
  `Mobile_no` int(10) default NULL,
  `Email` varchar(45) default NULL,
  `Address` varchar(45) default NULL,
  `Age` int(30) default NULL,
  `Gender` varchar(45) default NULL,
  `Username` varchar(45) default NULL,
  `Password` varchar(45) default NULL,
  PRIMARY KEY  (`Serial_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rentalservice`.`pregister`
--

/*!40000 ALTER TABLE `pregister` DISABLE KEYS */;
INSERT INTO `pregister` (`Serial_no`,`Full_name`,`Mobile_no`,`Email`,`Address`,`Age`,`Gender`,`Username`,`Password`) VALUES 
 (1,'wsresr',3435,'sdrfd','serfe',22,'Female','aaa','1111'),
 (2,'rani',1234567891,'zxcv@gmail.com','koregaon',20,'Female','pqrs','2222'),
 (3,'Najmin',1234567890,'najmin@12gmail.com','at satara',20,'Female','pqrs','1234'),
 (4,'kiran Patil',1234567890,'abc@gmail.com','xyz',20,'Female','abc','1111'),
 (5,'awr',2343,'serfe','rtter',20,'Male','sr','sdf');
/*!40000 ALTER TABLE `pregister` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
