-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2025 at 02:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_Code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Book_Name` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Book_Author` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Book_Genre` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_Code`, `Book_Name`, `Book_Author`, `Book_Genre`) VALUES
('110', 'Sejarah aiman', 'Aiman Al Banna', 'comedy'),
('11093', 'Helopak Jantung', 'Irfan Asri', 'Adventure'),
('112', 'Kimia', 'Alia', 'Education'),
('113', 'Zombie Kampung Pisang', 'Bakar', 'Horror'),
('1234KJ', 'nama saya abu', 'Keith', 'Comedy'),
('191200', 'Ajaibnya Sedekah Semakin Bersedekah Sema', 'Muhammad Muhyidin Whairul Abdullah', 'Romance'),
('195988', 'I\'M A BACKPACKER: GERMANY', 'Unknown Author', 'Adventure'),
('1976KJ', 'Love you Mr.Agoraphobia', 'Suri Ryana', 'Romance'),
('2004KJ', 'Poligami: Benar Atau Salah?', 'Alif Teega', 'Mystery'),
('220rf', 'nama saya abu', 'amarul', 'Comedy'),
('2765K3', 'Tirani', 'Azri Mirza', 'Mystery'),
('277483', 'Husan nutrition and dietetics Naagin 2', 'Davidson, Leybourne Stanley Pa', 'Education'),
('2976KJ', 'Family Law in Malaysia', 'Ahmad Bin Ibrahim', 'Education'),
('33606)', '99 kata Patah Hati', 'Haiqal Hariz', 'Romance'),
('3501KJ', 'Ambivalen', 'Faiz Ibrahim', 'Adventure'),
('389643', 'Unknown Book', 'Stuart Ramalingan', 'Horror'),
('412343', 'Chot Attila the hun: a barbarian king an', 'Anthony Yeah', 'Adventure'),
('4394KJ', 'Digital Electronics', 'Farhan bin Faisal', 'Education'),
('473163', 'Unavailable Book', 'Man, John Nadhir Nasir', 'Adventure'),
('479643', 'Malay Privilege', 'Unknown Author', 'Fiction'),
('4796KJ', 'Sains dalam Kehidupan', 'Muhammad Azhari', 'Education'),
('51850', 'Salamender', 'Ibuse, Masuji', 'Horror'),
('518963', 'Hikayat Hang Tuah', 'Zulhilmi Zainal', 'Education'),
('5467KJ', 'Al-Mathurat ', 'Hassan Al-Banna', 'Education'),
('554343', 'Percy Jackson and the Lightning thief', 'Riordan', 'Fantasy'),
('5903KJ', 'Kitab Qanun fi al-Tibb', 'Ibnu Sina', 'Education'),
('6456KJ', 'Perjalananku bersama al-Quran', 'Mohd Shafie Md. Amin', 'Education'),
('675243', 'The Great Wall of China The Jun Jungle B', 'Ung Ji Ông Jia Kin Amarul Hakin', 'Education'),
('723543', 'Social revolution of Islan', 'Whan, Mohd. Moinuddin', 'Romance'),
('7834K3', 'Rise of Football', 'Luqean Hafizi', 'Adventure'),
('9132KJ', 'Bisik pada hati', 'Ahmad Danial', 'Fiction'),
('965743', 'Leftenan Adnan: Wira Bangsa', 'Abdul Latip Talib', 'Education'),
('98645', 'kisah amarul dan nangka', 'amarul', 'Comedy');

-- --------------------------------------------------------

--
-- Table structure for table `bookshelf`
--

