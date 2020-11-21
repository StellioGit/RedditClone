-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2020 at 02:18 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring-reddit-clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `created_date`, `text`, `post_id`, `user_id`) VALUES
(1, '2020-07-14 08:30:45', 'This is one of the best songs ever.....', 1, 1),
(2, '2020-07-14 08:31:02', 'Best Movie <3', 4, 1),
(3, '2020-07-14 08:32:03', 'I just love this song...\nThe voice is so much soothing ', 1, 2),
(4, '2020-07-14 08:32:25', 'Weird but interesting movie....', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `post_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `vote_count` int(11) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `created_date`, `description`, `post_name`, `url`, `vote_count`, `id`, `user_id`) VALUES
(1, '2020-07-14 08:24:26', '<h4 id=\"title\" class=\"style-scope ytd-metadata-row-renderer\">Song</h4>\n<div id=\"content\" class=\"style-scope ytd-metadata-row-renderer\">On My Way</div>\n<h4 id=\"title\" class=\"style-scope ytd-metadata-row-renderer\">Artist</h4>\n<div id=\"content\" class=\"style-scope ytd-metadata-row-renderer\">Alan Walker, Sabrina Carpenter, Farruko</div>\n<h4 id=\"title\" class=\"style-scope ytd-metadata-row-renderer\">Album</h4>\n<div id=\"content\" class=\"style-scope ytd-metadata-row-renderer\">On My Way</div>\n<h4 id=\"title\" class=\"style-scope ytd-metadata-row-renderer\">Licensed to YouTube by</h4>\n<div id=\"content\" class=\"style-scope ytd-metadata-row-renderer\">[Merlin] Ultra Music, SME (on behalf of Ultra Records); Sony ATV Publishing, EMI Music Publishing, Walt Disney Music Company (Publishing), ASCAP, LatinAutor - Warner Chappell, LatinAutor, SOLAR Music Rights Management, LatinAutor - SonyATV, UNIAO BRASILEIRA DE EDITORAS DE MUSICA - UBEM, CMRRA, UMPI, Warner Chappell, LatinAutor - UMPG, BMI - Broadcast Music Inc., AMRA, and 22 Music Rights Societies</div>', 'Alan Walker - On My Way', '4Kp3Ay2Hj8kwvwemaQ9D1jcKgWGZm2cYPOHjDRV7YWOBuJHKzYHrL7wPRf9rGW9y', 2, 1, 3),
(2, '2020-07-14 08:25:31', '<h4 id=\"title\" class=\"style-scope ytd-metadata-row-renderer\">Song</h4>\n<div id=\"content\" class=\"style-scope ytd-metadata-row-renderer\">Next To Me</div>\n<h4 id=\"title\" class=\"style-scope ytd-metadata-row-renderer\">Artist</h4>\n<div id=\"content\" class=\"style-scope ytd-metadata-row-renderer\">Axel Johansson</div>\n<h4 id=\"title\" class=\"style-scope ytd-metadata-row-renderer\">Album</h4>\n<div id=\"content\" class=\"style-scope ytd-metadata-row-renderer\">Next to Me</div>\n<h4 id=\"title\" class=\"style-scope ytd-metadata-row-renderer\">Licensed to YouTube by</h4>\n<div id=\"content\" class=\"style-scope ytd-metadata-row-renderer\">SME, The Orchard Music (on behalf of disco:wax); Muserk Rights Management, and 10 Music Rights Societies</div>', 'Axel Johansson - Next To Me', 'JWnmOwK9sah3kZvPwsFxWoORaHoH5FytTJfTF4HeTIeb88qAjsiynpyt7UwBacxY', 1, 1, 3),
(3, '2020-07-14 08:29:20', '<div class=\"credit_summary_item\">\n<h4 class=\"inline\">Director:</h4>\n<h4 class=\"inline\">&nbsp;</h4>\n</div>\n<div class=\"credit_summary_item\">\n<p class=\"inline\">Frank Darabont</p>\n<h4 class=\"inline\">Writers:</h4>\n&nbsp;<a href=\"https://www.imdb.com/name/nm0000175/?ref_=tt_ov_wr\">Stephen King</a>&nbsp;(short story \"Rita Hayworth and Shawshank Redemption\"),&nbsp;<a href=\"https://www.imdb.com/name/nm0001104/?ref_=tt_ov_wr\">Frank Darabont</a>&nbsp;(screenplay)</div>\n<div class=\"credit_summary_item\">\n<h4 class=\"inline\">Stars:</h4>\n&nbsp;<a href=\"https://www.imdb.com/name/nm0000209/?ref_=tt_ov_st_sm\">Tim Robbins</a>,&nbsp;<a href=\"https://www.imdb.com/name/nm0000151/?ref_=tt_ov_st_sm\">Morgan Freeman</a>,&nbsp;<a href=\"https://www.imdb.com/name/nm0348409/?ref_=tt_ov_st_sm\">Bob Gunton</a></div>', 'The Shawshank Redemption (1994)', 'v2js7u0iee9pbpcig0Lp6JKwtY7X8b6vBqnDdKCqOsW0XeH8zXlFdPlhiLs3Be9B', 1, 2, 4),
(4, '2020-07-14 08:29:52', '<div class=\"credit_summary_item\">\n<h4 class=\"inline\">Director:</h4>\n&nbsp;<a href=\"https://www.imdb.com/name/nm0000338/?ref_=tt_ov_dr\">Francis Ford Coppola</a></div>\n<div class=\"credit_summary_item\">\n<h4 class=\"inline\">Writers:</h4>\n&nbsp;<a href=\"https://www.imdb.com/name/nm0701374/?ref_=tt_ov_wr\">Mario Puzo</a>&nbsp;(screenplay by),&nbsp;<a href=\"https://www.imdb.com/name/nm0000338/?ref_=tt_ov_wr\">Francis Ford Coppola</a>&nbsp;(screenplay by)&nbsp;<span class=\"ghost\">|</span>&nbsp;<a href=\"https://www.imdb.com/title/tt0068646/fullcredits?ref_=tt_ov_wr#writers/\">1 more credit</a>&nbsp;&raquo;</div>\n<div class=\"credit_summary_item\">\n<h4 class=\"inline\">Stars:</h4>\n&nbsp;<a href=\"https://www.imdb.com/name/nm0000008/?ref_=tt_ov_st_sm\">Marlon Brando</a>,&nbsp;<a href=\"https://www.imdb.com/name/nm0000199/?ref_=tt_ov_st_sm\">Al Pacino</a>,&nbsp;<a href=\"https://www.imdb.com/name/nm0001001/?ref_=tt_ov_st_sm\">James Caan</a></div>', 'The Godfather (1972)', 'n7QoDNrbKWGNvb0Bo6THbiHGCqdEUWCPBc6kUZe90TTOsZZNc2ipp6Lm8512HcSe', 0, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `refresh_token`
--

CREATE TABLE `refresh_token` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `refresh_token`
--

INSERT INTO `refresh_token` (`id`, `created_date`, `token`) VALUES
(1, '2020-07-14 08:15:00', '3f72433d-1a9d-46ed-a261-233173f28a30'),
(2, '2020-07-14 08:21:40', 'f96098c9-7652-4ca8-ad8d-6c564f0fe9b1'),
(3, '2020-07-14 08:22:56', 'c41b02bb-53eb-41b0-9c69-b69e0cf8925c'),
(4, '2020-07-14 08:27:58', 'fb7e83e0-04c6-4748-8fb9-6310c2293a63'),
(5, '2020-07-14 08:30:10', 'dc3816fc-3225-4aed-91fa-6d9d5e42d504'),
(6, '2020-07-14 08:31:32', '61ecb408-0a4a-4fdd-a683-a4996062a8f7'),
(7, '2020-07-14 08:48:45', '69fc8e4d-aa52-457e-ba8b-f2fa0f58da66'),
(8, '2020-07-14 08:49:13', '0f75b34f-a7bb-4992-a4a8-d1df3c820220'),
(9, '2020-07-14 09:11:20', 'a56e52ad-9046-4007-ab77-cd2b447fa574');

-- --------------------------------------------------------

--
-- Table structure for table `subreddit`
--

CREATE TABLE `subreddit` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subreddit`
--

INSERT INTO `subreddit` (`id`, `created_date`, `description`, `name`, `user_user_id`) VALUES
(1, NULL, 'This subreddit will contain each post having song names', 'Songs', NULL),
(2, NULL, 'This subreddit will contain each post having movie names', 'Movies', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subreddit_posts`
--

CREATE TABLE `subreddit_posts` (
  `subreddit_id` bigint(20) NOT NULL,
  `posts_post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) NOT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `expiry_date`, `token`, `user_user_id`) VALUES
