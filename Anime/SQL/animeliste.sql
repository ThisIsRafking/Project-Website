-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2024 at 10:46 AM
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
CREATE DATABASE: `animeliste`;
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'rawrarar', '$2y$10$MtVX6TP6sSYTwv.7O.KUGOKNUoV4fxQY6fAdGMz5vGiD5djBwqoWG'),
(2, 'rafking', '$2y$10$ZXhRpp9owactxQmNiW2MpOYxeK21Zh6meaq61AiTA7ucW3w6R9c.C'),
(3, 'dsdsadasd', '$2y$10$.3yaBrHzTbY9DPy7tTjPdObN.gQLZXkTabgSHYBNet3LBTrZAJvk2'),
(4, 'dsdsadasdw', '$2y$10$xVO/e9oN2Ixgl4OP5FMeSOBo8vkp7NtTmoBkpqs4mqBrwQ1lTIbHG'),
(5, 'alok subianto', '$2y$10$qL3MAJWC93dLsstjTIIWVe60IekqE82sZfUshLDwupnRUE4C90Kh2'),
(6, 'slitemasterz', '$2y$10$JO80a1s0c.J43fzTEb25Le8iiDNjmr3MOVyfqQgeTr1PYYgri748e'),
(7, 'agung', '$2y$10$.nFSf031nQUkFmXo77PbGuxJG/FEfy.uu64ejqiVFYej2ZOw0Qwtu'),
(8, 'air', '$2y$10$vn/Nlz3.uAkmDdMB4DXkuuwIw2fkrv68txjo6yDkZ6ypBveINFCnq'),
(9, 'mega', '$2y$10$5mDVEb/mfBgI3XcudFBEZefThugKqLsw6oOoCEtmF6HZoAsfap2iG'),
(10, 'yatta', '$2y$10$vCuO5rQJIVRS7re/Tdv/7u0T.Rqm5d7CgA0B8C1m2Oy.AAHaAmySi'),
(11, 'alok', '$2y$10$LhGbfjH0nhSHhNDPuhy7x.6VB/euuiLCv6h3wA6VBG1D6aYa6QfaC'),
(12, 'wwww', '$2y$10$gMU4/18YejdLjazliDxOQuNdGP2R3Ui9jKqb45QScsHeLFdkE88TO');

-- --------------------------------------------------------

--
-- Table structure for table `anime`
--

CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `sinopsis` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anime`
--

INSERT INTO `anime` (`id`, `name`, `genre`, `episodes`, `score`, `images`, `genre_id`, `sinopsis`) VALUES
(1, 'Sousou no Frieren', 'Adventure, Drama, Fantasy', 28, 9.14, 'SNF.jpg', NULL, 'Selama pencarian mereka selama satu dekade untuk mengalahkan Raja Iblis, para anggota kelompok pahlawan—Himmel sendiri, pendeta Heiter, prajurit kurcaci Eisen, dan penyihir elf Frieren—menjalin ikatan melalui petualangan dan pertempuran, menciptakan kenangan berharga yang tak terlupakan bagi sebagian besar orang. dari mereka.\n\nNamun, waktu yang dihabiskan Frieren bersama rekan-rekannya hanya setara dengan sebagian kecil dari hidupnya, yang telah berlangsung lebih dari seribu tahun. Ketika partainya bubar setelah kemenangan mereka, Frieren dengan santai kembali ke rutinitas \"biasa\" mengumpulkan mantra di seluruh benua. Karena perasaannya terhadap waktu yang berbeda, dia tampaknya tidak memiliki perasaan yang kuat terhadap pengalaman yang dia lalui.\n\nSeiring berlalunya waktu, Frieren perlahan-lahan menyadari bagaimana hari-harinya di pesta pahlawan benar-benar memengaruhi dirinya. Menyaksikan kematian dua mantan temannya, Frieren mulai menyesal telah menganggap remeh kehadiran mereka; d'),
(2, 'Bleach: Sennen Kessen-hen', 'Action, Adventure, Fantasy', 13, 9.03, 'BLEACH.jpg', NULL, 'Soul Reaper pengganti Ichigo Kurosaki menghabiskan hari-harinya melawan Hollow, roh jahat berbahaya yang mengancam Kota Karakura. Ichigo menjalankan misinya bersama sekutu terdekatnya: Orihime Inoue, teman masa kecilnya yang memiliki bakat penyembuhan; Yasutora Sado, teman sekelas SMA-nya yang memiliki kekuatan super; dan Uryuu Ishida, saingan Quincy Ichigo.\n\nRutinitas main hakim sendiri Ichigo terganggu oleh kemunculan tiba-tiba Asguiaro Ebern, seorang Arrancar berbahaya yang menandakan kembalinya Yhwach, raja Quincy kuno. Yhwach berupaya menyalakan kembali perseteruan berdarah bersejarah antara Soul Reaper dan Quincy, dan dia bertekad untuk menghapus dunia manusia dan Soul Society selamanya.\n\nYhwach melancarkan invasi dua arah ke Soul Society dan Hueco Mundo, rumah Hollows dan Arrancar. Sebagai pembalasan, Ichigo dan teman-temannya harus bertarung bersama sekutu lama dan musuh untuk mengakhiri kampanye pembantaian Yhwach sebelum dunia berakhir.'),
(4, 'SOLO LEVELING', 'Action, Adventure, Fantasy', 12, 8.48, 'SOLEV.jpg', NULL, 'Sepuluh tahun yang lalu, \"Gerbang\" muncul dan menghubungkan dunia nyata dengan dunia sihir dan monster. Untuk memerangi binatang keji ini, orang-orang biasa menerima kekuatan super dan dikenal sebagai \"Pemburu\". Sung Jin-Woo yang berusia dua puluh tahun adalah salah satu Hunter tersebut, tetapi dia dikenal sebagai “Yang Terlemah di Dunia,” karena kekuatannya yang menyedihkan dibandingkan dengan E-Rank yang sangat sedikit sekalipun. Tetap saja, dia memburu monster tanpa kenal lelah di Gates berpangkat rendah untuk membayar tagihan medis ibunya.\n\nNamun, gaya hidup menyedihkan ini berubah ketika Jin-Woo—yang percaya dirinya adalah satu-satunya yang tersisa untuk mati dalam misi yang salah—terbangun di rumah sakit tiga hari kemudian dan menemukan layar misterius mengambang di depannya. \"Log Pencarian\" ini menuntut Jin-Woo menyelesaikan program pelatihan yang tidak realistis dan intens, atau menghadapi hukuman yang sesuai. Awalnya enggan untuk mematuhi karena ketatnya misi tersebut, Jin-Wo'),
(5, 'Shingeki no Kyojin: The Final Season - Kanketsu-hen', 'Action, Drama, Suspense', 2, 8.93, 'SNK.jpg', NULL, NULL),
(6, 'Code Geass: Hangyaku no Lelouch R2', ' Action, Award Winning, Drama, Sci-Fi', 25, 8.91, 'CG.jpg', NULL, NULL),
(7, 'Black Clover', ' Action, Comedy, Fantasy', 170, 8.15, 'BC.jpeg', NULL, NULL),
(8, 'Jujutsu Kaisen 2nd Season', ' Action, Fantasy', 23, 8.89, 'JJK.jpg', NULL, 'Saat itu tahun 2006, dan aula Sekolah Menengah Jujutsu Prefektur Tokyo bergema dengan pertengkaran tak berujung dan perdebatan sengit antara dua sahabat yang tak terpisahkan. Memancarkan kepercayaan diri yang tak tergoyahkan, Satoru Gojou dan Suguru Getou percaya bahwa tidak ada tantangan yang terlalu besar bagi penyihir Kelas Khusus yang muda dan kuat seperti mereka. Mereka ditugaskan untuk mengantarkan seorang gadis berakal sehat bernama Riko Amanai dengan aman ke entitas yang keberadaannya merupakan inti dari dunia jujutsu. Namun, misi tersebut menjerumuskan mereka ke dalam pusaran konflik moral yang mengancam kehancuran persahabatan yang sudah lemah antara penyihir dan manusia biasa.\n\nDua belas tahun kemudian, pelajar dan dukun berada di garis depan pertahanan melawan meningkatnya jumlah kutukan tingkat tinggi yang lahir dari emosi negatif manusia. Ketika entitas semakin berkuasa, kesadaran diri dan ambisi mereka juga meningkat. Kutukan tersebut bersatu untuk tujuan bersama yaitu '),
(9, 'Violet Evergarden Movie', 'Award Winning, Drama, Fantasy', 1, 8.88, 'VEM.jpg', NULL, NULL),
(10, 'Clannad: After Story', 'Drama, Romance, Supernatural', 24, 8.93, 'CAS.jpg', NULL, NULL),
(11, 'Vinland Saga', 'Action, Adventure, Drama', 24, 8.75, 'VS.jpg', NULL, NULL),
(12, 'Steins;Gate', ' Drama, Sci-Fi, Suspense', 24, 9.07, 'SG.jpg', NULL, NULL),
(13, 'Fullmetal Alchemist: Brotherhood', ' Action, Adventure, Drama, Fantasy', 64, 9.09, 'FAB.jpg', NULL, NULL),
(14, 'Gintama: The Final', 'Action, Comedy, Drama, Sci-Fi', 1, 9.04, 'G.jpg', NULL, NULL),
(15, 'Hunter x Hunter (2011)', 'Action, Adventure, Fantasy', 148, 9.04, 'HXH.jpg', NULL, NULL),
(16, 'Kimi no Na wa.', 'Award Winning, Drama, Supernatural', 1, 8.84, 'ASEP.jpg', NULL, NULL),
(17, 'Oshi no Ko', 'Drama, Supernatural', 11, 8.71, 'ONK.jpg', NULL, NULL),
(18, 'Made in Abyss', ' Adventure, Drama, Fantasy, Mystery, Sci-Fi', 13, 8.65, 'MIA.jpg', NULL, NULL),
(19, 'Shigatsu wa Kimi no Uso', ' Drama, Romance', 22, 8.65, 'KNU.jpg', NULL, NULL),
(20, 'Kono Subarashii Sekai ni Shukufuku wo! 2', 'Adventure, Comedy, Fantasy', 10, 8.26, 'KSB.jpg', NULL, NULL),
(21, 'Seishun Buta Yarou wa Yumemiru Shoujo no Yume wo Minai', 'Drama, Romance, Supernatural', 1, 8.6, 'SBY.jpg', NULL, NULL),
(22, 'Fate/Zero 2nd Season', ' Action, Fantasy, Supernatural', 12, 8.5, 'FZ.jpg', NULL, NULL),
(23, 'Re:Zero 2nd Season Part 2', 'Drama, Fantasy, Suspense', 12, 8.44, 'RZ.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) DEFAULT NULL,
  `episode_number` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `video_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `anime_id`, `episode_number`, `title`, `video_url`) VALUES
