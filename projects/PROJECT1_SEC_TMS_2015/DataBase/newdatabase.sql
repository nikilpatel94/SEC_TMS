/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.21-log : Database - db_sec_tms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_sec_tms` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_sec_tms`;

/*Table structure for table `adminsettings` */

DROP TABLE IF EXISTS `adminsettings`;

CREATE TABLE `adminsettings` (
  `mailUserName` varchar(100) DEFAULT NULL,
  `mailPassword` varchar(50) DEFAULT NULL,
  `mailSign` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `adminsettings` */

insert  into `adminsettings`(`mailUserName`,`mailPassword`,`mailSign`) values ('sec.vvn.edu@gmail.com','sec1234!@#$','From: Admin SEC.');

/*Table structure for table `attendancemaster` */

DROP TABLE IF EXISTS `attendancemaster`;

CREATE TABLE `attendancemaster` (
  `AttendanceId` bigint(20) NOT NULL AUTO_INCREMENT,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  `StudentIdFK` bigint(20) DEFAULT NULL,
  `AttendanceDate` date NOT NULL,
  `AttendanceDay` varchar(20) NOT NULL,
  `AttendanceType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AttendanceId`),
  KEY `AM_FM_FacultyIdFK` (`FacultyIdFK`),
  KEY `AM_SM_SubjectIdFK` (`SubjectIdFK`),
  KEY `AM_SM_StudentIdFK` (`StudentIdFK`),
  CONSTRAINT `AM_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `AM_SM_StudentIdFK` FOREIGN KEY (`StudentIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `AM_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `attendancemaster` */

insert  into `attendancemaster`(`AttendanceId`,`FacultyIdFK`,`SubjectIdFK`,`StudentIdFK`,`AttendanceDate`,`AttendanceDay`,`AttendanceType`) values (1,2,10,9,'2015-04-07','Tuesday','P'),(2,2,10,10,'2015-04-07','Tuesday','P'),(3,2,10,8,'2015-04-16','Thursday','P'),(4,2,10,9,'2015-04-16','Thursday','P'),(5,2,10,15,'2015-04-16','Thursday','P'),(6,1,11,8,'2015-04-23','Thursday','P'),(7,1,11,9,'2015-04-23','Thursday','P'),(8,1,15,11,'2015-04-24','Friday','P'),(9,2,10,8,'2015-05-13','Wednesday','P'),(10,2,10,10,'2015-05-13','Wednesday','P'),(11,2,10,14,'2015-05-13','Wednesday','P'),(12,2,10,15,'2015-05-13','Wednesday','P'),(13,2,10,2,'2015-05-13','Wednesday','A'),(14,2,10,11,'2015-05-13','Wednesday','A'),(15,2,10,10,'2015-05-13','Wednesday','A'),(16,2,10,8,'2015-05-13','Wednesday','P'),(17,2,10,10,'2015-05-13','Wednesday','P'),(18,2,10,14,'2015-05-13','Wednesday','P'),(19,2,10,8,'2015-05-13','Wednesday','P'),(20,2,10,10,'2015-05-13','Wednesday','P'),(21,2,10,14,'2015-05-13','Wednesday','P'),(22,2,10,8,'2015-05-13','Wednesday','P'),(23,2,10,10,'2015-05-13','Wednesday','P'),(24,2,10,14,'2015-05-13','Wednesday','P'),(25,2,14,11,'2015-05-13','Wednesday','P'),(26,2,14,16,'2015-05-13','Wednesday','P'),(27,2,14,11,'2015-05-13','Wednesday','P'),(28,2,14,13,'2015-05-13','Wednesday','P'),(29,2,14,16,'2015-05-13','Wednesday','P');

/*Table structure for table `discussionanswer` */

DROP TABLE IF EXISTS `discussionanswer`;

CREATE TABLE `discussionanswer` (
  `StudentDiscussAnswerId` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentDiscussionIdFK` bigint(20) DEFAULT NULL,
  `StudetIdFK` bigint(20) DEFAULT NULL,
  `Answer` varchar(10000) DEFAULT NULL,
  `DiscussionAnswerDate` date DEFAULT NULL,
  `DiscussionAnswerTime` time DEFAULT NULL,
  PRIMARY KEY (`StudentDiscussAnswerId`),
  KEY `DA_SD_StudentDiscussionIdFK` (`StudentDiscussionIdFK`),
  KEY `DA_SM_StudentIdFK` (`StudetIdFK`),
  CONSTRAINT `DA_SD_StudentDiscussionIdFK` FOREIGN KEY (`StudentDiscussionIdFK`) REFERENCES `studentdiscussion` (`StudentDiscussionId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DA_SM_StudentIdFK` FOREIGN KEY (`StudetIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `discussionanswer` */

insert  into `discussionanswer`(`StudentDiscussAnswerId`,`StudentDiscussionIdFK`,`StudetIdFK`,`Answer`,`DiscussionAnswerDate`,`DiscussionAnswerTime`) values (1,1,15,'Mass of Electron is 9.1*10^(-31) KG','2015-04-06','05:37:36'),(2,1,10,'I think Mass of Photon is 1.67*10^27 KG','2015-04-07','06:07:36'),(3,1,16,'Yes, Rajan you are right Mass of photon is 1.67*10^27KG','2015-04-07','01:07:36'),(4,1,14,'hello payal,\r\ni think Mass of Nutron is 1.67*10^-27','2015-04-07','05:45:00'),(5,1,11,'thanks to all to give Answer of my Question','2015-04-07','10:37:36'),(6,2,16,'Equation of force is F=(M*V^2)/R.\r\nWhere M= Mass in Kg , V= Velocity of Object and R= readis','2015-04-11','12:37:36'),(7,2,15,'yes paresh you are right.\r\nscholer','2015-04-11','16:07:36'),(8,3,11,'i think ans of this que is zero bcoz put 0 at t than sin0=0.','2015-04-11','21:12:39');

/*Table structure for table `eventmaster` */

DROP TABLE IF EXISTS `eventmaster`;

CREATE TABLE `eventmaster` (
  `EventId` bigint(20) NOT NULL AUTO_INCREMENT,
  `EventName` varchar(30) NOT NULL,
  `EventSub` varchar(600) DEFAULT NULL,
  `EventStartTime` time DEFAULT NULL,
  `EventEndTime` time DEFAULT NULL,
  `EventLocation` varchar(30) DEFAULT NULL,
  `EventExDate` date NOT NULL,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`EventId`),
  KEY `FacultyIdFK` (`FacultyIdFK`),
  CONSTRAINT `FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `eventmaster` */

insert  into `eventmaster`(`EventId`,`EventName`,`EventSub`,`EventStartTime`,`EventEndTime`,`EventLocation`,`EventExDate`,`FacultyIdFK`,`DisplayStatus`) values (1,'Poster Presentation','Poster Presentation','10:30:00','17:30:00','ClassRoom 201','2015-04-07',1,'Yes'),(2,'Mathamatics Examination','Mathamatics Examination who are failed in last exam','10:00:00','11:00:00','ClassRoom 201','2015-04-13',2,'Yes');

/*Table structure for table `facultydiscussion` */

DROP TABLE IF EXISTS `facultydiscussion`;

CREATE TABLE `facultydiscussion` (
  `FacultyDiscussionId` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentDiscussionIdFK` bigint(20) DEFAULT NULL,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `FacultyAnswer` varchar(10000) DEFAULT NULL,
  `FacultyDiscussionDate` date DEFAULT NULL,
  `FacultyDiscussionTime` time DEFAULT NULL,
  PRIMARY KEY (`FacultyDiscussionId`),
  KEY `FD_SD_StudentDiscussionIdFK` (`StudentDiscussionIdFK`),
  KEY `FD_FM_FacultyIdFK` (`FacultyIdFK`),
  CONSTRAINT `FD_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FD_SD_StudentDiscussionIdFK` FOREIGN KEY (`StudentDiscussionIdFK`) REFERENCES `studentdiscussion` (`StudentDiscussionId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `facultydiscussion` */

insert  into `facultydiscussion`(`FacultyDiscussionId`,`StudentDiscussionIdFK`,`FacultyIdFK`,`FacultyAnswer`,`FacultyDiscussionDate`,`FacultyDiscussionTime`) values (1,2,2,'Paresh, Excellent you give right answer. keep it up.','2015-04-11','21:54:44'),(2,1,5,'all answer are correct keep it up.\r\nbest of luck for exams','2015-04-11','22:46:14'),(3,2,5,'ya it is correct.','2015-04-11','22:47:37'),(4,2,5,'best of luck to all','2015-04-11','23:00:08'),(5,2,1,'New task in this discussion','2015-04-29','13:49:16');

/*Table structure for table `facultymaster` */

DROP TABLE IF EXISTS `facultymaster`;

CREATE TABLE `facultymaster` (
  `FacultyId` bigint(20) NOT NULL AUTO_INCREMENT,
  `FacultyName` varchar(50) NOT NULL,
  `FacultyAddress` varchar(1000) NOT NULL,
  `FacultyEmail` varchar(50) NOT NULL,
  `FacultyContactNo` decimal(10,0) NOT NULL,
  `FacultyQualification` varchar(200) NOT NULL,
  `FacultyExperience` varchar(1000) DEFAULT NULL,
  `FacultyPhoto` varchar(5000) NOT NULL,
  `DisplayStatus` varchar(10) DEFAULT NULL,
  `Salary` decimal(12,0) NOT NULL,
  `FacultyUserIdFK` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`FacultyId`),
  KEY `FacultyUser` (`FacultyUserIdFK`),
  CONSTRAINT `FacultyUser` FOREIGN KEY (`FacultyUserIdFK`) REFERENCES `login` (`UserName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `facultymaster` */

insert  into `facultymaster`(`FacultyId`,`FacultyName`,`FacultyAddress`,`FacultyEmail`,`FacultyContactNo`,`FacultyQualification`,`FacultyExperience`,`FacultyPhoto`,`DisplayStatus`,`Salary`,`FacultyUserIdFK`) values (1,'Nikil Patel','Anand, Gujarat','patel_nikil1994@gmail.com','9033329681','M.Sc','3','team-6.jpg','Yes','30000',NULL),(2,'Mehul Desai','Surat, Gujarat','desaimehul94@gmail.com','8460421800','M.Tech','5','team-1.jpg','Yes','35000',NULL),(3,'Akash Kukadia','Gandhinagar, Gujarat ','akashkukadia_k7@gmail.com','9998596785','B,E','3','team-5.jpg','Yes','25000',NULL),(4,'Divya Shukla','Anand , Gujarat','divyashukla92@gmail.com','8460500403','M.Tech','6','team-3.jpg','Yes','30000',NULL),(5,'Mayur Desai','Surat, Gujarat','mmdesai16@gmail.com','9879700311','M.Tech','4','team-7.jpg','Yes','35000',NULL),(6,'Vrunda Patel','Valsad, Gujarat','vrunda.patel@gmail.com','9712113815','B,E','3','team-9.jpg','Yes','25000',NULL),(7,'Mayank Patel','Surat,Gujarat','anythinkmp@gmail.com','8758458754','M.Sc','5','st10.jpg','Yes','25000',NULL),(8,'Shashank Rana','Vadodra,Gujarat','shashank.rana@gmail.com','8451627845','BE','3','st8.jpg','Yes','30000',NULL);

/*Table structure for table `facultysettings` */

DROP TABLE IF EXISTS `facultysettings`;

CREATE TABLE `facultysettings` (
  `FSId` int(11) NOT NULL,
  `FMailPassword` varchar(45) NOT NULL,
  `UserNameFK` varchar(45) NOT NULL,
  `FMailUserName` varchar(45) NOT NULL,
  `FMailSign` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`FSId`),
  KEY `FacultyUserNameFK` (`UserNameFK`),
  CONSTRAINT `FacultyUserNameFK` FOREIGN KEY (`UserNameFK`) REFERENCES `login` (`UserName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facultysettings` */

/*Table structure for table `facultysubjectdetail` */

DROP TABLE IF EXISTS `facultysubjectdetail`;

CREATE TABLE `facultysubjectdetail` (
  `FacultySubjectId` bigint(20) NOT NULL AUTO_INCREMENT,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  `Std` int(5) DEFAULT NULL,
  PRIMARY KEY (`FacultySubjectId`),
  KEY `FSD_FM_FacultyIdFK` (`FacultyIdFK`),
  KEY `FSD_SM_SubjectIdFK` (`SubjectIdFK`),
  CONSTRAINT `FSD_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FSD_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `facultysubjectdetail` */

insert  into `facultysubjectdetail`(`FacultySubjectId`,`FacultyIdFK`,`SubjectIdFK`,`Std`) values (1,1,11,11),(2,1,15,12),(3,2,10,11),(4,2,14,12),(5,3,12,11),(6,3,16,12),(7,4,13,11),(8,4,17,12),(9,5,2,0),(10,5,5,9),(11,5,8,10),(12,7,1,8),(13,7,4,9),(14,7,7,10),(15,6,3,8),(16,6,6,9),(17,6,9,10),(18,8,18,11),(19,8,19,12);

/*Table structure for table `livelecture` */

DROP TABLE IF EXISTS `livelecture`;

CREATE TABLE `livelecture` (
  `LiveLectureId` bigint(20) NOT NULL AUTO_INCREMENT,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `StudentIdFK` bigint(20) DEFAULT NULL,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  `LiveLectureDate` date DEFAULT NULL,
  `Link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`LiveLectureId`),
  KEY `LL_FM_FacultyIdFK` (`FacultyIdFK`),
  KEY `LL_SM_StudentIdFK` (`StudentIdFK`),
  KEY `LL_SM_SubjectIdFK` (`SubjectIdFK`),
  CONSTRAINT `LL_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `LL_SM_StudentIdFK` FOREIGN KEY (`StudentIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `LL_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `livelecture` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `UserType` varchar(20) NOT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`UserName`,`Password`,`UserType`) values ('abhishek_007@gmail.com','9428574870','S'),('aboutparimal@gmail.com','7495846210','S'),('admin','admin','A'),('Ahir.navin@ymail.com','8795846872','S'),('akashkukadia_k7@gmail.com','9998596785','F'),('Ankitapatel@gmail.com','9876548975','S'),('anythinkmp@gmail.com','8758458754','F'),('Arjunk7@gmail.com','9879547862','S'),('arshishah01@gmail.com','9662055989','S'),('BhargavGpatel@gmail.com','8454555542','S'),('desaimehul94@gmail.com','8460421800','F'),('divyashukla92@gmail.com','8460500403','F'),('Faculty2','fac2','F'),('Faculty3','fac3','F'),('Gopal.sec@gmail.com','8754694554','S'),('mmdesai16@gmail.com','9879700311','F'),('padesai@gmail.com','8460500403','S'),('patel_nikil1994@gmail.com','9033329681','F'),('pkghevariya@gmail.com','8795462556','S'),('Ptprajapati@gmail.com','8745977554','S'),('ranjan.hansora@gmail.com','9875487954','S'),('rimpal.sec@gmail.com','8759487654','S'),('SapnaGoswami@gmail.com','8754898756','S'),('shashank.rana@gmail.com','8451627845','F'),('shashank@gmail.com','8758484981','F'),('shivani.patel@gmail.com','8795468456','S'),('vrunda.patel@gmail.com','9712113815','F'),('Yashmin008@gmail.com','9875648654','S');

/*Table structure for table `materialmanagement` */

DROP TABLE IF EXISTS `materialmanagement`;

CREATE TABLE `materialmanagement` (
  `MaterialId` bigint(20) NOT NULL AUTO_INCREMENT,
  `MaterialName` varchar(100) NOT NULL,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `Material` varchar(5000) NOT NULL,
  `UploadedDate` date DEFAULT NULL,
  `DisplayStatus` varchar(10) DEFAULT NULL,
  `MaterialDiscription` varchar(1000) DEFAULT NULL,
  `MaterialType` varchar(20) DEFAULT NULL,
  `Standard` bigint(5) NOT NULL,
  PRIMARY KEY (`MaterialId`),
  KEY `MM_SM_SubjectIdFK` (`SubjectIdFK`),
  KEY `MM_FM_FacultyIdFK` (`FacultyIdFK`),
  CONSTRAINT `MM_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `MM_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `materialmanagement` */

insert  into `materialmanagement`(`MaterialId`,`MaterialName`,`SubjectIdFK`,`FacultyIdFK`,`Material`,`UploadedDate`,`DisplayStatus`,`MaterialDiscription`,`MaterialType`,`Standard`) values (1,'mathamatics',10,2,'ip.jpg','2015-05-13','Yes','this is maths assignment','image',11),(2,'mathamatics',14,2,'query.txt','2015-05-13','Yes','query','query',12);

/*Table structure for table `requestmaster` */

DROP TABLE IF EXISTS `requestmaster`;

CREATE TABLE `requestmaster` (
  `Id` bigint(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `MobileNo` bigint(13) DEFAULT NULL,
  `Email` varchar(35) DEFAULT NULL,
  `RequestFor` varchar(50) DEFAULT NULL,
  `RequestDescription` varchar(500) DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  `Answer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `requestmaster` */

insert  into `requestmaster`(`Id`,`Name`,`MobileNo`,`Email`,`RequestFor`,`RequestDescription`,`Status`,`Answer`) values (1,'Gopal Hingu',9878457945,'gopalhingu@gmail.com','Join classes','hello sir,\r\ni am join the classes when i am join??','accepted','next batch will start form may 25.\r\n'),(2,'Sapna Gosawmi',8759548451,'sapnagk07@gmail.com','Faculty','hello sir\r\ni am completed my B.E and i am apply as faculty into your classes.\r\nHow can i apply for it.','pending',NULL),(3,'Ronak Prajatati',8758484981,'ronakanything@gmail.com','apply as join','How can i apply for tuition class? ','pending',NULL);

/*Table structure for table `resultmaster` */

DROP TABLE IF EXISTS `resultmaster`;

CREATE TABLE `resultmaster` (
  `ResultId` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentIdFK` bigint(20) DEFAULT NULL,
  `TestIdFK` bigint(20) DEFAULT NULL,
  `TestMarks` decimal(7,2) NOT NULL,
  PRIMARY KEY (`ResultId`),
  KEY `RM_SM_StudentIdFK` (`StudentIdFK`),
  KEY `RM_TM_TestIdFK` (`TestIdFK`),
  CONSTRAINT `RM_SM_StudentIdFK` FOREIGN KEY (`StudentIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `RM_TM_TestIdFK` FOREIGN KEY (`TestIdFK`) REFERENCES `testmaster` (`TestId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resultmaster` */

/*Table structure for table `studentdiscussion` */

DROP TABLE IF EXISTS `studentdiscussion`;

CREATE TABLE `studentdiscussion` (
  `StudentDiscussionId` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentIdFK` bigint(20) DEFAULT NULL,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  `DiscussQuestion` varchar(1000) DEFAULT NULL,
  `DiscussionDate` date DEFAULT NULL,
  `FacultyStatus` varchar(10) DEFAULT NULL,
  `Std` int(5) DEFAULT NULL,
  `DiscussTopic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StudentDiscussionId`),
  KEY `SD_SM_StudentIdFK` (`StudentIdFK`),
  KEY `SD_SM_SubjectIdFK` (`SubjectIdFK`),
  CONSTRAINT `SD_SM_StudentIdFK` FOREIGN KEY (`StudentIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SD_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `studentdiscussion` */

insert  into `studentdiscussion`(`StudentDiscussionId`,`StudentIdFK`,`SubjectIdFK`,`DiscussQuestion`,`DiscussionDate`,`FacultyStatus`,`Std`,`DiscussTopic`) values (1,11,12,'What is the mass of Electron,Photon and Nutron?','2015-04-06','Yes',11,'Atomic Mass'),(2,11,11,'Any one have idea how centrifugal Force works and give that equation?','2015-04-11','Yes',12,'Centrifugal Force'),(3,15,10,'LIMIT(t->0) sint(t)=?','2015-04-11','No',11,'LIMIT');

/*Table structure for table `studentfeesdetail` */

DROP TABLE IF EXISTS `studentfeesdetail`;

CREATE TABLE `studentfeesdetail` (
  `StudentFeeId` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentIdFK` bigint(20) DEFAULT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `PaidAmount` decimal(10,2) DEFAULT NULL,
  `RemainingAmount` decimal(10,2) DEFAULT NULL,
  `DateOfFeePayment` date NOT NULL,
  `PaymentDetail` varchar(1000) DEFAULT NULL,
  `PaymentMode` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`StudentFeeId`),
  KEY `SFD_SM_StudentIdFK` (`StudentIdFK`),
  CONSTRAINT `SFD_SM_StudentIdFK` FOREIGN KEY (`StudentIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `studentfeesdetail` */

insert  into `studentfeesdetail`(`StudentFeeId`,`StudentIdFK`,`TotalAmount`,`PaidAmount`,`RemainingAmount`,`DateOfFeePayment`,`PaymentDetail`,`PaymentMode`) values (1,1,'4000.00','4000.00','0.00','2015-03-02','4000 RS. paid by Student','Cash'),(2,2,'2500.00','2000.00','500.00','2015-02-01','2000 RS. paid by Student','Cheque'),(3,3,'3600.00','2000.00','1600.00','2015-03-02','2000 RS. paid by Parent','Cheque'),(4,4,'3600.00','3000.00','600.00','2014-08-09','3000 RS. paid by Student','Cash'),(5,5,'7500.00','2500.00','5000.00','2014-08-09','2500 RS. paid by Parent','Cash'),(6,6,'5500.00','5000.00','500.00','2014-09-09','5000 RS. paid by Student','Cash'),(7,7,'4000.00','3000.00','1000.00','2015-03-01','3000 RS. paid by Parent','Cheque'),(8,8,'33500.00','10000.00','23500.00','2014-08-09','10000 RS. paid by Student','Cash'),(9,9,'25000.00','20000.00','5000.00','2015-01-31','20000 RS. paid by parent via cheque','Cheque'),(10,10,'25000.00','10000.00','15000.00','2015-02-25','10000 RS. paid by Student','Cash'),(11,11,'36000.00','20000.00','16000.00','2014-12-25','20000 RS. paid by Parent','Cash'),(12,12,'17500.00','13500.00','4000.00','2014-08-09','13500 RS. paid by Student','Cash'),(13,13,'18000.00','10000.00','8000.00','2015-02-01','10000 RS. paid by Student','Cash'),(14,14,'17000.00','10000.00','7000.00','2014-08-09','10000 RS. paid by Student','Cash'),(15,15,'17000.00','11000.00','6000.00','2015-03-02','11000 RS. paid by Student','Cash'),(16,16,'27000.00','11000.00','16000.00','2015-02-01','11000 RS. paid by Student','Cheque'),(17,2,'2500.00','1200.00','1300.00','2015-12-01','ffh','Cash');

/*Table structure for table `studentmaster` */

DROP TABLE IF EXISTS `studentmaster`;

CREATE TABLE `studentmaster` (
  `StudentId` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(50) NOT NULL,
  `StudentAddress` varchar(1000) NOT NULL,
  `StudentEmail` varchar(50) NOT NULL,
  `StudentContactNo` decimal(20,0) NOT NULL,
  `StudentDOB` varchar(50) NOT NULL,
  `StudentParentName` varchar(100) NOT NULL,
  `StudentParentContactNo` decimal(20,0) NOT NULL,
  `StudentParentEmail` varchar(50) NOT NULL,
  `StudentSchool` varchar(100) NOT NULL,
  `StudentPhoto` varchar(5000) NOT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  `StudentType` varchar(10) NOT NULL,
  `Std` int(5) NOT NULL,
  `StudentUserIdFK` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`StudentId`,`Std`),
  KEY `StudentUser` (`StudentUserIdFK`),
  CONSTRAINT `StudentUser` FOREIGN KEY (`StudentUserIdFK`) REFERENCES `login` (`UserName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `studentmaster` */

insert  into `studentmaster`(`StudentId`,`StudentName`,`StudentAddress`,`StudentEmail`,`StudentContactNo`,`StudentDOB`,`StudentParentName`,`StudentParentContactNo`,`StudentParentEmail`,`StudentSchool`,`StudentPhoto`,`DisplayStatus`,`StudentType`,`Std`,`StudentUserIdFK`) values (1,'Abhishek Delvadiya','Surat,Gujarat','abhishek_007@gmail.com','9428574870','10/02/2001','Parshotambhai','9987815451','Parshotam@gmail.com','Ram Krishna Vidhya Bhavan','DSC04439.JPG','Yes','Full',8,NULL),(2,'Arshi Shah','Bharuch ,Gujarat','arshishah01@gmail.com','9662055989','06/04/2001','Nareshbhai','9874525455','Naresh72@ymail.com','Shreekrishna Vidyalaya','st2.jpg','Yes','Full',8,NULL),(3,'Parimal Baldha','Surat, Gujarat','aboutparimal@gmail.com','7495846210','06/06/2000','Rameshbhai','8759854551','RameshKumar@ymail.com','Sarashvati vidyabhavan','st5.jpg','Yes','Partial',9,NULL),(4,'Bhargav Ghodasara','Surat, Gujarat','BhargavGpatel@gmail.com','8454555542','06/09/2000','Ghanshyambhai','9879545120','Ghanshyampatel@gmail.com','Ram Krishna Vidhya Bhavan','st7.jpg','Yes','Full',9,NULL),(5,'Arjun ghevariya','Anand , Gujarat','Arjunk7@gmail.com','9879547862','07/06/1999','Kantilal','8475458542','kanti007@gmail.com','Archna vidhyabhvan','st8.jpg','Yes','Full',10,NULL),(6,'Piyush Ghevariya','Anand, Gujarat','pkghevariya@gmail.com','8795462556','07/05/2000','Kantibhai ghevariya','8457695265','kanti.ghevarya@mail.com','Ram Krishna Vidhya Bhavan','st6.jpg','Yes','Full',10,NULL),(7,'Yashmin Desai','Anand, Gujarat','Yashmin008@gmail.com','9875648654','07/10/2000','Rmanbhai','8755899774','ramankdesai@gmail.com','P.P.Savni Vidhyalya','st10.jpg','Yes','Full',10,NULL),(8,'Gopal Hingu','Suart,Gujarat','Gopal.sec@gmail.com','8754694554','06/22/2000','ashokabhai','8754698854','Ashoka008@gmail.com','Sarashvati vidyabhavan','st8.jpg','Yes','Partial',11,NULL),(9,'Navin Ahir ','Anand, Gujarat','Ahir.navin@ymail.com','8795846872','11/25/1999','Shantibhai','9875946845','Shanti.sec@gmail.com','Ram Krishna Vidhya Bhavan','st5.jpg','Yes','Full',11,NULL),(10,'Rajan Hansora','Surat,Gujarat','ranjan.hansora@gmail.com','9875487954','10/20/1999','Tulshibhai','8789566156','tulshibhai@gmail.com','Shreekrishna Vidyalaya','st6.jpg','Yes','Partial',11,NULL),(11,'Payal Desai','Gandhinagar,Gujarat','padesai@gmail.com','8460500403','10/13/1998','Ajaybhai','7487956478','AjayDesai@gmail.com','Ram Krishna Vidhya Bhavan','st9.jpg','Yes','Full',12,NULL),(12,'Ankita Radadiya','Surat,Gujarat','Ankitapatel@gmail.com','9876548975','11/11/1998','Rameshbhai','8758484981','Ramanrk@ymail.com','P.P.Savni Vidhyalya','st11.jpg','Yes','Full',12,NULL),(13,'Rimpal Patel','Anand,Gujarat','rimpal.sec@gmail.com','8759487654','07/09/1998','Prakashbhai','9875648459','prakash.patel@gmail.com','Sarashvati vidyabhavan','st4.jpg','Yes','Partial',12,NULL),(14,'Shivani patel','Surat, gujarat','shivani.patel@gmail.com','8795468456','06/08/1999','Shivabhai','8754875475','Shiva007@gmail.com','Shreekrishna Vidyalaya','st4.jpg','Yes','Full',11,NULL),(15,'Sapna Goswami','Anand,Gujarat','SapnaGoswami@gmail.com','8754898756','10/22/1998','Vallabhbhai','8597845864','vallabh284@gmail.com','P.P.Savni Vidhyalya','st2.jpg','Yes','Partial',11,NULL),(16,'Paresh Prajapati','Surat,Gujarat','Ptprajapati@gmail.com','8745977554','01/07/1998','Tulshibhai','8759465845','tulshi.prajapati@gmail.com','Ram Krishna Vidhya Bhavan','st10.jpg','Yes','Partial',12,NULL);

/*Table structure for table `studentmaster_temp` */

DROP TABLE IF EXISTS `studentmaster_temp`;

CREATE TABLE `studentmaster_temp` (
  `StudentId` bigint(20) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(50) NOT NULL,
  `StudentAddress` varchar(1000) NOT NULL,
  `StudentEmail` varchar(50) NOT NULL,
  `StudentContactNo` decimal(20,0) NOT NULL,
  `StudentDOB` date NOT NULL,
  `StudentParentName` varchar(100) NOT NULL,
  `StudentParentContactNo` decimal(20,0) NOT NULL,
  `StudentParentEmail` varchar(50) NOT NULL,
  `StudentSchool` varchar(100) NOT NULL,
  `StudentPhoto` longblob NOT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  `StudentType` varchar(10) NOT NULL,
  `Std` int(5) NOT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `studentmaster_temp` */

insert  into `studentmaster_temp`(`StudentId`,`StudentName`,`StudentAddress`,`StudentEmail`,`StudentContactNo`,`StudentDOB`,`StudentParentName`,`StudentParentContactNo`,`StudentParentEmail`,`StudentSchool`,`StudentPhoto`,`DisplayStatus`,`StudentType`,`Std`) values (1,'test2','Jamnagar','test1@sec.com','9090909090','1994-08-19','testparent','8989898989','testparent@sec.com','DNHS','','yes','Partial',11),(2,'test2','Juunaghadh','test2@sec.com','7878787878','2014-04-13','testparent2','9898989898','testparent2@sec.com','PPN','','yes','Full',12);

/*Table structure for table `subjectchoicedetails` */

DROP TABLE IF EXISTS `subjectchoicedetails`;

CREATE TABLE `subjectchoicedetails` (
  `SubjectChoiceId` bigint(20) NOT NULL AUTO_INCREMENT,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  `StudentIdFK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SubjectChoiceId`),
  KEY `SCD_SM_SubjectIdFK` (`SubjectIdFK`),
  KEY `SCD_SM_StudentIdFK` (`StudentIdFK`),
  CONSTRAINT `SCD_SM_StudentIdFK` FOREIGN KEY (`StudentIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SCD_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `subjectchoicedetails` */

insert  into `subjectchoicedetails`(`SubjectChoiceId`,`SubjectIdFK`,`StudentIdFK`) values (1,1,1),(2,2,1),(3,3,1),(4,1,2),(5,3,2),(6,4,3),(7,5,3),(8,4,4),(9,5,4),(10,7,5),(11,8,5),(12,8,5),(13,9,5),(14,7,6),(15,8,6),(16,9,6),(17,7,7),(18,8,7),(19,10,8),(20,11,8),(21,12,8),(22,13,8),(23,10,9),(24,11,9),(25,13,9),(26,10,10),(27,11,10),(28,13,10),(29,14,11),(30,15,11),(31,16,11),(32,17,11),(33,15,12),(34,17,12),(35,14,13),(36,17,13),(37,10,14),(38,11,14),(39,10,15),(40,12,15),(41,14,16),(42,16,16),(43,17,16),(44,18,10),(45,19,12);

/*Table structure for table `subjectmaster` */

DROP TABLE IF EXISTS `subjectmaster`;

CREATE TABLE `subjectmaster` (
  `SubjectId` bigint(20) NOT NULL AUTO_INCREMENT,
  `SubjectFees` decimal(10,2) NOT NULL,
  `SubjectName` varchar(50) NOT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  `Std` bigint(5) NOT NULL,
  PRIMARY KEY (`SubjectId`,`Std`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `subjectmaster` */

insert  into `subjectmaster`(`SubjectId`,`SubjectFees`,`SubjectName`,`DisplayStatus`,`Std`) values (1,'1500.00','Mathematics','Yes',8),(2,'1500.00','Science','Yes',8),(3,'1000.00','English','Yes',8),(4,'1800.00','Mathematics','Yes',9),(5,'1800.00','Science','Yes',9),(6,'1200.00','English','Yes',9),(7,'2000.00','Mathematics','Yes',10),(8,'2000.00','Science','Yes',10),(9,'1500.00','English','Yes',10),(10,'8500.00','Mathematics','Yes',11),(11,'8500.00','Physics','Yes',11),(12,'8500.00','Chemistry','Yes',11),(13,'8000.00','English','Yes',11),(14,'9500.00','Mathematics','Yes',12),(15,'9000.00','Physics','Yes',12),(16,'9000.00','Chemistry','Yes',12),(17,'8500.00','English','Yes',12),(18,'8000.00','Biology','Yes',11),(19,'9500.00','Biology','Yes',12);

/*Table structure for table `testmaster` */

DROP TABLE IF EXISTS `testmaster`;

CREATE TABLE `testmaster` (
  `TestId` bigint(20) NOT NULL AUTO_INCREMENT,
  `TestName` varchar(50) DEFAULT NULL,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  `TotalMarks` decimal(5,0) DEFAULT NULL,
  `PassingMarks` decimal(5,0) NOT NULL,
  PRIMARY KEY (`TestId`),
  KEY `TM_SM_SubjectIdFK` (`SubjectIdFK`),
  CONSTRAINT `TM_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `testmaster` */

insert  into `testmaster`(`TestId`,`TestName`,`SubjectIdFK`,`TotalMarks`,`PassingMarks`) values (1,'Mathamatics',10,'30','12'),(2,'Mathamatics',14,'10','3'),(3,'Mathamatics Test1',10,'10','2'),(4,'New Physics Test',11,'10','2'),(5,'New Physics Test 2',11,'10','5'),(6,'New Physics Test 3',15,'30','12'),(7,'New Physics Test 4',11,'10','3');

/*Table structure for table `testquestionmaster` */

DROP TABLE IF EXISTS `testquestionmaster`;

CREATE TABLE `testquestionmaster` (
  `TestQuestionId` bigint(20) NOT NULL AUTO_INCREMENT,
  `TestIdFK` bigint(20) DEFAULT NULL,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `TestQuestion` varchar(5000) NOT NULL,
  `TestOption_A` varchar(500) NOT NULL,
  `TestOption_B` varchar(500) NOT NULL,
  `TestOption_C` varchar(500) NOT NULL,
  `TestOption_D` varchar(500) NOT NULL,
  `TestAnswer` varchar(500) NOT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  `QuestionNumber` varchar(5) NOT NULL,
  PRIMARY KEY (`TestQuestionId`),
  KEY `TQM_TM_TestIdFK` (`TestIdFK`),
  KEY `TQM_FM_FacultyIdFK` (`FacultyIdFK`),
  CONSTRAINT `TQM_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TQM_TM_TestIdFK` FOREIGN KEY (`TestIdFK`) REFERENCES `testmaster` (`TestId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `testquestionmaster` */

insert  into `testquestionmaster`(`TestQuestionId`,`TestIdFK`,`FacultyIdFK`,`TestQuestion`,`TestOption_A`,`TestOption_B`,`TestOption_C`,`TestOption_D`,`TestAnswer`,`DisplayStatus`,`QuestionNumber`) values (1,1,2,'A triangle with one angle greater than 90 degrees.','equilateral triangle','obtuse triangle','acute triangle',' isosceles triangle','B','Yes','1'),(2,1,2,'A triangle having at least two equal sides.','acute triangle','isosceles triangle',' equilateral triangle',' obtuse triangle','A','Yes','2'),(3,1,2,'Which of the numbers below represents the following: Six million, four hundred sixty-two thousand, three hundred fifty-one.',' 6,351,462',' 6,462,000',' 6,462,351',' 600,462,351','C','Yes','3'),(4,1,2,'Compare the following numbers and use symbols to show the relationship. 4,912,641 4,931,221?',' >','<','=','None of the above','B','Yes','4'),(5,1,2,'The fraction 3/8 is equivalent(equal) to which of the following fractions?',' 6/24',' 9/24',' 3/24','8/3','D','Yes','5'),(6,1,2,'What is the slope of the following line? 3x + 7y = 4','3','-3/7','7','3/7','B','Yes','6'),(7,1,2,'Determine the slope from the following two points: (3,6) and (5, -2)?','-2/8','4','-4','2/8','C','Yes','7'),(8,1,2,'Re-write the following equation in slope in y = mx + b form 6x + 4y = 24?','y = -3/2x + 6','4y = 6x +24','4y = 6x -24',' y = 3/2x + 6','D','Yes','8'),(9,1,2,'what is the x - intercept of the following equation? 6x + 9y = 12?','(9,0)','(6,0)','(2,0)','(-6,0)','B','Yes','9'),(10,1,2,'What is the y-intercept of the following equation? 6x + 5y = 30?','6','-6','5','-5','C','Yes','10'),(13,3,2,'1+1','2','3','4','5','A','Yes','1'),(14,4,1,'The absorption of ink by blotting paper involves','viscosity of ink','capillary action phenomenon','diffusion of ink through the blotting','siphon action','B','Yes','1'),(15,4,1,'Nuclear sizes are expressed in a unit named','Fermi','angstrom','newton','tesla','A','Yes','2'),(16,5,1,'Radiocarbon is produced in the atmosphere as a result of','collision between fast neutrons and nitrogen nuclei present in the atmosphere','action of ultraviolet light from the sun on atmospheric oxygen','action of solar radiations particularly cosmic rays on carbon dioxide present in the atmosphere','lightning discharge in atmosphere','A','Yes','1'),(17,5,1,'It is easier to roll a stone up a sloping road than to lift it vertical upwards because','work done in rolling is more than in lifting','work done in lifting the stone is equal to rolling it','work done in both is same but the rate of doing work is less in rolling','work done in rolling a stone is less than in lifting it','D','Yes','2');

/*Table structure for table `timetable` */

DROP TABLE IF EXISTS `timetable`;

CREATE TABLE `timetable` (
  `TimeTableId` bigint(20) NOT NULL AUTO_INCREMENT,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `WeekDay` varchar(15) NOT NULL,
  `ExecutingDate` date NOT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  `Std` bigint(5) NOT NULL,
  `LectureLink` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TimeTableId`,`ExecutingDate`,`Std`),
  KEY `TT_FM_FacultyIdFK` (`FacultyIdFK`),
  KEY `TT_SM_SubjectIdFK` (`SubjectIdFK`),
  CONSTRAINT `TT_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TT_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

/*Data for the table `timetable` */

insert  into `timetable`(`TimeTableId`,`FacultyIdFK`,`SubjectIdFK`,`StartTime`,`EndTime`,`WeekDay`,`ExecutingDate`,`DisplayStatus`,`Std`,`LectureLink`) values (1,1,15,'03:00:00','04:00:00','Monday','2015-04-06','Yes',12,'mmdesai'),(2,3,16,'04:30:00','05:30:00','Monday','2015-04-06','Yes',12,NULL),(3,2,14,'06:00:00','07:00:00','Monday','2015-04-06','Yes',12,'102.021.0.1/Scinence'),(4,8,19,'07:30:00','08:30:00','Monday','2015-04-06','Yes',12,NULL),(5,1,15,'03:00:00','04:00:00','Tuesday','2015-04-07','Yes',12,NULL),(6,3,16,'04:30:00','05:30:00','Tuesday','2015-04-07','Yes',12,NULL),(7,2,14,'06:00:00','07:00:00','Tuesday','2015-04-07','Yes',12,'102.021.0.1/Scinence'),(8,8,19,'07:30:00','08:30:00','Tuesday','2015-04-07','Yes',12,NULL),(9,4,17,'02:00:00','03:00:00','Tuesday','2015-04-07','Yes',12,NULL),(10,1,15,'03:00:00','04:00:00','Wednesday','2015-04-08','Yes',12,NULL),(11,3,16,'04:30:00','05:30:00','Wednesday','2015-04-08','Yes',12,NULL),(12,2,14,'06:00:00','07:00:00','Wednesday','2015-04-08','Yes',12,'102.021.0.1/Scinence'),(13,8,19,'07:30:00','08:30:00','Wednesday','2015-04-08','Yes',12,NULL),(14,3,16,'04:30:00','05:30:00','Thursday','2015-04-09','Yes',12,NULL),(15,2,14,'06:00:00','07:00:00','Thursday','2015-04-09','Yes',12,'102.021.0.1/Scinence'),(16,4,17,'02:00:00','03:00:00','Thursday','2015-04-09','Yes',12,NULL),(17,1,15,'03:00:00','04:00:00','Friday','2015-04-10','Yes',12,'fvbb'),(18,2,14,'06:00:00','07:00:00','Friday','2015-04-10','Yes',12,'ccv'),(19,8,19,'07:30:00','08:30:00','Friday','2015-04-10','Yes',12,'fvbb'),(20,4,17,'02:00:00','03:00:00','Friday','2015-04-10','Yes',12,'fvbb'),(21,1,15,'03:00:00','04:00:00','Saturaday','2015-04-11','Yes',12,NULL),(22,3,16,'04:30:00','05:30:00','Saturaday','2015-04-11','Yes',12,NULL),(23,8,19,'07:30:00','08:30:00','Saturaday','2015-04-11','Yes',12,NULL),(24,1,15,'03:00:00','04:00:00','Sunday','2015-04-12','Yes',12,NULL),(25,3,16,'04:30:00','05:30:00','Sunday','2015-04-12','Yes',12,NULL),(26,2,14,'06:00:00','07:00:00','Sunday','2015-04-12','Yes',12,'102.021.0.1/Scinence'),(27,1,11,'02:00:00','03:00:00','Monday','2015-04-06','Yes',11,NULL),(28,3,12,'03:30:00','04:30:00','Monday','2015-04-06','Yes',11,NULL),(29,2,10,'05:00:00','06:00:00','Monday','2015-04-06','Yes',11,NULL),(30,8,18,'06:30:00','07:30:00','Monday','2015-04-06','Yes',11,NULL),(31,4,13,'08:00:00','09:00:00','Monday','2015-04-06','Yes',11,NULL),(32,1,11,'02:30:00','03:30:00','Tuesday','2015-04-07','Yes',11,NULL),(33,3,12,'03:30:00','04:30:00','Tuesday','2015-04-07','Yes',11,NULL),(34,4,13,'08:00:00','09:00:00','Tuesday','2015-04-07','Yes',11,NULL),(35,2,10,'05:00:00','06:00:00','Tuesday','2015-04-07','Yes',11,NULL),(36,8,18,'06:30:00','07:30:00','Tuesday','2015-04-07','Yes',11,NULL),(37,1,11,'02:00:00','03:00:00','Wednesday','2015-04-08','Yes',11,NULL),(38,3,12,'03:30:00','04:30:00','Wednesday','2015-04-08','Yes',11,NULL),(39,2,10,'05:00:00','06:00:00','Wednesday','2015-04-08','Yes',11,NULL),(40,3,12,'03:30:00','04:30:00','Thursday','2015-04-09','Yes',11,NULL),(41,8,18,'06:30:00','07:30:00','Wednesday','2015-04-08','Yes',11,NULL),(42,2,10,'05:00:00','06:00:00','Thursday','2015-04-09','Yes',11,NULL),(43,8,18,'06:30:00','07:30:00','Thursday','2015-04-09','Yes',11,NULL),(44,4,13,'08:00:00','09:00:00','Thursday','2015-04-09','Yes',11,NULL),(45,1,11,'02:00:00','03:00:00','Friday','2015-04-10','Yes',11,'fvbb'),(46,2,10,'05:00:00','06:00:00','Friday','2015-04-10','Yes',11,'101.101.101.101/mmdesai'),(47,8,18,'06:30:00','07:30:00','Friday','2015-04-10','Yes',11,'fvbb'),(48,1,11,'02:00:00','03:00:00','Saturaday','2015-04-11','Yes',11,'100.10.1.0/scinece12'),(49,3,12,'03:30:00','04:30:00','Saturaday','2015-04-11','Yes',11,NULL),(50,8,18,'06:30:00','07:30:00','Saturaday','2015-04-11','Yes',11,NULL),(51,1,11,'02:00:00','03:00:00','Sunday','2015-04-12','Yes',11,NULL),(52,3,12,'03:30:00','04:30:00','Sunday','2015-04-12','Yes',11,NULL),(53,2,10,'05:00:00','06:00:00','Sunday','2015-04-12','Yes',11,'192.168.1.1/Math10');

/*Table structure for table `invoice` */

DROP TABLE IF EXISTS `invoice`;

/*!50001 DROP VIEW IF EXISTS `invoice` */;
/*!50001 DROP TABLE IF EXISTS `invoice` */;

/*!50001 CREATE TABLE  `invoice`(
 `StudentIdFK` bigint(20) ,
 `SubjectName` varchar(50) ,
 `SubjectFees` decimal(10,2) 
)*/;

/*View structure for view invoice */

/*!50001 DROP TABLE IF EXISTS `invoice` */;
/*!50001 DROP VIEW IF EXISTS `invoice` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `invoice` AS select `subjectchoicedetails`.`StudentIdFK` AS `StudentIdFK`,`subjectmaster`.`SubjectName` AS `SubjectName`,`subjectmaster`.`SubjectFees` AS `SubjectFees` from (`subjectmaster` join `subjectchoicedetails`) where (`subjectmaster`.`SubjectId` = `subjectchoicedetails`.`SubjectIdFK`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
