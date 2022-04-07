-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 12:02 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(11) NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Transaction_Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `sender_id`, `receiver_id`, `Amount`, `Transaction_Time`) VALUES
(1, 'Mayank@user.com', 'Asjad@user.com', 45000, '2021-09-11 16:34:16'),
(2, 'Abhinav@user.com', 'Anuj@user.com', 12000, '2021-09-11 16:34:33'),
(3, 'Deepak@user.com', 'Karan@user.com', 34000, '2021-09-11 16:34:46'),
(4, 'Harshit@user.com', 'Shivam@user.com', 23000, '2021-09-11 16:35:03'),
(5, 'Kuldeep@user.com', 'Anuj@user.com', 1200, '2021-09-11 16:35:16'),
(6, 'Bipul@user.com', 'Karan@user.com', 45000, '2021-09-11 17:04:40'),
(7, 'Ayush@user.com', 'Naman@user.com', 2000, '2021-09-18 15:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `S_No.` int(11) NOT NULL,
  `User_Id` varchar(255) NOT NULL,
  `User_Name` varchar(255) NOT NULL,
  `Amount` float NOT NULL,
  `Transaction_Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`S_No.`, `User_Id`, `User_Name`, `Amount`, `Transaction_Time`) VALUES
(1, 'Mayank@user.com', 'Mayank', 600000, '2021-09-06 16:44:11'),
(2, 'Aman@user.com', 'Aajad', 55500, '2021-09-06 16:44:45'),
(3, 'Ayush@user.com', 'Ayush', 50000, '2021-09-06 16:45:04'),
(4, 'Abhinav@user.com', 'Abhinav', 21500, '2021-09-06 16:45:29'),
(5, 'Aryan@user.com', 'Aryan', 137000, '2021-09-06 16:45:53'),
(6, 'Deepak@user.com', 'Deepak', 83000, '2021-09-06 16:46:13'),
(7, 'Kuldeep@user.com', 'Kuldeep', 85800, '2021-09-06 16:46:37'),
(8, 'Naman@user.com', 'Naman', 69000, '2021-09-11 16:17:23'),
(9, 'Jony@user.com', 'Jony', 85000, '2021-09-11 16:17:48'),
(10, 'Harshit@user.com', 'Harshit', 74000, '2021-09-11 16:18:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`S_No.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `S_No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
