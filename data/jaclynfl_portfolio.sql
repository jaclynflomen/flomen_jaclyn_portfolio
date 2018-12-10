-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2018 at 09:42 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaclynfl_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `ID` int(10) NOT NULL,
  `Title1` varchar(30) NOT NULL,
  `Description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`ID`, `Title1`, `Description`) VALUES
(1, 'History', 'I started my journey through photography. I had always loved taking mental images of the world around me, and then when I got my first camera, they became real. Being able to capture moments and preserve memories inspired me. In my final two years in high school, I was introduced to the world of graphic design. Up until then, I had no definite plan for what I wanted to do with my life, but once I took this course, my future goals were set. From there, I learned basic skills in multiple Adobe softwares and further advanced my skills.'),
(2, 'Inspiration', 'I gain inspiration from various elements. I have produced my personal identity based on a combination of past and present styles. I design work to be clean and modern, yet  have a nostalgic feel to them if analyzed. I believe that my work displays relevant ideologies through my subject matter and through incorporating current trends into my style.'),
(3, 'Free Time', 'Despite learning about media during the week, I still enjoy being creative in my spare time. Whether through social media, or makeup, any way for me to interact with people in a visually interesting way excites me. Like any other young adult, I connect to the world through social media. Personally, I prefer using Instagram and Snapchat over others for visual purposes as I agree with the notion that an image is worth a thousand words. As well, I have used platforms like Instagram to experiment with makeup techniques and see how other users create different looks. Whether online or in person, I aim to be as creative as possible as everyday life experiences provide inspiration.'),
(4, 'School', 'After high school, I set out to further my education with a focus on creating and analyzing media. The Media Theory and Production program with Western University and Fanshawe college has allowed me to do both. At Western University, I have been studying the theoretical side of media, including the evolution, distribution, and production of different forms of media. At Fanshawe College, I have been developing my graphic design skills, as well as being introduced to web development. The combination of the two has allowed me to gain a rounded education and knowledge that will help me in achieving a career in media production.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfoliowork`
--