(1, 4, 1, 'Episode 01', 'https://tv1.kuronime.vip/nonton-solo-leveling-episode-1/'),
(2, 4, 2, 'Episode 02', 'https://tv1.kuronime.vip/nonton-solo-leveling-episode-2/'),
(3, 4, 3, 'Episode 03', 'https://tv1.kuronime.vip/nonton-solo-leveling-episode-3/'),
(4, 4, 4, 'Episode 04', 'https://tv1.kuronime.vip/nonton-solo-leveling-episode-4/'),
(5, 4, 5, 'Episode 05', 'https://tv1.kuronime.vip/nonton-solo-leveling-episode-5/'),
(6, 8, 1, 'Episode 01', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-1'),
(7, 8, 2, 'Episode 02', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-2'),
(8, 8, 3, 'Episode 03', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-3'),
(9, 8, 4, 'Episode 04', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-4'),
(10, 8, 5, 'Episode 05', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-5'),
(11, 8, 6, 'Episode 06', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-6'),
(12, 8, 7, 'Episode 07', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-7'),
(13, 8, 8, 'Episode 08', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-8'),
(14, 8, 9, 'Episode 09', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-9'),
(15, 8, 10, 'Episode 10', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-10'),
(16, 8, 11, 'Episode 11', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-11'),
(17, 8, 12, 'Episode 12', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-12'),
(18, 8, 13, 'Episode 13', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-13'),
(19, 8, 14, 'Episode 14', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-14'),
(20, 8, 15, 'Episode 15', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-15'),
(21, 8, 16, 'Episode 16', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-16'),
(22, 8, 17, 'Episode 17', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-17'),
(23, 8, 18, 'Episode 18', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-18'),
(24, 8, 19, 'Episode 19', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-19'),
(25, 8, 20, 'Episode 20', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-20'),
(26, 8, 21, 'Episode 21', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-21'),
(27, 8, 22, 'Episode 22', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-22'),
(28, 8, 23, 'Episode 23', 'https://tv1.kuronime.vip/nonton-jujutsu-kaisen-season-2-episode-23'),
(29, 1, 1, 'Episode 01', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-1/'),
(30, 1, 2, 'Episode 02', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-2/'),
(31, 1, 3, 'Episode 03', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-3/'),
(32, 1, 4, 'Episode 04', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-4/'),
(33, 1, 5, 'Episode 05', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-5/'),
(34, 1, 6, 'Episode 06', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-6/'),
(35, 1, 7, 'Episode 07', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-7/'),
(36, 1, 8, 'Episode 08', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-8/'),
(37, 1, 9, 'Episode 09', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-9/'),
(38, 1, 10, 'Episode 10', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-10/'),
(39, 1, 11, 'Episode 11', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-11/'),
(40, 1, 12, 'Episode 12', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-12/'),
(41, 1, 13, 'Episode 13', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-13/'),
(42, 1, 14, 'Episode 14', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-14/'),
(43, 1, 15, 'Episode 15', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-15/'),
(44, 1, 16, 'Episode 16', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-16/'),
(45, 1, 17, 'Episode 17', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-17/'),
(46, 1, 18, 'Episode 18', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-18/'),
(47, 1, 19, 'Episode 19', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-19/'),
(48, 1, 20, 'Episode 20', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-20/'),
(49, 1, 21, 'Episode 21', 'https://tv1.kuronime.vip/nonton-sousou-no-frieren-episode-21/');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Romance'),
(4, 'Drama'),
(5, 'Comedy'),
(6, 'Suspense'),
(7, 'Supernatural'),
(8, 'SCI-FI'),
(9, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `username`, `password`, `email`, `image`) VALUES
(11, 'php', 'sadasd', '2dsa@gmail.com', NULL),
(12, 'rwae', 'rwar', 'sarasra@gmail.com', NULL),
(13, 'dsadas', 'dsadsad', 'sadsad@gmail.com', '5856.jpg'),
(14, 'dsad21', 'sdaw', '2dsad@gmail.com', '5856.jpg'),
(15, 'ALOK SUBIANTO', 'alokku', 'memslans@gmail.com', '65bd040f8b1f6.jpg'),
(20, 'akuemail', 'sebuahemail', 'ahaha@gmail.com', '65c08ee53c057.png'),
(21, 'rawrarar', 'www', 'www@gmail.com', '65c1abd203457.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anime_id` (`anime_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anime`
--
ALTER TABLE `anime`
  ADD CONSTRAINT `genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
