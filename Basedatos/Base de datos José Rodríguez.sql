-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para canciones
CREATE DATABASE IF NOT EXISTS `canciones` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `canciones`;

-- Volcando estructura para tabla canciones.canciones
CREATE TABLE IF NOT EXISTS `canciones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `artista` varchar(50) NOT NULL,
  `album` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `duracion` time NOT NULL,
  `ruta_archivo` varchar(100) NOT NULL,
  `fecha_lanzamiento` date NOT NULL,
  `portada` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla canciones.canciones: ~16 rows (aproximadamente)
INSERT INTO `canciones` (`id`, `titulo`, `artista`, `album`, `genero`, `duracion`, `ruta_archivo`, `fecha_lanzamiento`, `portada`) VALUES
	(0, 'Sweet child o Mine', 'Guns N roses', 'Appetite for destruction', 'Rock', '05:02:00', 'uploads/sweetchildomine.mp3', '1987-07-21', 'uploads/Sweetchild.jpeg'),
	(0, 'I Don?t Want to Miss a Thing', 'Aerosmith', 'I Don?t Want to Miss a Thing', 'Rock', '04:52:00', 'uploads/IDontWantToMissAThing.mp3', '1998-07-29', 'uploads/aerosmtith.jpeg'),
	(0, 'Bed of Roses', 'Bon Jovi', 'Keep The Faith ', 'Rock', '06:42:00', 'uploads/BedOfRoses.mp3', '1993-01-11', 'uploads/bedoffroses.jpeg'),
	(0, 'Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 'Rock', '05:59:00', 'uploads/Bohemian.mp3', '1975-10-31', 'uploads/bohemian.jpeg'),
	(0, 'Rude', 'Magic', 'Dont kill the Magic', 'Pop', '03:44:00', 'uploads/rude.mp3', '2013-10-11', 'uploads/rude.jpeg'),
	(0, 'Feel', 'Robbie Williams', 'Escapology', 'Pop', '04:32:00', 'uploads/feels.mp3', '2002-10-07', 'uploads/feel.jpeg'),
	(0, 'Somewhere Only We Know', 'Keane', 'Hopes And fears', 'Pop', '03:56:00', 'uploads/somewhere.mp3', '2004-02-16', 'uploads/somewhere.jpeg'),
	(0, 'Lost', 'Frank Ocean', 'Channel Orange', 'Pop', '03:20:00', 'uploads/lost.mp3', '0202-12-17', 'uploads/lost.jpeg'),
	(0, 'High On Life', 'Martin garrix', 'The Dome,Vol 87', 'Electronica', '03:46:00', 'uploads/high.mp3', '2018-07-12', 'uploads/highonlife.jpeg'),
	(0, 'myway', 'Calvin Harris', 'My way', 'Electronica', '04:04:00', 'uploads/myway.mp3', '2016-09-16', 'uploads/myway.jpeg'),
	(0, 'Stargazing', 'Kygo', 'Stargazing', 'Electronica', '04:20:00', 'uploads/stargazing.mp3', '2017-09-22', 'uploads/stargazing.jpeg'),
	(0, 'Waiting for love', 'Avicii', 'Stories', 'Electronica', '03:50:00', 'uploads/waiting.mp3', '2015-05-22', 'uploads/waitingfolove.jpeg'),
	(0, 'Espresso', 'Sabrina Carpenter', 'Short n Sweet', 'Pop', '03:20:00', 'uploads/espresso.mp3', '2024-04-11', 'uploads/sabrina.jpeg'),
	(0, 'Houdini', 'Dua Lipa', 'Radical Optimism', 'Pop', '03:08:00', 'uploads/houdini.mp3', '2023-11-09', 'uploads/dua.jpeg'),
	(0, 'Kill Bill', 'Sza', 'SOS', 'Pop', '02:35:00', 'uploads/Killbill.mp3', '2022-12-09', 'uploads/sza.jpeg'),
	(0, 'Paint the town red', 'Doja Cat', 'Scarlet', 'Pop', '04:55:00', 'uploads/paint.mp3', '2023-08-04', 'uploads/doja.jpeg');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