(1, NULL, '6dd04e3b-0388-42ca-9501-a70e93d96f1c', 1),
(2, NULL, '8493cc2a-5540-4ce2-8bbd-45f1577de6e3', 2),
(3, NULL, '61b8fd5e-33f3-4b40-8274-b5c4270ef3ee', 3),
(4, NULL, '6f3ff5d1-4cd3-473e-86b1-811850608c69', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `created` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `created`, `email`, `enabled`, `password`, `username`) VALUES
(1, '2020-07-14 08:11:40', 'test@test.com', b'1', '$2a$10$.UplIhOJS4DEgiz2FXgECeEzH4PtLe9L6hq6GfMdvo5HpwyljQorq', 'test'),
(2, '2020-07-14 08:21:11', 'user2@test.com', b'1', '$2a$10$m/EsIUPC/YA9nM4KBQKw3.CAf02mX8/4LFFW0bvEZ1s4HJW7hhaWK', 'user2'),
(3, '2020-07-14 08:22:24', 'user1@test.com', b'1', '$2a$10$k4rNfIq7xAPykMiVNAm34u6ZCjmxLmWPQtakOi8XA1OQPVJ3VxvO6', 'user1'),
(4, '2020-07-14 08:27:28', 'user3@user3.com', b'1', '$2a$10$BaAqFpGbAPYZjZFyYiCp2.2IYsM31wai5d7kNlKnZpCxDWo2jMGJy', 'user3');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `vote_id` bigint(20) NOT NULL,
  `vote_type` int(11) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`vote_id`, `vote_type`, `post_id`, `user_id`) VALUES
