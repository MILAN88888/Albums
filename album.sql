-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2022 at 06:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `album`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(10) NOT NULL,
  `albumimage` varchar(30) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `isPremium` int(10) NOT NULL,
  `isPublish` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `albumimage`, `Title`, `Description`, `isPremium`, `isPublish`) VALUES
(12, 'car.jpg', 'Car Album', 'This is 2022 latest Car Album.', 1, 1),
(13, 'bike.jpg', 'Bike Album', 'This is Bike album', 0, 1),
(18, 'city44.jpg', 'City Album', 'Most Famous City are in this album.', 0, 0),
(19, 'ani44.jpg', 'Animal Album', 'Most famous animal are in this album.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `albumid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `name`, `albumid`) VALUES
(21, 'bike11.jpg', 13),
(22, 'bike22.jpg', 13),
(23, 'bik33.jpg', 13),
(24, 'city11.jpg', 18),
(25, 'city22.jpg', 18),
(26, 'city33.jpg', 18),
(27, 'car11.jpg', 12),
(28, 'car22.jpg', 12),
(29, 'car33.jpg', 12),
(30, 'ani11.jpg', 19),
(31, 'ani22.jpg', 19),
(32, 'ani44.jpg', 19),
(34, 'ani33.jpg', 19);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `isPremium` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Email`, `password`, `isPremium`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123', 2),
(2, 'bishal', 'bishal@gmail.com', 'bishal123', 1),
(3, 'ajeet', 'milan@gmail.com', 'milan123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albumid` (`albumid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
