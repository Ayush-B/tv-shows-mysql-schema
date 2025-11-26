CREATE DATABASE  IF NOT EXISTS `tv_shows` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tv_shows`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tv_shows
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `average_popularity_by_genre`
--

DROP TABLE IF EXISTS `average_popularity_by_genre`;
/*!50001 DROP VIEW IF EXISTS `average_popularity_by_genre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `average_popularity_by_genre` AS SELECT 
 1 AS `genre`,
 1 AS `average_popularity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `creator`
--

DROP TABLE IF EXISTS `creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creator` (
  `creator_name` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`creator_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator`
--

LOCK TABLES `creator` WRITE;
/*!40000 ALTER TABLE `creator` DISABLE KEYS */;
INSERT INTO `creator` VALUES ('Aaron Korsh','Male','American','1966-11-16'),('Alex Kurtzman','Male','American','1973-09-07'),('Ann Donahue','Female','American','1955-05-05'),('Anthony Zuiker','Male','American','1968-01-17'),('Chris Licht','Male','American','1971-03-02'),('D.B. Weiss','Male','American','1971-04-23'),('Dan Fogelman','Male','American','1976-02-19'),('Daniel Chong','Male','American','1978-11-06'),('Dave Filoni','Male','American','1974-06-07'),('David Benioff','Male','American','1970-09-25'),('David Zabel','Male','American','1968-06-12'),('Dick Ebersol','Male','American','1947-07-28'),('Dick Wolf','Male','American','1946-12-20'),('Don McGill','Male','American','1969-12-28'),('Donald P. Bellisario','Male','American','1935-08-08'),('Gene Roddenberry','Male','American','1921-08-19'),('Genndy Tartakovsky','Male','Russian-American','1970-01-17'),('Greg Coolidge','Male','American','1972-12-28'),('Jeri Taylor','Female','American','1938-06-30'),('Jim Dauterive','Male','American','1954-06-17'),('Jimmy Fallon','Male','American','1974-09-19'),('John Oliver','Male','British','1977-04-23'),('Jon Stewart','Male','American','1962-11-28'),('Kirk Ward','Male','American','1963-03-01'),('Laurie Nunn','Female','British','1980-06-01'),('Loren Bouchard','Male','American','1969-10-12'),('Lorne Michaels','Male','Canadian','1944-11-17'),('Matt Olmstead','Male','American','1964-01-25'),('Michael Piller','Male','American','1948-05-30'),('Peter M. Lenkov','Male','American','1964-05-09'),('Rick Berman','Male','American','1945-12-25'),('Roberto Orci','Male','American','1973-07-20'),('Seth MacFarlane','Male','American','1973-10-26'),('Shawn Simmons','Male','American','1974-11-19'),('Shonda Rhimes','Female','American','1970-01-13'),('Stephen Colbert','Male','American','1964-05-13'),('Tom Purcell','Male','American','1964-07-27'),('Walcyr Carrasco','Male','Brazilian',NULL);
/*!40000 ALTER TABLE `creator` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_birthdate` BEFORE INSERT ON `creator` FOR EACH ROW BEGIN
        IF NEW.birthdate > CURDATE() THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Birthdate cannot be in the future';
        END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_birthdate_update` BEFORE UPDATE ON `creator` FOR EACH ROW BEGIN
        IF NEW.birthdate > CURDATE() THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Birthdate cannot be in the future';
        END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `prevent_update_creator_birthdate_null` BEFORE UPDATE ON `creator` FOR EACH ROW BEGIN
        IF NEW.birthdate IS NULL THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot update creator''s birthdate to null';
        END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `most_popular_show_by_genre`
--

DROP TABLE IF EXISTS `most_popular_show_by_genre`;
/*!50001 DROP VIEW IF EXISTS `most_popular_show_by_genre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_popular_show_by_genre` AS SELECT 
 1 AS `genre`,
 1 AS `name`,
 1 AS `popularity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `network`
