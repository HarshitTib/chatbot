-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 04:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL,
  `links` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`, `links`) VALUES
(1, 'Hi||Hello||Yay\r\n', 'Hello, How are you?\r\n', ''),
(2, 'What is your name?\r\n', 'My name is ChatBot\r\n', ''),
(4, 'Courses', 'To visit to the courses of the schedule:', 'https://www.sciastra.com/courses'),
(5, 'Selections', 'The selections of our institute', 'https://www.sciastra.com/selections/'),
(6, 'Blogs', 'Have a look through the various blogs:', 'https://www.sciastra.com/blog/'),
(7, 'Teams', 'Meet our teams', 'https://www.sciastra.com/teams/'),
(8, 'Contact Us', 'The place where you can contact our team', 'https://www.sciastra.com/contact/'),
(9, 'Login', 'Kindly Login to your account', 'https://www.sciastra.com/app/'),
(10, 'Home', 'Here is your home page:', 'https://www.sciastra.com/'),
(11, 'Materials', 'Materials offered:', 'https://www.sciastra.com/materials/'),
(12, 'IISER', 'All you need to know about IISER', 'https://www.sciastra.com/blog/iiser-2023-application-started/'),
(13, 'IIT-JAM', 'The application form deadline for IIT JAM 2023 has been extended to 5:00 pm on April 27, 2023', ''),
(14, 'IAT', 'The registration process for IAT is commenced on 15th April 2023, and the last date to apply is 25th May 2023.', ''),
(15, 'NEST', 'The NEST 2023 application form was released on February 27, 2023, on the official website nestexam.in. The last date for filling out the application form was May 27, 2023.', ''),
(16, 'IISC', 'The application form deadline for the Indian Institute of Science (IISc) has been extended till 26th March 2023 for PG Courses', ''),
(17, 'ISI', 'The application process of ISI exam 2022 comprises registration, filling application form, academic details, uploading documents, and payment of fee. The ISI entrance exam 2022 was scheduled to be conducted on May 8, 2022.', ''),
(18, 'IACS', 'The last date to apply for IACS Research Associate II is 14/04/2023. ', ''),
(19, 'CUET', 'The application form deadline for the Common University Entrance Test (CUET) for UG 2023 was March 30, 2023.', ''),
(20, 'ICAR', 'As of 16 May 2023, the application form deadline for ICAR (CUET) UG Exam 2023 is not specified in the sources provided. ', ''),
(21, 'help', 'The basic commands that can be asked:  Take me to the Login page. Show me the blogs. Deadline for the IIT-JAM etc...', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
