-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-12-2022 a las 13:28:41
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE IF NOT EXISTS `alumnos` (
  `id_alumno` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `matricula` int(11) NOT NULL,
  PRIMARY KEY (`id_alumno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcar la base de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre`, `carrera`, `matricula`) VALUES
(1, 'Diego Hernandez', 'ITI', 177232),
(2, 'Arturo Davila', 'ITI', 177234),
(3, 'Samuel Gomez', 'ITI', 177393);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasific`
--

CREATE TABLE IF NOT EXISTS `clasific` (
  `id` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `clasific`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE IF NOT EXISTS `kardex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `semestre` int(11) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `seccion` varchar(100) NOT NULL,
  `periodo` varchar(50) NOT NULL,
  `cfo` varchar(6) NOT NULL,
  `ext` varchar(6) NOT NULL,
  `reg` varchar(6) NOT NULL,
  `cf` varchar(6) NOT NULL,
  `creditos` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=196 ;

--
-- Volcar la base de datos para la tabla `kardex`
--

INSERT INTO `kardex` (`id`, `matricula`, `semestre`, `materia`, `seccion`, `periodo`, `cfo`, `ext`, `reg`, `cf`, `creditos`, `status`) VALUES
(19, 177234, 4, 'Circuitos El?ctricos', '', '', '', '', '', '', 0, 'Por cursar'),
(18, 177234, 3, 'CNO II Programaci?n Web II', 'T15A', '20223S', '', '', '', '', 0, 'cursando'),
(17, 177234, 3, 'Matem?ticas Discretas', 'T17A', '20223S', '', '', '', '', 0, 'cursando'),
(16, 177234, 3, 'Matem?ticas III', 'M12C', '20223S', '', '', '', '', 0, 'cursando'),
(15, 177234, 3, 'Ingl?s III', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(14, 177234, 3, 'Programaci?n II', 'T13A', '20223S', '', '', '', '', 0, 'cursando'),
(13, 177234, 3, 'Qu?mica', 'T12A', '20223S', '', '', '', '', 0, 'cursando'),
(12, 177234, 2, 'CNO I Programaci?n Web I', 'VT09', '20221S', '7.7', '', '', '7.7', 7, 'Aprobado'),
(11, 177234, 2, 'Ingl?s II', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(10, 177234, 2, 'Matem?ticas II', 'T09A', '20221S', '7.1', '', '', '7.1', 8, 'Aprobado'),
(9, 177234, 2, 'CNG II Comunicaci?n e Investigaci?n', 'T08A', '20221S', '9.8', '', '', '9.8', 7, 'Aprobado'),
(8, 177234, 2, 'Programaci?n I', 'VT10', '20221S', '8.1', '', '', '8.1', 8, 'Aprobado'),
(7, 177234, 2, 'F?sica II', 'T06B', '20221S', '7.2', '', '', '7.2', 8, 'Aprobado'),
(6, 177234, 1, 'Proyecto Integrador de Matem?ticas', 'T04A', '20213S', '8.5', '', '', '8.5', 7, 'Aprobado'),
(5, 177234, 1, 'Ingl?s I', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(4, 177234, 1, 'Matem?ticas I', 'T04A', '20213S', '8.5', '', '', '8.5', 8, 'Aprobado'),
(3, 177234, 1, 'CNG I Desarrollo del Pensamiento Cr?tico', 'T03D', '20213S', '9.8', '', '', '9.8', 7, 'Aprobado'),
(2, 177234, 1, 'Introducci?n a la Computaci?n', 'T02D', '20213S', '9.1', '', '', '9.1', 8, 'Aprobado'),
(1, 177234, 1, 'F?sica I', 'M01A', '20213S', '7.7', '', '', '7.7', 8, 'Aprobado'),
(20, 177234, 4, 'Curso del N?cleo General III: Filosof?a y Valores', '', '', '', '', '', '', 0, 'Por cursar'),
(21, 177234, 4, 'Probabilidad y Estad?stica', '', '', '', '', '', '', 0, 'Por cursar'),
(22, 177234, 4, 'Proyecto Integrador y Comprensivo I', '', '', '', '', '', '', 0, 'Por cursar'),
(23, 177234, 4, 'Programaci?n III', '', '', '', '', '', '', 0, 'Por cursar'),
(24, 177234, 4, 'Ingl?s IV', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(25, 177234, 5, 'Sistemas Operativos', '', '', '', '', '', '', 0, 'Por cursar'),
(26, 177234, 5, 'Ingl?s V', 'I05W', '20213S', '7.75', '', '', '7.75', 8, 'Aprobado'),
(27, 177234, 5, 'Matem?ticas IV', '', '', '', '', '', '', 0, 'Por cursar'),
(28, 177234, 5, 'Sistemas Digitales', '', '', '', '', '', '', 0, 'Por cursar'),
(29, 177234, 5, 'An?lisis y Dise?o de Algoritmos', '', '', '', '', '', '', 0, 'Por cursar'),
(30, 177234, 5, 'Curso del N?cleo Optativo III', '', '', '', '', '', '', 0, 'Por cursar'),
(31, 177234, 6, 'Lenguajes de Programaci?n', '', '', '', '', '', '', 0, 'Por cursar'),
(32, 177234, 6, 'Curso del N?cleo General IV: Creatividad', '', '', '', '', '', '', 0, 'Por cursar'),
(33, 177234, 6, 'Ingenier?a de Software I', '', '', '', '', '', '', 0, 'Por cursar'),
(34, 177234, 6, 'Arquitectura de Computadoras', '', '', '', '', '', '', 0, 'Por cursar'),
(35, 177234, 6, 'Taller de Desarrollo Empresarial', '', '', '', '', '', '', 0, 'Por cursar'),
(36, 177234, 6, 'Proyecto Integrador y Comprensivo II', '', '', '', '', '', '', 0, 'Por cursar'),
(37, 177234, 7, 'Teor?a Computacional', '', '', '', '', '', '', 0, 'Por cursar'),
(38, 177234, 7, 'Taller de Creatividad y Emprendedores', '', '', '', '', '', '', 0, 'Por cursar'),
(39, 177234, 7, 'Ingenier?a de Software II', '', '', '', '', '', '', 0, 'Por cursar'),
(40, 177234, 7, 'Base de Datos', '', '', '', '', '', '', 0, 'Por cursar'),
(41, 177234, 7, 'Organizaci?n Computacional', '', '', '', '', '', '', 0, 'Por cursar'),
(42, 177234, 7, 'Curso del N?cleo Optativo IV', '', '', '', '', '', '', 0, 'Por cursar'),
(43, 177234, 8, 'Inteligencia Artificial I', '', '', '', '', '', '', 0, 'Por cursar'),
(44, 177234, 8, 'Curso del N?cleo General V: Desarrollo de Competencias', '', '', '', '', '', '', 0, 'Por cursar'),
(45, 177234, 8, 'Miner?a de Datos', '', '', '', '', '', '', 0, 'Por cursar'),
(46, 177234, 8, 'Redes de Computadoras', '', '', '', '', '', '', 0, 'Por cursar'),
(47, 177234, 8, 'Proyecto Integrador y Comprensivo III', '', '', '', '', '', '', 0, 'Por cursar'),
(48, 177234, 8, 'Curso del N?cleo Optativo V', '', '', '', '', '', '', 0, 'Por cursar'),
(49, 177234, 9, 'Compiladores', '', '', '', '', '', '', 0, 'Por cursar'),
(50, 177234, 9, 'Residencia Profesional', '', '', '', '', '', '', 0, 'Por cursar'),
(51, 177234, 9, 'Comercio Electr?nico', '', '', '', '', '', '', 0, 'Por cursar'),
(52, 177234, 9, 'Sistemas Virtuales', '', '', '', '', '', '', 0, 'Por cursar'),
(53, 177234, 9, 'Inteligencia Artificial II', '', '', '', '', '', '', 0, 'Por cursar'),
(54, 177234, 9, 'Proyecto Profesional', '', '', '', '', '', '', 0, 'Por cursar'),
(55, 177234, 9, 'Curso del N?cleo Optativo VI', '', '', '', '', '', '', 0, 'Por cursar'),
(56, 177234, 0, 'Taller para Certificaci?n Office', 'T60D', '20213S', '9.2', '', '', '9.2', 0, 'Aprobado'),
(57, 177234, 0, 'Ingl?s KET Intro', 'REV', '20213S', 'AC', '', '', 'AC', 0, 'Aprobado'),
(58, 177234, 0, 'Ingl?s-PET II', 'I06J', '20221S', '6.75', '', '', '6.75', 0, 'Recursando'),
(59, 177234, 0, 'Ingl?s-PET II', 'I06E', '20223S', '', '', '', '', 0, 'Por cursar'),
(60, 177234, 0, 'Introducci?n a las Matem?ticas', 'REV', '20213S', 'AC', '', '', 'AC', 0, 'Aprobado'),
(61, 177234, 0, 'Introducci?n a la F?sica', 'REV', '20213S', 'AC', '', '', 'AC', 0, 'Aprobado'),
(62, 177234, 0, 'Laboratorio de F?sica II', 'C10A', '20221S', '', '', '', '', 0, 'Por cursar'),
(63, 177234, 0, 'Laboratorio de Qu?mica', 'C12K', '20223S', '', '', '', '', 0, 'Por cursar'),
(64, 177234, 0, 'Laboratorio de Programaci?n II', 'P04D', '20223S', '', '', '', '', 0, 'Por cursar'),
(65, 177232, 1, 'F?sica I', 'T01A', '20221S', '9.3', '', '', '9.3', 8, 'Aprobado'),
(66, 177232, 1, 'Introducci?n a la Computaci?n', 'T02E', '20213S', '8.4', '', '', '8.4', 8, 'Aprobado'),
(67, 177232, 1, 'CNG I Desarrollo del Pensamiento Cr?tico', 'T03E', '20213S', '10', '', '', '10', 7, 'Aprobado'),
(68, 177232, 1, 'Matem?ticas I', 'T04A', '20221S', '9.9', '', '', '9.9', 8, 'Aprobado'),
(69, 177232, 1, 'Ingl?s I', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(70, 177232, 1, 'Proyecto Integrador de Matem?ticas', '', '', '', '', '', '', 0, 'Por cursar'),
(71, 177232, 2, 'F?sica II', 'T06A', '20223S', '', '', '', '', 0, 'cursando'),
(72, 177232, 2, 'Programaci?n I', 'VT07', '20221S', '8.6', '', '', '8.6', 8, 'Aprobado'),
(73, 177232, 2, 'Curso del N?cleo General II: Comunicaci?n e Investigaci?n', '', '', '', '', '', '', 0, 'Por cursar'),
(74, 177232, 2, 'Matem?ticas II', 'T09C', '20223S', '', '', '', '', 0, 'cursando'),
(75, 177232, 2, 'Ingl?s II', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(76, 177232, 2, 'CNO I Programaci?n Web I', 'VT11', '20221S', '7.8', '', '', '7.8', 7, 'Aprobado'),
(77, 177232, 3, 'Qu?mica', 'T12B', '20223S', '', '', '', '', 0, 'cursando'),
(78, 177232, 3, 'Programaci?n II', 'T13B', '20223S', '', '', '', '', 0, 'cursando'),
(79, 177232, 3, 'Ingl?s III', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(80, 177232, 3, 'Matem?ticas III', '', '', '', '', '', '', 0, 'Por cursar'),
(81, 177232, 3, 'Matem?ticas Discretas', '', '', '', '', '', '', 0, 'Por cursar'),
(82, 177232, 3, 'CNO II Programaci?n Web II', 'T15A', '20223S', '', '', '', '', 0, 'cursando'),
(83, 177232, 4, 'Circuitos El?ctricos', '', '', '', '', '', '', 0, 'Por cursar'),
(84, 177232, 4, 'Curso del N?cleo General III: Filosof?a y Valores', '', '', '', '', '', '', 0, 'Por cursar'),
(85, 177232, 4, 'Probabilidad y Estad?stica', '', '', '', '', '', '', 0, 'Por cursar'),
(86, 177232, 4, 'Proyecto Integrador y Comprensivo I', '', '', '', '', '', '', 0, 'Por cursar'),
(87, 177232, 4, 'Programaci?n III', '', '', '', '', '', '', 0, 'Por cursar'),
(88, 177232, 4, 'Ingl?s IV', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(89, 177232, 5, 'Sistemas Operativos', '', '', '', '', '', '', 0, 'Por cursar'),
(90, 177232, 5, 'Ingl?s V', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(91, 177232, 5, 'Matem?ticas IV', '', '', '', '', '', '', 0, 'Por cursar'),
(92, 177232, 5, 'Sistemas Digitales', '', '', '', '', '', '', 0, 'Por cursar'),
(93, 177232, 5, 'An?lisis y Dise?o de Algoritmos', '', '', '', '', '', '', 0, 'Por cursar'),
(94, 177232, 5, 'Curso del N?cleo Optativo III', '', '', '', '', '', '', 0, 'Por cursar'),
(95, 177232, 6, 'Lenguajes de Programaci?n', '', '', '', '', '', '', 0, 'Por cursar'),
(96, 177232, 6, 'Curso del N?cleo General IV: Creatividad', '', '', '', '', '', '', 0, 'Por cursar'),
(97, 177232, 6, 'Ingenier?a de Software I', '', '', '', '', '', '', 0, 'Por cursar'),
(98, 177232, 6, 'Arquitectura de Computadoras', '', '', '', '', '', '', 0, 'Por cursar'),
(99, 177232, 6, 'Taller de Desarrollo Empresarial', '', '', '', '', '', '', 0, 'Por cursar'),
(100, 177232, 6, 'Proyecto Integrador y Comprensivo II', '', '', '', '', '', '', 0, 'Por cursar'),
(101, 177232, 7, 'Teor?a Computacional', '', '', '', '', '', '', 0, 'Por cursar'),
(102, 177232, 7, 'Taller de Creatividad y Emprendedores', '', '', '', '', '', '', 0, 'Por cursar'),
(103, 177232, 7, 'Ingenier?a de Software II', '', '', '', '', '', '', 0, 'Por cursar'),
(104, 177232, 7, 'Base de Datos', '', '', '', '', '', '', 0, 'Por cursar'),
(105, 177232, 7, 'Organizaci?n Computacional', '', '', '', '', '', '', 0, 'Por cursar'),
(106, 177232, 7, 'Curso del N?cleo Optativo IV', '', '', '', '', '', '', 0, 'Por cursar'),
(107, 177232, 8, 'Inteligencia Artificial I', '', '', '', '', '', '', 0, 'Por cursar'),
(108, 177232, 8, 'Curso del N?cleo General V: Desarrollo de Competencias', '', '', '', '', '', '', 0, 'Por cursar'),
(109, 177232, 8, 'Miner?a de Datos', '', '', '', '', '', '', 0, 'Por cursar'),
(110, 177232, 8, 'Redes de Computadoras', '', '', '', '', '', '', 0, 'Por cursar'),
(111, 177232, 8, 'Proyecto Integrador y Comprensivo III', '', '', '', '', '', '', 0, 'Por cursar'),
(112, 177232, 8, 'Curso del N?cleo Optativo V', '', '', '', '', '', '', 0, 'Por cursar'),
(113, 177232, 9, 'Compiladores', '', '', '', '', '', '', 0, 'Por cursar'),
(114, 177232, 9, 'Residencia Profesional', '', '', '', '', '', '', 0, 'Por cursar'),
(115, 177232, 9, 'Comercio Electr?nico', '', '', '', '', '', '', 0, 'Por cursar'),
(116, 177232, 9, 'Sistemas Virtuales', '', '', '', '', '', '', 0, 'Por cursar'),
(117, 177232, 9, 'Inteligencia Artificial II', '', '', '', '', '', '', 0, 'Por cursar'),
(118, 177232, 9, 'Proyecto Profesional', '', '', '', '', '', '', 0, 'Por cursar'),
(119, 177232, 9, 'Curso del N?cleo Optativo VI', '', '', '', '', '', '', 0, 'Por cursar'),
(120, 177232, 0, 'Taller para Certificaci?n Office', 'T60E', '20213S', '9.9', '', '', '9.9', 0, 'Aprobado'),
(121, 177232, 0, 'Ingl?s KET Intro', 'REV', '20213S', 'AC', '', '', 'AC', 0, 'Aprobado'),
(122, 177232, 0, 'Ingl?s-FCE I', 'I07L', '20221S', '8', '', '', '8', 0, 'Aprobado'),
(123, 177232, 0, 'Ingl?s-PET II', 'I06F', '20213S', '8', '', '', '8', 0, 'Aprobado'),
(124, 177232, 0, 'Introducci?n a las Matem?ticas', 'T61E', '20213S', '8.9', '', '', '8.9', 0, 'Aprobado'),
(125, 177232, 0, 'Introducci?n a la F?sica', 'T62E', '20213S', '8.7', '', '', '8.7', 0, 'Aprobado'),
(126, 177232, 0, 'Laboratorio de F?sica I', 'C09A', '20221S', '', '', '', '', 0, 'Por cursar'),
(127, 177232, 0, 'Laboratorio de F?sica II', 'C10B', '20223S', '', '', '', '', 0, 'Por cursar'),
(128, 177232, 0, 'Laboratorio de Qu?mica', 'C12B', '20223S', '', '', '', '', 0, 'Por cursar'),
(129, 177232, 0, 'Laboratorio de Programaci?n II', 'P04B', '20223S', '', '', '', '', 0, 'Por cursar'),
(130, 177393, 1, 'F?sica I', 'T01B', '20221S', '6.3', '', '', '6.3', 0, 'recursada'),
(131, 177393, 1, 'F?sica I', 'T01A', '20223S', '', '', '', '', 0, 'cursando'),
(132, 177393, 1, 'Introducci?n a la Computaci?n', 'T02E', '20213S', '8.5', '', '', '8.5', 8, 'Aprobado'),
(133, 177393, 1, 'CNG I Desarrollo del Pensamiento Cr?tico', 'T03E', '20213S', '10', '', '', '10', 7, 'Aprobado'),
(134, 177393, 1, 'Matem?ticas I', 'T04B', '20221S', '3.34', '', '', '3.34', 0, 'recursada'),
(135, 177393, 1, 'Ingl?s I', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(136, 177393, 1, 'Proyecto Integrador de Matem?ticas', '', '', '', '', '', '', 0, 'por cursar'),
(137, 177393, 2, 'F?sica II', '', '', '', '', '', '', 0, 'por cursar'),
(138, 177393, 2, 'Programaci?n I', 'VT05', '20221S', '8.4', '', '', '8.4', 8, 'Aprobado'),
(139, 177393, 2, 'CNG II Comunicaci?n e Investigaci?n', 'T08B', '20221S', '9.9', '', '', '9.9', 7, 'Aprobado'),
(140, 177393, 2, 'Matem?ticas II', '', '', '', '', '', '', 0, 'por cursar'),
(141, 177393, 2, 'Ingl?s II', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(142, 177393, 2, 'CNO I Programaci?n Web I', 'VT09', '20221S', '8.5', '', '', '8.5', 7, 'Aprobado'),
(143, 177393, 3, 'Qu?mica', 'T12A', '20223S', '', '', '', '', 0, 'cursando'),
(144, 177393, 3, 'Programaci?n II', 'T13A', '20223S', '', '', '', '', 0, 'cursando'),
(145, 177393, 3, 'Ingl?s III', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(146, 177393, 3, 'Matem?ticas III', '', '', '', '', '', '', 0, 'por cursar'),
(147, 177393, 3, 'Matem?ticas Discretas', '', '', '', '', '', '', 0, 'por cursar'),
(148, 177393, 3, 'CNO II Programaci?n Web II', 'T15A', '20223S', '', '', '', '', 0, 'cursando'),
(149, 177393, 4, 'Circuitos El?ctricos', '', '', '', '', '', '', 0, 'por cursar'),
(150, 177393, 4, 'Curso del N?cleo General III: Filosof?a y Valores', '', '', '', '', '', '', 0, 'por cursar'),
(151, 177393, 4, 'Probabilidad y Estad?stica', '', '', '', '', '', '', 0, 'por cursar'),
(152, 177393, 4, 'Proyecto Integrador y Comprensivo I', '', '', '', '', '', '', 0, 'por cursar'),
(153, 177393, 4, 'Programaci?n III', '', '', '', '', '', '', 0, 'por cursar'),
(154, 177393, 4, 'Ingl?s IV', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(155, 177393, 5, 'Sistemas Operativos', '', '', '', '', '', '', 0, 'por cursar'),
(156, 177393, 5, 'Ingl?s V', 'REV', '20213S', 'AC', '', '', 'AC', 8, 'Aprobado'),
(157, 177393, 5, 'Matem?ticas IV', '', '', '', '', '', '', 0, 'por cursar'),
(158, 177393, 5, 'Sistemas Digitales', '', '', '', '', '', '', 0, 'por cursar'),
(159, 177393, 5, 'An?lisis y Dise?o de Algoritmos', '', '', '', '', '', '', 0, 'por cursar'),
(160, 177393, 5, 'Curso del N?cleo Optativo III', '', '', '', '', '', '', 0, 'por cursar'),
(161, 177393, 6, 'Lenguajes de Programaci?n', '', '', '', '', '', '', 0, 'por cursar'),
(162, 177393, 6, 'Curso del N?cleo General IV: Creatividad', '', '', '', '', '', '', 0, 'por cursar'),
(163, 177393, 6, 'Ingenier?a de Software I', '', '', '', '', '', '', 0, 'por cursar'),
(164, 177393, 6, 'Arquitectura de Computadoras', '', '', '', '', '', '', 0, 'por cursar'),
(165, 177393, 6, 'Taller de Desarrollo Empresarial', '', '', '', '', '', '', 0, 'por cursar'),
(166, 177393, 6, 'Proyecto Integrador y Comprensivo II', '', '', '', '', '', '', 0, 'por cursar'),
(167, 177393, 7, 'Teor?a Computacional', '', '', '', '', '', '', 0, 'por cursar'),
(168, 177393, 7, 'Taller de Creatividad y Emprendedores', '', '', '', '', '', '', 0, 'por cursar'),
(169, 177393, 7, 'Ingenier?a de Software II', '', '', '', '', '', '', 0, 'por cursar'),
(170, 177393, 7, 'Base de Datos', '', '', '', '', '', '', 0, 'por cursar'),
(171, 177393, 7, 'Organizaci?n Computacional', '', '', '', '', '', '', 0, 'por cursar'),
(172, 177393, 7, 'Curso del N?cleo Optativo IV', '', '', '', '', '', '', 0, 'por cursar'),
(173, 177393, 8, 'Inteligencia Artificial I', '', '', '', '', '', '', 0, 'por cursar'),
(174, 177393, 8, 'Curso del N?cleo General V: Desarrollo de Competencias', '', '', '', '', '', '', 0, 'por cursar'),
(175, 177393, 8, 'Miner?a de Datos', '', '', '', '', '', '', 0, 'por cursar'),
(176, 177393, 8, 'Redes de Computadoras', '', '', '', '', '', '', 0, 'por cursar'),
(177, 177393, 8, 'Proyecto Integrador y Comprensivo III', '', '', '', '', '', '', 0, 'por cursar'),
(178, 177393, 8, 'Curso del N?cleo Optativo V', '', '', '', '', '', '', 0, 'por cursar'),
(179, 177393, 9, 'Compiladores', '', '', '', '', '', '', 0, 'por cursar'),
(180, 177393, 9, 'Residencia Profesional', '', '', '', '', '', '', 0, 'por cursar'),
(181, 177393, 9, 'Comercio Electr?nico', '', '', '', '', '', '', 0, 'por cursar'),
(182, 177393, 9, 'Sistemas Virtuales', '', '', '', '', '', '', 0, 'por cursar'),
(183, 177393, 9, 'Inteligencia Artificial II', '', '', '', '', '', '', 0, 'por cursar'),
(184, 177393, 9, 'Proyecto Profesional', '', '', '', '', '', '', 0, 'por cursar'),
(185, 177393, 9, 'Curso del N?cleo Optativo VI', '', '', '', '', '', '', 0, 'por cursar'),
(186, 177393, 30, 'Taller para Certificaci?n Office', 'T60E', '20213S', '9.4', '', '', '9.4', 0, 'Aprobado'),
(187, 177393, 30, 'Ingl?s KET Intro', 'REV', '20213S', 'AC', '', '', 'AC', 0, 'Aprobado'),
(188, 177393, 30, 'Ingl?s-FCE I', 'VI13', '20221S', '7.5', '', '', '7.5', 0, 'Aprobado'),
(189, 177393, 30, 'Ingl?s-PET II', 'I06F', '20213S', '8', '', '', '8', 0, 'Aprobado'),
(190, 177393, 30, 'Introducci?n a las Matem?ticas', 'T61E', '20213S', '7', '', '', '7', 0, 'Aprobado'),
(191, 177393, 30, 'Introducci?n a la F?sica', 'T62E', '20213S', '7.6', '', '', '7.6', 0, 'Aprobado'),
(192, 177393, 30, 'Laboratorio de F?sica I', 'C09I', '20221S', '', '', '', '', 0, 'por cursar'),
(193, 177393, 30, 'Laboratorio de F?sica I', 'C09F', '20223S', '', '', '', '', 0, 'cursando'),
(194, 177393, 30, 'Laboratorio de Qu?mica', 'C12K', '20223S', '', '', '', '', 0, 'cursando'),
(195, 177393, 30, 'Laboratorio de Programaci?n II', 'P04D', '20223S', '', '', '', '', 0, 'cursando');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seriaciones`
--

CREATE TABLE IF NOT EXISTS `seriaciones` (
  `id` int(11) NOT NULL,
  `clave_materia` int(11) NOT NULL,
  `prereq` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `seriaciones`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `tipo` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `pass`, `tipo`) VALUES
(1, 'Administrador', 'Admin', 2),
(2, 'Maestro', 'profe', 3),
(4, 'Alumno', 'Poli', 1),
(5, '177232', 'Prueba', 1),
(8, '177393', 'Samuel', 1),
(7, 'Goku', '123', 3),
(9, '177234', 'Arturo', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
