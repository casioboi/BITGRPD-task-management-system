-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 03:57 PM
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
-- Database: `taskmatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attendance_info`
--

INSERT INTO `attendance_info` (`aten_id`, `atn_user_id`, `in_time`, `out_time`, `total_duration`) VALUES
(38, 18, '22-03-2021 13:51:01', '09-11-2023 10:09:02', '20:18:01'),
(35, 17, '22-03-2021 11:37:44', '07-01-2024 22:55:15', '11:17:31'),
(37, 21, '22-03-2021 13:49:26', NULL, NULL),
(39, 23, '22-03-2021 13:51:51', NULL, NULL),
(40, 20, '22-03-2021 13:52:24', NULL, NULL),
(41, 25, '22-03-2021 15:09:00', NULL, NULL),
(42, 1, '22-03-2021 22:01:43', '13-01-2024 22:54:50', '00:53:07'),
(43, 17, '07-01-2024 22:56:44', '07-01-2024 22:57:16', '00:00:32'),
(44, 28, '13-01-2024 22:52:18', '13-01-2024 22:52:45', '00:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE `task_info` (
  `task_id` int(50) NOT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_description` text DEFAULT NULL,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `task_info`
--

INSERT INTO `task_info` (`task_id`, `t_title`, `t_description`, `t_start_time`, `t_end_time`, `t_user_id`, `status`) VALUES
(20, 'Communications', 'You\'re assigned to handle incoming calls and other communications within the office.', '2021-03-22 12:00', '2021-03-22 13:00', 17, 2),
(21, 'Filing', 'You\'re assigned to management of filing system.', '2021-03-22 10:00', '2021-03-22 15:10', 22, 0),
(22, 'Virtual Meeting', 'Please join the virtual meeting with your senior manager regarding your works on this placement.', '2021-03-22 15:00', '2021-03-22 15:20', 24, 0),
(23, 'Data Entry', 'Go through some data!', '2021-03-22 14:00', '2021-03-22 17:00', 25, 1),
(26, 'Project Planning Session', 'Participate in a project planning session with the team.', '2023-03-23 15:30', '2023-03-23 17:00', 11, 1),
(27, 'Content Creation for Social Media', 'Create engaging content for social media channels.', '2023-03-23 09:00', '2023-03-23 10:30', 12, 2),
(28, 'Customer Support Calls', 'Handle customer support calls and address inquiries.', '2023-03-23 11:00', '2023-03-23 12:30', 13, 0),
(29, 'Quality Assurance Testing', 'Conduct quality assurance testing for the software release.', '2023-03-23 13:00', '2023-03-23 14:30', 14, 1),
(30, 'Employee Training Session', 'Lead a training session for new employees.', '2023-03-23 15:00', '2023-03-23 16:30', 15, 2),
(31, 'Market Research Analysis', 'Conduct analysis on recent market research data.', '2023-03-23 09:30', '2023-03-23 11:00', 16, 0),
(32, 'Inventory Management', 'Manage and update the inventory records.', '2023-03-23 12:00', '2023-03-23 13:30', 17, 1),
(33, 'Website Maintenance', 'Perform maintenance tasks for the company website.', '2023-03-23 14:00', '2023-03-23 15:30', 18, 2),
(34, 'Event Planning for Company Anniversary', 'Plan and organize activities for the upcoming company anniversary.', '2023-03-23 16:00', '2023-03-23 17:30', 19, 0),
(35, 'Code Review Session', 'Conduct a code review session for the development team.', '2023-03-23 10:30', '2023-03-23 12:00', 20, 1),
(36, 'Task Automation Implementation', 'Implement task automation processes to improve efficiency.', '2023-03-23 13:00', '2023-03-23 14:30', 21, 2),
(37, 'Product Launch Preparation', 'Prepare for the upcoming product launch event.', '2023-03-23 15:00', '2023-03-23 16:30', 22, 0),
(38, 'Client Consultation Meeting', 'Hold a consultation meeting with a key client.', '2023-03-23 09:00', '2023-03-23 10:30', 23, 1),
(39, 'Employee Performance Reviews', 'Conduct performance reviews for team members.', '2023-03-23 11:00', '2023-03-23 12:30', 24, 2),
(40, 'IT Infrastructure Upgrade', 'Plan and execute upgrades for the company\'s IT infrastructure.', '2023-03-23 13:30', '2023-03-23 15:00', 25, 0),
(41, 'Login Form Designing', 'Design HTML, CSS, JS files for login form designing.', '2024-01-07 12:00', '2024-01-10 12:00', 17, 2),
(42, 'Development of Login Form', 'design, develop and test forms related login and write logic for secure login functionality', '2024-01-13 12:00', '2024-01-20 12:00', 28, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `fullname`, `username`, `email`, `password`, `temp_password`, `user_role`) VALUES
(1, 'Mayuri K', 'mayuri.infospace@gmail.com', 'mayuri.infospace@gmail.com', 'cd92a26534dba48cd785cdcc0b3e6bd1', NULL, 1),
(17, 'Raghav Shasri', 'raghavshasri', 'raghav.shasri@example.com', 'e10adc3949ba59abbe56e057f20f883e', '', 2),
(18, 'Rajeev Kapoor', 'rajeev_kapoor', 'rajeev.kapoor@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(19, 'Priya Singh', 'priya_singh', 'priya.singh@example.com', 'd19cbde3f7ae39d1ac027dd5319ff687', '7301941', 2),
(20, 'Anand Kumar', 'anand_kumar', 'anand.kumar@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(21, 'Deepika Reddy', 'deepika_reddy', 'deepika.reddy@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(22, 'Vikram Verma', 'vikram_verma', 'vikram.verma@example.com', 'd03b2612e88338d193a0ff05c3216053', '7329407', 2),
(23, 'Sanya Gupta', 'sanya_gupta', 'sanya.gupta@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(24, 'Ravi Khanna', 'ravi_khanna', 'ravi.khanna@example.com', '789395abc72a025db1604582f52af520', '5876160', 2),
(25, 'Meera Joshi', 'meera_joshi', 'meera.joshi@example.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(27, 'Suresh Jain', 'surejain', 'surejain@example.com', 'a10f11c1ba82d9698f377c1408da77b2', '6246125', 2),
(28, 'Sachin Mahajan', 'sachinmahajan', 'sachinmahajan@gmail.com', '1455494c9f58563769b601366047c030', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
  MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