(1, 0, 1, 3),
(2, 0, 2, 1),
(3, 0, 1, 1),
(4, 0, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  ADD KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FK7dhm40vytolqggids4vc9ykvt` (`id`),
  ADD KEY `FK72mt33dhhs48hf9gcqrq4fxte` (`user_id`);

--
-- Indexes for table `refresh_token`
--
ALTER TABLE `refresh_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subreddit`
--
ALTER TABLE `subreddit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqye4s0ll7xwj74d7irovyhbvg` (`user_user_id`);

--
-- Indexes for table `subreddit_posts`
--
ALTER TABLE `subreddit_posts`
  ADD UNIQUE KEY `UK_ih17w4fa2em7w3u1tt8gqv2wh` (`posts_post_id`),
  ADD KEY `FK1plpyiqs72shw84g90q0fes5r` (`subreddit_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK79keudebybjlldk2o4i0nwqev` (`user_user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `FKl3c067ewaw5xktl5cjvniv3e9` (`post_id`),
  ADD KEY `FKcsaksoe2iepaj8birrmithwve` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `refresh_token`
--
ALTER TABLE `refresh_token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subreddit`
--
ALTER TABLE `subreddit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `vote_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK72mt33dhhs48hf9gcqrq4fxte` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK7dhm40vytolqggids4vc9ykvt` FOREIGN KEY (`id`) REFERENCES `subreddit` (`id`);

--
-- Constraints for table `subreddit`
--
ALTER TABLE `subreddit`
  ADD CONSTRAINT `FKqye4s0ll7xwj74d7irovyhbvg` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `subreddit_posts`
--
ALTER TABLE `subreddit_posts`
  ADD CONSTRAINT `FK1plpyiqs72shw84g90q0fes5r` FOREIGN KEY (`subreddit_id`) REFERENCES `subreddit` (`id`),
  ADD CONSTRAINT `FKl27wc8sin3rt45ayge7fanx10` FOREIGN KEY (`posts_post_id`) REFERENCES `post` (`post_id`);

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `FK79keudebybjlldk2o4i0nwqev` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `FKcsaksoe2iepaj8birrmithwve` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKl3c067ewaw5xktl5cjvniv3e9` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
