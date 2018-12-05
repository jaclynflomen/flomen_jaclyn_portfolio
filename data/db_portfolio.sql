-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 02, 2018 at 09:57 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfoliowork`
--

CREATE TABLE `tbl_portfoliowork` (
  `art_id` int(10) NOT NULL,
  `art_category` varchar(30) NOT NULL,
  `art_title` varchar(50) NOT NULL,
  `imgPath` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_portfoliowork`
--

INSERT INTO `tbl_portfoliowork` (`art_id`, `art_category`, `art_title`, `imgPath`) VALUES
(1, 'Personal', 'New York, A Dream', 'img_7317.jpg'),
(2, 'Personal', 'Chanel, No. Me', 'chanel.jpg'),
(3, 'Personal', 'Doubled', 'img_3467.jpg'),
(4, 'Personal', 'Look Outside the Box', 'img_4515.jpg'),
(5, 'Personal', 'Paint A Picture For Me', 'img_7403.jpg'),
(6, 'Work', 'Stay In The Loop', 'SITL.png'),
(7, 'Work', 'KML Custom Newsblast', 'newsblast_custom_ad_2.jpg'),
(8, 'Work', 'Pride Day', 'pride_day.jpg'),
(9, 'Work', 'Thanksgiving', 'thanksgiving.jpg'),
(10, 'Work', 'National Waffle Day', 'waffle_day.jpg'),
(11, 'School', 'Aeropostale x Moscato', 'flomen_jaclyn_mashup.jpg'),
(12, 'School', 'Digital Tattoo', 'img_8493.png'),
(13, 'School', 'London Squash & Fitness Club', 'LSFC.png'),
(14, 'School', 'OHM Intro Banner', 'ohm_intro_banner_3.jpg'),
(15, 'School', 'Digital Graffiti', 'flomen_jaclyn_finalgraffiti.jpg'),
(16, 'School', 'OHM Ride For The Cure', 'ohm_rideforcure_event.jpg'),
(17, 'Photography', 'All of the Lights', '29.jpg'),
(18, 'Photography', 'Mizner', 'film6.jpg'),
(19, 'Photography', 'Threshold', 'flomen_jaclyn-4.jpg'),
(20, 'Photography', 'Caged In', 'jaclynflomenportfolio-5.jpg'),
(21, 'Photography', 'Model: Stephanie Lanz', 'portfolio-12.jpg'),
(22, 'Video', 'Full(er) House Fantasy', 'jaclynloganvas1020.gif'),
(23, 'Other', 'FIMS 2018 Welcome Banner', 'fims_banner.jpg'),
(24, 'Other', 'Ontario Hall Residence Snapchat Geotag', 'ohallgeotag2.png'),
(25, 'Other', 'Toronto Snapchat Geotag', 'toronto-geotag.png'),
(26, 'Other', 'Yes Theory Logos', 'yes_theory_logos.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_portfoliowork`
--
ALTER TABLE `tbl_portfoliowork`
  ADD PRIMARY KEY (`art_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
