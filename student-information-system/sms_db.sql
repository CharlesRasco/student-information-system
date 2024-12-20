SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'admin', '$2y$10$H7obJEdmLzqqcPy7wQWhsOLUvrgzC8f1Y1or2Gxaza5z1PT0tvLy6', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseCode` varchar(10) NOT NULL,
  `courseTitle` varchar(100) NOT NULL,
  `credit` varchar(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  `semester` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseCode`, `courseTitle`, `credit`, `type`, `semester`) VALUES
('CSE E-1CSE', 'Elective Course', '3.0', 'Theory', '5th'),
('CSE101', 'Introduction to Computer Science', '3.0', 'Theory', '1st'),
('CSE102', 'Programming Fundamentals', '3.0', 'Theory', '1st'),
('CSE102L', 'Programming Fundamentals Lab', '1.5', 'Lab', '1st'),
('CSE111', 'Data Structures and Algorithms', '3.0', 'Theory', '2nd'),
('CSE111L', 'Data Structures and Algorithms Lab', '1.5', 'Lab', '2nd'),
('CSE121', 'Object-Oriented Programming', '3.0', 'Theory', '2nd'),


-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depId` int(11) NOT NULL,
  `deptName` varchar(255) DEFAULT NULL,
  `deptHead` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`depId`, `deptName`, `deptHead`) VALUES
(1, 'Computer Science & Engineering', 'Ratul Khan'),
(2, 'Electrical and Electronics Enigineering', 'Abdullah'),
(4, 'Civil Engineering', 'Abdur Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `student_id` varchar(200) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`student_id`, `student_name`, `rating`, `comment`) VALUES

-- --------------------------------------------------------
--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_full_name`, `sender_email`, `message`, `date_time`) VALUES

-- --------------------------------------------------------


--
-- Table structure for table `sem_course_list`
--

CREATE TABLE `sem_course_list` (
  `dept` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `intake` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `semno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sem_course_list`
--

INSERT INTO `sem_course_list` (`dept`, `year`, `semester`, `intake`, `section`, `semno`) VALUES
('Computer Science & Engineering', '2024', 'Spring', '1', '1', '1st'),
('Computer Science & Engineering', '2024', 'Fall', '1', '1', '2nd'),
('Computer Science & Engineering', '2025', 'Spring', '1', '1', '3rd'),
('Computer Science & Engineering', '2025', 'Fall', '1', '1', '4th'),
('Computer Science & Engineering', '2026', 'Spring', '1', '1', '5th'),
('Computer Science & Engineering', '2026', 'Fall', '1', '1', '6th'),
('Computer Science & Engineering', '2027', 'Spring', '1', '1', '7th'),

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `current_year` int(11) NOT NULL,
  `current_semester` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `slogan` varchar(300) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`current_year`, `current_semester`, `school_name`, `slogan`, `about`) VALUES
(2024, 'Spring', 'Student Information System', 'Your Source for Academic Information', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL,
  `intake` varchar(30) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `fname`, `lname`, `section`, `address`, `gender`, `email_address`, `date_of_birth`, `date_of_joined`, `parent_fname`, `parent_lname`, `parent_phone_number`, `intake`, `department`, `semester`, `year`) VALUES
(13, 'abdullah', '$2y$10$hcAHJQrMWLtcs/eEp8/JGOz.hB8PF4U0dpZe.fty5uJXk4veHEHSy', 'Abdullah', 'Al Mamun', 1, 'Mirpur', 'Male', 'abdullah@gmail.com', '2024-05-16', '2024-05-13 18:36:14', 'Parent First Name', 'Pr Last Name', '02938848392', '1', 'Computer Science & Engineering', 'Spring', '2024'),

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `depId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;


