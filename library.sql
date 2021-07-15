-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 04:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookId` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `section` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookId`, `title`, `author`, `quantity`, `image`, `section`, `category`) VALUES
(3, 'Amara The Brave', 'John Wick', 1, 'images/Book/Book3.jpg', 'C601', 'Detective'),
(4, 'The Gravity Of Us', 'Tony Shark', 0, 'images/Book/ComingSoon.jpg', '', 'Historical Fiction'),
(5, 'Harry Porter', 'Jacklin', 4, 'images/Book/arif.jpeg', 'B21', 'Fiction'),
(7, 'Light Emerging: The Journey of Personal Healing 2', 'Michael Newton', 4, 'images/Book/fairuz.jpeg', 'B22', 'Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `username` varchar(50) NOT NULL,
  `borrowNameList` varchar(500) NOT NULL,
  `borrowDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `returnDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `borrowId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`username`, `borrowNameList`, `borrowDate`, `returnDate`, `borrowId`) VALUES
('admin', 'The Gravity Of Us', '2021-01-21 12:54:50', '2021-01-28 12:54:50', 22),
('admin', 'The Holy Word for Morning Revival', '2021-01-23 03:02:36', '2021-01-30 03:02:36', 23),
('mel1', 'The Gravity Of Us', '2021-02-03 15:27:23', '2021-02-10 15:27:23', 24),
('mel1', 'Harry Porter', '2021-02-03 15:27:30', '2021-02-10 15:27:30', 25),
('mel1', 'Amara The Brave', '2021-02-03 15:27:38', '2021-02-10 15:27:38', 26),
('mel1', 'Light Emerging: The Journey of Personal Healing 2', '2021-02-03 15:41:34', '2021-02-10 15:41:34', 27);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `staffId` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`staffId`, `username`, `fullname`, `email`, `address`, `password`, `phone`) VALUES
(1, 'test', 'ttaat', 'asasd@gmail.com', 'asasas', '123', '1223231'),
(2, 'mel1', 'Melana Pori', 'mel@gmail.com', 'Jalan Sriani, Taiping', 'qwertyuiop', '013456789');

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `ebookID` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `images` varchar(200) NOT NULL,
  `pdf` varchar(200) NOT NULL,
  `activation` varchar(11) NOT NULL,
  `reason` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ebook`
--

INSERT INTO `ebook` (`ebookID`, `title`, `author`, `images`, `pdf`, `activation`, `reason`) VALUES
(1, 'Core Light Healing: My Personal Journey and Advanced Healing Concepts for Creating the Life You', 'Barbara Brennan', 'images/ebook2.jpg', 'eBook/Core Light Healing_ My Personal Journey and Advanced Healing Concepts for Creating the Life You Long to Live.pdf', '1', 'Free to Read'),
(2, 'Living in the Light: A Guide to Personal and Planetary Transformation', 'Shakti Gawain', 'images/ebook1.jpg', 'eBook/Living in the Light_ A guide to personal transformation.pdf', '1', 'Free to Read Tehee'),
(3, 'Memories of the Afterlife: Life Between Lives Stories of Personal Transformation', 'Michael Newton', 'images/ebook3.jpg', 'eBook/Memories of the Afterlife_ Life Between Lives Stories of Personal Transformation.pdf', '1', 'Free to Read'),
(13, 'Light Emerging: The Journey of Personal Healing', 'Barbara Brennan', 'images/ebook4.jpg', 'eBook/Light Emerging The Journey of Personal Healing.pdf', '0', 'Coming Soon'),
(15, 'The Gifts of Imperfection: Embrace Who You Are', 'Brene Brown', 'images/ebook5.jpg', 'eBook/The Gifts of Imperfection_ Embrace Who You Are.pdf', '0', 'Coming Soon'),
(16, 'The Seven Principles for Making Marriage Work', 'John M. Gotman', 'images/ebook6.jpg', 'eBook/The Seven Principles for Making Marriage Work.pdf', '0', 'Coming Soon');

-- --------------------------------------------------------

--
-- Table structure for table `mylibrary`
--

CREATE TABLE `mylibrary` (
  `myBookID` int(11) NOT NULL,
  `ebookID` int(11) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mylibrary`
--

INSERT INTO `mylibrary` (`myBookID`, `ebookID`, `username`) VALUES
(1, 2, 'test'),
(2, 1, 'test'),
(3, 1, 'test'),
(4, 13, 'test'),
(5, 1, 'test'),
(6, 3, 'mel'),
(7, 2, 'mel1');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffId` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffId`, `username`, `fullname`, `email`, `address`, `password`, `phone`) VALUES
(1, 'test', 'tesst', 'test@gmail.com', 'Universiti Teknologi Malaysia Johor Bahru, Skudai, Johor Bahru81310', '123', '12342424'),
(2, 'admin1', 'administrators', 'administrator@gmail.com', 'Jalan Sri Damak, Klang', '987654321', '012345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`staffId`);

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD PRIMARY KEY (`ebookID`);

--
-- Indexes for table `mylibrary`
--
ALTER TABLE `mylibrary`
  ADD PRIMARY KEY (`myBookID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `staffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ebook`
--
ALTER TABLE `ebook`
  MODIFY `ebookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mylibrary`
--
ALTER TABLE `mylibrary`
  MODIFY `myBookID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
