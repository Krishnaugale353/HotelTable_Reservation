-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 06:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(200) DEFAULT NULL,
  `res_id` int(10) DEFAULT NULL,
  `booked_date` date NOT NULL,
  `booked_time` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `booking_date` date NOT NULL,
  `booking_time` varchar(50) DEFAULT NULL,
  `status` int(2) DEFAULT 0 COMMENT '0 reject 1 accept\r\n',
  `table_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `res_id`, `booked_date`, `booked_time`, `name`, `phone`, `booking_date`, `booking_time`, `status`, `table_id`) VALUES
(8, '623f3b904aa87', 20, '2022-03-30', '10:00am', 'boss', 2147483647, '2022-03-26', '09:43:04pm', 0, '11'),
(9, '623f3c0366a65', 20, '2022-03-31', '10:00am', 'boss', 2147483647, '2022-03-26', '09:44:59pm', 0, '14 28'),
(10, '62419efcd5c71', 20, '2022-03-29', '10:00am', 'boss', 2147483647, '2022-03-28', '05:11:48pm', 0, '12'),
(13, '625ad5b02df6a', 20, '2022-04-21', '10:00am', 'boss', 2147483647, '2022-04-16', '08:11:52pm', 0, '31');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_info`
--

CREATE TABLE `restaurant_info` (
  `id` int(3) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `psw` varchar(20) DEFAULT NULL,
  `approve_status` int(4) NOT NULL DEFAULT 0 COMMENT '0 not approve 1 approve',
  `role` int(2) DEFAULT NULL COMMENT '1 = restaurant, 2 = customer	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_info`
--

INSERT INTO `restaurant_info` (`id`, `name`, `uname`, `phone`, `address`, `logo`, `psw`, `approve_status`, `role`) VALUES
(4, 'boss', 'boss@boss.boss', '9874563211', NULL, NULL, '123', 0, 2),
(20, 'Ichiraku Ramen', 'tajhotel@gmail.com', '7894561235', 'Hidden Leaf Village, Naruto Universe ', 'pexels-lawrence-suzara-1581554.jpg', '123', 0, 1),
(21, 'Good Luck', 'wada@gmail.com', '9484484686', 'FC Road, Pune', 'pexels-igor-starkov-1307698.jpg', '123', 0, 1),
(22, 'Pizza Paradise', 'pizzakhao@gmail.com', '9898656545', 'Trimurti Chowk', 'food-gb91f9e307_1920.jpg', '123', 0, 1),
(23, 'Hotel Micky M', 'haven@gmail.com', '8888888888', 'DisenyLand', 'pexels-tom-balabaud-1579739.jpg', '123', 0, 1),
(24, 'Vaibhav', 'vaibhav@gmail.com', '7885254565', NULL, NULL, '123', 0, 2),
(25, 'Omkae', 'lahanevaibhav55@gmail.com', '164661656', NULL, NULL, '123', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `id` int(3) NOT NULL,
  `res_id` int(3) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `booked` int(2) NOT NULL DEFAULT 0 COMMENT '0 for free 1 for booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`id`, `res_id`, `table_name`, `booked`) VALUES
(11, 20, 'TBL-1', 0),
(12, 20, 'TBL-2', 0),
(13, 20, 'TBL-3', 0),
(14, 20, 'TbL-4', 0),
(15, 21, 'TBL-1', 0),
(16, 21, 'TBL-2', 0),
(17, 21, 'TBL-3', 0),
(18, 21, 'TBL-4', 0),
(19, 22, 'TBL-1', 0),
(20, 22, 'TBL-2', 0),
(21, 22, 'TBL-3', 0),
(22, 22, 'TBL-4', 0),
(23, 23, 'TBL-1', 0),
(24, 23, 'TBL-2', 0),
(25, 23, 'TBL-3', 0),
(26, 23, 'TBL-4', 0),
(28, 20, 'TBl-5', 0),
(30, 20, 'TBL-6', 0),
(31, 20, 'TBL-7', 0),
(32, 4, '51', 0),
(33, 20, 'tbl8', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `restaurant_info`
--
ALTER TABLE `restaurant_info`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
