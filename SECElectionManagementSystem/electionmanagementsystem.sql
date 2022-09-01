-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 01:55 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electionmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$0JyeBGTxxvAewb7AIjy8nev3jfRD6FPv7AcatYxH2aJCAn4D5KmZ2', 'SEC', 'Chairman', '', '2022-04-30'),
(3, 'staff', '$2y$10$4xJk80gFEmQc4vzJ9ti8OO17h30hCj3XhwMjn.K8KSqYhSLDllWWi', 'Mark', 'Bautista', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `id` int(50) NOT NULL,
  `student_id` int(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `department` varchar(20) NOT NULL,
  `year_level` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `position` varchar(10) NOT NULL,
  `partyname` varchar(30) NOT NULL,
  `picture` varchar(150) NOT NULL,
  `matriculation` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`id`, `student_id`, `firstname`, `lastname`, `department`, `year_level`, `email`, `position`, `partyname`, `picture`, `matriculation`) VALUES
(9, 1706560, 'Klyde Louise', 'Olitoquit', 'CAS', 4, 'kl.olitoquit123@gmail.com', '14', '6', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `position` varchar(50) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `year_level` int(11) NOT NULL,
  `party_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `student_id`, `position_id`, `firstname`, `lastname`, `department`, `position`, `platform`, `photo`, `email`, `year_level`, `party_id`) VALUES
(25, 1706560, 14, 'Klyde Louise', 'Olitoquit', 'CAS', '', '', '', '', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `election_id` int(11) NOT NULL,
  `election_name` varchar(30) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

INSERT INTO `election` (`election_id`, `election_name`, `startDate`, `endDate`, `status`) VALUES
(9, '2022 USG ELECTION', '2022-08-02', '2022-08-10', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `loghistory`
--

CREATE TABLE `loghistory` (
  `id` int(30) NOT NULL,
  `user` int(50) NOT NULL,
  `actions` varchar(160) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partylist`
--

CREATE TABLE `partylist` (
  `id` int(11) NOT NULL,
  `partyname` varchar(30) NOT NULL,
  `tagline` varchar(80) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partylist`
--

INSERT INTO `partylist` (`id`, `partyname`, `tagline`, `priority`) VALUES
(6, 'BUGKOS', 'Education for all', 1),
(7, 'LIKSI', 'Kabataan ang pagasa ng bayan', 1),
(8, 'AKO UNC', 'All for one, one for all', 2);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(14, 'President', 1, 1),
(15, 'Vice President', 1, 2),
(16, 'Chairperson', 1, 3),
(17, 'Vice Chairperson', 1, 4),
(18, 'Representative', 2, 5),
(22, 'Councilor', 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(2, 'gnGTaHtQoIUwXiF', '$2y$10$H0aMJzZYTBxbodJchfiUoebhza4k52YdCtYdGv1Buv3', 'Hubert', 'Republika', '', '0000-00-00'),
(3, '4ArXV8SbUB9EJ1G', '$2y$10$yIQ1SaON6WL1kf54QznNrO2MmtWDTDdPAm299i5ZR7r', 'Renz', 'Cas', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `student_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` int(55) NOT NULL,
  `status` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `student_id`, `email`, `code`, `status`, `password`) VALUES
(35, 1808569, 'glamorous.naga@gmail.com', 0, '', '1808569'),
(36, 1706560, 'kl.olitoquit123@gmail.com', 536323, 'verified', '1706560'),
(37, 1312463, 'kathrynbernardo@gmail.com', 199301, 'notverified', '1312463'),
(41, 1977252, 'andreaolmeda@gmail.com', 0, '', '1977252'),
(46, 1422344, 'joemcarl.16@gmail.com', 0, '', '1422344');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `suffix` varchar(2) NOT NULL,
  `year_level` int(5) NOT NULL,
  `department` varchar(50) NOT NULL,
  `email` varchar(55) NOT NULL,
  `photo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `student_id`, `firstname`, `lastname`, `middlename`, `suffix`, `year_level`, `department`, `email`, `photo`) VALUES
(478, '', 1808569, 'Ma. Theresa', 'Masapol', '', '', 4, 'CCS', 'theresamasapol@gmail.com', ''),
(479, '', 1706560, 'Klyde Louise', 'Olitoquit', '', '', 4, 'CAS', 'kl.olitoquit123@gmail.com', ''),
(484, '', 1977252, 'Andrea', 'Olmeda', '', '', 1, 'CEA', 'andreaolmeda@gmail.com', ''),
(489, '', 1422344, 'Carl Joem', 'Masapol', '', '', 2, 'CBA', 'joemcarl.16@gmail.com', ''),
(510, '', 1312463, 'Kathryn', 'Bernardo', '', '', 4, 'CCS', 'kathrynbernardo@gmail.com', ''),
(511, '', 0, '', '', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `department` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`election_id`),
  ADD UNIQUE KEY `election_name` (`election_name`),
  ADD UNIQUE KEY `election_id` (`election_id`);

--
-- Indexes for table `loghistory`
--
ALTER TABLE `loghistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partylist`
--
ALTER TABLE `partylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `election`
--
ALTER TABLE `election`
  MODIFY `election_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `loghistory`
--
ALTER TABLE `loghistory`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `partylist`
--
ALTER TABLE `partylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;
--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
