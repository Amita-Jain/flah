-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 01:58 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `name` varchar(80) NOT NULL,
  `address` varchar(80) NOT NULL,
  `age` int(12) NOT NULL,
  `occupation` varchar(80) NOT NULL,
  `education` varchar(80) NOT NULL,
  `phonenumber` int(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(40) NOT NULL,
  `yourself` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`name`, `address`, `age`, `occupation`, `education`, `phonenumber`, `email`, `date`, `place`, `yourself`) VALUES
('test', 'testaddress', 0, '', '', 0, 'amitajain1395@gmail.', '0000-00-00', '', ''),
('test', 'testaddress', 23, 'software developer', 'B.E.', 2147483647, 'amitajain1395@gmail.', '0000-00-00', '', ''),
('test', 'testaddress', 23, 'software developer', 'B.E.', 2147483647, 'amitajain1395@gmail.', '0000-00-00', 'Kanpur', 'hey i am amita'),
('test', 'testaddress', 23, 'software developer', 'B.E.', 2147483647, 'amitajain1395@gmail.', '0000-00-00', 'Kanpur', 'hey i am amita');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(0, 'xyz', 'c1ba18572a90fe2bf2db', 'xyz@gmail.com'),
(0, 'xyz', 'c1ba18572a90fe2bf2db', 'xyz@gmail.com'),
(0, 'Prince', 'd41d8cd98f00b204e980', ''),
(0, 'Prince', '827ccb0eea8a706c4c34', 'Jain@123'),
(0, 'amita', '38ac5431d86d3df05dac', 'amita@gmail.com'),
(0, 'test', 'cc03e747a6afbbcbf8be', 'test@gmail.com'),
(0, 'amy', 'c1ba18572a90fe2bf2db', 'amy@gmail.com'),
(0, 'test321', 'test123', 'test321@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
