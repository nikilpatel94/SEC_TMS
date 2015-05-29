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
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_sec_tms` /*!40100 DEFAULT CHARACTER SET utf8 */;

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
  `AttendanceDay` date DEFAULT NULL,
  `AttendanceType` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AttendanceId`),
  KEY `AM_FM_FacultyIdFK` (`FacultyIdFK`),
  KEY `AM_SM_SubjectIdFK` (`SubjectIdFK`),
  KEY `AM_SM_StudentIdFK` (`StudentIdFK`),
  CONSTRAINT `AM_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `AM_SM_StudentIdFK` FOREIGN KEY (`StudentIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `AM_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attendancemaster` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `discussionanswer` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facultydiscussion` */

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `facultymaster` */

insert  into `facultymaster`(`FacultyId`,`FacultyName`,`FacultyAddress`,`FacultyEmail`,`FacultyContactNo`,`FacultyQualification`,`FacultyExperience`,`FacultyPhoto`,`DisplayStatus`,`Salary`,`FacultyUserIdFK`) values (16,'Akash','gandhinagar','akashkukadia_k7@yahoo.com','9998596785','BE','0','Edit.jpg','Yes','78797',NULL),(17,'Mehul','Surat','desaimehul94@gmail.com','8460421800','BE','2','aaa','Yes','12000',NULL),(18,'Nikil','Anand','patel.nikil@gmail.com','9033329681','ME','6','aaa','Yes','20000',NULL),(19,'Piyush','Surat','piyushkghevariya@gmail.com','8989898989','BE IT','12','aaa','Yes','23450',NULL),(20,'navin','suart','navin@gmail.com','8787878787','BE','2','aaa','Yes','23130',NULL),(21,'Gopal','Surat','gopalhingu@gmail.com','8990899089','MSc.','1','1366x768_java-coffee-artwork-art-beans-HD-Wallpaper.jpg','Yes','23000','Faculty2');

/*Table structure for table `facultysubjectdetail` */

DROP TABLE IF EXISTS `facultysubjectdetail`;

CREATE TABLE `facultysubjectdetail` (
  `FacultySubjectId` bigint(20) NOT NULL AUTO_INCREMENT,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `SubjectIdFK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FacultySubjectId`),
  KEY `FSD_FM_FacultyIdFK` (`FacultyIdFK`),
  KEY `FSD_SM_SubjectIdFK` (`SubjectIdFK`),
  CONSTRAINT `FSD_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FSD_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `facultysubjectdetail` */

insert  into `facultysubjectdetail`(`FacultySubjectId`,`FacultyIdFK`,`SubjectIdFK`) values (18,16,2),(19,17,3);

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

insert  into `login`(`UserName`,`Password`,`UserType`) values ('admin','admin','A'),('Faculty2','fac2','F');

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
  PRIMARY KEY (`MaterialId`),
  KEY `MM_SM_SubjectIdFK` (`SubjectIdFK`),
  KEY `MM_FM_FacultyIdFK` (`FacultyIdFK`),
  CONSTRAINT `MM_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `MM_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `materialmanagement` */

/*Table structure for table `requestmaster` */

DROP TABLE IF EXISTS `requestmaster`;