CREATE TABLE `tbl_portfoliowork` (
  `art_id` int(10) NOT NULL,
  `art_category` varchar(30) NOT NULL,
  `art_title` varchar(50) NOT NULL,
  `imgPath` varchar(50) NOT NULL,
  `art_img` varchar(50) NOT NULL,
  `art_desc` varchar(700) NOT NULL,
  `art_info` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_portfoliowork`
--

INSERT INTO `tbl_portfoliowork` (`art_id`, `art_category`, `art_title`, `imgPath`, `art_img`, `art_desc`, `art_info`) VALUES
(1, 'Personal', 'New York, A Dream', 'img_7317.jpg', 'img_7317.jpg', 'This is some work that has been created to explore different media, methods, and ideas. It is work that I choose to focus on to enhance my personal goals, try new ideas, and be creative in my own respects. In addition to digital artwork, I explored various physical media tools in visual art classes both in my high school and university careers. \r\nMy overarching idea for all the work I created revolved around viewing life in different ways; whether discovering places that hold meanings and memories, or finding new meanings within static environments. Overall, I wanted to find new ways of seeing the world, and be able to share what I saw.', 'Double exposure image.\r\nTaken in summer of 2016.\r\nImages from Connecticut and New York'),
(2, 'Personal', 'Chanel, No. Me', 'chanel.jpg', 'chanel.jpg', '', 'My initial inspiration came from the simplicity of Chanel ads, so i decided to make my own with a broken bottle, showing that nobody is perfect but can still have high expectations for themselves.'),
(3, 'Personal', 'Doubled', 'img_3467.jpg', 'img_3467.jpg', '', 'There are two sides to every story; to every person. This piece was made to emphasize how things may look the same, but are not as they seem. Materials: conte/pastels, watercolour, acrylic paint'),
(4, 'Personal', 'Look Outside the Box', 'img_4515.jpg', 'img_4515.jpg', '', 'This was a recreation of a famous painting. I love the hidden messages seen in each copy. The lines symbolize a cage and the desire to break out from the crowd. Materials: conte, acrylic paint.'),
(5, 'Personal', 'Paint A Picture For Me', 'img_7403.jpg', 'img_7403.jpg', '', 'In art class, one is told to draw something unnaturally. The inspiration is forced. This creation was born in the midst of an art project, where I wanted to do something other than the project.'),
(6, 'Works', 'Stay In The Loop', 'SITL.png', 'SITL.png', 'This work was created and used in my employment with Kostuch Media Ltd. over summer 2018. Through helping with weekly newsblasts, client magazine ad creation, and social media advertisements, I learned how the content I was learning in school applies to the real world. ', 'My first published work in Hotelier Magazine. Broadcasting the company’s online presence to their consumers who are not as present online as others. Inspiration came from past advertisements. '),
(7, 'Works', 'KML Custom Newsblast', 'newsblast_custom_ad_2.jpg', 'newsblast_custom_ad_2.jpg', '', 'My second published work in Hotelier Magazine. Different project, same message as the previous advertisement, but different format. Advertising their weekly news blasts. '),
(8, 'Works', 'Pride Day', 'pride_day.jpg', 'pride_day.jpg', '', 'Social media post: I had the task of producing an Instagram-size post for a multitude of traditional and non-traditional holidays for the company to keep in touch with their clientele.'),
(9, 'Works', 'Thanksgiving', 'thanksgiving.jpg', 'thanksgiving.jpg', '', 'Social media post: I had the task of producing an Instagram-size post for a multitude of traditional and non-traditional holidays for the company to keep in touch with their clientele.'),
(10, 'Works', 'National Waffle Day', 'waffle_day.jpg', 'waffle_day.jpg', '', 'Social media post: I had the task of producing an Instagram-size post for a multitude of traditional and non-traditional holidays for the company to keep in touch with their clientele.'),
(11, 'School', 'Aeropostale x Moscato', 'flomen_jaclyn_mashup.jpg', 'flomen_jaclyn_mashup.jpg', 'Being at Western University and Fanshawe College simultaneously, I have had the privilege of interacting with different types of people and see how they define and explore media. Through learning theory at WU alongside the hands-on learning at FC, I have been able to merge my knowledge for an overall rounded creative identity. Here are some of the works from both institutions that I have accomplished over my time as a student.', 'Collaboration project: Produce a wine/beer bottle and label with the inspiration from the branding of a known company. '),
(12, 'School', 'Digital Tattoo', 'img_8493.png', 'img_8493.png', '', 'Tattoo Project: Create a colored tattoo that has more than 3 colours, an animal element, a gradient, and at least 5 elements to the composition.'),
(13, 'School', 'London Squash & Fitness Club', 'LSFC.png', 'LSFC.png', '', 'Client Project: Rebrand LSFC by making a social media plan and an entire new website based on their current brand and clientele, but with an updated view that is easy to use.'),
(14, 'School', 'OHM Intro Banner', 'ohm_intro_banner_3.jpg', 'ohm_intro_banner_3.jpg', '', 'OHM Charity Fashion Show introductory Facebook banner for the year. Proceeds go to the Canadian Cancer Society. Theme for this year: Garden Party. '),
(15, 'School', 'Digital Graffiti', 'flomen_jaclyn_finalgraffiti.jpg', 'flomen_jaclyn_finalgraffiti.jpg', '', 'Graffiti Project: Produce an artwork that would blend into a scene seamlessly. Required to include a word, a personal signature, a face, and have colour. '),
(16, 'School', 'OHM Ride For The Cure', 'ohm_rideforcure_event.jpg', 'ohm_rideforcure_event.jpg', '', 'OHM Charity Fashion Show fundraiser Facebook banner: Spin classes to raise money to fund both the fashion show and donate to the Canadian Cancer Society.'),
(17, 'Photography', 'All of the Lights', '29.jpg', '29.jpg', 'My introduction to digital media and graphic design came from exploring photography. Although I have moved on to other forms of creative work, photography will always be my first passion. I gain inspiration from modern life, as well as the past. I have a passion for capturing nostalgia in photographs, and capturing emotions in various media. Starting in photography allowed me to have an eye for designing and creating visual elements with no limit, giving me the chance to explore my creativity in different ways. ', 'Final photography project for my grade 12 graphic design class. Theme: abstract light. I played with exposures and camera settings to achieve this unique photograph.'),
(18, 'Photography', 'Mizner', 'film6.jpg', 'film6.jpg', '', 'Part of my personal collection. This photo was taken from a park in Boca Raton, Florida during Christmas time. I started to play with lights and exposures to create dramatic yet easy-going aesthetics.'),
(19, 'Photography', 'Threshold', 'flomen_jaclyn-4.jpg', 'flomen_jaclyn-4.jpg', '', 'Spontaneous moments captured at a summer camp in Haliburton, Ontario. On the way to my cabin, I looked over my shoulder to see something so simple and pure yet impactful.'),
(20, 'Photography', 'Caged In', 'jaclynflomenportfolio-5.jpg', 'jaclynflomenportfolio-5.jpg', '', 'Taking advantage of being in the right place at the right time. On a trip to Israel through underground tunnels, I saw an arm reach up and recreated past events in the present day.'),
(21, 'Photography', 'Model: Stephanie Lanz', 'portfolio-12.jpg', 'portfolio-12.jpg', '', 'At the start of my design career through photography, I went around with my friend to explore how different lightings and scenes influence the mood of the overall image. '),
(22, 'Video', 'Full(er) House Fantasy', 'jaclynloganvas1020.gif', 'jaclynloganvas1020.gif', 'Although I prefer static to animated, I have started to explore dynamic forms of media through video, 3D animation, and other forms of limitless creativity. I try and keep my work clean, yet explore different methods of thinking outside of the box. At first, it was hard for me to create work that I could be proud of, because I was living in a 2D world. However, through practice and different modes of learning and practicing different techniques, it has become one of the media that I have grown to enjoy.', 'First year university project: create a GIF of utopia vs dystopia. Bringing modern twists into the fantasy world, my partner and I created a before and after look on television reboots.'),
(23, 'Other', 'FIMS 2018 Welcome Banner', 'fims_banner.jpg', 'fims_banner.jpg', 'Here are some additional works that fit into no distinct category. Although they are varied in topic and media, the work still excited me. Whether it was to make a geotag for snapchat, or a banner, being able to communicate with different people for different projects and interact with a widespread audience was the main purpose. Overall, no matter the media or the subject matter, being able to explore and express my creativity in any way excites me.', 'Facebook introductory banner for the Faculty of Information and Media Studies student council page. It sets the tone for the rest of the projects and themes throughout the year.'),
(24, 'Other', 'Ontario Hall Residence Snapchat Geotag', 'ohallgeotag2.png', 'ohallgeotag2.png', '', 'I wanted to give my temporary home a sense of welcoming through a popular social media platform. It sparked conversations and started a community between unlikely friends. '),
(25, 'Other', 'Toronto Snapchat Geotag', 'toronto-geotag.png', 'toronto-geotag.png', '', 'Played around with the geotag idea, but with my hometown. I wanted to incorporate all of the good things of the city within the mobile tag, letting everyone enjoy what the city has to offer the world.'),
(26, 'Other', 'Yes Theory Logos', 'yes_theory_logos.jpg', 'yes_theory_logos.jpg', '', 'Created logos for the Youtube channel Yes Theory. I played with the notion of stepping out of the box and exploring life through fearlessness. These logos allowed me to be creative without boundaries'),
(27, 'Reel', 'Reel', 'portfolio_reel.mp4', 'portfolio_reel.jpg', '', ''),
(28, 'Video', 'Infuser Bottle/Pod', 'baile_flomen_infuserbottle2.png', 'baile_flomen_infuserbottle.jpg', '', '3D Infuser Bottle/Pod: Create a new take on a water bottle while making it modern and sleek. Kept in mind packaging, technology, & waste prevention. Created the bottle, packaging, and advertisements.'),
(29, 'Video', 'Soccer Commercial', 'flomen_jaclyn_soccer2.png', 'flomen_jaclyn_soccer.jpg', '', 'Reproduced a soccer animation design to practice building skills, textures, lighting, and camera movements. Animated in Cinema 4D and added video effects in Adobe After Effects.'),
(30, 'School', 'TMNT', 'TMNT.jpg', 'TMNT.jpg', '', '3D tunnel build with TMNT logo at the end. It was a class build to learn camera movements, cloning, textures, and bringing Ai files into Cinema 4D. '),
(31, 'School', 'Car Build', 'car_build.jpg', 'car_build.jpg', '', 'Animated an Audi R8 with Cinema 4D and finalized it through After Effects. Explored different movement techniques, texture styles, and camera work. ');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
