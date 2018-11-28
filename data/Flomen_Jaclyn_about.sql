-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 25, 2018 at 12:54 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `ID` int(10) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `Description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`ID`, `Title`, `Description`) VALUES
(1, 'History', 'I started my journey through photography. I had always loved taking mental images of the world around me, and then when I got my first camera, they became physical. Being able to capture moments and preserve memories inspired me. It also allowed me to gain inspiration from others who I wanted to emulate; photographers such as Annie Leibovitz. My final two years in high school, I enrolled in an Interdisciplinary Studies course, which introduced me to the world of graphic design. Up until then, I had no definite plan for what I wanted to do with my career past high school, but once I took this course, my future goals were set. From there, I learned basic skills in multiple Adobe softwares and further advanced my skills. I ultimately ended up leading the production of my school’s yearbook before my post secondary send-off. These events shaped how I view and produce media today.'),
(2, 'School', 'After high school, I set out to further my education with a focus on creating and analyzing media. The Media Theory and Production program with Western University and Fanshawe college has allowed me to do both. At Western University, I have been studying the theoretical side of media, including the evolution, distribution, and production of different forms of media. At Fanshawe College, I have been developing my graphic design skills, as well as being introduced to web development. The combination of the two has allowed me to gain a rounded education and knowledge that will help me in achieving a career in media production.'),
(3, 'Inspiration', 'I gain inspiration from various elements. I have produced my personal identity based on a combination of past and present styles. I design work to be clean and modern, yet  have a nostalgic feel to them if analyzed. I believe that my work displays relevant ideologies through my subject matter and through incorporating current trends into my style.'),
(4, 'Free Time', 'Despite learning about media during the week, I still enjoy being creative in my spare time. Whether through social media, or makeup, any way for me to interact with people in a visually interesting way excites me. Like any other young adult, I connect to the world through social media. Personally, I prefer using Instagram and Snapchat over others for visual purposes as I agree with the notion that an image is worth a thousand words. As well, I have used platforms like Instagram to experiment with makeup techniques and see how other users create different looks. Whether online or in person, I aim to be as creative as possible as everyday life experiences provide inspiration.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
