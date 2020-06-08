-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2020 at 06:43 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
CREATE TABLE IF NOT EXISTS `actors` (
  `Actor_ID` varchar(45) NOT NULL,
  `Actor_Name` varchar(50) DEFAULT NULL,
  `Act-Email_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Actor_ID`),
  UNIQUE KEY `Actor_ID` (`Actor_ID`),
  UNIQUE KEY `Act-Email_ID` (`Act-Email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`Actor_ID`, `Actor_Name`, `Act-Email_ID`) VALUES
('ACT7007', 'Peter Quill', 'quill123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `costume_designer`
--

DROP TABLE IF EXISTS `costume_designer`;
CREATE TABLE IF NOT EXISTS `costume_designer` (
  `Designer_ID` varchar(45) NOT NULL,
  `Designer_Name` varchar(50) DEFAULT NULL,
  `Des-Email_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Designer_ID`),
  UNIQUE KEY `Designer_ID` (`Designer_ID`),
  UNIQUE KEY `Des-Email_ID` (`Des-Email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costume_designer`
--

INSERT INTO `costume_designer` (`Designer_ID`, `Designer_Name`, `Des-Email_ID`) VALUES
('DES9001', 'Ruth Carter', 'ruth89@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
CREATE TABLE IF NOT EXISTS `director` (
  `Director_ID` varchar(45) NOT NULL,
  `Director_Name` varchar(50) DEFAULT NULL,
  `Email_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Director_ID`),
  UNIQUE KEY `Director_ID` (`Director_ID`),
  UNIQUE KEY `Email_ID` (`Email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`Director_ID`, `Director_Name`, `Email_ID`) VALUES
('DIR2002', 'Tim Miller', 'tim21@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
CREATE TABLE IF NOT EXISTS `movie` (
  `Movie_ID` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Duration` time DEFAULT NULL,
  `Genre` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`Movie_ID`),
  UNIQUE KEY `Movie_ID` (`Movie_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`Movie_ID`, `Name`, `Duration`, `Genre`) VALUES
('MV1001', 'Deadpool', '01:40:08', 'Sci-fi/Action'),
('MV1003', 'Black Panther', '02:00:04', 'Fantasy/Sci-fi');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

DROP TABLE IF EXISTS `producer`;
CREATE TABLE IF NOT EXISTS `producer` (
  `Producer_ID` varchar(45) NOT NULL,
  `Producer_Name` varchar(50) DEFAULT NULL,
  `Pro-Email_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Producer_ID`),
  UNIQUE KEY `Producer_ID` (`Producer_ID`),
  UNIQUE KEY `Pro-Email_ID` (`Pro-Email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`Producer_ID`, `Producer_Name`, `Pro-Email_ID`) VALUES
('PRO3001', 'Ryan Reynolds', 'ryan11@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `screenplay_writer`
--

DROP TABLE IF EXISTS `screenplay_writer`;
CREATE TABLE IF NOT EXISTS `screenplay_writer` (
  `Screenwriter_ID` varchar(45) NOT NULL,
  `Screenwriter_Name` varchar(50) DEFAULT NULL,
  `Scr-Email_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Screenwriter_ID`),
  UNIQUE KEY `Screenwriter_ID` (`Screenwriter_ID`),
  UNIQUE KEY `Scr-Email_ID` (`Scr-Email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `screenplay_writer`
--

INSERT INTO `screenplay_writer` (`Screenwriter_ID`, `Screenwriter_Name`, `Scr-Email_ID`) VALUES
('SCR8010', 'Rachel Jordan', 'rachel250@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sound_mixer`
--

DROP TABLE IF EXISTS `sound_mixer`;
CREATE TABLE IF NOT EXISTS `sound_mixer` (
  `Sound_ID` varchar(45) NOT NULL,
  `S_Name` varchar(50) DEFAULT NULL,
  `S-Email_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Sound_ID`),
  UNIQUE KEY `Sound_ID` (`Sound_ID`),
  UNIQUE KEY `S-Email_ID` (`S-Email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sound_mixer`
--

INSERT INTO `sound_mixer` (`Sound_ID`, `S_Name`, `S-Email_ID`) VALUES
('SND5005', 'Ludwig Morrison', 'lud88@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `story_writer`
--

DROP TABLE IF EXISTS `story_writer`;
CREATE TABLE IF NOT EXISTS `story_writer` (
  `Writer_ID` varchar(45) NOT NULL,
  `Writer_Name` varchar(50) DEFAULT NULL,
  `Wr-Email_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Writer_ID`),
  UNIQUE KEY `Writer_ID` (`Writer_ID`),
  UNIQUE KEY `Wr-Email_ID` (`Wr-Email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `story_writer`
--

INSERT INTO `story_writer` (`Writer_ID`, `Writer_Name`, `Wr-Email_ID`) VALUES
('WR4002', 'Joe Robert', 'joe35@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vfx_manager`
--

DROP TABLE IF EXISTS `vfx_manager`;
CREATE TABLE IF NOT EXISTS `vfx_manager` (
  `Manager_ID` varchar(45) NOT NULL,
  `Manager_Name` varchar(50) DEFAULT NULL,
  `vfx-Email_ID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Manager_ID`),
  UNIQUE KEY `Manager_ID` (`Manager_ID`),
  UNIQUE KEY `vfx-Email_ID` (`vfx-Email_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vfx_manager`
--

INSERT INTO `vfx_manager` (`Manager_ID`, `Manager_Name`, `vfx-Email_ID`) VALUES
('MNG6008', 'Debbie Berman', 'debbie400@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
