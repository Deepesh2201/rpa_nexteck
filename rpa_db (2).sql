-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 29, 2024 at 09:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpa_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `container`
--

CREATE TABLE `container` (
  `id` int(11) NOT NULL,
  `container_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `container`
--

INSERT INTO `container` (`id`, `container_details`) VALUES
(1, 'Standard'),
(2, 'Reefer'),
(3, 'Non-operating Reefer'),
(4, 'Open Top (in gauge)'),
(5, 'Open Top High Cube (in gauge)'),
(6, 'Flatrack (in gauge)'),
(7, 'Hard Top High Cube (in gauge)');

-- --------------------------------------------------------

--
-- Table structure for table `ports`
--

CREATE TABLE `ports` (
  `id` int(11) NOT NULL,
  `port_code` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `port_hapag` text DEFAULT NULL,
  `port_maersk` text DEFAULT NULL,
  `port_cma_cgm` text DEFAULT NULL,
  `port_freight_smart` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ports`
--

INSERT INTO `ports` (`id`, `port_code`, `city`, `country`, `port_hapag`, `port_maersk`, `port_cma_cgm`, `port_freight_smart`) VALUES
(1, 'CNSHA', 'Shanghai', 'China', 'SHANGHAI', 'Shanghai (Shanghai), China', 'CNSHA', 'Shanghai, China'),
(2, 'SGSIN', 'Singapore', 'Singapore', 'SINGAPORE', 'Singapore, Singapore', 'SGSIN', 'Singapore, Singapore'),
(3, 'CNNGB', 'Ningbo', 'China', 'ZHOUSHAN, ZJ', 'Ningbo (Zhejiang), China', 'CNNGB', 'Ningbo, Ningbo, Zhejiang, China'),
(4, 'CNZOS', 'Zhoushan', 'China', 'ZHOUSHAN, ZJ', 'Zhoushan (Zhejiang), China', 'CNZOS', 'Zhoushan, Zhoushan, Zhejiang, China'),
(5, 'CNSZX', 'Shenzhen', 'China', 'SHENZHEN', 'Shenzhen (Guangdong), China', 'CNSZX', 'Shenzhen, Shenzhen, Guangdong, China'),
(6, 'KRPUS', 'Busan', 'South Korea', 'BUSAN', 'Busan, Korea, South', 'KRPUS', 'Busan, South Korea'),
(7, 'CNTAO', 'Qingdao', 'China', 'QINGDAO', 'Qingdao (Shandong), China', 'CNTAO', 'Qingdao, Qingdao, Shandong, China'),
(8, 'HKHKG', 'Hong Kong', 'China', 'HONG KONG', 'Hong Kong, Hong Kong China', 'HKHKG', 'Hong Kong, Hong Kong, China'),
(9, 'CNTSN', 'Tianjin', 'China', 'TIANJIN', 'Tianjin (Tianjin), China\r\n', 'CNTSN', 'Tianjin, China'),
(10, 'NLRTM', 'Rotterdam', 'Netherlands', 'ROTTERDAM', 'Rotterdam-Albrandswaard (Zuid-Holland), Netherland', 'NLRTM', 'Rotterdam, Zuid-Holland, Netherlands'),
(11, 'GBSOU', 'SOUTHAMPTON', 'United Kingdom', 'SOUTHAMPTON', 'Southampton, United Kingdom', 'GBSOU', 'Southampton, Southampton, England, United Kingdom'),
(12, 'AEJEA', 'JEBEL ALI', 'United Arab Emirates', 'JEBEL ALI', 'Jebel Ali, United Arab Emirates', 'AEJEA', 'Jebel Ali, Dubai, United Arab Emirates'),
(13, 'SAQTF', 'QATIF', 'Saudi Arabia', 'QATIF', 'Qatif, Saudi Arabia', 'SAQTF', 'Al Qatif, Ash Sharqiyah, Saudi Arabia'),
(14, 'FRZCU', 'FRANCESCAS', 'France', 'FRANCESCAS', 'Francescas (Lot-et-Garonne), France', 'FRZCU', 'Francescas, Lot et Garonne, Nouvelle-Aquitaine, France'),
(15, 'CAVAN', 'VANCOUVER, BC', 'Canada', 'VANCOUVER', 'Vancouver (British Columbia), Canada', 'CAVAN', 'Vancouver, British Columbia, Canada'),
(16, 'INCOK', 'Cochin', 'India', 'COCHIN', 'Cochin (KERALA), India', 'INCOK', 'Kochi, Kerala, India'),
(17, 'INENR', 'Ennore', 'India', 'ENNORE', 'Ennore Chennai (TAMIL NADU), India', 'INENR', 'not found'),
(18, 'INHAL', 'Haldia', 'India', 'HALDIA', 'Haldia Port (WEST BENGAL), India', 'INHAL', 'Haldia, West Bengal, India'),
(19, 'INHZA', 'Hazira', 'India', 'HAZIRA', 'Hazira (GUJARAT), India', 'INHZA', 'Hazira, Gujarat, India'),
(20, 'INNSA', 'Mumbai', 'India', 'NHAVA SHEVA', 'Jawaharlal Nehru (MAHARASHTRA), India', 'INNSA', 'Mumbai, Maharashtra, India'),
(21, 'INKAT', 'Kattupalli', 'India', 'KATTUPALLI', 'Kattupalli (TAMIL NADU), India', 'INKAT', 'Kattupalli, Thiruvallur, Tamil Nadu, India'),
(22, 'INCCU', 'Kolkata', 'India', 'KOLKATA', 'Kolkata (WEST BENGAL), India', 'INCCU', 'Kolkata, West Bengal, India'),
(23, 'INKRI', 'Krishnapatnam', 'India', 'KRISHNAPATNAM', 'Krishnapatnam (Andhra Pradesh), India', 'INKRI', 'Krishnapatnam, Andhra Pradesh, India'),
(24, 'INIXE', 'Mangalore', 'India', 'MANGALORE', 'Mangalore (KARNATAKA), India', 'INIXE', 'Mangalore, Karnataka, India'),
(25, 'INMUN', 'Mundra', 'India', 'MUNDRA', 'Mundra (GUJARAT), India', 'INMUN', 'Mundra, Gujarat, India'),
(26, 'DEBRV', 'Bremerhaven', 'Germany', 'BREMERHAVEN', 'Bremerhaven (Bremen), Germany', 'DEBRV', 'Bremerhaven, Bremen, Germany'),
(27, 'DEHAM', 'Hamburg', 'Germany', 'HAMBURG', 'Hamburg (Hamburg), Germany', 'DEHAM', 'Hamburg, Hamburg, Germany'),
(28, 'DEKEL', 'Kiel', 'Germany', 'KIEL', 'Kiel Kanal (Schleswig-Holstein), Germany', 'DEKEL', 'Kiel, Kiel, Schleswig-Holstein, Germany'),
(29, 'DEWVN', 'Wilhelmshaven', 'Germany', 'WILHELMSHAVEN', 'Wilhelmshaven (Lower Saxony), Germany', 'DEWVN', 'Wilhelmshaven, Wilhelmshaven, Niedersachsen, Germany'),
(30, 'ALDRZ', 'Durres (Durazzo)\r\n', 'Albania\r\nDURRES (ALDRZ)', 'ALDRZ', 'Durres, Albania', 'ALDRZ', 'Durres, Durres, Albania'),
(32, 'ALSAR', 'Sarande\r\n', 'Albania\r\n', 'not found', 'SARANDE, Albania', 'ALSAR', 'Sarande, Sarande, Albania'),
(34, 'ALSHG\r\n', 'Shengjjin\r\n', 'Albania\r\n', 'Not Found', 'Not Found', 'ALSHG\r\n', 'Not Found'),
(35, 'ALVOA\r\n', 'Vlore (Vlora, Vlone)\r\n', 'Albania\r\n', 'VLORE (ALVOA)', 'Vlora, Albania', 'ALVOA', 'Vlore, Vlore, Albania'),
(36, 'DZALG\r\n', 'Algiers\r\n', 'Algeria\r\n', 'ALGIERS (DZALG)', 'Algiers port, Algeria', 'DZALG\r\n', 'Algiers, Algeria'),
(37, 'DZAAE\r\n', 'Annaba (Ex Bone)\r\n', 'Algeria\r\n', 'ANNABA (DZAAE)', 'Annaba, Algeria', 'DZAAE', 'Annaba, Algeria'),
(38, 'DZAZW', 'Arzew', 'Algeria', 'Not Found', 'Arzew, Algeria', 'DZAZW', 'Not Found'),
(39, 'DZBJA\r\n', 'Bejaia (Ex Bougie)\r\n', 'Algeria\r\n', 'BEJAIA (DZBJA)', 'Bejaia, Algeria', 'DZBJA\r\n', 'Bejaia, Algeria'),
(40, 'DZDEL\r\n', 'Dellys\r\n', 'Algeria\r\n', 'Not Found', 'Dellys, Algeria', 'DZDEL\r\n', 'Not Found'),
(41, 'DZGHA', 'Ghazaouet\r\n', 'Algeria\r\n', 'GHARDAIA (DZGHA)', 'Ghazaouet, Algeria', 'DZGHA\r\n', 'Ghardaia, Algeria'),
(42, 'DZMOS\r\n', 'Mostaganem\r\n', 'Algeria\r\n', 'Not Found', 'Mostaganem, Algeria', 'DZMOS\r\n', 'Not Found'),
(43, 'DZORN\r\n', 'Oran\r\n', 'Algeria\r\n', 'ORAN (DZORN)', 'Oran, Algeria', 'DZORN', 'Oran, Algeria'),
(44, 'DZSKI', 'Skikda (Ex Philippeville)\r\n', 'Algeria\r\n', 'SKIKDA (DZSKI)', 'Skikda, Algeria', 'DZSKI', 'Not Found'),
(45, 'DZTEN\r\n', 'Tenes\r\n', 'Algeria\r\n', 'Not Found', 'Tenes, Algeria', 'DZTEN\r\n', 'Not Found'),
(46, 'ASPPG\r\n', 'Pago Pago\r\n', 'American Samoa\r\n', 'PAGO PAGO (ASPPG)', 'Pago Pago, American Samoa', 'ASPPG', 'Not Found'),
(47, 'AOCAB\r\n', 'Cabinda\r\n', 'Angola\r\n', 'CABINDA (AOCAB)', 'Cabinda, Angola', 'AOCAB\r\n', 'Cabinda, Angola'),
(48, 'AOLOB\r\n', 'Lobito\r\n', 'Angola\r\n', 'LOBITO (AOLOB)', 'Lobito, Angola', 'AOLOB\r\n', 'Not Found'),
(49, 'AOLAD\r\n', 'Luanda\r\n', 'Angola\r\n', 'LUANDA (AOLAD)', 'Luanda, Angola', 'AOLAD\r\n', 'Luanda, Angola'),
(50, 'AOMSZ\r\n', 'Namibe\r\n', 'Angola\r\n', 'NAMIBE (AOMSZ)', 'Namibe, Angola', 'AOMSZ\r\n', 'Not Found'),
(51, 'AOPBN\r\n', 'Porto Amboim\r\n', 'Angola\r\n', 'Not Found', 'Porto Amboim, Angola', 'AOPBN\r\n', 'Not Found'),
(52, 'AOSOQ\r\n', 'Soyo\r\n', 'Angola\r\n', 'SOYO (AOSZA)', 'Soyo, Angola', 'AOSOQ', 'Soyo, Angola'),
(53, 'ARBHI\r\n', 'Bahia Blanca\r\n', 'Argentina\r\n', 'BAHIA BLANCA (ARBHI)', 'Bahia Blanca (Buenos Aires), Argentina', 'ARBHI\r\n', 'Not Found'),
(54, 'ARBUE\r\n', 'Buenos Aires\r\n', 'Argentina\r\n', 'BUENOS AIRES (ARBUE)', 'Buenos Aires (Buenos Aires), Argentina', 'ARBUE\r\n', 'Buenos Aires, Buenos Aires, Argentina'),
(55, 'ARCRD\r\n', 'Comodoro Rivadavia\r\n', 'Argentina\r\n', 'Not Found', 'Comodoro Rivadavia (Chubut), Argentina', 'ARCRD\r\n', 'Buenos Aires, Buenos Aires, Argentina'),
(56, 'ARCOU', 'Concepcion del Uruguay', 'Argentina\r\n', 'ENTRE RIOS (BRERS)', 'Concepcion del Uruguay (Entre Rios), Argentina', 'ARCOU', 'Conception Del Uruguay, Entre Rios, Argentina'),
(57, 'ARMDQ\r\n', 'Mar del Plata\r\n', 'Argentina\r\n', 'MAR DEL PLATA (ARMDQ)', 'Mar del Plata (Buenos Aires), Argentina', 'ARMDQ\r\n', 'Buenos Aires, Buenos Aires, Argentina'),
(58, 'ARNEC\r\n', 'Necochea\r\n', 'Argentina\r\n', 'NECOCHEA (ARNEC)', 'Necochea Buenos Aires (Buenos Aires), Argentina', 'ARNEC\r\n', 'Not Found'),
(59, 'ARPMY\r\n', 'Puerto Madryn\r\n', 'Argentina\r\n', 'PUERTO MADRYN (ARPMY)', 'Puerto Madryn (Chubut), Argentina', 'ARPMY', 'Puerto Madryn, Chubut, Argentina'),
(60, 'ARRGL\r\n', 'Rio Gallegos\r\n', 'Argentina\r\n', 'Not Found', 'Rio Gallegos Santa Cruz (Santa Cruz), Argentina', 'ARRGL\r\n', 'Not Found'),
(61, 'ARROS\r\n', 'Rosario\r\n', 'Argentina\r\n', 'ROSARIO (ARROS)', 'Rosario (Salta), Argentina', 'ARROS\r\n', 'Not Found'),
(62, 'ARSFN\r\n', 'Santa Fe\r\n', 'Argentina\r\n', 'SANTA FE (ARSFN)', 'Rosario (Santa Fe), Argentina', 'ARSFN\r\n', 'Rosario, Santa Fe, Argentina'),
(63, 'ARUSH\r\n', 'Ushuaia\r\n', 'Argentina\r\n', 'USHUAIA (ARUSH)', 'Ushuaia (Tierra del Fuego), Argentina', 'ARUSH\r\n', 'Ushuaia, Tierra del Fuego, Argentina'),
(64, 'AWORJ\r\n', 'Oranjestad\r\n', 'Aruba\r\n', 'ORANJESTAD, ARUBA (AWORJ)', 'Oranjestad, Aruba', 'AWORJ\r\n', 'Not Found'),
(65, 'SHASI\r\n', 'Georgetown\r\n', 'Ascension Island\r\n', 'Not Found', 'Not Found', 'SHASI\r\n', 'Not Found'),
(66, 'AUPAE\r\n', 'Adelaide\r\n', 'Australia\r\n', 'PORT ADELAIDE, SA (AUPAE)', 'Adelaide Airport (South Australia), Australia', 'AUPAE\r\n', 'Adelaide, South Australia, Australia'),
(67, 'AUBNE\r\n', 'Brisbane\r\n', 'Australia\r\n', 'BRISBANE, QL (AUBNE)', 'Brisbane (Queensland), Australia', 'AUBNE\r\n', 'Brisbane, Queensland, Australia'),
(68, 'AUCNS\r\n', 'Cairns\r\n', 'Australia\r\n', 'CAIRNS, QL (AUCNS)', 'Cairns (Queensland), Australia', 'AUCNS', 'Cairns, Queensland, Australia'),
(69, 'AUDRW\r\n', 'Darwin\r\n', 'Australia\r\n', 'DARWIN, NT (AUDRW)', 'Darwin (Northern Territory), Australia', 'AUDRW\r\n', 'Darwin, Northern Territory, Australia'),
(70, 'AUDPO\r\n', 'Devonport\r\n', 'Australia\r\n', 'DEVONPORT, TS (AUDPO)', 'Devonport (Tasmania), Australia', 'AUDPO\r\n', 'Devonport, Tasmania, Australia'),
(71, 'AUFRE\r\n', 'Fremantle\r\n', 'Australia\r\n', 'FREMANTLE (AUFRE)', 'Fremantle (Western Australia), Australia', 'AUFRE', 'Fremantle, Western Australia, Australia'),
(72, 'AUGEX\r\n', 'Geelong\r\n', 'Australia\r\n', 'GEELONG, VI (AUGEX)', 'Geelong (Victoria), Australia', 'AUGEX\r\n', 'Geelong, Victoria, Australia'),
(73, 'AUHBA\r\n', 'Hobart\r\n', 'Australia\r\n', 'HOBART, TS (AUHBA)', 'Hobart (Tasmania), Australia', 'AUHBA\r\n', 'Hobart, Tasmania, Australia'),
(74, 'AUMKY\r\n', 'Mackay\r\n', 'Australia\r\n', 'MACKAY, QL (AUMKY)', 'Mackay (Queensland), Australia', 'AUMKY\r\n', 'Mackay, Queensland, Australia'),
(75, 'AUMEL\r\n', 'Melbourne\r\n', 'Australia\r\n', 'MELBOURNE (AUMEL)', 'Melbourne (Victoria), Australia', 'AUMEL', 'Melbourne, Victoria, Australia'),
(76, 'AUSYD\r\n', 'Sydney\r\n', 'Australia\r\n', 'SYDNEY, NSW (AUSYD)', 'Sydney (New South Wales), Australia', 'AUSYD', 'Sydney, New South Wales, Australia'),
(77, 'AUTSV\r\n', 'Townsville\r\n', 'Australia\r\n', 'TOWNSVILLE, QL (AUTSV)', 'Townsville (Queensland), Australia', 'AUTSV', 'Townsville, Queensland, Australia'),
(78, 'AZBAK\r\n', 'Baku\r\n', 'Azerbaijan\r\n', 'BAKU (AZBAK)', 'Baku, Azerbaijan', 'AZBAK\r\n', 'Baku, Baki Sahari, Azerbaijan'),
(79, 'BSFPO\r\n', 'Freeport\r\n', 'Bahamas\r\n', 'FREEPORT, GRAND BAHAMA (BSFPO)', 'Freeport, Bahamas', 'BSFPO', 'Freeport City, Freeport, Bahamas'),
(80, 'BSNAS\r\n', 'Nassau\r\n', 'Bahamas\r\n', 'NASSAU, NEW PROVIDENCE ISLAND (BSNAS)', 'Nassau, Bahamas', 'BSNAS', 'Nassau, New Providence, Bahamas'),
(81, 'BHMIN\r\n', 'Mina Salman\r\n', 'Bahrain\r\n', 'MINA SULMAN (BHMIN)', 'Mina Salman, Bahrain', 'BHMIN', 'Mina Sulman, Capital Governorate, Bahrain'),
(82, 'BHMIN', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'BHSIT\r\n', 'Sitra\r\n', 'Bahrain\r\n', 'SITRA (BHSIT)', 'Sitra, Bahrain', 'BHSIT', 'Sitrah, Southern Governorate, Bahrain'),
(84, 'BDCGP\r\n', 'Chittagong\r\n', 'Bangladesh\r\n', 'CHITTAGONG (BDCGP)', 'Chittagong EPZ, Bangladesh', 'BDCGP', 'Not Found'),
(85, 'BDMGL\r\n', 'Mongla\r\n', 'Bangladesh\r\n', 'MONGLA (BDMGL)', 'Mongla, Bangladesh', 'BDMGL', 'Mongla, Khulna, Bangladesh'),
(86, 'BBBGI\r\n', 'Bridgetown\r\n', 'Barbados\r\n', 'BRIDGETOWN (BBBGI)', 'Bridgetown, Barbados', 'BBBGI', 'Bridgetown, Barbados'),
(87, 'BEANR\r\n', 'Antwerp\r\n', 'Belgium\r\n', 'ANTWERP (BEANR)', 'Antwerp (Antwerp), Belgium', 'BEANR\r\n', 'Antwerpen, Antwerpen, Vlaanderen, Belgium'),
(88, 'BEBRU\r\n', 'Brussels (Bruxelles)\r\n', 'Belgium\r\n', 'BRUESSEL (BEBRU)', 'Brussels (Brussels Capital Region), Belgium', 'BEBRU', 'Bruxelles, Brussel / Bruxelles, Belgium'),
(89, 'BEGNE\r\n', 'Ghent', 'Belgium\r\n', 'GHENT (BEGNE)', 'Gent (East Flanders), Belgium', 'BEGNE', 'Gent, Oost-Vlaanderen, Vlaanderen, Belgium'),
(90, 'BELGG\r\n', 'Liege\r\n', 'Belgium\r\n', 'LIEGE (BELGG)', 'Liege (Liege), Belgium', 'BELGG', 'Liege, Liege, Wallonie, Belgium'),
(91, 'BEZEE\r\n', 'Zeebrugge\r\n', 'Belgium\r\n', 'ZEEBRUGGE (BEZEE)', 'Zeebrugge (West Flanders), Belgium', 'BEZEE', 'Zeebrugge, West-Vlaanderen, Vlaanderen, Belgium'),
(92, 'BZBZE', 'Belize City\r\n', 'Belize\r\n', 'BELIZE CITY (BZBZE)', 'Belize, Belize', 'BZBZE\r\n', 'Belize, Belize, Belize'),
(93, 'BJCOO\r\n', 'Cotonou\r\n', 'Benin\r\n', 'COTONOU (BJCOO)', 'Cotonou, Benin', 'BJCOO\r\n', 'Cotonou, Benin'),
(94, 'BMBDA\r\n', 'Hamilton\r\n', 'Bermuda\r\n', 'HAMILTON (BMBDA)', 'Hamilton, Bermuda Island', 'BMBDA\r\n', 'Hamilton, Bermuda'),
(95, 'BMSGE\r\n', 'St Georges\r\n', 'Bermuda\r\n', 'Not Found', 'Not Found', 'BMSGE\r\n', 'Not Found'),
(96, 'BRBEL\r\n', 'Belem\r\n', 'Brazil\r\n', 'BELEM SAO FRANCISCO, PE (BRBFC)', 'Belem (Para), Brazil', 'BRBEL\r\n', 'Belem, Para, Brazil'),
(97, 'BRFOR\r\n', 'Fortaleza\r\n', 'Brazil\r\n', 'FORTALEZA, CE (BRFOR)', 'Fortaleza (Ceara), Brazil', 'BRFOR', 'Fortaleza, Ceara, Brazil'),
(98, 'BRIBB\r\n', 'Imbituba\r\n', 'Brazil\r\n', 'IMBITUBA, SC (BRIBB)', 'Imbituba (Santa Catarina), Brazil', 'BRIBB', 'Imbituba, Santa Catarina, Brazil'),
(99, 'BRMAO\r\n', 'Manaus\r\n', 'Brazil\r\n', 'MANAUS, AM (BRMAO)', 'Manaus (Amazonas), Brazil', 'BRMAO\r\n', 'Manaus, Amazonas, Brazil'),
(100, 'BRPNG\r\n', 'Paranagua\r\n', 'Brazil\r\n', 'PARANAGUA (BRPNG)', 'Paranagua (Parana), Brazil', 'BRPNG\r\n', 'Paranagua, Parana, Brazil'),
(101, 'BRPOA\r\n', 'Porto Alegre\r\n', 'Brazil\r\n', 'PORTO ALEGRE, RS (BRPOA)', 'Porto Alegre (Rio Grande do Sul), Brazil', 'BRPOA\r\n', 'Porto Alegre, Rio Grande do Sul, Brazil'),
(102, 'BRREC\r\n', 'Recife\r\n', 'Brazil\r\n', 'RECIFE, PE (BRREC)', 'Recife (Pernambuco), Brazil', 'BRREC', 'Recife, Pernambuco, Brazil'),
(103, 'BRRIO\r\n', 'Rio De Janeiro\r\n', 'Brazil\r\n', 'RIO DE JANEIRO (BRRIO)', 'Rio de Janeiro (Rio de Janeiro), Brazil', 'BRRIO\r\n', 'Rio de Janeiro, Rio de Janeiro, Brazil'),
(104, 'BRRIG\r\n', 'Rio Grande\r\n', 'Brazil\r\n', 'RIO GRANDE (BRRIG)', 'Rio Grande (Rio Grande do Sul), Brazil', 'BRRIG\r\n', 'Rio Grande, Rio Grande do Sul, Brazil'),
(105, 'BRSSA\r\n', 'Salvador\r\n', 'Brazil\r\n', 'SALVADOR (BRSSA)', 'Salvador (Bahia), Brazil', 'BRSSA\r\n', 'Salvador, Bahia, Brazil'),
(106, 'BRSSZ\r\n', 'Santos\r\n', 'Brazil\r\n', 'SANTOS (BRSSZ)', 'Santos (Sao Paulo), Brazil', 'BRSSZ\r\n', 'Santos, Sao Paulo, Brazil'),
(107, 'BRVIX\r\n', 'Vitoria\r\n', 'Brazil', 'VITORIA, ES (BRVIX)', 'Vitoria (Espirito Santo), Brazil', 'BRVIX\r\n', 'Vitoria, Espirito Santo, Brazil'),
(108, 'BNKUB\r\n', 'Kuala Belait\r\n', 'Brunei Darussalam\r\n', 'Not Found', 'Kuala Belait, Brunei', 'BNKUB\r\n', 'Kuala Belait, Belait, Brunei'),
(109, 'BNMUA\r\n', 'Muara\r\n', 'Brunei Darussalam\r\n', 'MUARA (BNMUA)', 'Muara, Brunei', 'BNMUA\r\n', 'Muara, Brunei & Muara, Brunei'),
(110, 'BGVAR\r\n', 'Varna\r\n', 'Bulgaria\r\n', 'VARNA (BGVAR)', 'Varna, Bulgaria', 'BGVAR\r\n', 'Varna, Varna, Bulgaria'),
(111, 'KHKOS\r\n', 'Kompongsom (Sihanoukville)\r\n', 'Cambodia\r\n', 'SIHANOUKVILLE (KHKOS)', 'Sihanoukville, Cambodia', 'KHKOS\r\n', 'Sihanoukville, Sihanoukville, Cambodia'),
(112, 'KHPNH\r\n', 'Phnom Penh\r\n', 'Cambodia\r\n', 'PHNOM PENH (KHPNH)', 'Phnom Penh, Cambodia', 'KHPNH\r\n', 'Phnom Penh, Cambodia'),
(113, 'CMDLA\r\n', 'Douala\r\n', 'Cameroon\r\n', 'DOUALA (CMDLA)', 'Douala, Cameroon', 'CMDLA\r\n', 'Douala, Cameroon'),
(114, 'CMKBI\r\n', 'Kribi\r\n', 'Cameroon\r\n', 'KRIBI (CMKBI)', 'Kribi, Cameroon', 'CMKBI\r\n', 'Kribi, Cameroon'),
(115, 'CMTKC\r\n', 'Tiko\r\n', 'Cameroon', 'Not Found', 'Tiko, Cameroon', 'CMTKC\r\n', 'Not Found'),
(116, 'CMPAB\r\n', 'Alberni\r\n', 'Canada\r\n', 'PORT ALBERNI, BC (CAPAB)', 'Port Alberni (British Columbia), Canada', 'CMPAB\r\n', 'Port Alberni, British Columbia, Canada'),
(117, 'CABEC\r\n', 'Becancour\r\n', 'Canada\r\n', 'BECANCOUR, QC (CABEC)', 'Becancour (Quebec), Canada', 'CABEC\r\n', 'Becancour, Quebec, Canada'),
(118, 'CACHV\r\n', 'Churchill\r\n', 'Canada', 'CHURCHILL, ON (CACHH)', 'Churchill (Ontario), Canada', 'CACHV\r\n', 'Churchill, Ontario, Canada'),
(119, 'CANWE\r\n', 'Fraser River Port (Port of New Westminster)\r\n', 'Canada', 'NEW WESTMINSTER, BC (CANWE)', 'New Westminster (British Columbia), Canada', 'CANWE\r\n', 'New Westminster, British Columbia, Canada'),
(120, 'CAHAL\r\n', 'Halifax\r\n', 'Canada', 'HALIFAX, NS (CAHAL)', 'Halifax (Nova Scotia), Canada', 'CAHAL\r\n', 'Halifax, Nova Scotia, Canada'),
(121, 'CAHAM\r\n', 'Hamilton\r\n', 'Canada', 'HAMILTON, ON (CAHAM)', 'Hamilton (Ontario), Canada', 'CAHAM\r\n', 'Hamilton, Ontario, Canada'),
(123, 'CAMTR\r\n', 'Montreal\r\n', 'Canada', 'MONTREAL, QC (CAMTR)', 'Montreal (Quebec), Canada', 'CAMTR\r\n', 'Montreal, Quebec, Canada'),
(124, 'CANNO\r\n', 'Nanaimo\r\n', 'Canada', 'NANAIMO, BC (CANNO)', 'Nanaimo (British Columbia), Canada', 'CANNO\r\n', 'Nanaimo, British Columbia, Canada'),
(125, 'CA1AS', 'Saguenay\r\n', 'Canada\r\n', 'SAGUENAY, QC (CASAG)', 'Saguenay (Quebec), Canada', 'CA1AS', 'Saguenay, Quebec, Canada'),
(126, 'CASEI\r\n', 'Sept Iles (Seven Islands)\r\n', 'Canada', 'SEPT ILES (SEVEN ISLANDS), QC (CASEI)', 'Seven Islands Bay (Newfoundland & Labrador), Canada', 'CASEI\r\n', 'Sept ILes, Quebec, Canada'),
(127, 'CASJF\r\n', 'St Johns\r\n', 'Canada\r\n', 'ST. JOHN\'S, NL (CASJF)', 'Not Found', 'CASJF\r\n', 'Not Found'),
(128, 'CASYD\r\n', 'Sydney\r\n', 'Canada', 'SYDNEY, NS (CASYD)', 'Sydney (Nova Scotia), Canada', 'CASYD\r\n', 'Sydney, Nova Scotia, Canada'),
(129, 'CATHU\r\n', 'Thunder Bay\r\n', 'Canada', 'THUNDER BAY, ON (CATHU)', 'Thunder Bay (Ontario), Canada', 'CATHU\r\n', 'Thunder Bay, Ontario, Canada'),
(130, 'CATOR\r\n', 'Toronto\r\n', 'Canada', 'TORONTO, ON (CATOR)', 'Toronto (Ontario), Canada', 'CATOR', 'Toronto, Ontario, Canada'),
(131, 'CATRR\r\n', 'Trois-Rivieres\r\n', 'Canada', 'TROIS RIVIERES, QC (CATRR)', 'Trois-Rivieres (Quebec), Canada', 'CATRR\r\n', 'Trois Rivieres, Quebec, Canada'),
(133, 'CAWND\r\n', 'Windsor\r\n', 'Canada', 'WINDSOR, ON (CAWND)', 'Windsor (New Brunswick), Canada', 'CAWND\r\n', 'Windsor, New Brunswick, Canada'),
(134, 'ESLPA\r\n', 'Las Palmas\r\n', 'Canary Islands\r\n', 'LAS PALMAS/GRAN CANARIA (ESLPA)', 'Las Palmas de Gran Canaria, Spain', 'ESLPA\r\n', 'Las Palmas de Gran Canaria, Las Palmas, Canarias, Spain'),
(135, 'ESSCT', 'Santa Cruz de Tenerife\r\n', 'Canary Islands\r\n', 'SANTA CRUZ DE TENERIFE (ESSCT)', 'Santa Cruz De Tenerife, Spain', 'ESSCT\r\n', 'Santa Cruz de Tenerife, Santa Cruz de Tenerife, Canarias, Spain'),
(136, 'CVPGR\r\n', 'Porto Grande\r\n', 'Cape Verde\r\n', 'Not Found', 'Porto Grande, Cape Verde Island', 'CVPGR\r\n', 'Not Found'),
(137, 'KYGEC\r\n', 'Georgetown, Grand Cayman\r\n', 'Cayman Islands\r\n', 'Not Found', 'Not Found', 'KYGEC\r\n', 'Not Found'),
(138, 'CLANF\r\n', 'Antofagasta\r\n', 'Chile\r\n', 'ANTOFAGASTA (CLANF)', 'Antofagasta, Chile', 'CLANF\r\n', 'Antofagasta, Antofagasta, Chile'),
(139, 'CLARI\r\n', 'Arica\r\n', 'Chile', 'ARICA (CLARI)', 'Arica, Chile', 'CLARI\r\n', 'Arica, Arica y Parinacota, Chile'),
(140, 'CLCNR\r\n', 'Chanaral\r\n', 'Chile\r\n', 'Not Found', 'Chanaral, Chile', 'CLCNR', 'Not Found'),
(141, 'CLIQQ', 'Iquique\r\n', 'Chile', 'IQUIQUE (CLIQQ)', 'Iquique, Chile', 'CLIQQ\r\n', 'Iquique, Tarapaca, Chile'),
(142, 'CLPMC', 'Puerto Montt\r\n', 'Chile\r\n', 'PUERTO MONTT (CLPMC)', 'Puerto Montt, Chile', 'CLPMC\r\n', 'Puerto Montt, Los Lagos, Chile'),
(143, 'CLPUQ\r\n', 'Punta Arenas\r\n', 'Chile', 'PUNTA ARENAS (CLPUQ)', 'Punta Arenas, Chile', 'CLPUQ\r\n', 'Punta Arenas, Magallanes y de la Antartica Chilena, Chile'),
(144, 'CLSAI\r\n', 'San Antonio\r\n', 'Chile', 'SAN ANTONIO (CLSAI)', 'San Antonio, Chile', 'CLSAI\r\n', 'San Antonio, Valparaiso, Chile'),
(145, 'CLSVE\r\n', 'San Vicente\r\n', 'Chile', 'SAN VICENTE (CLSVE)', 'San Vicente, Chile', 'CLSVE\r\n', 'San Vicente, Bio-Bio, Chile'),
(146, 'CLTAL\r\n', 'Talcahuano\r\n', 'Chile\r\n', 'TALCAHUANO (CLTAL)', 'Talcahuano, Chile', 'CLTAL\r\n', 'Talcahuano, Bio-Bio, Chile'),
(147, 'CLVAP\r\n', 'Valparaiso\r\n', 'Chile', 'VALPARAISO (CLVAP)', 'Valparaiso, Chile', 'CLVAP\r\n', 'Valparaiso, Valparaiso, Chile'),
(148, 'CNDLC\r\n', 'Dalian\r\n', 'China', 'DALIAN (CNDAL)', 'Dalian (Liaoning), China', 'CNDLC\r\n', 'Dalian, Dalian, Liaoning, China'),
(149, 'CNFOC\r\n', 'Fuzhou\r\n', 'China\r\n', 'FUZHOU (CNFOC)', 'Fuzhou (Fujian), China', 'CNFOC\r\n', 'Fuzhou, Fuzhou, Jiangxi, China'),
(150, 'CNCAN\r\n', 'Guangzhou\r\n', 'China', 'GUANGZHOU (CNGGZ)', 'Guangzhou (Guangdong), China', 'CNCAN\r\n', 'Guangzhou, Guangzhou, Guangdong, China'),
(151, 'CNHAK\r\n', 'Haikou\r\n', 'China\r\n', 'HAIKOU (CNHKO)', 'Haikou (Hainan), China', 'CNHAK', 'Haikou, Haikou, Hainan, China'),
(152, 'CNLYG\r\n', 'Lianyungang\r\n', 'China', 'LIANYUNGANG (CNLYG)', 'Lianyungang (Jiangsu), China', 'CNLYG\r\n', 'Lianyungang, Lianyungang, Jiangsu, China'),
(153, 'CNNTG\r\n', 'Nantong\r\n', 'China', 'NANTONG (CNNTG)', 'Nantong (Jiangsu), China', 'CNNTG\r\n', 'Nantong, Nantong, Jiangsu, China'),
(154, 'CNNGB\r\n', 'Ningbo\r\n', 'China', 'NINGBO (CNNGB)', 'Ningbo (Zhejiang), China', 'CNNGB\r\n', 'Ningbo, Ningbo, Zhejiang, China'),
(155, 'CNTAO\r\n', 'Qingdao\r\n', 'China', 'QINGDAO (CNTAO)', 'Qingdao (Shandong), China', 'CNTAO\r\n', 'Qingdao, Qingdao, Shandong, China'),
(156, 'CNSHP\r\n', 'Qinhuangdao\r\n', 'China', 'QINHUANGDAO (CNSHP)', 'Qinhuangdao (Hebei), China', 'CNSHP\r\n', 'Qinhuangdao, Qinhuangdao, Hebei, China'),
(157, 'CNSWA\r\n', 'Shantou\r\n', 'China', 'SHANTOU (CNSTG)', 'Shantou (Guangdong), China', 'CNSWA\r\n', 'Shantou, Shantou, Guangdong, China'),
(158, 'CNXMN\r\n\r\n', 'Xiamen\r\n', 'China', 'XIAMEN (CNXMN)', 'Xiamen (Fujian), China', 'CNXMN\r\n\r\n', 'Xiamen, Xiamen, Fujian, China'),
(159, 'CNZHA\r\n', 'Zhanjiang\r\n', 'China\r\n', 'ZHANJIANG (CNZHA)', 'Zhanjiang (Guangdong), China', 'CNZHA\r\n', 'Zhanjiang, Zhanjiang, Guangdong, China'),
(160, 'COBAQ\r\n', 'Barranquilla\r\n', 'Colombia\r\n', 'BARRANQUILLA (COBAQ)', 'Barranquilla (Atlantico), Colombia', 'COBAQ\r\n', 'Barranquilla, Atlantico, Colombia'),
(161, 'COBUN\r\n', 'Buenaventura\r\n', 'Colombia\r\n', 'BUENAVENTURA (COBUN)', 'Buenaventura (Valle Del Cauca), Colombia', 'COBUN\r\n', 'Buenaventura, Valle del Cauca, Colombia'),
(162, 'COCTG\r\n', 'Cartagena\r\n', 'Colombia\r\n', 'CARTAGENA (COLOMBIA) (COCTG)', 'Cartagena (Bolivar), Colombia', 'COCTG\r\n', 'Cartagena, Bolivar, Colombia'),
(163, 'COPBO\r\n', 'Puerto Bolivar\r\n', 'Colombia\r\n', 'PUERTO BOLIVAR (ECPBO)', 'Puerto Bolivar (La Guajira), Colombia', 'COPBO\r\n', 'Puerto Tejada, Cauca, Colombia'),
(164, 'COTCO\r\n', 'Tumaco\r\n', 'Colombia\r\n', 'Not Found', 'Not Found', 'COTCO\r\n', 'Not Found'),
(165, 'COTRB\r\n', 'Turbo\r\n', 'Colombia\r\n', 'TURBO (COTRB)', 'Turbo (Antioquia), Colombia', 'COTRB\r\n', 'Turbo, Antioquia, Colombia'),
(166, 'KMYVA', 'Moroni\r\n', 'Comoros\r\n', 'MORONI, UT (USMR6)', 'Moroni, Comoro Islands', 'KMYVA\r\n', 'Moroni, Comoros'),
(167, 'KMMUT\r\n', 'Mutsamudu\r\n', 'Comoros\r\n', 'Not Found', 'Mutsamudu, Comoro Islands', 'KMMUT\r\n', 'Not Found'),
(168, 'CGPNR\r\n', 'Pointe Noire\r\n', 'Congo\r\n', 'POINTE NOIRE (CGPNR)', 'Pointe Noire, Congo', 'CGPNR\r\n', 'Pointe Noire, The Republic of the Congo'),
(169, 'ZRBNW\r\n', 'Banana\r\n', 'Congo, Dem. Republic of\r\n', 'Not Found', 'Banana, Congo, Dem. Rep. of', 'ZRBNW\r\n', 'Not Found'),
(170, 'ZRBOA\r\n', 'Boma\r\n', 'Congo, Dem. Republic of\r\n', 'BOMA (CDBOA)', 'Boma, Congo, Dem. Rep. of', 'ZRBOA\r\n', 'Not Found'),
(171, 'CRCAL\r\n', 'Caldera\r\n', 'Costa Rica\r\n', 'CALDERA (CRCAL)', 'Caldera, Costa Rica', 'CRCAL\r\n', 'Caldera, Puntarenas, Costa Rica'),
(172, 'CRGLF\r\n', 'Golfito\r\n', 'Costa Rica\r\n', 'GOLFITO (CRGLF)', 'Golfito, Costa Rica', 'CRGLF\r\n', 'Not Found'),
(173, 'CRPAS\r\n', 'Puntarenas\r\n', 'Costa Rica\r\n', 'PUNTARENAS (CRPAS)', 'Puntarenas, Costa Rica', 'CRPAS\r\n', 'Puntarenas, Puntarenas, Costa Rica'),
(174, 'CRXQP\r\n', 'Quepos\r\n', 'Costa Rica\r\n', 'PUERTO QUEPOS (CRXQP)', 'Quepos, Costa Rica', 'CRXQP\r\n', 'Not Found'),
(175, 'CIABJ\r\n', 'Abidjan\r\n', 'Côte d\'Ivoire\r\n', 'ABIDJAN (CIABJ)', 'Abidjan, Ivory Coast', 'CIABJ\r\n', 'Abidjan, Abidjan, Cote d\'Ivoire (Ivory Coast)'),
(176, 'HRRJK\r\n', 'Rijeka Bakar\r\n', 'Croatia\r\n', 'RIJEKA (HRRJK)', 'Rijeka, Croatia', 'HRRJK\r\n', 'Rijeka, Primorsko-goranska Zupanija, Croatia'),
(177, 'HRZAD\r\n', 'Zadar\r\n', 'Croatia\r\n', 'ZADAR (HRZAD)', 'Zadar, Croatia', 'HRZAD\r\n', 'Zadar, Zadarska Zupanija, Croatia'),
(178, 'HRDBV\r\n', 'Dubrovnik\r\n', 'Croatia\r\n', 'Not Found', 'Dubrovnik, Croatia', 'HRDBV\r\n', 'Dubrovnik, Dubrovacko-neretvanska Zupanija, Croatia'),
(179, 'HROMI\r\n', 'Omisalj\r\n', 'Croatia\r\n', 'Not Found', 'Omisalj, Croatia', 'HROMI\r\n', 'Omisalj, Primorsko-goranska Zupanija, Croatia'),
(180, 'HRPLE\r\n', 'Ploce\r\n', 'Croatia\r\n', 'PLOCE (HRPLE)', 'Ploce, Croatia', 'HRPLE\r\n', 'Ploce, Dubrovacko-neretvanska Zupanija, Croatia'),
(181, 'HRPUY\r\n', 'Pula\r\n', 'Croatia\r\n', 'PULA (HRPUY)', 'Pula, Croatia', 'HRPUY\r\n', 'Pula, Istarska Zupanija, Croatia'),
(182, 'HRSIB\r\n', 'Sibenik\r\n', 'Croatia\r\n', 'SIBENIK (HRSIB)', 'Sibenik, Croatia', 'HRSIB\r\n', 'Sibenik, Sibensko-kninska Zupanija, Croatia'),
(183, 'HRSPU\r\n', 'Split\r\n', 'Croatia\r\n', 'SPLIT (HRSPU)', 'Split, Croatia', 'HRSPU\r\n', 'Split, Splitsko-dalmatinska Zupanija, Croatia'),
(184, 'CUHAV\r\n', 'Havana\r\n', 'Cuba\r\n', 'HAVANA (CUHAV)', 'Havana, Cuba', 'CUHAV\r\n', 'Not Found'),
(185, 'CUMZO\r\n', 'Manzanillo\r\n', 'Cuba\r\n', 'Not Found', 'Manzanillo, Cuba', 'CUMZO\r\n', 'Not Found'),
(186, 'CUQMA\r\n', 'Matanzas\r\n', 'Cuba\r\n', 'Not Found', 'Matanzas, Cuba', 'CUQMA\r\n', 'Not Found'),
(187, 'CUNVT\r\n', 'Nuevitas\r\n', 'Cuba\r\n', 'Not Found', 'Not Found', 'CUNVT\r\n', 'Not Found'),
(188, 'CUSCU\r\n', 'Santiago de Cuba\r\n', 'Cuba\r\n', 'SANTIAGO DE CUBA (CUSCU)', 'Santiago, Cuba', 'CUSCU\r\n', 'Santiago de Cuba, Santiago de Cuba, Cuba'),
(189, 'CYAKT\r\n', 'Akrotiri\r\n', 'Cyprus\r\n', 'Not Found', 'Not Found', 'CYAKT\r\n', 'Not Found'),
(190, 'CYFMG\r\n', 'Famagusta\r\n', 'Cyprus\r\n', 'FAMAGUSTA FREE AREA (CYFFA)', 'Famagusta, Cyprus', 'CYFMG\r\n', 'Gazimagusa, Turkish controlled area, Cyprus'),
(191, 'CYLAT\r\n', 'Larnaca\r\n', 'Cyprus\r\n', 'LARNACA (CYLCA)', 'Larnaca, Cyprus', 'CYLAT\r\n', 'Larnaka, Government controlled area, Cyprus'),
(192, 'CYLMS\r\n', 'Limassol\r\n', 'Cyprus\r\n', 'LIMASSOL (CYLMS)', 'Limassol, Cyprus', 'CYLMS\r\n', 'Limassol, Government controlled area, Cyprus'),
(193, 'CYPFO\r\n', 'Paphos\r\n', 'Cyprus\r\n', 'PAPHOS (CYPFO)', 'Paphos, Cyprus', 'CYPFO\r\n', 'Paphos, Government controlled area, Cyprus'),
(194, 'CYVAS\r\n', 'Vassiliko\r\n', 'Cyprus\r\n', 'VASSILIKOS (CYVAS)', 'Vassilikos, Cyprus', 'CYVAS\r\n', 'Not Found'),
(195, 'DKAAR\r\n', 'Aarhus\r\n', 'Denmark', 'AARHUS (DKAAR)', 'Aarhus, Denmark', 'DKAAR\r\n', 'Aarhus, Midtjylland, Denmark'),
(196, 'DKEBJ\r\n', 'Esbjerg\r\n', 'Denmark\r\n', 'ESBJERG (DKEBJ)', 'Esbjerg, Denmark', 'DKEBJ\r\n', 'Esbjerg, Syddanmark, Denmark'),
(197, 'DKFRC\r\n', 'Frederikshavn\r\n', 'Denmark\r\n', 'FREDERIKSHAVN (DKFDH)', 'Frederikshavn, Denmark', 'DKFRC\r\n', 'Frederikshavn, Nordjylland, Denmark'),
(198, 'DKGRE\r\n', 'Grenaa\r\n', 'Denmark\r\n', 'GRENAA (DKGRE)', 'Grenaa, Denmark', 'DKGRE\r\n', 'Grenaa, Midtjylland, Denmark'),
(199, 'DKODE\r\n', 'Odense\r\n', 'Denmark\r\n', 'ODENSE (DKODE)', 'Odense, Denmark', 'DKODE\r\n', 'Odense, Syddanmark, Denmark'),
(200, 'DKRNN\r\n', 'Ronne\r\n', 'Denmark\r\n', 'ROENNE (DKRNN)', 'Not Found', 'DKRNN\r\n', 'Roenne, Hovedstaden, Denmark'),
(201, 'DJJIB\r\n', 'Djibouti\r\n', 'Djibouti\r\n', 'DJIBOUTI (DJJIB)', 'Djibouti, Djibouti', 'DJJIB\r\n', 'Djibouti, Djibouti'),
(202, 'DMPOR', 'Portsmouth\r\n', 'Dominica\r\n', 'Not Found', 'Not Found', 'DMPOR\r\n', 'Not Found'),
(203, 'DMRSU\r\n', 'Roseau\r\n', 'Dominica\r\n', 'ROSEAU (DMRSU)', 'Roseau, Dominica', 'DMRSU\r\n', 'Roseau, Dominica'),
(204, 'DOBRX\r\n', 'Barahona\r\n', 'Dominican Republic\r\n', NULL, 'Barahona, Dominican Republic', 'DOBRX\r\n', NULL),
(205, 'DOLRM\r\n', 'La Romana\r\n', 'Dominican Republic\r\n', 'LA ROMANA (DOLRM)', 'La Romana, Dominican Republic', 'DOLRM\r\n', 'La Romana, La Romana, Dominican Republic');

-- --------------------------------------------------------

--
-- Table structure for table `port_hapag`
--

CREATE TABLE `port_hapag` (
  `port_code` varchar(50) NOT NULL,
  `port_name` varchar(75) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `port_hapag`
--

INSERT INTO `port_hapag` (`port_code`, `port_name`, `city`, `country`) VALUES
('CNSHA', 'SHANGHAI', 'Shanghai', 'China'),
('SGSIN', 'SINGAPORE', 'Singapore', 'Singapore'),
('CNNGB', 'ZHOUSHAN, ZJ', 'Ningbo', 'China'),
('CNZOS', 'ZHOUSHAN, ZJ', 'Zhoushan', 'China'),
('CNSZX', 'SHENZHEN', 'Shenzhen', 'China'),
('KRPUS', 'BUSAN', 'Busan', 'South Korea'),
('CNTAO', 'QINGDAO', 'Qingdao', 'China'),
('HKHKG', 'HONG KONG', 'Hong Kong', 'China'),
('CNTSN', 'TIANJIN', 'Tianjin', 'China'),
('NLRTM', 'ROTTERDAM', 'Rotterdam', 'Netherlands'),
('GBSOU', 'SOUTHAMPTON', 'SOUTHAMPTON', 'United Kingdom'),
('AEJEA', 'JEBEL ALI', 'JEBEL ALI', 'United Arab Emirates'),
('SAQTF', 'QATIF', 'QATIF', 'Saudi Arabia'),
('FRZCU', 'FRANCESCAS', 'FRANCESCAS', 'France'),
('CAVAN', 'VANCOUVER', 'VANCOUVER, BC', 'Canada'),
('INCOK', 'COCHIN', 'Cochin', 'India'),
('INENR', 'ENNORE', 'Ennore', 'India'),
('INHAL', 'HALDIA', 'Haldia', 'India'),
('INHZA', 'HAZIRA', 'Hazira', 'India'),
('INNSA', 'NHAVA SHEVA', 'Mumbai', 'India'),
('INKAT', 'KATTUPALLI', 'Kattupalli', 'India'),
('INCCU', 'KOLKATA', 'Kolkata', 'India'),
('INKRI', 'KRISHNAPATNAM', 'Krishnapatnam', 'India'),
('INIXE', 'MANGALORE', 'Mangalore', 'India'),
('INMUN', 'MUNDRA', 'Mundra', 'India'),
('DEBRV', 'BREMERHAVEN', 'Bremerhaven', 'Germany'),
('DEHAM', 'HAMBURG', 'Hamburg', 'Germany'),
('DEKEL', 'KIEL', 'Kiel', 'Germany'),
('DEWVN', 'WILHELMSHAVEN', 'Wilhelmshaven', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `port_maersk`
--

CREATE TABLE `port_maersk` (
  `port_code` varchar(20) NOT NULL,
  `port_name` varchar(75) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `port_maersk`
--

INSERT INTO `port_maersk` (`port_code`, `port_name`, `city`, `country`) VALUES
('CNSHA', 'Shanghai (Shanghai), China', 'Shanghai', 'China'),
('SGSIN', 'Singapore, Singapore', 'Singapore', 'Singapore'),
('CNNGB', 'Ningbo (Zhejiang), China', 'Ningbo', 'China'),
('CNZOS', 'Zhoushan (Zhejiang), China', 'Zhoushan', 'China'),
('CNSZX', 'Shenzhen (Guangdong), China', 'Shenzhen', 'China'),
('KRPUS', 'Busan, Korea, South', 'Busan', 'South Korea'),
('CNTAO', 'Qingdao (Shandong), China', 'Qingdao', 'China'),
('HKHKG', 'Hong Kong, Hong Kong China', 'Hong Kong', 'China'),
('CNTSN', 'Tianjin (Tianjin), China', 'Tianjin', 'China'),
('NLRTM', 'Rotterdam-Albrandswaard (Zuid-Holland), Netherland', 'Rotterdam', 'Netherlands'),
('GBSOU', 'Southampton, United Kingdom', 'Southampton', 'United Kingdom'),
('AEJEA', 'Jebel Ali, United Arab Emirates', 'JEBEL ALI', 'United Arab Emirates'),
('SAQTF', 'Qatif, Saudi Arabia', 'QATIF', 'Saudi Arabia'),
('FRZCU', 'Francescas (Lot-et-Garonne), France', 'FRANCESCAS', 'France'),
('CAVAN', 'Vancouver (British Columbia), Canada', 'VANCOUVER, BC', 'Canada'),
('INCOK', 'Cochin (KERALA), India', 'Cochin', 'India'),
('INENR', 'Ennore Chennai (TAMIL NADU), India', 'Ennore', 'India'),
('INHAL', 'Haldia Port (WEST BENGAL), India', 'Haldia', 'India'),
('INHZA', 'Hazira (GUJARAT), India', 'Hazira', 'India'),
('INNSA', 'Jawaharlal Nehru (MAHARASHTRA), India', 'Mumbai', 'India'),
('INKAT', 'Kattupalli (TAMIL NADU), India', 'Kattupalli', 'India'),
('INCCU', 'Kolkata (WEST BENGAL), India', 'Kolkata', 'India'),
('INKRI', 'Krishnapatnam (Andhra Pradesh), India', 'Krishnapatnam', 'India'),
('INIXE', 'Mangalore (KARNATAKA), India', 'Mangalore', 'India'),
('INMUN', 'Mundra (GUJARAT), India', 'Mundra', 'India'),
('DEBRV', 'Bremerhaven (Bremen), Germany', 'Bremerhaven', 'Germany'),
('DEHAM', 'Hamburg (Hamburg), Germany', 'Hamburg', 'Germany'),
('DEKEL', 'Kiel Kanal (Schleswig-Holstein), Germany', 'Kiel', 'Germany'),
('DEWVN', 'Wilhelmshaven (Lower Saxony), Germany', 'Wilhelmshaven', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_enquiry`
--

CREATE TABLE `quotation_enquiry` (
  `job_id` varchar(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  `date` text NOT NULL,
  `source` text NOT NULL,
  `destination` text NOT NULL,
  `container` varchar(100) NOT NULL,
  `commodity` varchar(100) NOT NULL,
  `departure_time` varchar(100) NOT NULL,
  `arrival_time` varchar(100) NOT NULL,
  `get_in_deadline` text NOT NULL,
  `quotation_price` varchar(100) NOT NULL,
  `estimation_arrival` varchar(100) NOT NULL,
  `estimation_destination` varchar(100) NOT NULL,
  `shipping_company` varchar(50) DEFAULT NULL,
  `shipping_company_website` text DEFAULT NULL,
  `shipping_status` int(11) DEFAULT 0,
  `shipping_remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quotation_enquiry`
--

INSERT INTO `quotation_enquiry` (`job_id`, `user_id`, `date`, `source`, `destination`, `container`, `commodity`, `departure_time`, `arrival_time`, `get_in_deadline`, `quotation_price`, `estimation_arrival`, `estimation_destination`, `shipping_company`, `shipping_company_website`, `shipping_status`, `shipping_remarks`) VALUES
('1720706504305', 1, '0000-00-00', 'Ningbo (Zhejiang), China', 'Singapore, Singapore', '20 Dry Standard', 'Machinery or mechanical appliances, new', '15 Jul 2024, 19:00', '30 Jul 2024, 17:00', '13 Jul 2024, 05:00', ' USD 2,007.00 ', '15 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720706504305', 1, '0000-00-00', 'Ningbo (Zhejiang), China', 'Singapore, Singapore', '20 Dry Standard', 'Machinery or mechanical appliances, new', '18 Jul 2024, 17:00', '6 Aug 2024, 17:00', '15 Jul 2024, 12:00', ' USD 2,007.00 ', '18 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720706504305', 1, '0000-00-00', 'Ningbo (Zhejiang), China', 'Singapore, Singapore', '20 Dry Standard', 'Machinery or mechanical appliances, new', '15 Jul 2024, 19:00', '30 Jul 2024, 17:00', '13 Jul 2024, 05:00', ' USD 2,007.00 ', '15 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720706504305', 1, '0000-00-00', 'Ningbo (Zhejiang), China', 'Singapore, Singapore', '20 Dry Standard', 'Machinery or mechanical appliances, new', '18 Jul 2024, 17:00', '6 Aug 2024, 17:00', '15 Jul 2024, 12:00', ' USD 2,007.00 ', '18 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720707974218', 1, '0000-00-00', 'Singapore, Singapore', 'Busan, Korea, South', '20 Dry Standard', 'Machinery or mechanical appliances, new', '16 Jul 2024, 01:00', '24 Jul 2024, 15:30', '13 Jul 2024, 23:00', ' USD 495.00 ', '16 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720707974218', 1, '0000-00-00', 'Singapore, Singapore', 'Busan, Korea, South', '20 Dry Standard', 'Machinery or mechanical appliances, new', '20 Jul 2024, 08:00', '28 Jul 2024, 19:00', '17 Jul 2024, 18:00', ' USD 495.00 ', '20 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720707974218', 1, '0000-00-00', 'Singapore, Singapore', 'Busan, Korea, South', '20 Dry Standard', 'Machinery or mechanical appliances, new', '23 Jul 2024, 06:00', '31 Jul 2024, 15:00', '20 Jul 2024, 16:00', ' USD 474.00 ', '23 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720709121419', 1, '0000-00-00', 'Singapore, Singapore', 'Busan, Korea, South', '20 Dry Standard', 'Machinery or mechanical appliances, new', '20 Jul 2024, 08:00', '28 Jul 2024, 19:00', '17 Jul 2024, 18:00', ' USD 495.00 ', '20 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720709121419', 1, '0000-00-00', 'Singapore, Singapore', 'Busan, Korea, South', '20 Dry Standard', 'Machinery or mechanical appliances, new', '23 Jul 2024, 06:00', '31 Jul 2024, 15:00', '20 Jul 2024, 16:00', ' USD 474.00 ', '23 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720709121419', 1, '0000-00-00', 'SINGAPORE SGSIN', 'BUSAN KRPUS', 'Standard', '', '2024-07-31', '2024-07-17', '', '200', '', '', 'Happag', NULL, NULL, NULL),
('1720709703322', 1, '0000-00-00', 'Singapore, Singapore', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '21 Jul 2024, 13:00', '26 Jul 2024, 08:00', '18 Jul 2024, 03:00', ' USD 767.00 ', '21 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720709703322', 1, '0000-00-00', 'Singapore, Singapore', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '31 Jul 2024, 02:00', '4 Aug 2024, 22:30', '27 Jul 2024, 12:00', ' USD 750.00 ', '31 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720709703322', 1, '0000-00-00', 'SINGAPORE SGSIN', 'HONG KONG HKHKG', 'Standard', '', '2024-07-31', '2024-07-19', '', '150', '', '', 'Happag', NULL, NULL, NULL),
('1720710139761', 1, '0000-00-00', 'Singapore, Singapore', 'Busan, Korea, South', '20 Dry Standard', 'Machinery or mechanical appliances, new', '20 Jul 2024, 08:00', '28 Jul 2024, 19:00', '17 Jul 2024, 18:00', ' USD 496.00 ', '20 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720710139761', 1, '0000-00-00', 'Singapore, Singapore', 'Busan, Korea, South', '20 Dry Standard', 'Machinery or mechanical appliances, new', '23 Jul 2024, 06:00', '31 Jul 2024, 15:00', '20 Jul 2024, 16:00', ' USD 475.00 ', '23 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720710139761', 1, '0000-00-00', 'SINGAPORE SGSIN', 'BUSAN KRPUS', 'Standard', 'FAK - Freight all Kind', '2024-07-31', '2024-07-20', '', '200', '', '', 'Happag', NULL, NULL, NULL),
('1720779815245', 1, '0000-00-00', 'Singapore, Singapore', 'Busan, Korea, South', '20 Dry Standard', 'Machinery or mechanical appliances, new', '21 Jul 2024, 06:15', '31 Jul 2024, 15:00', '20 Jul 2024, 16:00', ' USD 496.00 ', '21 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720779815245', 1, '0000-00-00', 'SINGAPORE SGSIN', 'BUSAN KRPUS', 'Standard', 'FAK - Freight all Kind', '2024-07-31', '2024-07-21', '', '200', '', '', 'Happag', NULL, NULL, NULL),
('1720780793209', 1, '0000-00-00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '23 Jul 2024, 16:00', '31 Jul 2024, 02:00', '22 Jul 2024, 12:00', ' USD 530.00 ', '23 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720780793209', 1, '0000-00-00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '30 Jul 2024, 16:00', '7 Aug 2024, 02:00', '29 Jul 2024, 12:00', ' USD 530.00 ', '30 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720780793209', 1, '0000-00-00', 'BUSAN KRPUS', 'HONG KONG HKHKG', 'Standard', 'FAK - Freight all Kind', '2024-07-31', '2024-07-22', '', 'USD 565', '', '', 'Happag', NULL, NULL, NULL),
('1720793261507', 1, '0000-00-00', 'SOUTHAMPTON GBSOU', 'JEBEL ALI AEJEA', 'Standard', 'FAK - Freight all Kind', '2024-07-31', '2024-07-23', '', 'USD 228', '', '', 'Happag', NULL, NULL, NULL),
('1720794932775', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '26 Jul 2024, 23:00', '11 Sep 2024, 23:00', '25 Jul 2024, 16:00', ' USD 1,496.00 ', '26 Jul 2024', '', 'Maersk', NULL, NULL, NULL),
('1720794932775', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '2 Aug 2024, 23:00', '11 Sep 2024, 23:00', '1 Aug 2024, 16:00', ' USD 1,449.00 ', '2 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720794932775', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '2 Aug 2024, 23:00', '18 Sep 2024, 23:00', '1 Aug 2024, 16:00', ' USD 1,449.00 ', '2 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720794932775', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '9 Aug 2024, 23:00', '25 Sep 2024, 23:00', '8 Aug 2024, 16:00', ' USD 1,474.00 ', '9 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720794932775', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '16 Aug 2024, 23:00', '2 Oct 2024, 23:00', '15 Aug 2024, 16:00', ' USD 1,434.00 ', '16 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720794932775', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '23 Aug 2024, 23:00', '9 Oct 2024, 23:00', '22 Aug 2024, 16:00', ' USD 1,459.00 ', '23 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720794932775', 1, '0000-00-00', 'SOUTHAMPTON GBSOU', 'JEBEL ALI AEJEA', 'Standard', 'FAK - Freight all Kind', '2024-07-31', '2024-07-24', '', 'USD 228', '', '', 'Happag', NULL, NULL, NULL),
('1720867769332', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '2 Aug 2024, 23:00', '11 Sep 2024, 23:00', '1 Aug 2024, 16:00', ' USD 1,449.00 ', '2 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720867769332', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '2 Aug 2024, 23:00', '18 Sep 2024, 23:00', '1 Aug 2024, 16:00', ' USD 1,449.00 ', '2 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720867769332', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '9 Aug 2024, 23:00', '25 Sep 2024, 23:00', '8 Aug 2024, 16:00', ' USD 1,474.00 ', '9 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720867769332', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '16 Aug 2024, 23:00', '2 Oct 2024, 23:00', '15 Aug 2024, 16:00', ' USD 1,434.00 ', '16 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720867769332', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '23 Aug 2024, 23:00', '9 Oct 2024, 23:00', '22 Aug 2024, 16:00', ' USD 1,459.00 ', '23 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720867769332', 1, '0000-00-00', 'SOUTHAMPTON GBSOU', 'JEBEL ALI AEJEA', 'Standard', 'FAK - Freight all Kind', '2024-07-31', '2024-07-28', '', 'USD 228', '', '', 'Happag', NULL, NULL, NULL),
('1720868909500', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '2 Aug 2024, 23:00', '11 Sep 2024, 23:00', '1 Aug 2024, 16:00', ' USD 1,449.00 ', '2 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720868909500', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '2 Aug 2024, 23:00', '18 Sep 2024, 23:00', '1 Aug 2024, 16:00', ' USD 1,449.00 ', '2 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720868909500', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '9 Aug 2024, 23:00', '25 Sep 2024, 23:00', '8 Aug 2024, 16:00', ' USD 1,474.00 ', '9 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720868909500', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '16 Aug 2024, 23:00', '2 Oct 2024, 23:00', '15 Aug 2024, 16:00', ' USD 1,434.00 ', '16 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720868909500', 1, '0000-00-00', 'Southampton, United Kingdom', 'Jebel Ali, United Arab Emirates', '20 Dry Standard', 'Machinery or mechanical appliances, new', '23 Aug 2024, 23:00', '9 Oct 2024, 23:00', '22 Aug 2024, 16:00', ' USD 1,459.00 ', '23 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1720868909500', 1, '0000-00-00', 'SOUTHAMPTON GBSOU', 'JEBEL ALI AEJEA', 'Standard', 'FAK - Freight all Kind', '2024-07-31', '2024-07-29', '', 'USD 228', '', '', 'Happag', NULL, NULL, NULL),
('1721393993162', 1, '0000-00-00', 'COCHIN INCOK', 'BREMERHAVEN DEBRV', 'Standard', 'FAK - Freight all Kind', '2024-08-02', '2024-08-02', '', 'USD 4187', '', '', 'Happag', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '27 Aug 2024, 00:00', '1 Sep 2024, 12:00', '24 Aug 2024, 22:00', ' USD 637.00 ', '27 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '29 Aug 2024, 16:00', '4 Sep 2024, 13:30', '27 Aug 2024, 05:00', ' USD 632.00 ', '29 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'BUSAN KRPUS', 'HONG KONG HKHKG', 'Standard', 'FAK - Freight all Kind', '2024-09-30', '2024-08-25', '', 'USD 565', '', '', 'Happag', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '27 Aug 2024, 00:00', '1 Sep 2024, 12:00', '24 Aug 2024, 22:00', ' USD 637.00 ', '27 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '29 Aug 2024, 16:00', '4 Sep 2024, 13:30', '27 Aug 2024, 05:00', ' USD 632.00 ', '29 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '3 Sep 2024, 16:00', '11 Sep 2024, 02:00', '2 Sep 2024, 10:00', ' USD 632.00 ', '3 Sep 2024', '', 'Maersk', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '28 Aug 2024, 22:00', '6 Sep 2024, 12:00', '27 Aug 2024, 05:00', ' USD 634.00 ', '28 Aug 2024', '', 'Maersk', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'BUSAN KRPUS', 'HONG KONG HKHKG', 'Standard', 'FAK - Freight all Kind', '2024-09-30', '2024-08-28', '', 'USD 565', '', '', 'Happag', NULL, NULL, NULL),
('1724494163831', 1, '', 'GBSOU', 'INMAA', '20 Dry Standard', 'Freight All Kinds', 'Friday, 30-Aug-2024', 'Thursday, 10-Oct-2024', '', '2538 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'GBSOU', 'INMAA', '20 Dry Standard', 'Freight All Kinds', 'Tuesday, 03-Sep-2024', 'Saturday, 05-Oct-2024', '', '2538 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'GBSOU', 'INMAA', '20 Dry Standard', 'Freight All Kinds', 'Wednesday, 04-Sep-2024', 'Thursday, 24-Oct-2024', '', '2538 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'GBSOU', 'INMAA', '20 Dry Standard', 'Freight All Kinds', 'Tuesday, 10-Sep-2024', 'Thursday, 24-Oct-2024', '', '2538 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'GBSOU', 'INMAA', '20 Dry Standard', 'Freight All Kinds', 'Wednesday, 25-Sep-2024', 'Tuesday, 05-Nov-2024', '', '2538 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'GBSOU', 'INMAA', '20 Dry Standard', 'Freight All Kinds', 'Monday, 30-Sep-2024', 'Sunday, 10-Nov-2024', '', '2538 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Sunday, 01-Sep-2024', 'Thursday, 12-Sep-2024', '', '459 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Friday, 06-Sep-2024', 'Monday, 09-Sep-2024', '', '459 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Saturday, 07-Sep-2024', 'Tuesday, 17-Sep-2024', '', '459 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Saturday, 07-Sep-2024', 'Tuesday, 17-Sep-2024', '', '459 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Saturday, 14-Sep-2024', 'Saturday, 21-Sep-2024', '', '459 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Thursday, 19-Sep-2024', 'Saturday, 28-Sep-2024', '', '459 USD', '', '', 'CMA_CGM', NULL, NULL, NULL),
('1724494163831', 1, '', 'Busan, South Korea', 'Hong Kong, Hong Kong, China', '20 Dry Standard', 'Freight All Kinds', '7 Sep 00:00', '18 Sep 15:00', '', '', '', '', 'Happag', NULL, NULL, NULL),
('1724494163831', 1, '', 'Busan, South Korea', 'Hong Kong, Hong Kong, China', '20 Dry Standard', 'Freight All Kinds', '14 Sep 00:00', '26 Sep 07:00', '', '', '', '', 'Happag', NULL, NULL, NULL),
('1724494163831', 1, '', 'Busan, South Korea', 'Hong Kong, Hong Kong, China', '20 Dry Standard', 'Freight All Kinds', '21 Sep 00:00', '3 Oct 06:00', '', '', '', '', 'Happag', NULL, NULL, NULL),
('1724494163831', 1, '', 'Busan, South Korea', 'Hong Kong, Hong Kong, China', '20 Dry Standard', 'Freight All Kinds', '28 Sep 00:00', '6 Oct 14:30', '', '', '', '', 'Happag', NULL, NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '29 Aug 2024, 20:00', '4 Sep 2024, 17:30', '27 Aug 2024, 05:00', ' USD 633.00 ', '29 Aug 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '3 Sep 2024, 16:00', '11 Sep 2024, 02:00', '2 Sep 2024, 10:00', ' USD 632.00 ', '3 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '13 Sep 2024, 13:00', '20 Sep 2024, 15:00', '10 Sep 2024, 09:00', ' USD 632.00 ', '13 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '29 Aug 2024, 20:00', '4 Sep 2024, 17:30', '27 Aug 2024, 05:00', ' USD 633.00 ', '29 Aug 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '3 Sep 2024, 16:00', '11 Sep 2024, 02:00', '2 Sep 2024, 10:00', ' USD 632.00 ', '3 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '13 Sep 2024, 13:00', '20 Sep 2024, 15:00', '10 Sep 2024, 09:00', ' USD 632.00 ', '13 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '29 Aug 2024, 20:00', '4 Sep 2024, 17:30', '27 Aug 2024, 05:00', ' USD 633.00 ', '29 Aug 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '3 Sep 2024, 16:00', '11 Sep 2024, 02:00', '2 Sep 2024, 10:00', ' USD 632.00 ', '3 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '13 Sep 2024, 13:00', '20 Sep 2024, 15:00', '10 Sep 2024, 09:00', ' USD 632.00 ', '13 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'BUSAN KRPUS', 'HONG KONG HKHKG', 'Standard', 'FAK - Freight all Kind', '2024-09-30', '2024-08-28', '', 'USD 565', '', '', 'Happag', 'https://www.hapag-lloyd.com/solutions/new-quote/#/quotation/9db696f4-5fe7-4d2c-bc7d-5ec5f8a8273e', NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Sunday, 08-Sep-2024', 'Thursday, 19-Sep-2024', '', '458 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Saturday, 14-Sep-2024', 'Saturday, 21-Sep-2024', '', '458 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', NULL, NULL),
('1724494163831', 1, '', 'KRPUS', 'HKHKG', '20 Dry Standard', 'Freight All Kinds', 'Thursday, 19-Sep-2024', 'Saturday, 28-Sep-2024', '', '458 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '3 Sep 2024, 16:00', '11 Sep 2024, 02:00', '2 Sep 2024, 10:00', ' USD 633.00 ', '3 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '13 Sep 2024, 13:00', '20 Sep 2024, 15:00', '10 Sep 2024, 09:00', ' USD 632.00 ', '13 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1724494163831', 1, '08/25/2024 00:00:00', 'Busan, Korea, South', 'Hong Kong, Hong Kong China', '20 Dry Standard', 'Machinery or mechanical appliances, new', '17 Sep 2024, 16:00', '25 Sep 2024, 02:00', '16 Sep 2024, 10:00', ' USD 632.00 ', '17 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', NULL, NULL),
('1721393823610', 1, '08/01/2024 00:00:00', 'Cochin (KERALA), India', 'Bremerhaven (Bremen), Germany', '20 Dry Standard', 'Machinery or mechanical appliances, new', '18 Sep 2024, 10:00', '5 Nov 2024, 22:00', '', ' USD 4,811.00 ', '18 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', 0, NULL),
('1721393823610', 1, '08/01/2024 00:00:00', 'COCHIN INCOK', 'BREMERHAVEN DEBRV', 'Standard', 'FAK - Freight all Kind', '2024-08-31', '2024-08-28', '', 'USD 3687', '', '', 'Happag', 'https://www.hapag-lloyd.com/solutions/new-quote/#/quotation/7a1e324b-d18d-4ff9-be07-072fa3131258', 0, NULL),
('1721393823610', 1, '08/01/2024 00:00:00', 'Cochin (KERALA), India', 'Bremerhaven (Bremen), Germany', '20 Dry Standard', 'Machinery or mechanical appliances, new', '18 Sep 2024, 10:00', '5 Nov 2024, 22:00', '', ' USD 4,811.00 ', '18 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', 0, NULL),
('1721393823610', 1, '08/01/2024 00:00:00', 'COCHIN INCOK', 'BREMERHAVEN DEBRV', 'Standard', 'FAK - Freight all Kind', '2024-08-31', '2024-08-28', '', 'USD 3687', '', '', 'Happag', 'https://www.hapag-lloyd.com/solutions/new-quote/#/quotation/99360acf-af59-427f-82b2-c0ff281e524a', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Friday, 30-Aug-2024', 'Thursday, 10-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Wednesday, 04-Sep-2024', 'Thursday, 10-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Wednesday, 04-Sep-2024', 'Thursday, 10-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Monday, 09-Sep-2024', 'Thursday, 10-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Saturday, 14-Sep-2024', 'Thursday, 03-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Thursday, 19-Sep-2024', 'Thursday, 24-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Friday, 20-Sep-2024', 'Thursday, 31-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Wednesday, 25-Sep-2024', 'Thursday, 31-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Friday, 27-Sep-2024', 'Thursday, 31-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 1, '', 'INCOK', 'DEBRV', '20 Dry Standard', 'Freight All Kinds', 'Saturday, 28-Sep-2024', 'Thursday, 31-Oct-2024', '', '4640 USD', '', '', 'CMA_CGM', 'https://www.cma-cgm.com/ebusiness/pricing/bestoffer', 0, NULL),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', '', 'Hapag', 0, 'Not Found'),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', 'Freight Smart', '', 0, 'Not Found'),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', 'Freight Smart', '', 0, 'Not Found'),
('1721393823610', 1, '08/01/2024 00:00:00', 'Cochin (KERALA), India', 'Bremerhaven (Bremen), Germany', '20 Dry Standard', 'Machinery or mechanical appliances, new', '18 Sep 2024, 10:00', '5 Nov 2024, 22:00', '', ' USD 4,811.00 ', '18 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', 0, NULL),
('1721393823610', 1, '08/01/2024 00:00:00', 'COCHIN INCOK', 'BREMERHAVEN DEBRV', 'Standard', 'FAK - Freight all Kind', '2024-08-31', '2024-08-29', '', 'USD 3687', '', '', 'Happag', 'https://www.hapag-lloyd.com/solutions/new-quote/#/quotation/1a6aa08d-8251-48b8-a130-062a88342a21', 0, NULL),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', 'CMA_CGM', '', 0, 'Not Found'),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', 'Freight Smart', '', 0, 'Not Found'),
('1721393823610', 1, '08/01/2024 00:00:00', 'Cochin (KERALA), India', 'Bremerhaven (Bremen), Germany', '20 Dry Standard', 'Machinery or mechanical appliances, new', '18 Sep 2024, 10:00', '5 Nov 2024, 22:00', '', ' USD 4,811.00 ', '18 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', 0, NULL),
('1721393823610', 1, '08/01/2024 00:00:00', 'COCHIN INCOK', 'BREMERHAVEN DEBRV', 'Standard', 'FAK - Freight all Kind', '2024-08-31', '2024-08-29', '', 'USD 3687', '', '', 'Happag', 'https://www.hapag-lloyd.com/solutions/new-quote/#/quotation/7b4e736d-2148-433b-a860-d1f71267dcd2', 0, NULL),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', 'CMA_CGM', '', 0, 'Not Found'),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', 'Freight Smart', '', 0, 'Not Found'),
('1721393823610', 1, '08/01/2024 00:00:00', 'Cochin (KERALA), India', 'Bremerhaven (Bremen), Germany', '20 Dry Standard', 'Machinery or mechanical appliances, new', '18 Sep 2024, 10:00', '5 Nov 2024, 22:00', '', ' USD 4,811.00 ', '18 Sep 2024', '', 'Maersk', 'https://www.maersk.com/book/sailings', 0, NULL),
('1721393823610', 1, '08/01/2024 00:00:00', 'COCHIN INCOK', 'BREMERHAVEN DEBRV', 'Standard', '', '2024-08-31', '2024-08-29', '', 'USD 3687', '', '', 'Happag', 'https://www.hapag-lloyd.com/solutions/new-quote/#/quotation/af8ee024-f71a-4948-9e72-fdf72bbdd995', 0, NULL),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', 'CMA_CGM', '', 0, 'Not Found'),
('1721393823610', 0, '', '', '', '', '', '', '', '', '', '', '', 'Freight Smart', '', 0, 'Not Found');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_input`
--

CREATE TABLE `quotation_input` (
  `job_id` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `date` date NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `container` varchar(100) NOT NULL,
  `commodity` varchar(100) NOT NULL,
  `status` int(11) DEFAULT 0,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quotation_input`
--

INSERT INTO `quotation_input` (`job_id`, `user_id`, `date`, `source`, `destination`, `container`, `commodity`, `status`, `remarks`) VALUES
('1720706410474', 1, '2024-07-12', 'CNSHA', 'SGSIN', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720706504305', 1, '2024-07-13', 'CNNGB', 'SGSIN', 'Open Top (in gauge)', 'FAK - Freight All Kind', 0, NULL),
('1720707124064', 1, '2024-07-13', 'CNSHA', 'SGSIN', 'Open Top (in gauge)', 'FAK - Freight All Kind', 0, NULL),
('1720707974218', 1, '2024-07-14', 'SGSIN', 'KRPUS', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720708419311', 1, '2024-07-15', 'CNZOS', 'CNNGB', 'Open Top High Cube (in gauge)', 'FAK - Freight All Kind', 0, NULL),
('1720708785713', 1, '2024-07-16', 'SGSIN', 'CNSHA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720709121419', 1, '2024-07-17', 'SGSIN', 'KRPUS', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720709431344', 1, '2024-07-18', 'NLRTM', 'CNSHA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720709703322', 1, '2024-07-19', 'SGSIN', 'HKHKG', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720710139761', 1, '2024-07-20', 'SGSIN', 'KRPUS', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720766226163', 1, '0000-00-00', '', '', '', 'FAK - Freight All Kind', 0, NULL),
('1720779527846', 1, '2024-07-21', 'SGSIN', 'KRPUS', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720779815245', 1, '2024-07-21', 'SGSIN', 'KRPUS', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720780793209', 1, '2024-07-22', 'KRPUS', 'HKHKG', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720793261507', 1, '2024-07-23', 'GBSOU', 'AEJEA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720794932775', 1, '2024-07-24', 'GBSOU', 'AEJEA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720795781820', 1, '2024-07-25', 'SAQTF', 'INMAA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720796273661', 1, '2024-07-26', 'FRZCU', 'CAVAN', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720867383833', 1, '2024-07-27', 'GBSOU', 'AEJEA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720867479619', 1, '0000-00-00', '', '', '', 'FAK - Freight All Kind', 0, NULL),
('1720867558080', 1, '0000-00-00', '', '', '', 'FAK - Freight All Kind', 0, NULL),
('1720867769332', 1, '2024-07-28', 'GBSOU', 'AEJEA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1720868909500', 1, '2024-07-29', 'GBSOU', 'AEJEA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1721393697051', 1, '2024-07-30', 'INCOK', 'DEBRV', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1721393823610', 1, '2024-08-01', 'INCOK', 'DEBRV', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1721393905032', 1, '2024-08-01', 'INCOK', 'DEBRV', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1721393993162', 1, '2024-08-02', 'INCOK', 'DEBRV', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1724493605764', 1, '2024-08-24', 'SGSIN', 'CNSHA', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1724494094713', 1, '2024-08-24', 'INCOK', 'DEBRV', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1724494163831', 1, '2024-08-25', 'KRPUS', 'HKHKG', 'Standard', 'FAK - Freight All Kind', 0, NULL),
('1724494436560', 1, '2024-08-25', 'INKRI', 'INCOK', 'Standard', 'FAK - Freight All Kind', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` text DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text DEFAULT NULL,
  `last_activity` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `desc`, `date`) VALUES
(1, 'Name Testing', 'Desc Testing', '2024-07-09'),
(3, 'Name Second', 'Desc Second', '2024-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_role` int(11) DEFAULT NULL,
  `last_login` text DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  `updated_at` text DEFAULT NULL,
  `created_at` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `user_role`, `last_login`, `active`, `remarks`, `updated_at`, `created_at`) VALUES
(1, 'Admin', 'admin@demo.com', '$2y$12$Ad9uqq1vdZF33R8HeMUv8.lfbnfJ25H2cQJXpq0UJnThKtfcWKJZy', 1, NULL, 1, NULL, '2024-08-29 17:09:26', '2024-08-29 17:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `user_type` text DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_type`, `active`, `remarks`) VALUES
(1, 'admin', 1, NULL),
(2, 'agent', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ports`
--
ALTER TABLE `ports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `port_code` (`port_code`) USING HASH;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cache`
--
ALTER TABLE `cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `container`
--
ALTER TABLE `container`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ports`
--
ALTER TABLE `ports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