CREATE TABLE `bookshelf` (
  `BookShelf_Location` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `BookShelf_ID` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookshelf`
--

INSERT INTO `bookshelf` (`BookShelf_Location`, `BookShelf_ID`) VALUES
('Level 1', '1A'),
('Level 2', '2A'),
('Level 3', '3A');

-- --------------------------------------------------------

--
-- Table structure for table `borrowing_record`
--

CREATE TABLE `borrowing_record` (
  `Book_Code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Staff_ID` int(12) NOT NULL,
  `Student_ID` int(10) NOT NULL,
  `Borrowing_Time` time NOT NULL,
  `Borrowing_Date` date NOT NULL,
  `Returning_Time` time NOT NULL,
  `Returning_Date` date NOT NULL,
  `Status_Borrowing` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowing_record`
--

INSERT INTO `borrowing_record` (`Book_Code`, `Staff_ID`, `Student_ID`, `Borrowing_Time`, `Borrowing_Date`, `Returning_Time`, `Returning_Date`, `Status_Borrowing`) VALUES
('2976KJ', 2022, 2022846142, '19:04:00', '2024-07-01', '09:00:00', '2024-07-01', 'returned'),
('2976KJ', 2022, 2022846142, '19:04:00', '2024-07-01', '09:00:00', '2024-07-01', 'returned'),
('2976KJ', 2022, 2022846142, '22:37:00', '2024-07-02', '09:00:00', '2024-07-01', 'returned'),
('2976KJ', 2022, 2022846142, '05:58:00', '2024-07-09', '09:00:00', '2024-07-01', 'returned'),
('479643', 2022, 2022489338, '10:00:00', '2024-07-03', '10:00:00', '2024-07-04', 'Returned'),
('110', 2022, 2022846142, '11:34:00', '2024-07-03', '10:00:00', '2024-07-18', 'Returned'),
('6456KJ', 2022, 2022846142, '11:10:00', '2024-07-03', '00:00:00', '0000-00-00', 'InBorrowing'),
('675243', 2022, 2022846142, '00:09:00', '2024-08-01', '00:00:00', '0000-00-00', 'InBorrowing');

-- --------------------------------------------------------

--
-- Table structure for table `ebook`
--

CREATE TABLE `ebook` (
  `Book_Code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `EBook_Link` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `EBookCode_Status` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ebook`
--

INSERT INTO `ebook` (`Book_Code`, `EBook_Link`, `EBookCode_Status`) VALUES
('110', 'google.com', 'unavailable'),
('11093', 'https://web.whatsapp.com/', 'Available'),
('112', 'https://plarium.com/landings/en/desktop/raid/rdo/bp?plid=1389212&pxl=veve', 'Available'),
('113', 'https://www.manganelo.cc/series/the-witch-of-resurrection-extras', 'Available'),
('191200', '', 'Unavailable'),
('195988', 'https://www.mcafee.com/consumer/en-my/landing-page/atp/mls-family/livesafe.html?fbu=1&pr=1&clicksrc=browserfav&sessionid=CF2459B', 'Available'),
('1976KJ', 'https://www.manganelo.cc/series/the-corpse-will-tell', 'Available'),
('2004KJ', 'http/gewroenqlasaley', 'Available'),
('220rf', '-', 'Unavailable'),
('2765K3', '', 'Unavailable'),
('277483', 'https://www.mangaread.org/manga/dungeon-busters-i-am-just-middle-aged-man-but-i-save-the-world-because-of-appeared-the-dungeon-i', 'Available'),
('2976KJ', '-', 'Unavailable'),
('33606)', 'https://www.mangaread.org/manga/nano-machine/', 'Available'),
('3501KJ', 'https://www.manganelo.cc/series/haruto-kun-to-chiharu-chan-ga-jirettai', 'Available'),
('389643', '', 'Unavailable'),
('412343', '', 'Unavailable'),
('4394KJ', 'https://www.manganelo.cc/series/i-became-the-game-s-biggest-villain', 'Available'),
('473163', 'https://www.mangaread.org/manga/tales-of-demons-and-gods/', 'Available'),
('479643', '-', 'Unavailable'),
('4796KJ', '-', 'Unavailable'),
('51850', 'http/hiefifonbsysb', 'Available'),
('518963', 'https://www.mangaread.org/manga/solo-leveling-manhwa/', 'Available'),
('5467KJ', 'https://www.manganelo.cc/series/return-of-the-sss-class-ranker', 'Available'),
('554343', 'https://www.booking.com/index.html?aid=935088&label=bookmark-row', 'Available'),
('5903KJ', '-', 'Unavailable'),
('6456KJ', '', 'Unavailable'),
('675243', 'https://www.mangaread.org/manga/the-beginning-after-the-end/', 'Available'),
('723543', '', 'Unavailable'),
('7834K3', 'http://www.kdlinks.com/index.php/nbox-v1-tv-media-player.html', 'Available'),
('9132KJ', '', 'Unavailable'),
('965743', 'https://www.mangaread.org/manga/one-piece/', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `physicalbook`
--

CREATE TABLE `physicalbook` (
  `Book_Code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Bookshelf_ID` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `PBookCode_Status` varchar(12) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `physicalbook`
--

INSERT INTO `physicalbook` (`Book_Code`, `Bookshelf_ID`, `PBookCode_Status`) VALUES
('110', '3a', 'unavailable'),
('11093', '1A', 'Available'),
('112', '1A', 'Unavailable'),
('113', '2A', 'Unavailable'),
('1234KJ', '2A', 'Available'),
('191200', '2A', 'Available'),
('195988', '3A', 'Available'),
('1976KJ', '3A', 'Available'),
('2004KJ', '2A', 'Unavailable'),
('220rf', '2A', 'Available'),
('2765K3', '1A', 'Available'),
('277483', '2A', 'Available'),
('2976KJ', '1A', 'Available'),
('33606)', '3A', 'Available'),
('3501KJ', '2A', 'Unavailable'),
('389643', '1A', 'Unavailable'),
('412343', '1A', 'Unavailable'),
('4394KJ', '1A', 'Available'),
('473163', '2A', 'Available'),
('479643', '1A', 'Available'),
('4796KJ', '3A', 'Available'),
('51850', '3A', 'Unavailable'),
('518963', '2A', 'Available'),
('5467KJ', '3A', 'Available'),
('554343', '3A', 'Available'),
('5903KJ', '1A', 'Available'),
('6456KJ', '2A', 'unavailable'),
('675243', '1A', 'unavailable'),
('723543', '2A', 'Available'),
('7834K3', '1A', 'Available'),
('9132KJ', '3A', 'Available'),
('965743', '1A', 'Available'),
('98645', '2A', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `RequestID` int(100) NOT NULL,
  `Staff_ID` int(12) DEFAULT NULL,
  `Student_ID` int(10) DEFAULT NULL,
  `Book_Code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `EBook_Link` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Requested_Status` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`RequestID`, `Staff_ID`, `Student_ID`, `Book_Code`, `EBook_Link`, `Requested_Status`) VALUES
(23, 2022, 2022846142, '110', 'YOUTUBE.COM', 'approve'),
(24, 2022, 2022846142, '5467KJ', 'https://www.manganelo.cc/series/return-of-the-sss-class-ranker', 'approve'),
(25, 2022, 2022846142, '4394KJ', 'https://www.manganelo.cc/series/i-became-the-game-s-biggest-villain', 'approve'),
(26, 2022, 2022846142, '110', 'YOUTUBE.COM', 'approve'),
(27, 2022, 2022846142, '110', 'YOUTUBE.COM', 'approve'),
(28, 2022, 2022846142, '2004KJ', 'http/gewroenqlasaley', 'approve'),
(29, 2022, 2022846142, '3501KJ', '-', 'reject'),
(30, 2022, 2022846142, '412343', '-', 'reject'),
(31, 2022, 2022846142, '473163', '-', 'reject'),
(32, NULL, 2022846142, '110', '', 'pending'),
(33, NULL, 2022846142, '277483', '', 'pending'),
(34, NULL, 2022846142, '4394KJ', '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `requestp`
--

CREATE TABLE `requestp` (
  `RequestPID` int(11) NOT NULL,
  `Book_Code` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Staff_ID` int(12) DEFAULT NULL,
  `RequestedP_Status` varchar(15) NOT NULL,
  `Student_ID` int(10) NOT NULL,
  `PickUp_Date` date NOT NULL,
  `PickUp_Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requestp`
--

INSERT INTO `requestp` (`RequestPID`, `Book_Code`, `Staff_ID`, `RequestedP_Status`, `Student_ID`, `PickUp_Date`, `PickUp_Time`) VALUES
(19, '2976KJ', 2022, 'approve', 2022846142, '2024-07-02', '22:37:00'),
(20, '4394KJ', 2022, 'approve', 2022846142, '2024-07-02', '21:38:00'),
(21, '2976KJ', 2022, 'approve', 2022846142, '2024-07-09', '05:58:00'),
(22, '277483', 2022, 'reject', 0, '2025-12-04', '08:40:00'),
(23, '277483', 2022, 'reject', 2022846142, '2024-07-18', '09:43:00'),
(24, '277483', 2022, 'reject', 2022846142, '2024-07-22', '08:46:00'),
(25, '277483', 2022, 'reject', 2022846142, '2024-07-16', '09:46:00'),
(26, '479643', 2022, 'approve', 2022489338, '2024-07-03', '10:00:00'),
(27, '110', 2022, 'approve', 2022846142, '2024-07-03', '11:34:00'),
(28, '6456KJ', 2022, 'approve', 2022846142, '2024-07-03', '11:10:00'),
(29, '675243', 2022, 'approve', 2022846142, '2024-08-01', '00:09:00'),
(30, '965743', 2022, 'reject', 2022846142, '2024-07-24', '00:08:00'),
(31, '2976KJ', NULL, 'pending', 2022846142, '2024-07-03', '00:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(12) NOT NULL,
  `Staff_Name` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `StaffPhone_Num` int(10) NOT NULL,
  `StaffEmail` varchar(128) NOT NULL,
  `StaffPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Staff_Name`, `StaffPhone_Num`, `StaffEmail`, `StaffPwd`) VALUES
(2021, 'eqal', 2147483647, 'eqal@gmail.com', '$2y$10$MvpdJNGzqb7K2qlW5RmM0O33MU4f6/U/tEXlE72QKf7w1F5g5GGXC'),
(2022, 'Alexa', 123, 'alex@gmail.com', '$2y$10$q858SeF8Nci7RCG7YgHiUu5K4apJFKIgxp4HPxt45T9n/mTMOhSsG'),
(4567, 'lmao', 9876, 'lmao@gmail.com', '$2y$10$6ynzp6JnHOQDMNgD/YfJ/Ot6k00Mg8V8YkJ7b9ud6xuXhKNxV47zG'),
(20123, 'Amarul', 60183221, 'aiman@gmail.com', '$2y$10$0zqPsyLjD4c2mOG4y7/hveVWmvEDb/0KqvdQT9pP37uHZrVWOJMv2'),
(20124, 'Aidid', 12464131, 'Aidid@gmail.com', '$2y$10$Dx71RtdQXmUf9H5uJCEOQ.dhW0S9m9ClpKGOiZpQedjKvXzpd.TuS');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` int(10) NOT NULL,
  `Student_Name` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Student_Address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `StudentPhoneNumber` varchar(11) NOT NULL,
  `StudentPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Student_Name`, `Student_Address`, `StudentPhoneNumber`, `StudentPwd`) VALUES
(0, 'lil', 'lil@gmail.com', '9999', '$2y$10$oGvIWu38pwKkBtv9DXD17u0uh4hRCv1PQR5GZFL94Nk5lLfrV4B7q'),
(567, 'alil', 'alil@gmail.com', '999', '$2y$10$9HWPpOtKM5z3WjM.0ATTFOUxP2tP5On40pyxO6Oo0pw0I1xWR1IbG'),
(12345, 'ali', 'ali@gmail.com', '123456789', '$2y$10$yirC8pVAvCqfGIiD5PznJOzKj9I84RNYyaMDRi0WWNMeDh011Yvyq'),
(201234, 'maisara', 'maisara@gmail.com', '123456', '$2y$10$ocBedXJTrWCwMQix5rK01OgAWR7sbiFtlx0kguTWxyqckij7KmDPG'),
(2022123456, 'AimanGaiss', 'AimanG@gmail.com', '601921441', '$2y$10$x1hbsBc4jTp./EOFBUgPr.ZyJUt03pSycW80NPwz1zlCajxnkOQwS'),
(2022489338, 'Haiqal', 'haiqal@gmail.com', '0183995978', '$2y$10$KnjlgeGJMppT5uPu3VMqheFaf4qlK82//9KkMWcCe74Uq0RppV3Zm'),
(2022823772, 'Aiman', 'aimann@gmail.com', '0182560766', '$2y$10$pTjecqAZTnIZL3JlwZqXu.JUEGIWCiN2ccBe/8PeWj0vUszclGdVW'),
(2022846142, 'Mohd aiman', 'mamarulhariz@gmail.com', '196384836', '$2y$10$o8zhTR3g7h7Ucfzuz2smheEV07Lv/mQ7G8GKV/8jIxlK.UKqCj3oO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_Code`);

--
-- Indexes for table `bookshelf`
--
ALTER TABLE `bookshelf`
  ADD PRIMARY KEY (`BookShelf_ID`);

--
-- Indexes for table `borrowing_record`
--
ALTER TABLE `borrowing_record`
  ADD KEY `Book_Code` (`Book_Code`),
  ADD KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `ebook`
--
ALTER TABLE `ebook`
  ADD UNIQUE KEY `Book_Code_3` (`Book_Code`),
  ADD KEY `Book_Code` (`Book_Code`,`EBook_Link`,`EBookCode_Status`),
  ADD KEY `Book_Code_2` (`Book_Code`);

--
-- Indexes for table `physicalbook`
--
ALTER TABLE `physicalbook`
  ADD UNIQUE KEY `Book_Code` (`Book_Code`),
  ADD KEY `Bookshelf_ID` (`Bookshelf_ID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`RequestID`),
  ADD KEY `Book_Code` (`Book_Code`),
  ADD KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Book_Code_2` (`Book_Code`),
  ADD KEY `Staff_ID_2` (`Staff_ID`,`Student_ID`,`Book_Code`);

--
-- Indexes for table `requestp`
--
ALTER TABLE `requestp`
  ADD PRIMARY KEY (`RequestPID`),
  ADD KEY `Staff_ID` (`Staff_ID`),
  ADD KEY `Student_ID` (`Student_ID`),
  ADD KEY `Book_Code` (`Book_Code`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `RequestID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `requestp`
--
ALTER TABLE `requestp`
  MODIFY `RequestPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowing_record`
--
ALTER TABLE `borrowing_record`
  ADD CONSTRAINT `borrowing_record_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrowing_record_ibfk_2` FOREIGN KEY (`Book_Code`) REFERENCES `books` (`Book_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `borrowing_record_ibfk_3` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ebook`
--
ALTER TABLE `ebook`
  ADD CONSTRAINT `ebook_ibfk_1` FOREIGN KEY (`Book_Code`) REFERENCES `books` (`Book_Code`);

--
-- Constraints for table `physicalbook`
--
ALTER TABLE `physicalbook`
  ADD CONSTRAINT `physicalbook_ibfk_1` FOREIGN KEY (`Book_Code`) REFERENCES `books` (`Book_Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `physicalbook_ibfk_2` FOREIGN KEY (`Bookshelf_ID`) REFERENCES `bookshelf` (`BookShelf_ID`) ON DELETE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`),
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`Book_Code`) REFERENCES `ebook` (`Book_Code`),
  ADD CONSTRAINT `request_ibfk_3` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `requestp`
--
ALTER TABLE `requestp`
  ADD CONSTRAINT `requestp_ibfk_1` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requestp_ibfk_2` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `requestp_ibfk_3` FOREIGN KEY (`Book_Code`) REFERENCES `books` (`Book_Code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
