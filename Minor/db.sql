/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 5.0.24-community-nt : Database - minorpro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`minorpro` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `minorpro`;

/*Table structure for table `caretaker` */

DROP TABLE IF EXISTS `caretaker`;

CREATE TABLE `caretaker` (
  `name` varchar(20) NOT NULL,
  `work` varchar(20) default NULL,
  `contact` varchar(20) default NULL,
  `address` varchar(50) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `caretaker` */

insert  into `caretaker`(`name`,`work`,`contact`,`address`) values 
('jkjkjk','kjkjkjkjk','kjkjkjk','kjkjkjk');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `email` varchar(20) NOT NULL,
  `feedback` varchar(80) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`email`,`feedback`) values 
('aksh@gmail.com','hellooooo');

/*Table structure for table `prescription` */

DROP TABLE IF EXISTS `prescription`;

CREATE TABLE `prescription` (
  `prsId` int(11) NOT NULL auto_increment,
  `medicins` varchar(80) default NULL,
  `diagnosis` varchar(80) default NULL,
  `patientID` int(10) default NULL,
  PRIMARY KEY  (`prsId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `prescription` */

insert  into `prescription`(`prsId`,`medicins`,`diagnosis`,`patientID`) values 
(1,'paracitamol','nothing',1),
(2,'c-trazin','sonography',1),
(3,'crocin','MRI',3),
(4,'aaaaaa','aaaaaa',2),
(5,'aaaabbbb','aaaabbbb',4);

/*Table structure for table `regadmin` */

DROP TABLE IF EXISTS `regadmin`;

CREATE TABLE `regadmin` (
  `aNm` varchar(20) default NULL,
  `aDob` varchar(20) default NULL,
  `aGndr` varchar(20) default NULL,
  `aQua` varchar(20) default NULL,
  `aContct` varchar(20) default NULL,
  `aEmail` varchar(20) default NULL,
  `aAddress` varchar(50) default NULL,
  `aLog` varchar(20) NOT NULL,
  `aPass` varchar(20) default NULL,
  PRIMARY KEY  (`aLog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `regadmin` */

insert  into `regadmin`(`aNm`,`aDob`,`aGndr`,`aQua`,`aContct`,`aEmail`,`aAddress`,`aLog`,`aPass`) values 
('aa','aa','on','aa','aa','aa','aa','aa','aa'),
('llll','1990-05-05','FEMALE','lll','1234','llll','llll','llll','llll');

/*Table structure for table `regdoctor` */

DROP TABLE IF EXISTS `regdoctor`;

CREATE TABLE `regdoctor` (
  `dNm` varchar(20) default NULL,
  `dDob` varchar(20) default NULL,
  `dGndr` varchar(20) default NULL,
  `dAddress` varchar(50) default NULL,
  `dCliAdd` varchar(50) default NULL,
  `dHosAdd` varchar(50) default NULL,
  `dExp` varchar(50) default NULL,
  `dQual` varchar(50) default NULL,
  `dMob` varchar(20) default NULL,
  `dLndlin` varchar(20) default NULL,
  `dEmail` varchar(20) default NULL,
  `dSpeQ` varchar(50) default NULL,
  `dLog` varchar(20) NOT NULL,
  `dPass` varchar(20) default NULL,
  `dpp` longblob,
  `dID` int(10) NOT NULL auto_increment,
  `dFee` bigint(50) default NULL,
  `dTfrom` varchar(50) default NULL,
  `dTto` varchar(50) default NULL,
  PRIMARY KEY  (`dLog`),
  KEY `dID` (`dID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `regdoctor` */

insert  into `regdoctor`(`dNm`,`dDob`,`dGndr`,`dAddress`,`dCliAdd`,`dHosAdd`,`dExp`,`dQual`,`dMob`,`dLndlin`,`dEmail`,`dSpeQ`,`dLog`,`dPass`,`dpp`,`dID`,`dFee`,`dTfrom`,`dTto`) values 
('Aksh','',NULL,'indore','aabb','aabb','2','aabb','123456789','987654321','aksh@gmail.com','aabb','aaa','aaa',NULL,1,700,'09:00','21:00'),
('yyyy','1992-02-03','FEMALE','yyyy','yyyy','yyyy','2','yyyy','1234','1234','yyyy','yyyy','yyyy','yyyy',NULL,2,800,'12:12','20:00');

/*Table structure for table `regpatient` */

DROP TABLE IF EXISTS `regpatient`;

CREATE TABLE `regpatient` (
  `pName` varchar(20) default NULL,
  `pLogID` varchar(20) NOT NULL,
  `pPsw` varchar(20) default NULL,
  `pAge` varchar(20) default NULL,
  `pMarital` varchar(10) default NULL,
  `pHusNm` varchar(20) default NULL,
  `pContct` varchar(20) default NULL,
  `pEmail` varchar(20) default NULL,
  `pEmer` varchar(20) default NULL,
  `pAddress` varchar(60) default NULL,
  `pAller` varchar(20) default NULL,
  `pMedi` varchar(20) default NULL,
  `pAlco` varchar(20) default NULL,
  `pSmoke` varchar(20) default NULL,
  `pMediHis` varchar(60) default NULL,
  `pSurHis` varchar(60) default NULL,
  `pFamHis` varchar(60) default NULL,
  `pPatId` int(20) NOT NULL auto_increment,
  `pAppdate` varchar(20) default NULL,
  `pMsg` varchar(60) default NULL,
  `pApTime` varchar(20) default NULL,
  `docID` varchar(10) default NULL,
  PRIMARY KEY  (`pLogID`,`pPatId`),
  KEY `pPatId` (`pPatId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `regpatient` */

insert  into `regpatient`(`pName`,`pLogID`,`pPsw`,`pAge`,`pMarital`,`pHusNm`,`pContct`,`pEmail`,`pEmer`,`pAddress`,`pAller`,`pMedi`,`pAlco`,`pSmoke`,`pMediHis`,`pSurHis`,`pFamHis`,`pPatId`,`pAppdate`,`pMsg`,`pApTime`,`docID`) values 
('abcd','gggg','gggg','25','married','abcd','1234567891','abcd@123','9999900000','aabbccdd','no','no','no','no','nothing','nothing','nothing',2,'2019-12-14','hvjhvhjgkg','14:00','1'),
('hhh','hhh','hhh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,NULL,NULL,NULL,NULL),
('nnnn','nnnn','nnnn','22','Married','nnnn','1234','nnnn@gmail.com','3216','nnnn','NO','NO','NO','NO','nnnn','nnnn','nnnn',5,NULL,NULL,NULL,NULL),
('qq','qq','qq','34','on','qq','qq','qq','qq','qq','on','on','on','on','qq','qq','qq',1,NULL,'bdiciaca',NULL,NULL),
('zzz','zzz','zzz','25','married','zzz','12345','zzz','12345','zzz','no','no','no','no','zzz','zzz','zzz',4,'2019-12-12','Hello','15:00','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