CREATE TABLE `requestmaster` (
  `Id` bigint(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) DEFAULT NULL,
  `MobileNo` bigint(13) DEFAULT NULL,
  `Email` varchar(35) DEFAULT NULL,
  `RequestFor` varchar(50) DEFAULT NULL,
  `RequestDescription` varchar(50) DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  `Answer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `requestmaster` */

insert  into `requestmaster`(`Id`,`Name`,`MobileNo`,`Email`,`RequestFor`,`RequestDescription`,`Status`,`Answer`) values (1,'Inq1',8080808080,'inq@test.com','other','What is other?','Pending','Ok Done'),(2,'Inq2',9090909090,'inq2@test.com','Faculty','I want to know!','pending',NULL),(3,'Inq3',7070707070,'inq3@test.com','Student','Hello Admin!','accepted',NULL),(4,'krunal',99014098923,'afhjah@faj.com','hdasj','najsd','pending',NULL),(5,'Dhruvil',1234567890,'dhja@haj.com','Admission','how to admit?','pending',NULL);

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
  PRIMARY KEY (`StudentDiscussionId`),
  KEY `SD_SM_StudentIdFK` (`StudentIdFK`),
  KEY `SD_SM_SubjectIdFK` (`SubjectIdFK`),
  CONSTRAINT `SD_SM_StudentIdFK` FOREIGN KEY (`StudentIdFK`) REFERENCES `studentmaster` (`StudentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `SD_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studentdiscussion` */

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `studentfeesdetail` */

insert  into `studentfeesdetail`(`StudentFeeId`,`StudentIdFK`,`TotalAmount`,`PaidAmount`,`RemainingAmount`,`DateOfFeePayment`,`PaymentDetail`,`PaymentMode`) values (1,10,'5000.00','20000.00','-15000.00','2014-10-20','unpaid','Cash'),(3,10,'5000.00','1000.00','4000.00','2015-01-01','Paid 1000','Cash'),(9,10,'59000.00','1200.00','57800.00','2015-01-01','1200 paid','Cash'),(10,13,'39000.00','3400.00','35600.00','2015-01-01','3400 done','Cash'),(11,10,'59000.00','1900.00','57100.00','2015-01-20','1900 paid','Cheque');

/*Table structure for table `studentmaster` */

DROP TABLE IF EXISTS `studentmaster`;

CREATE TABLE `studentmaster` (
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
  `StudentPhoto` varchar(5000) NOT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  `StudentType` varchar(10) NOT NULL,
  `Std` int(5) NOT NULL,
  PRIMARY KEY (`StudentId`,`Std`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `studentmaster` */

insert  into `studentmaster`(`StudentId`,`StudentName`,`StudentAddress`,`StudentEmail`,`StudentContactNo`,`StudentDOB`,`StudentParentName`,`StudentParentContactNo`,`StudentParentEmail`,`StudentSchool`,`StudentPhoto`,`DisplayStatus`,`StudentType`,`Std`) values (10,'Akash','Gandhinagar','akashkukadiak7@gmail.com','9998596785','2018-02-01','Bhadreshbhai','9999999999','abc@gmail.com','xyz','835212080851734114_281104626.jpg','Yes','Full',1),(11,'Mayur Patel','nanabazar,vvn,Anand','mayur99@ymail.com','9090909090','1994-01-10','Vallabhbhai','8905566315','vlpatel@ymail.com','RPTP,VVN','','yes','Full',11),(12,'Chhagan','nanabazr,vvn','chhagan12@ymail.com','8460421800','1994-01-08','Vallabhbhai','8905566315','vlpatel@ymail.com','RPTP,VVN','','yes','Full',12),(13,'Rajan','vvn,anand','rajan@hotmali.com','7070707070','1992-02-10','Ramanbhai','8181818181','r@hotmail.com','PP Vadyalaya','','yes','Partial',11),(14,'Student1','stellanse Technosoft','test1@test.com','1234567890','2000-08-21','test1parentname','2345678910','parent1@test1.com','AND HS','','yes','Partial',11),(15,'test2','Anand','test2@stellance.com','8989898989','1994-08-07','parent2','7979797979','parent2@test2.com','RPTP','','yes','Full',12),(16,'newTest','Nagpur','test3@test.com','7070707070','2000-08-21','ABC','3030303030','ABC@test3.com','DN','','Yes','Partial',3);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `subjectchoicedetails` */

insert  into `subjectchoicedetails`(`SubjectChoiceId`,`SubjectIdFK`,`StudentIdFK`) values (1,1,10),(2,2,10),(3,3,10),(4,5,10),(5,1,13),(6,3,13),(7,5,13),(8,2,12);

/*Table structure for table `subjectmaster` */

DROP TABLE IF EXISTS `subjectmaster`;

CREATE TABLE `subjectmaster` (
  `SubjectId` bigint(20) NOT NULL AUTO_INCREMENT,
  `SubjectFees` decimal(10,2) NOT NULL,
  `SubjectName` varchar(50) NOT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  `Std` bigint(5) NOT NULL,
  PRIMARY KEY (`SubjectId`,`Std`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `subjectmaster` */

insert  into `subjectmaster`(`SubjectId`,`SubjectFees`,`SubjectName`,`DisplayStatus`,`Std`) values (1,'14000.00','Maths','Yes',11),(2,'20000.00','Science','Yes',11),(3,'20000.00','Chemistry','Yes',12),(4,'15000.00','Maths','Yes',12),(5,'5000.00','English','Yes',11);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testmaster` */

/*Table structure for table `testquestionmaster` */

DROP TABLE IF EXISTS `testquestionmaster`;

CREATE TABLE `testquestionmaster` (
  `TestQuestionId` bigint(20) NOT NULL AUTO_INCREMENT,
  `TestIdFK` bigint(20) DEFAULT NULL,
  `FacultyIdFK` bigint(20) DEFAULT NULL,
  `TestQuestion` varchar(5000) NOT NULL,
  `TestOption_A` varchar(50) NOT NULL,
  `TestOption_B` varchar(50) NOT NULL,
  `TestOption_C` varchar(50) NOT NULL,
  `TestOption_D` varchar(50) NOT NULL,
  `TestAnswer` varchar(50) NOT NULL,
  `DisplayStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`TestQuestionId`),
  KEY `TQM_TM_TestIdFK` (`TestIdFK`),
  KEY `TQM_FM_FacultyIdFK` (`FacultyIdFK`),
  CONSTRAINT `TQM_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TQM_TM_TestIdFK` FOREIGN KEY (`TestIdFK`) REFERENCES `testmaster` (`TestId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testquestionmaster` */

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
  PRIMARY KEY (`TimeTableId`,`ExecutingDate`),
  KEY `TT_FM_FacultyIdFK` (`FacultyIdFK`),
  KEY `TT_SM_SubjectIdFK` (`SubjectIdFK`),
  CONSTRAINT `TT_FM_FacultyIdFK` FOREIGN KEY (`FacultyIdFK`) REFERENCES `facultymaster` (`FacultyId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `TT_SM_SubjectIdFK` FOREIGN KEY (`SubjectIdFK`) REFERENCES `subjectmaster` (`SubjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `timetable` */

insert  into `timetable`(`TimeTableId`,`FacultyIdFK`,`SubjectIdFK`,`StartTime`,`EndTime`,`WeekDay`,`ExecutingDate`,`DisplayStatus`) values (6,16,1,'12:12:00','13:12:00','Monday','2014-10-12','Yes'),(8,16,1,'00:00:12','00:00:02','Monday','2014-08-02','Yes'),(11,18,2,'12:00:00','00:00:02','Monday','2014-12-12','Yes'),(12,16,1,'12:12:00','13:12:00','Monday','2014-10-12','Yes');

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
