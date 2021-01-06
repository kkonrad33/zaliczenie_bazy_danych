-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: wypozyczalnia_filmow
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `filmy`
--

DROP TABLE IF EXISTS `filmy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmy` (
  `id_filmu` int NOT NULL AUTO_INCREMENT,
  `tytul` varchar(200) NOT NULL,
  `id_gatunku` int NOT NULL,
  `rezyseria` varchar(100) NOT NULL,
  `produkcja` varchar(100) NOT NULL,
  `premiera` date NOT NULL,
  PRIMARY KEY (`id_filmu`),
  KEY `id_gatunku` (`id_gatunku`),
  CONSTRAINT `filmy_ibfk_1` FOREIGN KEY (`id_gatunku`) REFERENCES `gatunki` (`id_gatunku`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmy`
--

LOCK TABLES `filmy` WRITE;
/*!40000 ALTER TABLE `filmy` DISABLE KEYS */;
INSERT INTO `filmy` VALUES (1,'Czy leci z nami pilot?',1,'Jim Abrams, David Zucker, Jerry Zucker','USA','1980-07-02'),(2,'Czarny Łabędź',16,'Darren Aronofsky','USA','2010-09-01'),(3,'Psychoza',7,'Alfred Hitchcock','USA','1960-06-16'),(4,'Siedmiu Wspaniałych',4,'John Sturges','USA','1960-10-12'),(17,'Infiltracja',10,'Martin Scorsese','Hongkong/USA','2006-09-26'),(18,'Lepiej pózno niż pózniej',1,'Nancy Meyers','USA','2003-12-12'),(19,'Kevin sam w domu',19,'Chris Columbus','USA','1990-11-10'),(20,'Shrek',22,'Andrew Adamson, Vicky Jenson','USA','2001-04-22'),(21,'Psy',10,'Władysław Pasikowski','Polska','1992-12-31'),(22,'Grease',6,'Randal Kleiser','USA','1978-06-13'),(23,'Seksmisja',11,'Juliusz Machulski','Polska','1984-05-14'),(24,'Nietykalni',2,'Olivier Nakache, Éric Toledano','Francja','2011-09-23'),(25,'Pulp Fiction',9,'Quentin Tarantino','USA','1994-05-12'),(26,'Mama',5,'Andy Muschietti','Hiszpania/Kanada','2013-01-17'),(27,'Pianista',2,'Roman Polański','Francja/Niemcy/Polska/Wielka Brytania','2002-05-24'),(28,'Dziennik Bridget Jones',15,'Sharon Maguire','Francja/Irlandia/Wielka Brytania','2001-04-04'),(29,'Django',4,'Quentin Tarantino','USA','2012-12-11'),(30,'Platforma',7,'Galder Gaztelu-Urrutia','Hiszpania','2019-09-06'),(31,'Lot nad kukułczym gniazdem',16,'Miloš Forman','USA','1975-11-19'),(32,'Cube',7,'Vincenzo Natali','Kanada','1997-09-09'),(33,'Przerwana lekcja muzyki',16,'James Mangold','Niemcy/USA','1999-12-08'),(34,'Miś',1,'Stanisław Bareja','Polska','1981-05-04');
/*!40000 ALTER TABLE `filmy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `filmy_psychologiczne`
--

DROP TABLE IF EXISTS `filmy_psychologiczne`;
/*!50001 DROP VIEW IF EXISTS `filmy_psychologiczne`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filmy_psychologiczne` AS SELECT 
 1 AS `tytul`,
 1 AS `nazwa_gatunku`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `filmy_tarantino`
--

DROP TABLE IF EXISTS `filmy_tarantino`;
/*!50001 DROP VIEW IF EXISTS `filmy_tarantino`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filmy_tarantino` AS SELECT 
 1 AS `Filmy reżyserowane przez Quentina Tarantino`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `filmy_wyprodukowane_w_usa`
--

DROP TABLE IF EXISTS `filmy_wyprodukowane_w_usa`;
/*!50001 DROP VIEW IF EXISTS `filmy_wyprodukowane_w_usa`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `filmy_wyprodukowane_w_usa` AS SELECT 
 1 AS `Filmy produkcji amerykańskiej`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `gatunki`
--

DROP TABLE IF EXISTS `gatunki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gatunki` (
  `id_gatunku` int NOT NULL AUTO_INCREMENT,
  `nazwa_gatunku` varchar(50) NOT NULL,
  PRIMARY KEY (`id_gatunku`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatunki`
--

LOCK TABLES `gatunki` WRITE;
/*!40000 ALTER TABLE `gatunki` DISABLE KEYS */;
INSERT INTO `gatunki` VALUES (1,'Komedia'),(2,'Dramat'),(3,'Melodramat'),(4,'Western'),(5,'Horror'),(6,'Musical'),(7,'Thriller'),(8,'Film sensacyjny'),(9,'Film gangsterski'),(10,'Kryminał'),(11,'Film scince fiction'),(12,'Film fantasy'),(13,'Film płaszcza i szpady'),(14,'Film historyczny'),(15,'Film romantyczny'),(16,'Film psychologiczny'),(17,'Film wojenny'),(18,'Film szpiegowski'),(19,'Film familijny'),(20,'Film sportowy'),(21,'Film kostiumowy'),(22,'Film animowany');
/*!40000 ALTER TABLE `gatunki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `imiona_pracownikow_odbierajacych`
--

DROP TABLE IF EXISTS `imiona_pracownikow_odbierajacych`;
/*!50001 DROP VIEW IF EXISTS `imiona_pracownikow_odbierajacych`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `imiona_pracownikow_odbierajacych` AS SELECT 
 1 AS `imie`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `klienci`
--

DROP TABLE IF EXISTS `klienci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klienci` (
  `id_klienta` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(81) NOT NULL,
  `nazwisko` varchar(27) NOT NULL,
  `telefon` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  PRIMARY KEY (`id_klienta`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienci`
--

LOCK TABLES `klienci` WRITE;
/*!40000 ALTER TABLE `klienci` DISABLE KEYS */;
INSERT INTO `klienci` VALUES (1,'Kasia','Nowak',555111222,'kasianowak111@gmail.com','1999-12-03'),(2,'Robert','Walczuk',532230421,'walczukk22@tlen.pl','1994-03-13'),(3,'Tomasz','Baranowski',601042421,'baranek821@gmail.com','1999-01-24'),(4,'Martyna','Promienna',723123421,'mpromienna1@gmail.com','2002-07-12'),(5,'Wiktor','Pacula',502224521,'kamyk3421@wp.pl','2001-03-13'),(6,'Natalia','Bąk',623213041,'natibak@gmail,com','1993-11-10'),(7,'Tomasz','Trojan',521321982,'wirustroj@gmail,com','1995-04-23'),(8,'Szymon','Siep',654747234,'szzymsiep@tlen.pl','1998-05-15'),(9,'Maria','Niebieska',612928459,'niebomaria@gmail.com','1990-12-24'),(10,'Roman','Stoik',741223094,'stoikroman@wp.pl','1993-10-19'),(11,'Bogan','Kowalski',765302947,'kowalbogus@gmail.com','1963-06-12'),(12,'Elżbieta','Krasicka',549323421,'elakrasicka@tlen.pl','1972-05-05'),(13,'Hanna','Przybysz',653023048,'zkosmosu@gmail.com','1952-04-12');
/*!40000 ALTER TABLE `klienci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista_pracownikow_odbierajacych`
--

DROP TABLE IF EXISTS `lista_pracownikow_odbierajacych`;
/*!50001 DROP VIEW IF EXISTS `lista_pracownikow_odbierajacych`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_pracownikow_odbierajacych` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `indeks pracownika odbierającego produkt`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pracownicy` (
  `id_pracownika` int NOT NULL AUTO_INCREMENT,
  `PESEL` varchar(11) NOT NULL,
  `imie` varchar(81) NOT NULL,
  `nazwisko` varchar(27) NOT NULL,
  `zarobki` int DEFAULT NULL,
  `stanowisko` varchar(50) NOT NULL,
  `data_urodzenia` date NOT NULL,
  `data_zatrudnienia` date NOT NULL,
  PRIMARY KEY (`id_pracownika`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,'84011039718','Jan','Latawiec',3700,'ekspedient wypożyczalni','1984-01-10','2014-03-14'),(2,'95120213312','Michał','Milewicz',3600,'ekspedient wypożyczalni','1995-02-12','2015-04-23'),(3,'96012782401','Patrycja','Makowska',3600,'ekspedient wypożyczalni','1996-01-27','2015-02-26'),(4,'85102397916','Jakub','Radko',7000,'prezes','1985-10-23','2012-06-04'),(5,'72101282629','Aleksandra','Zielowa',2200,'sprzątaczka','1972-10-12','2016-03-22'),(6,'81091619976','Rafał','Listkowski',4000,'księgowy','1981-09-16','2014-05-14'),(7,'98050977592','Radek','Wiadro',4600,'informatyk','1998-05-09','2014-07-06'),(8,'98083000205','Eliza','Dzwonek',3400,'ekspedient wypożyczalni','1998-08-30','2018-12-03'),(9,'00261557190','Hubert','Dębiec',3200,'ekspedient wypożyczalni','2000-06-15','2020-09-21');
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pracownicy_obsluga_wypoz`
--

DROP TABLE IF EXISTS `pracownicy_obsluga_wypoz`;
/*!50001 DROP VIEW IF EXISTS `pracownicy_obsluga_wypoz`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `pracownicy_obsluga_wypoz` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `data_wypozyczenia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ranking_zarobkow`
--

DROP TABLE IF EXISTS `ranking_zarobkow`;
/*!50001 DROP VIEW IF EXISTS `ranking_zarobkow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ranking_zarobkow` AS SELECT 
 1 AS `imie`,
 1 AS `nazwisko`,
 1 AS `zarobki`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tytuly_alfabetycznie`
--

DROP TABLE IF EXISTS `tytuly_alfabetycznie`;
/*!50001 DROP VIEW IF EXISTS `tytuly_alfabetycznie`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tytuly_alfabetycznie` AS SELECT 
 1 AS `tytuły alfabetcznie`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wypozyczenia`
--

DROP TABLE IF EXISTS `wypozyczenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wypozyczenia` (
  `id_wypozycenia` int NOT NULL AUTO_INCREMENT,
  `id_klienta` int DEFAULT NULL,
  `id_filmu` int DEFAULT NULL,
  `data_wypozyczenia` date DEFAULT NULL,
  `data_zwrotu` date DEFAULT NULL,
  `id_pracownik_wypoz` int DEFAULT NULL,
  `id_pracownik_zwrot` int DEFAULT NULL,
  PRIMARY KEY (`id_wypozycenia`),
  KEY `id_klienta` (`id_klienta`),
  KEY `id_pracownik_wypoz` (`id_pracownik_wypoz`),
  KEY `id_pracownik_zwrot` (`id_pracownik_zwrot`),
  CONSTRAINT `wypozyczenia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`),
  CONSTRAINT `wypozyczenia_ibfk_2` FOREIGN KEY (`id_pracownik_wypoz`) REFERENCES `pracownicy` (`id_pracownika`),
  CONSTRAINT `wypozyczenia_ibfk_3` FOREIGN KEY (`id_pracownik_zwrot`) REFERENCES `pracownicy` (`id_pracownika`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wypozyczenia`
--

LOCK TABLES `wypozyczenia` WRITE;
/*!40000 ALTER TABLE `wypozyczenia` DISABLE KEYS */;
INSERT INTO `wypozyczenia` VALUES (13,3,17,'2020-12-24','2021-01-04',1,2),(14,12,24,'2020-01-02','2020-01-07',8,1),(15,2,21,'2020-01-30','2020-02-03',2,9),(16,10,18,'2020-02-12','2020-02-17',2,3),(17,5,23,'2020-03-11','2020-03-15',3,8),(18,1,4,'2020-05-06','2020-05-10',8,8),(19,13,1,'2020-07-09','2020-07-13',1,9),(20,9,33,'2020-10-20','2020-10-28',9,2),(21,3,3,'2020-11-10','2020-11-14',3,2),(22,6,28,'2020-12-01','2020-12-10',8,NULL),(23,8,20,'2020-12-03','2020-12-14',1,NULL);
/*!40000 ALTER TABLE `wypozyczenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `wypozyczenia_2020`
--

DROP TABLE IF EXISTS `wypozyczenia_2020`;
/*!50001 DROP VIEW IF EXISTS `wypozyczenia_2020`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wypozyczenia_2020` AS SELECT 
 1 AS `Wypożyczenia w 2020 roku.`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `zarobki_ekspedientow`
--

DROP TABLE IF EXISTS `zarobki_ekspedientow`;
/*!50001 DROP VIEW IF EXISTS `zarobki_ekspedientow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `zarobki_ekspedientow` AS SELECT 
 1 AS `Łączne zarobki ekspedientów`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `filmy_psychologiczne`
--

/*!50001 DROP VIEW IF EXISTS `filmy_psychologiczne`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filmy_psychologiczne` AS select `filmy`.`tytul` AS `tytul`,`gatunki`.`nazwa_gatunku` AS `nazwa_gatunku` from (`filmy` join `gatunki` on((`filmy`.`id_gatunku` = `gatunki`.`id_gatunku`))) where (`filmy`.`id_gatunku` = 16) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `filmy_tarantino`
--

/*!50001 DROP VIEW IF EXISTS `filmy_tarantino`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filmy_tarantino` AS select `filmy`.`tytul` AS `Filmy reżyserowane przez Quentina Tarantino` from `filmy` where (`filmy`.`rezyseria` = 'Quentin Tarantino') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `filmy_wyprodukowane_w_usa`
--

/*!50001 DROP VIEW IF EXISTS `filmy_wyprodukowane_w_usa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `filmy_wyprodukowane_w_usa` AS select `filmy`.`tytul` AS `Filmy produkcji amerykańskiej` from `filmy` where (`filmy`.`produkcja` like '%USA%') order by `filmy`.`premiera` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `imiona_pracownikow_odbierajacych`
--

/*!50001 DROP VIEW IF EXISTS `imiona_pracownikow_odbierajacych`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `imiona_pracownikow_odbierajacych` AS select `pracownicy`.`imie` AS `imie` from `pracownicy` where `pracownicy`.`id_pracownika` in (select `pracownicy`.`id_pracownika` from `wypozyczenia` where (`wypozyczenia`.`id_pracownik_zwrot` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_pracownikow_odbierajacych`
--

/*!50001 DROP VIEW IF EXISTS `lista_pracownikow_odbierajacych`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_pracownikow_odbierajacych` AS select `pracownicy`.`imie` AS `imie`,`pracownicy`.`nazwisko` AS `nazwisko`,`wypozyczenia`.`id_pracownik_zwrot` AS `indeks pracownika odbierającego produkt` from (`wypozyczenia` left join `pracownicy` on((`pracownicy`.`id_pracownika` = `wypozyczenia`.`id_pracownik_zwrot`))) where (`wypozyczenia`.`id_pracownik_zwrot` is not null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pracownicy_obsluga_wypoz`
--

/*!50001 DROP VIEW IF EXISTS `pracownicy_obsluga_wypoz`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pracownicy_obsluga_wypoz` AS select `pracownicy`.`imie` AS `imie`,`pracownicy`.`nazwisko` AS `nazwisko`,`wypozyczenia`.`data_wypozyczenia` AS `data_wypozyczenia` from (`pracownicy` join `wypozyczenia` on((`pracownicy`.`id_pracownika` = `wypozyczenia`.`id_pracownik_wypoz`))) order by `wypozyczenia`.`data_wypozyczenia` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ranking_zarobkow`
--

/*!50001 DROP VIEW IF EXISTS `ranking_zarobkow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ranking_zarobkow` AS select `pracownicy`.`imie` AS `imie`,`pracownicy`.`nazwisko` AS `nazwisko`,`pracownicy`.`zarobki` AS `zarobki` from `pracownicy` order by `pracownicy`.`zarobki` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tytuly_alfabetycznie`
--

/*!50001 DROP VIEW IF EXISTS `tytuly_alfabetycznie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tytuly_alfabetycznie` AS select `filmy`.`tytul` AS `tytuły alfabetcznie` from `filmy` order by `filmy`.`tytul` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wypozyczenia_2020`
--

/*!50001 DROP VIEW IF EXISTS `wypozyczenia_2020`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wypozyczenia_2020` AS select `wypozyczenia`.`id_wypozycenia` AS `Wypożyczenia w 2020 roku.` from `wypozyczenia` where (year(`wypozyczenia`.`data_wypozyczenia`) < 2021) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `zarobki_ekspedientow`
--

/*!50001 DROP VIEW IF EXISTS `zarobki_ekspedientow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `zarobki_ekspedientow` AS select sum(`pracownicy`.`zarobki`) AS `Łączne zarobki ekspedientów` from `pracownicy` where (`pracownicy`.`stanowisko` = 'ekspedient wypożyczalni') */;
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

-- Dump completed on 2021-01-06 19:36:22
