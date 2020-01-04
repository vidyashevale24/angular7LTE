-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2020 at 03:44 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spinix`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_job_info`
--

CREATE TABLE `applied_job_info` (
  `applied_job_info_id` int(10) NOT NULL,
  `jobseeker_id` int(10) NOT NULL,
  `job_post_details_id` int(10) NOT NULL,
  `applied_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied_job_info`
--

INSERT INTO `applied_job_info` (`applied_job_info_id`, `jobseeker_id`, `job_post_details_id`, `applied_date`) VALUES
(1, 1, 1, '2014-04-30'),
(2, 2, 1, '2014-05-21'),
(3, 3, 1, '2014-05-08'),
(4, 4, 3, '2014-04-30'),
(5, 5, 1, '2014-04-30'),
(6, 6, 2, '2014-04-30'),
(10, 9, 1, '2014-04-30'),
(8, 7, 1, '2014-04-30'),
(9, 8, 1, '2014-04-30'),
(11, 10, 1, '2014-04-30'),
(12, 11, 1, '2014-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) NOT NULL,
  `city_name` varchar(35) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`, `state_id`) VALUES
(1, 'Pune', 1),
(2, 'Mumbai', 1),
(3, 'Goa', 2),
(4, 'Panji', 2),
(5, 'Vasko', 2),
(6, 'Surat', 3),
(7, 'Nanded', 1),
(8, 'Sangli', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `company_id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `description` varchar(500) NOT NULL,
  `company_link` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`company_id`, `company_name`, `description`, `company_link`) VALUES
(601, 'Infosys', 'MNC', 'www.infosys.com'),
(602, 'Deftsoft', 'Medium level', 'www.deftsoft.com'),
(603, 'HCL', 'Medium level', 'www.hcl.com'),
(604, 'Wipro', 'Medium level', 'www.wipro.com'),
(605, 'Cognizant', 'MNC', 'www.cognizant.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `website` varchar(45) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `Name`, `Email`, `website`, `Message`) VALUES
(1, 'Saloni Bhandari', 'salonob@gmail.com', 'www.salonibhandari.com', 'This Is amazing website for Jobseeker to find job');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(1, 'India'),
(2, 'South Koria'),
(3, 'Bangladesh'),
(4, 'Shrilanka'),
(5, 'Japan');

-- --------------------------------------------------------

--
-- Table structure for table `course_name`
--

CREATE TABLE `course_name` (
  `id` int(10) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `education_type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_name`
--

INSERT INTO `course_name` (`id`, `course_name`, `education_type_id`) VALUES
(1, 'Mech Engineering', 2),
(2, 'Civil Engineering', 2),
(3, 'MCA', 1),
(4, 'MBA', 1),
(15, 'BSC', 3),
(14, 'BCA', 3);

-- --------------------------------------------------------

--
-- Table structure for table `create_profile_user`
--

CREATE TABLE `create_profile_user` (
  `jobseeker_id` int(10) NOT NULL,
  `jobseeker_name` varchar(45) NOT NULL,
  `jobseeker_pwd` varchar(45) NOT NULL,
  `con_password` varchar(30) NOT NULL,
  `seq_que` varchar(50) NOT NULL,
  `answer` varchar(30) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `addressline1` varchar(50) NOT NULL,
  `addressline2` varchar(50) NOT NULL,
  `current_location_city_id` int(10) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `mstatus` enum('y','n') NOT NULL,
  `mob_no` bigint(15) NOT NULL,
  `land_line` bigint(15) NOT NULL,
  `resume_header` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `total_exp` varchar(50) NOT NULL,
  `annual_salary` varchar(45) NOT NULL,
  `profile_summary` varchar(200) NOT NULL,
  `employer_name` varchar(45) NOT NULL,
  `duration` int(10) NOT NULL,
  `job_profile` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `notice_period` int(10) NOT NULL,
  `expected_salary` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `create_profile_user`
--

INSERT INTO `create_profile_user` (`jobseeker_id`, `jobseeker_name`, `jobseeker_pwd`, `con_password`, `seq_que`, `answer`, `Name`, `addressline1`, `addressline2`, `current_location_city_id`, `pincode`, `dob`, `gender`, `mstatus`, `mob_no`, `land_line`, `resume_header`, `email`, `resume`, `total_exp`, `annual_salary`, `profile_summary`, `employer_name`, `duration`, `job_profile`, `designation`, `notice_period`, `expected_salary`) VALUES
(1, 'Swarada', '123', '123', 'What Is Your First Mobile Number?', '9762878980', 'Swarada Sandeep Kalekar', 'Flat No 1 ,Lakevista,Near Chakradhar School', 'Duttanagar Road', 1, 411046, '1990-03-20', 'f', 'n', 9762305557, 203453459, 'good in testing', 'kswara20@gmail.com', 'docx', '3 Years', '40-50K', 'Looking for It job ', 'Mr.Pratik Sinha', 3, 'software engineer', 'Project Manager', 2, 20000),
(3, 'Neha', '123456', '123456', 'What Is Your First Mobile Number?', '8888787878', 'Neha jagtap', 'Flat No 1 Mane Building Akashwani', 'Pune Solapur Road', 1, 411028, '1990-11-14', 'f', 'n', 9890909767, 202345678, 'good in testing', 'neha.jagtap@gmail.com', 'doc', '3 Years', '20-30K', 'looking for a good job in IT.', 'Mr. Pratik Jadhav', 2, 'software engineer', 'Project Manager', 3, 15000),
(2, 'Manali ', '123456', '123456', 'What Is Your First Mobile Number?', '8888888856', 'Manali Atre', 'Flat No 12,Professor Colony ,Saswad', 'Pune -Saswad Road', 1, 411058, '1991-05-11', 'f', 'n', 8888888856, 202553343, 'Good In Java', 'atremanali@gmail.com', 'doc', '2 Years', '20-30K', 'looking for a good job in IT.', 'Mr.Suhas Kumbhar', 3, 'software engineer', 'Project Manager', 2, 25000),
(4, 'Aarti', '123456', '123456', 'What Is Your First Mobile Number?', '9850224493', 'Aarti Dilip Mohite', 'Flat No 1 Mane Building Akashwani', 'Pune -Saswad Road', 1, 411028, '1990-11-14', 'f', 'n', 9876598909, 202345678, 'good in testing', 'aartimohotite@gmail.com', 'doc', '2 Years', '33333', 'looking for a good job in IT.', 'Mr. Preadeep Shevale', 3, 'software engineer', 'Project Manager', 3, 15000),
(9, 'priyanka', '123456', '123456', 'What Is Your First Mobile Number?', '9850224493', 'Priyanka Khanna', 'Flat No 1 Mane Building telco Colony', 'Pune Solapur Road', 1, 411028, '1990-11-14', 'f', 'n', 9876598909, 202345678, 'good in testing', 'ssasa@gmail.com', 'doc', '3 Years', '40-50K', 'looking for a good job in IT.', 'Mr. Preadeep Shevale', 2, 'software engineer', 'Project Manager', 3, 45000),
(10, 'Reshma', '123456', '123456', 'What Is Your First Mobile Number?', '9850224493', 'Reshma Vittal Dokhe', 'Flat No 12,Professor Colony ,Bibwewadi', 'Pune Solapur Road', 1, 411028, '1991-03-20', 'f', 'n', 9876598909, 202345678, 'good in programming', 'dokheresma@gmail.com', 'doc', '3 Years', '40-50K', 'looking for a good job in IT.', 'Mr. Pratik Jadhav', 2, 'software engineer', 'Project Manager', 3, 25000),
(11, 'Satyajeet', '123456', '123456', 'What Is Your First Mobile Number?', '9850224493', 'Satyajeet Patil', 'Flat No 1 Mane Building Akashwani', 'Hadapsar', 1, 411028, '1991-03-20', 'm', 'n', 9762345666, 202553343, 'good in programming', 'Satyajeet@gmail.com', 'doc', '3 Years', '15-30K', 'looking for a good job in IT.', 'Mr.Suhas Kumbhar', 3, 'software engineer', 'Project Manager', 3, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `education_type`
--

CREATE TABLE `education_type` (
  `id` int(10) NOT NULL,
  `education_type_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education_type`
--

INSERT INTO `education_type` (`id`, `education_type_name`) VALUES
(1, 'Post Graduation'),
(2, 'Diploma'),
(3, 'Graduation');

-- --------------------------------------------------------

--
-- Table structure for table `functional_area`
--

CREATE TABLE `functional_area` (
  `functional_area_id` int(10) NOT NULL,
  `functional_area_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `functional_area`
--

INSERT INTO `functional_area` (`functional_area_id`, `functional_area_name`) VALUES
(1, 'IT-Software'),
(2, 'IT-Hardware'),
(3, 'IT-Networking'),
(14, 'IT-Financial');

-- --------------------------------------------------------

--
-- Table structure for table `job_post_course`
--

CREATE TABLE `job_post_course` (
  `job_post_course_id` int(10) NOT NULL,
  `course_info_id` int(10) NOT NULL,
  `job_post_details_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post_course`
--

INSERT INTO `job_post_course` (`job_post_course_id`, `course_info_id`, `job_post_details_id`) VALUES
(1, 14, 1),
(3, 3, 2),
(4, 3, 3),
(5, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `job_post_details`
--

CREATE TABLE `job_post_details` (
  `job_post_details_id` int(10) NOT NULL,
  `recruiter_id` int(10) NOT NULL,
  `job_subject` varchar(45) NOT NULL,
  `experience` varchar(45) NOT NULL,
  `salary` varchar(45) NOT NULL,
  `vacancy` int(10) NOT NULL,
  `job_post_date` date NOT NULL,
  `job_description` varchar(300) NOT NULL,
  `education_details` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post_details`
--

INSERT INTO `job_post_details` (`job_post_details_id`, `recruiter_id`, `job_subject`, `experience`, `salary`, `vacancy`, `job_post_date`, `job_description`, `education_details`) VALUES
(1, 1, 'software engineer', '4 year', '12000', 5, '2014-03-14', 'Software designers are expected to proactively contribute into technology strategy at multiple levels.', 'Graduation'),
(2, 2, 'Software Engineer', '2 Year', '10000', 4, '2014-05-08', 'Software designers are expected to proactively contribute into technology strategy at multiple levels, and to maintain ongoing conversations with and seek views from their peers globally.', 'Any Graduate'),
(3, 3, 'Programmer', '2 Year', '10000', 5, '2014-09-11', 'Software designers ', 'Any Graduate'),
(4, 1, 'Hardware Engineer', '2 year', '25000', 5, '2014-06-18', 'Hardware Engineer are expected to proactively contribute into technology strategy at multiple levels, and to maintain ongoing conversations with and seek views from their peers globally.', 'Any Graduation');

-- --------------------------------------------------------

--
-- Table structure for table `job_post_details_key_skills`
--

CREATE TABLE `job_post_details_key_skills` (
  `job_post_details_key_skills_id` int(10) NOT NULL,
  `job_post_details_id` int(10) NOT NULL,
  `key_skills_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post_details_key_skills`
--

INSERT INTO `job_post_details_key_skills` (`job_post_details_key_skills_id`, `job_post_details_id`, `key_skills_id`) VALUES
(1, 1, 3003),
(3, 2, 3003),
(4, 3, 3003),
(5, 4, 3004);

-- --------------------------------------------------------

--
-- Table structure for table `job_post_details_role`
--

CREATE TABLE `job_post_details_role` (
  `job_post_details_role_id` int(10) NOT NULL,
  `job_post_details_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post_details_role`
--

INSERT INTO `job_post_details_role` (`job_post_details_role_id`, `job_post_details_id`, `role_id`) VALUES
(1, 1, 2),
(3, 2, 1),
(4, 3, 3),
(5, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `job_post_functional_area`
--

CREATE TABLE `job_post_functional_area` (
  `job_post_functional_area_id` int(10) NOT NULL,
  `functional_area_id` int(10) NOT NULL,
  `job_post_details_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post_functional_area`
--

INSERT INTO `job_post_functional_area` (`job_post_functional_area_id`, `functional_area_id`, `job_post_details_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(4, 1, 3),
(5, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `job_post_location`
--

CREATE TABLE `job_post_location` (
  `job_post_location_id` int(10) NOT NULL,
  `job_post_details_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post_location`
--

INSERT INTO `job_post_location` (`job_post_location_id`, `job_post_details_id`, `city_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(4, 3, 6),
(5, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `key_skills`
--

CREATE TABLE `key_skills` (
  `key_skills_id` int(10) UNSIGNED NOT NULL,
  `key_skills_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `key_skills`
--

INSERT INTO `key_skills` (`key_skills_id`, `key_skills_name`) VALUES
(3001, 'Cobol'),
(3002, '.Net'),
(3003, 'PHP'),
(3004, 'JAVA'),
(3005, 'Perl');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `project_details_id` int(10) NOT NULL,
  `project_name` varchar(45) NOT NULL,
  `project_desciption` varchar(45) NOT NULL,
  `jobseeker_id` int(10) NOT NULL,
  `employment_type` varchar(45) NOT NULL,
  `client` varchar(100) NOT NULL,
  `project_location` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  `role_description` varchar(100) NOT NULL,
  `project_duration` varchar(45) NOT NULL,
  `site` varchar(45) NOT NULL,
  `team_size` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`project_details_id`, `project_name`, `project_desciption`, `jobseeker_id`, `employment_type`, `client`, `project_location`, `role`, `role_description`, `project_duration`, `site`, `team_size`) VALUES
(1, 'CVMS', 'CVMS is CV Management System developed for MI', 1, 'Full Time', 'mitsom', 'kothrud', 'programmer', 'In this project my role is to design the pages,testing,report generation', '6 months', 'www.mitsom.org', 2),
(8, 'Library Management System', 'For Maintaing Shre Library', 7, 'Full Time', 'Shre', 'Sangli', 'programmer', 'To design the pages ', '4 Months', 'www.shre.com', 2),
(7, 'Blood bank management System', 'For Akashay Blood Bank', 1, 'Full Time', 'Akashay Blood Bank', 'Hadapsar', 'programmer', 'To Deisgn the pages, Maintain Report,', '6 months', 'www.akashybloodbank.com', 2),
(4, 'CSEB', 'For Chattisgad State', 3, 'Full Time', 'Chattisgad', 'kothrud', 'programmer', 'To design the pages ', '6 months', 'www.cseb.com', 2),
(5, 'Online shopping', 'online shopping project ', 2, 'Full Time', 'vortex', 'Mumbai', 'programmer', 'To Design the database', '4 Months', 'www.vortex.com', 2),
(6, 'Hotel Management System', 'For Vaishnav Hotel', 5, 'Full Time', 'Vaishnav', 'Saswad', 'programmer', 'In this project my role is to design the pages,testing,report generation', '4 Months', 'www.vaishnav.com', 2),
(9, 'Kanchan LPG Mgt System', 'to maintain LPG', 8, 'Full Time', 'Kanchan', 'kothrud', 'programmer', 'To design the pages ', '6 months', 'www.kanchanlpg.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_employee_info`
--

CREATE TABLE `recruiter_employee_info` (
  `recruiter_id` int(10) NOT NULL,
  `recruiter_username` varchar(45) NOT NULL,
  `recruiter_pwd` varchar(45) NOT NULL,
  `recruiter_con_pwd` varchar(45) NOT NULL,
  `seq_que` varchar(50) NOT NULL,
  `answer` varchar(30) NOT NULL,
  `recruiter_name` varchar(45) NOT NULL,
  `company_id` int(10) NOT NULL,
  `functional_area_id` int(10) NOT NULL,
  `admin_confirm` tinyint(1) NOT NULL,
  `address` varchar(100) NOT NULL,
  `telephone` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruiter_employee_info`
--

INSERT INTO `recruiter_employee_info` (`recruiter_id`, `recruiter_username`, `recruiter_pwd`, `recruiter_con_pwd`, `seq_que`, `answer`, `recruiter_name`, `company_id`, `functional_area_id`, `admin_confirm`, `address`, `telephone`) VALUES
(1, 'Rajashri', '789', '789', 'What Is Your First Mobile Number?', '9850224493', 'Rajashri Shevale', 601, 1, 1, 'Pune', 202345909),
(2, 'Ajay', '123', '123', 'What Is Your First Mobile Number?', '9856786543', 'Ajay Mane', 602, 2, 1, 'Kothrud,Pune', 204342345),
(3, 'Akash', '123456', '123456', 'What Is Your First Mobile Number?', '9850224493', 'Akash Jadhav', 604, 2, 0, 'Pune', 204342345),
(4, 'Archana', '123456', '123456', 'What Is Your First Mobile Number?', '7890897654', 'Archana Patil', 602, 1, 0, 'Kothrud,Pune', 202356780),
(5, 'Shital', '123456', '123456', 'What Is Your First Mobile Number?', '9850224493', 'Shital Shevale', 602, 4, 0, 'Kothrud,Pune', 204342345),
(6, 'Shrijeet', '123456', '123456', 'What Is Your First Mobile Number?', '7890897654', 'Shrijeet Prakash Karande', 602, 2, 0, 'Karad', 204342345);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'Software Engineer'),
(2, 'Project Manager'),
(3, 'Testing Manager');

-- --------------------------------------------------------

--
-- Table structure for table `seq_que`
--

CREATE TABLE `seq_que` (
  `seq_que_id` int(100) NOT NULL,
  `seq_que` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seq_que`
--

INSERT INTO `seq_que` (`seq_que_id`, `seq_que`) VALUES
(1, 'What Is Your First Mobile Number?'),
(2, 'What Is Your Nick Name?'),
(3, 'What Is Your Pet Name?'),
(4, 'Who Is Your Favorite Actress?'),
(5, 'What Is Your Primary School Name?'),
(6, 'What Is Your First Car/Bike Number?');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state_name` varchar(35) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `country_id`) VALUES
(1, 'Maharashtra', 1),
(2, 'Kerala', 1),
(3, 'Gujrat', 1),
(6, 'Jeju Iseland', 2),
(12, 'Dhaka', 3),
(13, 'Tokio', 5),
(11, 'Aasam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `admin_id` int(10) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(56) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `token` varchar(400) NOT NULL,
  `ip_address` varchar(64) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','inactive') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`admin_id`, `first_name`, `last_name`, `username`, `email`, `password`, `token`, `ip_address`, `created_date`, `modified_date`, `status`) VALUES
(1, 'Vidya', 'Shevale', 'vidyashevale', 'vidyashevale@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0000-00-00 00:00:00', '2020-01-04 10:15:43', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user_education_info`
--

CREATE TABLE `user_education_info` (
  `education_info_id` int(10) NOT NULL,
  `jobseeker_id` int(10) NOT NULL,
  `course_info_id` int(10) NOT NULL,
  `university` varchar(45) NOT NULL,
  `passout_year` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_education_info`
--

INSERT INTO `user_education_info` (`education_info_id`, `jobseeker_id`, `course_info_id`, `university`, `passout_year`) VALUES
(9, 3, 15, 'Mumbai Univesity', 2014),
(8, 1, 14, 'Mumbai university', 2011),
(17, 8, 3, 'Mumbai Univesity', 2014),
(10, 2, 1, 'Mumbai Univesity', 2014),
(16, 7, 3, 'Shivaji University', 2014),
(15, 1, 3, 'Pune University', 2014),
(13, 5, 1, 'Pune university', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `user_functional_details`
--

CREATE TABLE `user_functional_details` (
  `user_functional_details_id` int(10) NOT NULL,
  `jobseeker_id` int(10) NOT NULL,
  `functional_area_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_functional_details`
--

INSERT INTO `user_functional_details` (`user_functional_details_id`, `jobseeker_id`, `functional_area_id`) VALUES
(1, 1, 2),
(7, 3, 2),
(12, 7, 3),
(8, 2, 2),
(9, 4, 3),
(10, 5, 2),
(13, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_key_skills`
--

CREATE TABLE `user_key_skills` (
  `user_key_skills_id` int(10) NOT NULL,
  `jobseeker_id` int(10) NOT NULL,
  `key_skills_id` int(10) NOT NULL,
  `last_used` varchar(45) NOT NULL,
  `experience` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_key_skills`
--

INSERT INTO `user_key_skills` (`user_key_skills_id`, `jobseeker_id`, `key_skills_id`, `last_used`, `experience`) VALUES
(13, 1, 3002, '2010', '1 year'),
(7, 1, 3003, '2009', '4 year'),
(9, 3, 3003, '2009', '2 Year'),
(10, 2, 3004, '2009', '4 year'),
(11, 4, 3003, '2009', '2 Year'),
(12, 5, 3004, '2010', '2 Year'),
(14, 7, 3004, '2009', '2 Year'),
(15, 8, 3001, '2009', '1 year');

-- --------------------------------------------------------

--
-- Table structure for table `user_prefered_location`
--

CREATE TABLE `user_prefered_location` (
  `user_prefered_location_id` int(10) NOT NULL,
  `jobseeker_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_prefered_location`
--

INSERT INTO `user_prefered_location` (`user_prefered_location_id`, `jobseeker_id`, `city_id`) VALUES
(10, 1, 2),
(19, 1, 1),
(20, 7, 2),
(13, 3, 2),
(14, 2, 6),
(15, 4, 2),
(16, 4, 3),
(17, 5, 5),
(18, 5, 6),
(21, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_role_id` int(10) NOT NULL,
  `jobseeker_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_role_id`, `jobseeker_id`, `role_id`) VALUES
(1, 1, 1),
(11, 1, 2),
(6, 3, 2),
(7, 2, 3),
(8, 4, 3),
(9, 5, 2),
(12, 7, 3),
(13, 8, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_job_info`
--
ALTER TABLE `applied_job_info`
  ADD PRIMARY KEY (`applied_job_info_id`),
  ADD KEY `jobseeker_id` (`jobseeker_id`),
  ADD KEY `job_post_details_id` (`job_post_details_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_name`
--
ALTER TABLE `course_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_type_id` (`education_type_id`);

--
-- Indexes for table `create_profile_user`
--
ALTER TABLE `create_profile_user`
  ADD PRIMARY KEY (`jobseeker_id`),
  ADD UNIQUE KEY `jobseeker_name` (`jobseeker_name`),
  ADD KEY `current_location_city_id` (`current_location_city_id`);

--
-- Indexes for table `education_type`
--
ALTER TABLE `education_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functional_area`
--
ALTER TABLE `functional_area`
  ADD PRIMARY KEY (`functional_area_id`);

--
-- Indexes for table `job_post_course`
--
ALTER TABLE `job_post_course`
  ADD PRIMARY KEY (`job_post_course_id`),
  ADD KEY `job_post_details_id` (`job_post_details_id`);

--
-- Indexes for table `job_post_details`
--
ALTER TABLE `job_post_details`
  ADD PRIMARY KEY (`job_post_details_id`),
  ADD KEY `recruiter_id` (`recruiter_id`);

--
-- Indexes for table `job_post_details_key_skills`
--
ALTER TABLE `job_post_details_key_skills`
  ADD PRIMARY KEY (`job_post_details_key_skills_id`),
  ADD KEY `job_post_details_id` (`job_post_details_id`),
  ADD KEY `key_skills_id` (`key_skills_id`);

--
-- Indexes for table `job_post_details_role`
--
ALTER TABLE `job_post_details_role`
  ADD PRIMARY KEY (`job_post_details_role_id`),
  ADD KEY `job_post_details_id` (`job_post_details_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `job_post_functional_area`
--
ALTER TABLE `job_post_functional_area`
  ADD PRIMARY KEY (`job_post_functional_area_id`),
  ADD KEY `functional_area_id` (`functional_area_id`),
  ADD KEY `job_post_details_id` (`job_post_details_id`);

--
-- Indexes for table `job_post_location`
--
ALTER TABLE `job_post_location`
  ADD PRIMARY KEY (`job_post_location_id`),
  ADD KEY `job_post_details_id` (`job_post_details_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `key_skills`
--
ALTER TABLE `key_skills`
  ADD PRIMARY KEY (`key_skills_id`);

--
-- Indexes for table `project_details`
--
ALTER TABLE `project_details`
  ADD PRIMARY KEY (`project_details_id`),
  ADD KEY `jobseeker_id` (`jobseeker_id`);

--
-- Indexes for table `recruiter_employee_info`
--
ALTER TABLE `recruiter_employee_info`
  ADD PRIMARY KEY (`recruiter_id`),
  ADD UNIQUE KEY `recruiter_username` (`recruiter_username`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `functional_area_id` (`functional_area_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `seq_que`
--
ALTER TABLE `seq_que`
  ADD PRIMARY KEY (`seq_que_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `index_key` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_education_info`
--
ALTER TABLE `user_education_info`
  ADD PRIMARY KEY (`education_info_id`),
  ADD KEY `jobseeker_id` (`jobseeker_id`),
  ADD KEY `course_info_id` (`course_info_id`);

--
-- Indexes for table `user_functional_details`
--
ALTER TABLE `user_functional_details`
  ADD PRIMARY KEY (`user_functional_details_id`),
  ADD KEY `jobseeker_id` (`jobseeker_id`),
  ADD KEY `functional_area_id` (`functional_area_id`);

--
-- Indexes for table `user_key_skills`
--
ALTER TABLE `user_key_skills`
  ADD PRIMARY KEY (`user_key_skills_id`),
  ADD KEY `jobseeker_id` (`jobseeker_id`),
  ADD KEY `key_skills_id` (`key_skills_id`);

--
-- Indexes for table `user_prefered_location`
--
ALTER TABLE `user_prefered_location`
  ADD PRIMARY KEY (`user_prefered_location_id`),
  ADD KEY `jobseeker_id` (`jobseeker_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `jobseeker_id` (`jobseeker_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_job_info`
--
ALTER TABLE `applied_job_info`
  MODIFY `applied_job_info_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `company_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=606;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_name`
--
ALTER TABLE `course_name`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `create_profile_user`
--
ALTER TABLE `create_profile_user`
  MODIFY `jobseeker_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `education_type`
--
ALTER TABLE `education_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `functional_area`
--
ALTER TABLE `functional_area`
  MODIFY `functional_area_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `job_post_course`
--
ALTER TABLE `job_post_course`
  MODIFY `job_post_course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_post_details`
--
ALTER TABLE `job_post_details`
  MODIFY `job_post_details_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_post_details_key_skills`
--
ALTER TABLE `job_post_details_key_skills`
  MODIFY `job_post_details_key_skills_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_post_details_role`
--
ALTER TABLE `job_post_details_role`
  MODIFY `job_post_details_role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_post_functional_area`
--
ALTER TABLE `job_post_functional_area`
  MODIFY `job_post_functional_area_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_post_location`
--
ALTER TABLE `job_post_location`
  MODIFY `job_post_location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `key_skills`
--
ALTER TABLE `key_skills`
  MODIFY `key_skills_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- AUTO_INCREMENT for table `project_details`
--
ALTER TABLE `project_details`
  MODIFY `project_details_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recruiter_employee_info`
--
ALTER TABLE `recruiter_employee_info`
  MODIFY `recruiter_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seq_que`
--
ALTER TABLE `seq_que`
  MODIFY `seq_que_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_education_info`
--
ALTER TABLE `user_education_info`
  MODIFY `education_info_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_functional_details`
--
ALTER TABLE `user_functional_details`
  MODIFY `user_functional_details_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_key_skills`
--
ALTER TABLE `user_key_skills`
  MODIFY `user_key_skills_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_prefered_location`
--
ALTER TABLE `user_prefered_location`
  MODIFY `user_prefered_location_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `user_role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
