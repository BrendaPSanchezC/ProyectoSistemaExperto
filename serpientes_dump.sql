

DROP TABLE IF EXISTS `colores`;

CREATE TABLE `colores` (
  `color` varchar(50) NOT NULL,
  PRIMARY KEY (`color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



LOCK TABLES `colores` WRITE;
INSERT INTO `colores` VALUES ('Amarillo'),('Cafe'),('Gris'),('Marron'),('Naranja'),('Negro'),('Ninguno'),('Rojo'),('Verde');

UNLOCK TABLES;


DROP TABLE IF EXISTS `comportamiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comportamiento` (
  `comportamiento` varchar(50) NOT NULL,
  PRIMARY KEY (`comportamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comportamiento`
--

LOCK TABLES `comportamiento` WRITE;
/*!40000 ALTER TABLE `comportamiento` DISABLE KEYS */;
INSERT INTO `comportamiento` VALUES ('Ataca'),('Huye'),('Se enrosca');
/*!40000 ALTER TABLE `comportamiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuerpo`
--

DROP TABLE IF EXISTS `cuerpo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuerpo` (
  `cuerpo` varchar(50) NOT NULL,
  PRIMARY KEY (`cuerpo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuerpo`
--

LOCK TABLES `cuerpo` WRITE;
/*!40000 ALTER TABLE `cuerpo` DISABLE KEYS */;
INSERT INTO `cuerpo` VALUES ('Delgado'),('Robusto');
/*!40000 ALTER TABLE `cuerpo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especies`
--

DROP TABLE IF EXISTS `especies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especies` (
  `nombre` varchar(50) NOT NULL,
  `patron` varchar(50) DEFAULT NULL,
  `color_p` varchar(50) DEFAULT NULL,
  `color_s` varchar(50) DEFAULT NULL,
  `color_t` varchar(50) DEFAULT NULL,
  `forma_cabeza` varchar(50) DEFAULT NULL,
  `comportamiento` varchar(50) DEFAULT NULL,
  `cuerpo` varchar(50) DEFAULT NULL,
  `explicacion` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especies`
--

LOCK TABLES `especies` WRITE;
/*!40000 ALTER TABLE `especies` DISABLE KEYS */;
INSERT INTO `especies` VALUES ('Bejuquilla','Ninguno','Verde','Ninguno','Ninguno','Nariz Alargada','Huye','Delgado','La bejuquilla es venenosa D:');
/*!40000 ALTER TABLE `especies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_cabeza`
--

DROP TABLE IF EXISTS `forma_cabeza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_cabeza` (
  `forma` varchar(50) NOT NULL,
  PRIMARY KEY (`forma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_cabeza`
--

LOCK TABLES `forma_cabeza` WRITE;
/*!40000 ALTER TABLE `forma_cabeza` DISABLE KEYS */;
INSERT INTO `forma_cabeza` VALUES ('Nariz Alargada'),('Redonda'),('Triangular');
/*!40000 ALTER TABLE `forma_cabeza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrones`
--

DROP TABLE IF EXISTS `patrones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patrones` (
  `patron` varchar(50) NOT NULL,
  PRIMARY KEY (`patron`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrones`
--

LOCK TABLES `patrones` WRITE;

INSERT INTO `patrones` VALUES ('Bandas'),('Circulos'),('Diamantes'),('Ninguno'),('Puntos'),('Rayas');

UNLOCK TABLES;