--

DROP TABLE IF EXISTS `network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `network` (
  `network_name` varchar(255) NOT NULL,
  `network_type` varchar(255) NOT NULL,
  `launch_date` date DEFAULT NULL,
  `network_headquarter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`network_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `network`
--

LOCK TABLES `network` WRITE;
/*!40000 ALTER TABLE `network` DISABLE KEYS */;
INSERT INTO `network` VALUES ('ABC','Broadcast','1943-10-12','Burbank, CA, USA'),('ABCDE','Broadcast','1999-09-18','New York City, NY, USA'),('Amazon Prime','Streaming','2005-09-07','Seattle, WA, USA'),('AMC','Cable','1980-10-01','New York City, NY, USA'),('Cartoon Network','Cable','1992-10-01','Atlanta, GA, USA'),('CBS','Broadcast','1927-09-18','New York City, NY, USA'),('Disney+','Streaming','2019-11-12','Burbank, CA, USA'),('FOX','Broadcast','1986-10-09','Los Angeles, CA, USA'),('HBO','Cable','1972-11-08','New York City, NY, USA'),('NBC','Broadcast','1926-11-15','New York City, NY, USA'),('Netflix','Streaming','1997-08-29','Los Gatos, CA, USA'),('Peacock','Streaming','2020-07-15','New York City, NY, USA'),('Syndication','Broadcast',NULL,NULL),('TV Globo','Broadcast','1965-04-26','Rio de Janeiro, Brazil'),('UPN','Broadcast','1995-01-16','Los Angeles, CA, USA'),('USA Network','Cable','1977-09-22','New York City, NY, USA');
/*!40000 ALTER TABLE `network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `production_companies` varchar(255) NOT NULL,
  `establish_date` date DEFAULT NULL,
  `production_headquarter` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`production_companies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='table production with attributes production_companies, establish_date, production_headquarter, and website.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES ('101st Street Entertainment','2007-12-18','New York City, NY, USA',NULL),('20th Century Fox Television','1949-06-20','Los Angeles, CA, USA','https://www.disney.com/'),('20th Television','1989-10-01','Los Angeles, CA, USA',NULL),('20th Television Animation','1989-12-17','Los Angeles, CA, USA',NULL),('ABC Studios','2001-05-01','Burbank, CA, USA','https://www.abcstudios.go.com'),('Alliance Atlantis','1998-01-05','Toronto, Canada',NULL),('AMC Studios','2010-03-01','New York City, NY, USA','https://www.amc.com'),('Avalon Television','1989-03-01','London, UK','https://www.avalonuk.com'),('Belisarius Productions','1984-01-01','Los Angeles, CA, USA',NULL),('Bento Box Entertainment','2001-08-27','Burbank, CA, USA','https://www.bentoboxent.com'),('Bighead Littlehead','2003-09-12','New York City, NY, USA',NULL),('Broadway Video','1979-10-11','New York City, NY, USA','https://www.broadwayvideo.com'),('Buck & Millie Productions','2013-11-19','London, UK',NULL),('Cartoon Network Studios','1994-10-01','Atlanta, GA, USA','https://www.cartoonnetworkstudios.com'),('CBS Productions','1949-01-01','Los Angeles, CA, USA','https://https://www.cbs.com/'),('CBS Studios','1939-01-05','Studio City, CA, USA','https://www.cbsstudios.com'),('Circle of Confusion','2006-08-04','Los Angeles, CA, USA','https://www.circleofconfusion.com'),('Dutch Oven','2018-09-03','Amsterdam, Netherlands','https://www.dutchovenproductions.nl'),('Electric Hot Dog Productions','2014-11-28','Chicago, IL, USA','https://www.electrichotdogproductions.com'),('Eleven','2006-11-07','Sydney, Australia','https://www.eleven.com.au'),('Estúdios Globo','1965-04-26','Rio de Janeiro, Brazil','https://www.redeglobo.globo.com/estudios'),('Fuzzy Door Productions','1998-09-09','Burbank, CA, USA','https://www.fuzzydoorproductions.com'),('Generator Entertainment','1996-03-12','Vancouver, Canada',NULL),('Hanna-Barbera Productions','1957-07-07','Los Angeles, CA, USA',NULL),('Hypnotic','1996-07-01','Los Angeles, CA, USA',NULL),('Idiotbox','2011-04-30','Sydney, Australia',NULL),('K/O Paper Products','2009-07-24','Los Angeles, CA, USA',NULL),('Lionsgate Television','1997-07-10','Santa Monica, CA, USA','https://www.lionsgate.com'),('Lucasfilm Ltd.','1971-12-17','San Francisco, CA, USA','https://www.lucasfilm.com'),('NBC Studios','1927-09-16','New York City, NY, USA','https://www.nbcstudios.com'),('Paramount Television Studios','1967-02-15','Los Angeles, CA, USA','https://www.paramountstudios.com'),('Partially Important Productions','2019-08-05','Los Angeles, CA, USA',NULL),('Revolution Sun Studios','2012-08-17','Atlanta, GA, USA','https://www.revolutionsunstudios.com'),('Rhode Island Ave. Productions','2002-06-30','Washington, D.C., USA',NULL),('ShondaLand','2005-05-17','Los Angeles, CA, USA','https://www.shondaland.com'),('Sixteen String Jack Productions','2015-03-10','London, UK',NULL),('Skybound Entertainment','2010-03-08','Los Angeles, CA, USA','https://www.skybound.com'),('Spartina Productions','2009-06-15','Los Angeles, CA, USA','https://www.spartinaproductions.com'),('Studios USA','2002-10-01','New York City, NY, USA',NULL),('Television 360','2003-11-19','Beverly Hills, CA, USA','https://www.television360.com'),('Test Productions','2024-02-15','Los Angeles, CA, USA','https://www.test.com'),('The Mark Gordon Company','2000-05-23','Los Angeles, CA, USA','https://www.markgordoncompany.com'),('thinkfilm','2001-06-12','New York City, NY, USA',NULL),('Thunder Road','2003-09-12','Santa Monica, CA, USA','https://www.thunderroadfilms.com'),('Touchstone Television','1985-06-10','Burbank, CA, USA',NULL),('UCP','2004-10-04','Universal City, CA, USA','https://www.ucp.com'),('Universal Media Studios','2007-05-28','Universal City, CA, USA',NULL),('Universal Television','1951-02-09','Universal City, CA, USA','https://www.universaltv.com'),('Valhalla Entertainment','2002-07-12','Los Angeles, CA, USA','https://www.valhallaentertainment.com'),('Wilo Productions','2016-04-22','Toronto, Canada','https://www.wiloproductions.ca'),('Wolf Entertainment','1996-10-05','Los Angeles, CA, USA','https://www.wolfentertainment.com'),('Zaftig Films','2007-06-14','London, UK',NULL);
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `production_company_shows_count`
--

DROP TABLE IF EXISTS `production_company_shows_count`;
/*!50001 DROP VIEW IF EXISTS `production_company_shows_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `production_company_shows_count` AS SELECT 
 1 AS `production_companies`,
 1 AS `total_shows`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `show_creator`
