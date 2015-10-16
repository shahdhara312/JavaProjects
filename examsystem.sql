-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: examsystem
-- ------------------------------------------------------
-- Server version	5.6.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `QuestionId` int(11) NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(25) NOT NULL,
  `Question` varchar(300) NOT NULL,
  `Option1` varchar(300) NOT NULL,
  `Option2` varchar(300) NOT NULL,
  `Option3` varchar(300) NOT NULL,
  `Option4` varchar(300) NOT NULL,
  `Answer` varchar(300) NOT NULL,
  PRIMARY KEY (`QuestionId`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (102,'CS532',' Literal can be of which of these data types?','Integer','Float ','Boolean','all of the mentioned','d'),(103,'CS532','Which of these method of Thread class is used to find out the priority given to a thread?','get()','ThreadPriority()','getPriority()','getThreadPriority()','c'),(104,'CS532','Which function of pre defined class Thread is used to check weather current thread being checked is still running?','isAlive()','Join()','isRunning()','Alive()','a'),(105,'CS532','Which of these interface is implemented by Thread class?','Runnable','Connections','Set','MapConnections','a'),(106,'CS510','What MySQL property is used to create a surrogate key in MySQL?','UNIQUE','SEQUENCE','AUTO_INCREMENT','None of the above','c'),(107,'CS510','Which of the following statements creates a new table temp instructor that has the same schema as instructor.','create table temp_instructor','Create table temp_instructor like instructor','Create Table as temp_instructor','Create table like temp_instructor','b'),(109,'CS510','Which of the following are goals of OLE DB?','Create object interfaces for DBMS functionality pieces only.','Increase flexibility only.','Object interface over any type of data only.','All of the above as goals of OLE DB.','d'),(110,'CS510','The SQL WHERE clause:','limits the column data that are returned.','limits the row data are returned.','Both A and B are correct.','Neither A nor B are correct.','b'),(111,'CS510','The ODBC core API consists of which of the following functions?','Commit or rollback transactions only','Connect to data sources with driver-specific information only','Connect to data sources only','Both 1 and 3 above are in the OBDC core API.','d'),(112,'CS510','In OLE DB, actions that an object can perform are called:','properties','collections','methods','abstractions','d'),(114,'CS532','Servlet mapping defines','an association between a URL pattern and a servlet','an association between a URL pattern and a request page','an association between a URL pattern and a response page','All of the above','a'),(115,'CS532','Which of these statements are incorrect?','The left shift operator, <<, shifts all of the bite in a value to the left specified number of times.','The right shift operator, >>, shifts all of the bite in a value to the right specified number of times.','The left shift operator can be used as an alternative to multiplying by 2.','The right shift operator automatically fills the higher order bits with 0.','d'),(116,'CS532','Which of these can be used to fully abstract a class from its implementation?','Objects','Packages','Interfaces','None of the Mentioned.','c'),(117,'CS510','SQL views can be used to hide:','columns and rows only.','complicated SQL syntax only.','both of the above can be hidden by an SQL view.','None of the above is correct.','c');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(20) DEFAULT NULL,
  `Password` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `BirthDate` date NOT NULL,
  PRIMARY KEY (`StudentId`),
  UNIQUE KEY `UserName_UNIQUE` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'dhara312','dhara','Dhara','Shah','1986-03-12'),(2,'shah','shah','shah12','shah21','1988-03-01'),(9,'nilesh2912','shah','Nilesh','Shah','2015-04-01'),(10,'rekha','rekha','rekha','shah','1966-06-28'),(11,'nikunj','nikunj','nikunj','shahnew','1988-05-05'),(12,'kirit','kirit','kiritbhai','shah','1966-01-09'),(13,'hardy','hardy','hardy','hardy','1986-04-01'),(14,'s','s','h','h','2000-01-01'),(15,'dhara','shah','Dhara','Shah','1896-01-03'),(16,'d','d','d','s','1986-01-11'),(18,'sas','sa','sa','sa','1992-04-24');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentanswer`
--

DROP TABLE IF EXISTS `studentanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentanswer` (
  `StudentAnswerId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) NOT NULL,
  `QuestionId` int(11) NOT NULL,
  `CourseName` varchar(25) NOT NULL,
  `StudentAnswer` varchar(100) NOT NULL,
  `RecentFlag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`StudentAnswerId`),
  KEY `fk_student_studentanswer_idx` (`StudentId`),
  KEY `fk_question_studentanswer_idx` (`QuestionId`),
  CONSTRAINT `studentanswer_ibfk_1` FOREIGN KEY (`QuestionId`) REFERENCES `question` (`QuestionId`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentanswer`
--

LOCK TABLES `studentanswer` WRITE;
/*!40000 ALTER TABLE `studentanswer` DISABLE KEYS */;
INSERT INTO `studentanswer` VALUES (202,1,102,'CS532','d',0),(203,1,103,'CS510','c',0),(204,1,102,'CS510','a',0),(205,2,102,'CS532','b',0),(206,3,102,'CS510','d',0),(215,1,114,'CS532','a',0),(216,3,112,'CS510','d',0),(217,2,112,'CS510','c',0),(218,1,112,'CS510','d',0),(221,2,107,'CS510','c',0),(222,2,107,'CS510','c',0),(223,8,102,'CS532','a',0),(224,8,103,'CS532','a',0),(225,8,114,'CS532','b',0),(226,8,102,'CS532','c',0),(236,10,102,'CS532','d',0),(238,10,114,'CS532','a',0),(242,10,103,'CS532','c',0),(243,10,105,'CS532','a',0),(244,10,102,'CS532','d',0),(251,12,105,'CS532','a',0),(253,12,114,'CS532','d',0),(254,12,114,'CS532','c',0),(255,12,104,'CS532','a',0),(256,12,103,'CS532','c',0),(257,11,115,'CS532','c',0),(258,11,116,'CS532','d',0),(259,11,114,'CS532','a',0),(260,13,106,'CS510','a',0),(261,13,112,'CS510','b',0),(262,13,111,'CS510','b',0),(263,13,112,'CS510','a',0),(264,13,107,'CS510','b',0),(265,13,110,'CS510','a',0),(266,2,117,'CS510','a',0),(267,2,106,'CS510','b',0),(268,2,111,'CS510','a',0),(269,13,110,'CS510','a',0),(270,13,109,'CS510','a',0),(271,13,111,'CS510','c',0),(272,13,105,'CS532','a',0),(273,13,115,'CS532','a',0),(274,13,104,'CS532','a',0),(275,13,114,'CS532','b',0),(276,13,105,'CS532','b',0),(277,13,103,'CS532','c',0),(278,13,105,'CS532','a',0),(279,13,103,'CS532','c',0),(280,13,104,'CS532','a',0),(281,13,116,'CS532','c',0),(282,13,114,'CS532','a',0),(283,13,104,'CS532','a',0),(284,13,104,'CS532','c',0),(285,13,102,'CS532','b',0),(286,13,103,'CS532','b',0),(287,13,115,'CS532','a',0),(288,13,102,'CS532','c',0),(289,13,104,'CS532','a',0),(290,1,111,'CS510','d',1),(291,1,110,'CS510','b',1),(292,1,117,'CS510','a',1);
/*!40000 ALTER TABLE `studentanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'examsystem'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-25 18:50:15
