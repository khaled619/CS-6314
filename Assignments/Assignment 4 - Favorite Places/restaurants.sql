-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2021 at 09:52 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `favoriteplaces`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Rawabi Aleskan', 'Prince Mansour Bin Abdulaziz St,Al Olaya,Riyadh 11543,Saudi Arabia', 24.676161, 46.699318, 'restaurant'),
(2, 'dr.CAFE COFFEE', 'As Sulimaniyah,Khurais Road Abi Al Arab Street,Riyadh 11566,Saudi Arabia', 24.685635, 46.706333, 'cafe'),
(3, 'Tokyo Restaurant', 'Al Urubah Rd,As Sulimaniyah,Riyadh 12245,Saudi Arabia', 24.718161, 46.686741, 'restaurant'),
(4, 'Tim Hortons', 'Prince Muhammad Ibn Abdulaziz Road,Al Olaya,Riyadh 12222,Saudi Arabia', 24.698673, 46.689896, 'cafe'),
(5, 'Golden Dragon', 'Mizan Tower,Olaya St,Al Olaya,Riyadh 12221,Saudi Arabia', 24.686342, 46.689426, 'restaurant');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
