-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Apr 2021 pada 17.45
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_final_project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `cut_off` date NOT NULL,
  `limit_request` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `cut_off`, `limit_request`) VALUES
(1, 'Parking', '2021-04-17', 150000),
(2, 'Transportation', '2021-04-17', 500000),
(3, 'Swab Antigen & Antibody', '2021-04-17', 150000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(3) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `birth_date`, `gender`, `address`, `phone`) VALUES
(1, 'Ikhsan Nur Syahbanu', '1997-12-28', 'Laki-laki', '', ''),
(2, 'Ristia Muhamamd Panji Winarrman', '1998-10-05', 'Laki-laki', '', ''),
(3, 'Fadel Muhammad Nasution', '1992-02-29', 'Laki-laki', '', ''),
(4, 'Rafi Mufadhal Difany', '1998-05-08', 'Laki-laki', '', ''),
(5, 'Christina Regita Kumala Sari', '1997-04-24', 'Perempuan', '', ''),
(6, 'Yosie Fridolin', '1998-06-01', 'Perempuan', '', ''),
(7, 'Jaka Brajadenta', '1998-04-04', 'Laki-laki', '', ''),
(8, 'Florentina Vela Nindyasari', '1998-07-20', 'Perempuan', '', ''),
(9, 'Jarister Edwins Silalahi', '1998-03-25', 'Laki-laki', '', ''),
(10, 'Zahra Zakiyah Salsabila Kurnia', '1997-09-27', 'Perempuan', '', ''),
(11, 'Aulia Syifa', '1999-06-30', 'Perempuan', '', ''),
(12, 'William Yangjaya', '1997-03-01', 'Laki-laki', '', ''),
(13, 'Arnum Sari Khoirunnisa', '1998-04-17', 'Perempuan', '', ''),
(14, 'Panjitestregist', '2018-10-10', 'Laki-laki', '', ''),
(15, 'Arnum Sari Khoi', '1999-10-10', 'Perempuan', '', ''),
(20, 'akakakaka', '2018-10-10', 'Laki-laki', '', ''),
(21, 'akakakaka', '2018-10-10', 'Laki-laki', '', ''),
(22, 'aasdadakakakaka', '2018-10-10', 'Laki-laki', '', ''),
(23, 'aasdaasdadakakakaka', '2018-10-10', 'Laki-laki', '', ''),
(24, 'aasdsaasdadakakakaka', '2018-10-10', 'Laki-laki', '', ''),
(25, 'aaassdsaasdadakakakaka', '2018-10-10', 'Laki-laki', '', ''),
(26, 'UJANG', '2018-10-10', 'Laki-laki', '', ''),
(27, 'OJAN', '2018-10-10', 'Laki-laki', '', ''),
(29, 'Panjitestregist', '2018-10-10', 'Laki-laki', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `private_vehicle`
--

CREATE TABLE `private_vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `license_plate` varchar(15) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `privileges`
--

CREATE TABLE `privileges` (
  `privilege_id` int(3) NOT NULL,
  `privilege_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `privileges`
--

INSERT INTO `privileges` (`privilege_id`, `privilege_name`) VALUES
(1, 'CREATE'),
(2, 'READ'),
(3, 'UPDATE'),
(4, 'DELETE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date_request` date NOT NULL,
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `request`
--

INSERT INTO `request` (`request_id`, `quantity`, `total`, `file`, `date_request`, `message`, `user_id`, `status_id`, `category_id`) VALUES
(1, 1, 150000, 'aa', '2021-04-09', '', 26, 1, 1),
(2, 1, 150000, 'as', '2021-04-07', 'a', 26, 1, 3),
(3, 1, 250000, '', '2021-04-04', '', 27, 1, 2),
(4, 1, 150000, 'a', '2021-04-04', 'a', 27, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `role_id` int(3) NOT NULL,
  `role_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'ADMIN'),
(2, 'TRAINER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_privileges`
--

CREATE TABLE `role_privileges` (
  `privilege_id` int(3) NOT NULL,
  `role_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role_privileges`
--

INSERT INTO `role_privileges` (`privilege_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(2, 2),
(4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`status_id`, `name`) VALUES
(1, 'Waiting'),
(2, 'Confirmed'),
(3, 'Not Confirmed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(1, 'ikhsan_1', 'ikhsan123'),
(2, 'panji_2', 'panji123'),
(3, 'fadel_3', 'fadel123'),
(4, 'rafi_4', 'rafi123'),
(5, 'regita_5', 'regita123'),
(6, 'yosie_6', 'yosie123'),
(7, 'jaka_7', 'jaka123'),
(8, 'vela_8', 'vela123'),
(9, 'edwin_9', 'edwin123'),
(10, 'zaki_10', 'zaki123'),
(11, 'aul_3', 'aul123'),
(12, 'wiliam_12', 'wiliam123'),
(13, 'arnum_13', 'arnum123'),
(21, 'panjia', 'asda12'),
(22, 'paasnjia', '$2a$10$UlzZKrukgHoMOzhEqCBakuRmTfQVJs8tFCBWltEIJiZgM1aKXhd9.'),
(23, 'arnumvelas', 'arvel'),
(24, 'arnumvelass', 'arvels'),
(25, 'abcdef', '$2a$10$G55u9NL1wTn/4A8ri5ct7.u9s75XpJNdKEJCmmSfK0YvDEo94Obju'),
(26, 'abcdefg', '$2a$10$2Tm3U7WqEYWA60Gvo1cv0e7LE6/RZ4NurzqQzsczs9Nc.DLFuaXCG'),
(27, 'abcdefgh', '$2a$10$wIDSUOg9EAqunh9i4S4M0eVuSaYLXgHy7BH8A/E1XvgYqPkl9vSnG'),
(29, 'oioioi', '$2a$10$rmANSm/IE51ndjK6h.4Ob.UnIYeHgTCLKSoMCIW1sODlQia10/bDe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `user_id` int(3) NOT NULL,
  `role_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 1),
(4, 1),
(4, 2),
(5, 2),
(6, 1),
(6, 1),
(7, 2),
(8, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(12, 2),
(13, 1),
(13, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 1),
(29, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `prefix` (`employee_id`);

--
-- Indexes for table `private_vehicle`
--
ALTER TABLE `private_vehicle`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`privilege_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `role_privileges`
--
ALTER TABLE `role_privileges`
  ADD KEY `fk_privilege_k` (`privilege_id`),
  ADD KEY `fk_role_k` (`role_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `fk_users` (`user_id`),
  ADD KEY `fk_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `private_vehicle`
--
ALTER TABLE `private_vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `private_vehicle`
--
ALTER TABLE `private_vehicle`
  ADD CONSTRAINT `private_vehicle_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Ketidakleluasaan untuk tabel `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `request_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `request_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Ketidakleluasaan untuk tabel `role_privileges`
--
ALTER TABLE `role_privileges`
  ADD CONSTRAINT `fk_privilege` FOREIGN KEY (`privilege_id`) REFERENCES `privileges` (`privilege_id`),
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `employee` (`employee_id`);

--
-- Ketidakleluasaan untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `role_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