--

DROP TABLE IF EXISTS `show_creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_creator` (
  `show_name` varchar(255) NOT NULL,
  `creator_name` varchar(255) NOT NULL,
  PRIMARY KEY (`show_name`,`creator_name`),
  KEY `creator_nameFK_idx` (`creator_name`),
  CONSTRAINT `creator_nameFK` FOREIGN KEY (`creator_name`) REFERENCES `creator` (`creator_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `show_creatorFK` FOREIGN KEY (`show_name`) REFERENCES `shows` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='show and creator entity junction table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_creator`
--

LOCK TABLES `show_creator` WRITE;
/*!40000 ALTER TABLE `show_creator` DISABLE KEYS */;
INSERT INTO `show_creator` VALUES ('Suits','Aaron Korsh'),('Hawaii Five-0','Alex Kurtzman'),('CSI: Crime Scene Investigation','Ann Donahue'),('CSI: Crime Scene Investigation','Anthony Zuiker'),('The Late Show with Stephen Colbert','Chris Licht'),('Game of Thrones','D.B. Weiss'),('This Is Us','Dan Fogelman'),('We Bare Bears','Daniel Chong'),('Ahsoka','Dave Filoni'),('Game of Thrones','David Benioff'),('The Walking Dead: Daryl Dixon','David Zabel'),('Saturday Night Live','Dick Ebersol'),('Chicago P.D.','Dick Wolf'),('Law & Order: Special Victims Unit','Dick Wolf'),('NCIS','Don McGill'),('NCIS','Donald P. Bellisario'),('Star Trek: The Next Generation','Gene Roddenberry'),('Star Trek: Voyager','Gene Roddenberry'),('Dexter\'s Laboratory','Genndy Tartakovsky'),('The Continental: From the World of John Wick','Greg Coolidge'),('Star Trek: Voyager','Jeri Taylor'),('Bob\'s Burgers','Jim Dauterive'),('The Tonight Show Starring Jimmy Fallon','Jimmy Fallon'),('Last Week Tonight with John Oliver','John Oliver'),('The Late Show with Stephen Colbert','Jon Stewart'),('The Continental: From the World of John Wick','Kirk Ward'),('Sex Education','Laurie Nunn'),('Bob\'s Burgers','Loren Bouchard'),('Saturday Night Live','Lorne Michaels'),('Chicago P.D.','Matt Olmstead'),('Star Trek: Voyager','Michael Piller'),('Hawaii Five-0','Peter M. Lenkov'),('Star Trek: Voyager','Rick Berman'),('Hawaii Five-0','Roberto Orci'),('Family Guy','Seth MacFarlane'),('The Continental: From the World of John Wick','Shawn Simmons'),('Grey\'s Anatomy','Shonda Rhimes'),('The Late Show with Stephen Colbert','Stephen Colbert'),('The Late Show with Stephen Colbert','Tom Purcell'),('Land of Desire','Walcyr Carrasco');
/*!40000 ALTER TABLE `show_creator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_genre`
--

DROP TABLE IF EXISTS `show_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_genre` (
  `show_name` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`show_name`,`genre`),
  CONSTRAINT `show2genreFK` FOREIGN KEY (`show_name`) REFERENCES `shows` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_genre`
--

LOCK TABLES `show_genre` WRITE;
/*!40000 ALTER TABLE `show_genre` DISABLE KEYS */;
INSERT INTO `show_genre` VALUES ('Ahsoka','Action & Adventure'),('Ahsoka','Sci-Fi & Fantasy'),('Bob\'s Burgers','Animation'),('Bob\'s Burgers','Comedy'),('Chicago P.D.','Crime'),('Chicago P.D.','Drama'),('CSI: Crime Scene Investigation','Crime'),('CSI: Crime Scene Investigation','Drama'),('CSI: Crime Scene Investigation','Mystery'),('Dexter\'s Laboratory','Animation'),('Dexter\'s Laboratory','Comedy'),('Dexter\'s Laboratory','Sci-Fi & Fantasy'),('Family Guy','Animation'),('Family Guy','Comedy'),('Game of Thrones','Action & Adventure'),('Game of Thrones','Drama'),('Game of Thrones','Sci-Fi & Fantasy'),('Grey\'s Anatomy','Drama'),('Hawaii Five-0','Action & Adventure'),('Hawaii Five-0','Crime'),('Hawaii Five-0','Drama'),('Land of Desire','Crime'),('Land of Desire','Drama'),('Land of Desire','Soap'),('Last Week Tonight with John Oliver','Comedy'),('Last Week Tonight with John Oliver','News'),('Last Week Tonight with John Oliver','Talk'),('Law & Order: Special Victims Unit','Crime'),('Law & Order: Special Victims Unit','Drama'),('Law & Order: Special Victims Unit','Mystery'),('NCIS','Action & Adventure'),('NCIS','Crime'),('NCIS','Drama'),('Saturday Night Live','Comedy'),('Saturday Night Live','News'),('Sex Education','Comedy'),('Sex Education','Drama'),('Star Trek: The Next Generation','Action & Adventure'),('Star Trek: The Next Generation','Drama'),('Star Trek: The Next Generation','Mystery'),('Star Trek: The Next Generation','Sci-Fi & Fantasy'),('Star Trek: Voyager','Action & Adventure'),('Star Trek: Voyager','Drama'),('Star Trek: Voyager','Sci-Fi & Fantasy'),('Suits','Drama'),('The Continental: From the World of John Wick','Action & Adventure'),('The Continental: From the World of John Wick','Crime'),('The Late Show with Stephen Colbert','Comedy'),('The Late Show with Stephen Colbert','Talk'),('The Tonight Show Starring Jimmy Fallon','Comedy'),('The Tonight Show Starring Jimmy Fallon','Talk'),('The Walking Dead: Daryl Dixon','Action & Adventure'),('The Walking Dead: Daryl Dixon','Sci-Fi & Fantasy'),('This Is Us','Comedy'),('This Is Us','Drama'),('We Bare Bears','Animation'),('We Bare Bears','Comedy'),('We Bare Bears','Family'),('We Bare Bears','Kids');
/*!40000 ALTER TABLE `show_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_network`
--

DROP TABLE IF EXISTS `show_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_network` (
  `show_name` varchar(255) NOT NULL,
  `network_name` varchar(255) NOT NULL,
  PRIMARY KEY (`show_name`,`network_name`),
  KEY `network_nameFK_idx` (`network_name`),
  CONSTRAINT `network_nameFK` FOREIGN KEY (`network_name`) REFERENCES `network` (`network_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `show_networkFK` FOREIGN KEY (`show_name`) REFERENCES `shows` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='show_network junction table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_network`
--

LOCK TABLES `show_network` WRITE;
/*!40000 ALTER TABLE `show_network` DISABLE KEYS */;
INSERT INTO `show_network` VALUES ('Grey\'s Anatomy','ABC'),('The Continental: From the World of John Wick','Amazon Prime'),('The Walking Dead: Daryl Dixon','AMC'),('Dexter\'s Laboratory','Cartoon Network'),('We Bare Bears','Cartoon Network'),('CSI: Crime Scene Investigation','CBS'),('Hawaii Five-0','CBS'),('NCIS','CBS'),('The Late Show with Stephen Colbert','CBS'),('Ahsoka','Disney+'),('Bob\'s Burgers','FOX'),('Family Guy','FOX'),('Game of Thrones','HBO'),('Last Week Tonight with John Oliver','HBO'),('Chicago P.D.','NBC'),('Law & Order: Special Victims Unit','NBC'),('Saturday Night Live','NBC'),('The Tonight Show Starring Jimmy Fallon','NBC'),('This Is Us','NBC'),('Sex Education','Netflix'),('The Continental: From the World of John Wick','Peacock'),('Star Trek: The Next Generation','Syndication'),('Land of Desire','TV Globo'),('Star Trek: Voyager','UPN'),('Suits','USA Network');
/*!40000 ALTER TABLE `show_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `show_production`
--

DROP TABLE IF EXISTS `show_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `show_production` (
  `show_name` varchar(255) NOT NULL,
  `production_name` varchar(255) NOT NULL,
  PRIMARY KEY (`show_name`,`production_name`),
  KEY `productionFK_idx` (`production_name`),
  CONSTRAINT `productionFK` FOREIGN KEY (`production_name`) REFERENCES `production` (`production_companies`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `show_nameFK` FOREIGN KEY (`show_name`) REFERENCES `shows` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='A junction table for show and production';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `show_production`
--

LOCK TABLES `show_production` WRITE;
/*!40000 ALTER TABLE `show_production` DISABLE KEYS */;
INSERT INTO `show_production` VALUES ('Hawaii Five-0','101st Street Entertainment'),('Bob\'s Burgers','20th Century Fox Television'),('Family Guy','20th Century Fox Television'),('This Is Us','20th Century Fox Television'),('Family Guy','20th Television'),('This Is Us','20th Television'),('Bob\'s Burgers','20th Television Animation'),('Family Guy','20th Television Animation'),('Grey\'s Anatomy','ABC Studios'),('CSI: Crime Scene Investigation','Alliance Atlantis'),('The Walking Dead: Daryl Dixon','AMC Studios'),('Last Week Tonight with John Oliver','Avalon Television'),('NCIS','Belisarius Productions'),('Bob\'s Burgers','Bento Box Entertainment'),('Game of Thrones','Bighead Littlehead'),('Saturday Night Live','Broadway Video'),('The Tonight Show Starring Jimmy Fallon','Broadway Video'),('Bob\'s Burgers','Buck & Millie Productions'),('Dexter\'s Laboratory','Cartoon Network Studios'),('We Bare Bears','Cartoon Network Studios'),('CSI: Crime Scene Investigation','CBS Productions'),('CSI: Crime Scene Investigation','CBS Studios'),('Hawaii Five-0','CBS Studios'),('NCIS','CBS Studios'),('The Late Show with Stephen Colbert','CBS Studios'),('The Walking Dead: Daryl Dixon','Circle of Confusion'),('Suits','Dutch Oven'),('The Tonight Show Starring Jimmy Fallon','Electric Hot Dog Productions'),('Sex Education','Eleven'),('Land of Desire','Estúdios Globo'),('Family Guy','Fuzzy Door Productions'),('Game of Thrones','Generator Entertainment'),('Dexter\'s Laboratory','Hanna-Barbera Productions'),('Suits','Hypnotic'),('The Walking Dead: Daryl Dixon','Idiotbox'),('Hawaii Five-0','K/O Paper Products'),('The Continental: From the World of John Wick','Lionsgate Television'),('Ahsoka','Lucasfilm Ltd.'),('Saturday Night Live','NBC Studios'),('NCIS','Paramount Television Studios'),('Star Trek: The Next Generation','Paramount Television Studios'),('Star Trek: Voyager','Paramount Television Studios'),('Last Week Tonight with John Oliver','Partially Important Productions'),('Game of Thrones','Revolution Sun Studios'),('This Is Us','Rhode Island Ave. Productions'),('Grey\'s Anatomy','ShondaLand'),('Last Week Tonight with John Oliver','Sixteen String Jack Productions'),('The Walking Dead: Daryl Dixon','Skybound Entertainment'),('The Late Show with Stephen Colbert','Spartina Productions'),('Law & Order: Special Victims Unit','Studios USA'),('Game of Thrones','Television 360'),('Grey\'s Anatomy','The Mark Gordon Company'),('NCIS','thinkfilm'),('The Continental: From the World of John Wick','Thunder Road'),('Grey\'s Anatomy','Touchstone Television'),('Suits','UCP'),('Law & Order: Special Victims Unit','Universal Media Studios'),('Chicago P.D.','Universal Television'),('Law & Order: Special Victims Unit','Universal Television'),('Saturday Night Live','Universal Television'),('The Tonight Show Starring Jimmy Fallon','Universal Television'),('The Walking Dead: Daryl Dixon','Valhalla Entertainment'),('Bob\'s Burgers','Wilo Productions'),('Chicago P.D.','Wolf Entertainment'),('Law & Order: Special Victims Unit','Wolf Entertainment'),('This Is Us','Zaftig Films');
/*!40000 ALTER TABLE `show_production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shows`
--

DROP TABLE IF EXISTS `shows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shows` (
  `name` varchar(255) NOT NULL,
  `number_of_episodes` int NOT NULL,
  `original_language` varchar(45) NOT NULL,
  `popularity` float(10,3) DEFAULT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='shows table with attributes number of episodes, original language, popularity and type ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shows`
--

LOCK TABLES `shows` WRITE;
/*!40000 ALTER TABLE `shows` DISABLE KEYS */;
INSERT INTO `shows` VALUES ('Ahsoka',8,'en',954.747,'Miniseries'),('Bob\'s Burgers',269,'en',894.596,'Scripted'),('Chicago P.D.',208,'en',755.394,'Scripted'),('CSI: Crime Scene Investigation',335,'en',851.572,'Scripted'),('Dexter\'s Laboratory',221,'en',729.288,'Scripted'),('Family Guy',411,'en',1073.325,'Scripted'),('Game of Thrones',73,'en',1083.917,'Scripted'),('Grey\'s Anatomy',419,'en',1647.218,'Scripted'),('Hawaii Five-0',240,'en',853.839,'Scripted'),('Land of Desire',150,'pt',1937.067,'Scripted'),('Last Week Tonight with John Oliver',281,'en',974.817,'News'),('Law & Order: Special Victims Unit',538,'en',953.554,'Scripted'),('NCIS',457,'en',754.614,'Scripted'),('Saturday Night Live',951,'en',758.387,'Scripted'),('Sex Education',32,'en',1008.977,'Scripted'),('Star Trek: The Next Generation',176,'en',803.474,'Scripted'),('Star Trek: Voyager',171,'en',801.532,'Scripted'),('Suits',134,'en',745.230,'Scripted'),('Test life of test',203,'en',450.664,'Talk Show'),('The Continental: From the World of John Wick',3,'en',894.690,'Miniseries'),('The Late Show with Stephen Colbert',1419,'en',3707.008,'Talk Show'),('The Tonight Show Starring Jimmy Fallon',1233,'en',2419.997,'Talk Show'),('The Walking Dead: Daryl Dixon',6,'en',896.871,'Scripted'),('This Is Us',105,'en',783.850,'Scripted'),('We Bare Bears',138,'en',918.303,'Scripted');
/*!40000 ALTER TABLE `shows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tv_shows'
--

--
-- Dumping routines for database 'tv_shows'
--

--
-- Final view structure for view `average_popularity_by_genre`
--

/*!50001 DROP VIEW IF EXISTS `average_popularity_by_genre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average_popularity_by_genre` AS select `sg`.`genre` AS `genre`,avg(`s`.`popularity`) AS `average_popularity` from (`shows` `s` join `show_genre` `sg` on((`s`.`name` = `sg`.`show_name`))) group by `sg`.`genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_popular_show_by_genre`
--

/*!50001 DROP VIEW IF EXISTS `most_popular_show_by_genre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_popular_show_by_genre` AS select `ranked_shows`.`genre` AS `genre`,`ranked_shows`.`name` AS `name`,`ranked_shows`.`popularity` AS `popularity` from (select `sg`.`genre` AS `genre`,`s`.`name` AS `name`,`s`.`popularity` AS `popularity`,row_number() OVER (PARTITION BY `sg`.`genre` ORDER BY `s`.`popularity` desc )  AS `rn` from (`shows` `s` join `show_genre` `sg` on((`s`.`name` = `sg`.`show_name`)))) `ranked_shows` where (`ranked_shows`.`rn` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `production_company_shows_count`
--

/*!50001 DROP VIEW IF EXISTS `production_company_shows_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `production_company_shows_count` AS select `p`.`production_companies` AS `production_companies`,count(`sp`.`show_name`) AS `total_shows` from (`production` `p` left join `show_production` `sp` on((`p`.`production_companies` = `sp`.`production_name`))) group by `p`.`production_companies` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-29 13:30:31
