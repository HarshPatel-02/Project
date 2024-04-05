-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2022 at 06:02 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flygo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(15) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(15) NOT NULL,
  `carmodel` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `lots` varchar(50) NOT NULL,
  `plateno` varchar(50) NOT NULL,
  `upi` varchar(50) NOT NULL,
  `fees` varchar(50) NOT NULL,
  `fdate` varchar(50) NOT NULL,
  `sdate` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `carmodel`, `area`, `lots`, `plateno`, `upi`, `fees`, `fdate`, `sdate`, `email`, `status`, `name`) VALUES
(2, 'bmw', 'Indira Circle', 'PL 04', 'gj ab 1111', '123', '120', '2022-07-24 21:08', '2022-07-25 21:08', 'd@g.c', 'CANCLE', 'd d');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lots`
--

CREATE TABLE `lots` (
  `id` int(15) NOT NULL,
  `area` varchar(50) NOT NULL,
  `lots` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lots`
--

INSERT INTO `lots` (`id`, `area`, `lots`) VALUES
(1, 'Indira Circle', 'PL 01'),
(2, 'Indira Circle', 'PL 02'),
(3, 'Indira Circle', 'PL 03'),
(4, 'Indira Circle', 'PL 04'),
(6, 'Mavdi', 'PL 05'),
(7, 'Mavdi', 'PL 05'),
(8, 'Mavdi', 'PL 05'),
(9, 'Mavdi', 'PL 05'),
(10, 'Select one', 'PL 0'),
(11, 'Select one', 'PL 0'),
(12, 'Select one', 'PL 0'),
(13, 'Select one', 'PL 0'),
(14, 'Select one', 'PL 0'),
(15, 'Select one', 'PL 0'),
(16, 'Select one', 'PL 0'),
(17, 'Indira Circle', 'PL 0'),
(18, 'Indira Circle', 'PL 0'),
(19, 'Indira Circle', 'PL 0'),
(20, 'Select one', 'PL 0'),
(21, 'Select one', 'PL 0'),
(22, 'Indira Circle', 'PL 09'),
(23, 'Select one', 'PL 0'),
(24, 'Select one', 'PL 0'),
(25, 'Select one', 'PL 0'),
(26, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `carname` varchar(50) NOT NULL,
  `carno` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `fname`, `lname`, `username`, `email`, `contact`, `carname`, `carno`, `password`) VALUES
(1, 'vhv', 'vhh', 'vhvh', 'vhv@g.g', '123456789', 'hvh', 'vhvv', 'hvh'),
(2, 'ha', 'vhh', 'vhvh', 'vhv@g.g', '123456789', 'hvh', 'vhvv', 'hvh'),
(3, 'uvv', 'vv', 'v', 'v@s.s', '46466', 'jvj', 'jv', 'vv'),
(4, 'aa', 'jvjv', 'dqdq', 'yyv@g.g', '45545445', 'kkbjkb', 'bbjk', 'bkj'),
(5, 'rttt', 'yffffyufy', 'ffy', 'fyufu@f.f', '444444444', 'ufu', 'ff', 'ff'),
(6, 'harsh', 'patel', 'hp', 'hp@g.c', '64464664', 'bmw', '0001', '456321'),
(7, 'h', 'p', 'hchchh', 'ffyf@g.g', '446', 'dydyd', 'strsr', 'ddtdd'),
(8, 'ppp', 'pppp', 'pppp', 'ppp@p.p', '4454', 'klnkn', 'nnk', '1234'),
(9, 'abcd', 'efgh', 'ab02', 'ab@g.c', '2147483647', 'zen', '0006', '1234'),
(10, 'aaaa', 'bbbb', 'abcd', 'abc@g.c', '2147483647', 'abc', '66666', '456321'),
(11, 'hhhhh', 'hhhhh', 'ghji', 'hp12@g.c', '987654321', 'zen', '4444', '9876'),
(12, 'jjjjj', 'kjkvjvjh', 'ddchdhd', 'dtydtd@g.c', '9876543210', '9876', 'chcchccc', 'sysysysss'),
(15, 'd', 'd', 'd', 'd@g.c', '23534', 'sdvds', 'dcvs', '12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lots`
--
ALTER TABLE `lots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lots`
--
ALTER TABLE `lots`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
