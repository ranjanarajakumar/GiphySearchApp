CREATE DATABASE  IF NOT EXISTS `giphy` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `giphy`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: giphy
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` varchar(25) NOT NULL,
  `type` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(250) NOT NULL,
  `size` varchar(25) NOT NULL,
  `user` varchar(25) NOT NULL,
  `imageid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`imageid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES ('JIX9t2j0ZTN9S','gif','funny cat GIF','https://media2.giphy.com/media/JIX9t2j0ZTN9S/giphy-downsized.gif','982690','ranjana',1),('3oEduJnper1UdNqreg','gif','pink thank you GIF by Lisa Vertudaches','https://media0.giphy.com/media/3oEduJnper1UdNqreg/giphy-downsized.gif','136254','ranjana',2),('RQSuZfuylVNAY','gif','superman costume GIF','https://media1.giphy.com/media/RQSuZfuylVNAY/giphy-downsized.gif','1296056','paing su',3),('mCRJDo24UvJMA','gif','shiba inu dog GIF','https://media2.giphy.com/media/mCRJDo24UvJMA/giphy-downsized.gif','78285','veera',4),('wjK3YnjoQf0go','gif','weird dog GIF','https://media3.giphy.com/media/wjK3YnjoQf0go/giphy-downsized.gif','1003464','ranjana',5),('JIX9t2j0ZTN9S','gif','funny cat GIF','https://media1.giphy.com/media/JIX9t2j0ZTN9S/giphy-downsized.gif','982690','ranjana',6),('vFKqnCdLPNOKc','gif','white cat hello GIF','https://media2.giphy.com/media/vFKqnCdLPNOKc/giphy-downsized.gif','454763','ranjana',7),('JIX9t2j0ZTN9S','gif','funny cat GIF','https://media1.giphy.com/media/JIX9t2j0ZTN9S/giphy-downsized.gif','982690','ranjana',8),('vFKqnCdLPNOKc','gif','white cat hello GIF','https://media2.giphy.com/media/vFKqnCdLPNOKc/giphy-downsized.gif','454763','ranjana',9),('yFQ0ywscgobJK','gif','oh no facepalm GIF','https://media0.giphy.com/media/yFQ0ywscgobJK/giphy-downsized.gif','1060108','ranjana',10),('l1J3pT7PfLgSRMnFC','gif','cat fist bump GIF','https://media2.giphy.com/media/l1J3pT7PfLgSRMnFC/giphy-downsized.gif','1378198','ranjana',11),('mCRJDo24UvJMA','gif','shiba inu dog GIF','https://media2.giphy.com/media/mCRJDo24UvJMA/giphy-downsized.gif','78285','jazz',12),('dTJd5ygpxkzWo','gif','dog pug GIF','https://media2.giphy.com/media/dTJd5ygpxkzWo/giphy-downsized.gif','1174825','jazz',13),('RQSuZfuylVNAY','gif','superman costume GIF','https://media1.giphy.com/media/RQSuZfuylVNAY/giphy-downsized.gif','1296056','jazz',14),('xThtadSLoInlcD1UmA','gif','mad dog GIF','https://media2.giphy.com/media/xThtadSLoInlcD1UmA/giphy-downsized.gif','1391394','jazz',15),('FfZKqVmUpxghq','gif','computer vision GIF','https://media1.giphy.com/media/FfZKqVmUpxghq/giphy-downsized.gif','45538','ruby',16),('A06UFEx8jxEwU','gif','code GIF','https://media3.giphy.com/media/A06UFEx8jxEwU/giphy-downsized.gif','703116','ranjana',17),('ptGvceBwjghMI','gif','design space GIF','https://media3.giphy.com/media/ptGvceBwjghMI/giphy-tumblr.gif','577919','paing su',18),('GTkU2fFFX37YA','gif','nails manicure GIF','https://media1.giphy.com/media/GTkU2fFFX37YA/giphy.gif','399291','ranjana',19),('uTCAwWNtz7U2c','gif','cat jumping GIF','https://media3.giphy.com/media/uTCAwWNtz7U2c/giphy-downsized.gif','1177403','ranjana',20),('RQSuZfuylVNAY','gif','superman costume GIF','https://media2.giphy.com/media/RQSuZfuylVNAY/giphy-downsized.gif','1296056','ruby',21);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-25 17:18:15
