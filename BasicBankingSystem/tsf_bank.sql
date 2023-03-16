-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 07:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `transferred_amount` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `transferred_amount`, `datetime`) VALUES
(1, 'Rory Gilmore', 'Daniella', 200, '2023-03-11 12:34:57'),
(2, 'Rory Gilmore', 'Ish Chen', 3030, '2023-03-11 12:55:19'),
(3, 'Daniella', 'Rory Gilmore', 6700, '2023-03-16 10:45:24'),
(4, 'Ish Chen', 'Aaron Chen', 4607, '2023-03-16 10:46:03'),
(5, 'Ruby Elle', 'Daniella', 654, '2023-03-16 10:46:45'),
(6, 'Rory Gilmore', 'Ruby Elle', 470, '2023-03-16 11:07:35'),
(7, 'Daniella', 'Rani Verma', 154, '2023-03-16 11:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Rory Gilmore', 'rorygilmore@gmail.com', 53000),
(2, 'Daniella', 'dani29@gmail.com', 44000),
(3, 'Rani Verma', 'RVerma@gmail.com', 53184),
(4, 'Fathima Shah', 'shahfatima@gmail.com', 76558),
(5, 'Ruby Elle', 'itselleruby@gmail.com', 77470),
(6, 'Aaron Chen', 'reachoutaaron@gmail.com', 50607),
(7, 'Aley Volkov', 'itsaleyvolkov7@gmail.com', 994500),
(8, 'Ish Chen', 'chenish23@gmail.com', 62893),
(9, 'Anne Kimberly', 'anne010997@gmail.com', 66777),
(10, 'Kim Kimberly', 'kkimberly@gmail.com', 44554);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
