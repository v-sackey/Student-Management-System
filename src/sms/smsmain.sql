-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 05:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smsmain`
--

-- --------------------------------------------------------

--
-- Table structure for table `departement`
--

CREATE TABLE `departement` (
  `id` int(11) NOT NULL,
  `intitule` text NOT NULL,
  `responsable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departement`
--

INSERT INTO `departement` (`id`, `intitule`, `responsable_id`) VALUES
(1, 'ENGINEERING', NULL),
(2, 'MEDICAL', NULL),
(3, 'ART', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL,
  `nom` text DEFAULT NULL,
  `prenom` text DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `GRADE` text DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `EMAIL`, `GRADE`, `departement_id`) VALUES
(1, 'vero', 'abdul', 'teach@gmail.com', '', NULL),
(3, 'bruce', 'wayne', 'sauce@mail.com', '', NULL),
(4, 'amthews', 'romins', 'bush@mail.com', NULL, NULL),
(10, 'isabella', 'PORTU', 'portu@gmail.com', '', NULL),
(104, 'hassan', 'sackey', 'sck@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `prenom` text NOT NULL,
  `email` text NOT NULL,
  `apogee` int(11) NOT NULL,
  `filiere_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `email`, `apogee`, `filiere_id`) VALUES
(4, 'saiss', 'jaek', 'hen@gmail.com', 21, 6),
(1, 'Ampong', 'tabu', 'horse@gmail.com', 100, 4),
(2, 'pollurt', 'nicka', 'pig@gmail.com', 101, 4),
(6, 'meug', 'john', 'meug@gmail.com', 102, 4);

-- --------------------------------------------------------

--
-- Table structure for table `filiere`
--

CREATE TABLE `filiere` (
  `id` int(11) NOT NULL,
  `intitule` text NOT NULL,
  `responsable_id` int(11) DEFAULT NULL,
  `departement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filiere`
--

INSERT INTO `filiere` (`id`, `intitule`, `responsable_id`, `departement_id`) VALUES
(1, 'tourism', NULL, 3),
(2, 'fine arts', NULL, 3),
(3, 'gesa', NULL, 1),
(4, 'genie info', NULL, 1),
(5, 'bcg', NULL, 2),
(6, 'ofppt', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `filiere_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `intitule` text NOT NULL,
  `filiere_id` int(11) DEFAULT NULL,
  `professeur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `intitule`, `filiere_id`, `professeur_id`) VALUES
(1, 'analyse', 4, NULL),
(2, 'seo', 4, NULL),
(3, 'tech 1', 4, NULL),
(4, 'Html', 4, NULL),
(5, 'Marketing online', 4, NULL),
(6, 'SQL', 4, NULL),
(7, 'sex ed', 5, NULL),
(8, 'React', 4, NULL),
(9, 'Node Js', 4, NULL),
(10, 'CSS', 4, NULL),
(11, 'Typescript', 4, NULL),
(12, 'Networking', 4, NULL),
(13, 'IOTs', 4, NULL),
(14, 'BigData', 4, NULL),
(15, 'Project Management', 4, NULL),
(16, 'Biology', 5, NULL),
(17, 'Java\r\n', 4, NULL),
(18, 'Chemistry', 5, NULL),
(19, 'Geology', 5, NULL),
(20, 'TEC1', 5, NULL),
(21, 'Water resources', 5, NULL),
(22, 'Soil resources', 5, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `responsable_id` (`responsable_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD UNIQUE KEY `responsable_id_2` (`responsable_id`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `departement_id` (`departement_id`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`apogee`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `apogee` (`apogee`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `filiere_id` (`filiere_id`);

--
-- Indexes for table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `responsable_id` (`responsable_id`,`departement_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `intitule` (`intitule`) USING HASH,
  ADD KEY `departement_id` (`departement_id`),
  ADD KEY `responsable_id_2` (`responsable_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `filiere_id` (`filiere_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`intitule`,`filiere_id`,`professeur_id`) USING HASH,
  ADD UNIQUE KEY `id_2` (`id`,`intitule`,`filiere_id`,`professeur_id`) USING HASH,
  ADD UNIQUE KEY `intitule` (`intitule`) USING HASH,
  ADD KEY `filiere_id` (`filiere_id`),
  ADD KEY `professeur_id` (`professeur_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departement`
--
ALTER TABLE `departement`
  ADD CONSTRAINT `departement_ibfk_1` FOREIGN KEY (`responsable_id`) REFERENCES `enseignant` (`id`);

--
-- Constraints for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `enseignant_ibfk_1` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`);

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`id`);

--
-- Constraints for table `filiere`
--
ALTER TABLE `filiere`
  ADD CONSTRAINT `filiere_ibfk_2` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`id`),
  ADD CONSTRAINT `filiere_ibfk_3` FOREIGN KEY (`responsable_id`) REFERENCES `enseignant` (`id`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `enseignant` (`id`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `etudiant` (`apogee`),
  ADD CONSTRAINT `grades_ibfk_3` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`id`),
  ADD CONSTRAINT `grades_ibfk_4` FOREIGN KEY (`module_id`) REFERENCES `module` (`id`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `module_ibfk_1` FOREIGN KEY (`filiere_id`) REFERENCES `filiere` (`id`),
  ADD CONSTRAINT `module_ibfk_2` FOREIGN KEY (`professeur_id`) REFERENCES `enseignant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
