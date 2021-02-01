-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 01 fév. 2021 à 11:06
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `myBlogDev`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `image`, `created_at`, `category_id`, `user_id`) VALUES
(26, 'title 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.', 'https://picsum.photos/seed/picsum/300/150', '2020-11-08 23:42:15', 13, NULL),
(27, 'title 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.', 'https://picsum.photos/seed/picsum/300/150', '2020-09-25 21:04:58', 13, NULL),
(28, 'title 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.', 'https://picsum.photos/seed/picsum/300/150', '2020-12-30 03:00:17', 14, NULL),
(29, 'title 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.', 'https://picsum.photos/seed/picsum/300/150', '2020-07-25 21:41:17', 14, NULL),
(30, 'title 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.', 'https://picsum.photos/seed/picsum/300/150', '2020-09-09 12:57:10', 15, NULL),
(31, 'title 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.', 'https://picsum.photos/seed/picsum/300/150', '2020-11-07 15:42:56', 15, NULL),
(32, 'title 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.', 'https://picsum.photos/seed/picsum/300/150', '2020-07-29 17:31:47', 16, NULL),
(33, 'title 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus feugiat in ante metus.', 'https://picsum.photos/seed/picsum/300/150', '2020-11-20 16:45:32', 16, NULL),
(34, 'testnotifedit', 'testnotification', 'https://picsum.photos/seed/picsum/350/150', '2021-01-08 23:11:32', 13, NULL),
(35, 'testsecurity1', 'testsec1testsec1testsec1testsec1testsec1testsec1testsec1testsec1testsec1testsec1testsec1testsec1', 'https://picsum.photos/seed/picsum/350/150', '2021-01-09 22:57:56', 13, 3);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `description`) VALUES
(13, 'Sports', 'section description 1'),
(14, 'Technology', 'section description 2'),
(15, 'Science', 'section description 3'),
(16, 'World', 'section description 4');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `author`, `content`, `created_at`) VALUES
(49, 26, 'Enola Bergnaum', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-18 02:07:58'),
(50, 26, 'Lisa Yundt', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-06 20:03:03'),
(51, 26, 'Dayana Hartmann', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-23 07:12:39'),
(52, 26, 'Monroe Jacobson', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-19 14:55:40'),
(53, 26, 'Dr. Vinnie Schmidt', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2021-01-03 01:44:11'),
(54, 27, 'Greta Gorczany', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-10-16 09:23:21'),
(55, 27, 'Oran Armstrong', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-17 20:13:05'),
(56, 27, 'Andreanne Sauer', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-04 15:41:33'),
(57, 27, 'Pierce Runolfsson', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-28 18:40:45'),
(58, 27, 'Joshuah Conroy DDS', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-10-17 12:09:22'),
(59, 27, 'Mr. Jordi Russel II', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-11 12:25:28'),
(60, 27, 'Louisa Rempel', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-21 15:36:34'),
(61, 28, 'Dr. Isadore Prohaska IV', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2021-01-05 20:48:34'),
(62, 28, 'Dr. Norwood Ernser V', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2021-01-08 21:08:51'),
(63, 28, 'Lelah Armstrong', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-30 22:56:37'),
(64, 28, 'Ronny Rogahn', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-31 23:27:49'),
(65, 28, 'Jonathan Marquardt I', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2021-01-02 03:42:20'),
(66, 29, 'Kariane Ward', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-10-20 01:45:27'),
(67, 29, 'Prof. Alexandrea Kemmer IV', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-28 20:36:32'),
(68, 29, 'Idella Fahey', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-08-21 03:40:02'),
(69, 29, 'Dereck Rempel I', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-08-14 10:56:10'),
(70, 29, 'Nelson Prosacco', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-21 17:06:25'),
(71, 29, 'Loren Williamson', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-08-17 05:51:16'),
(72, 29, 'Ms. Leora Senger DDS', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-10-16 12:18:31'),
(73, 30, 'Bailee Schamberger', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-18 12:06:29'),
(74, 30, 'Ms. Elena Thiel V', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-09-19 08:54:56'),
(75, 30, 'Alexandre Goyette', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-10-14 19:51:42'),
(76, 30, 'Mr. Cecil Towne', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-09-28 04:28:31'),
(77, 30, 'Edgar Zulauf V', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-10-08 01:45:51'),
(78, 31, 'Brittany Schmeler', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-18 06:59:40'),
(79, 31, 'Jamey Kulas', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-13 09:08:20'),
(80, 31, 'Stefan Bashirian', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2021-01-04 22:26:59'),
(81, 31, 'Vella Lesch', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-12 01:46:54'),
(82, 31, 'Prof. Ryley King', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-15 09:01:10'),
(83, 31, 'Gretchen Sawayn', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-02 10:43:39'),
(84, 32, 'Arnoldo Fadel', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-22 00:21:36'),
(85, 32, 'Ms. Nella Hegmann Jr.', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-09-10 01:54:56'),
(86, 32, 'Miss Adella Dibbert', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-10-16 04:09:09'),
(87, 32, 'Amani Lynch DDS', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-06 02:22:31'),
(88, 32, 'Jasen Wilderman', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-10 20:50:13'),
(89, 33, 'Stacy Wyman', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-26 18:10:52'),
(90, 33, 'Bryana Will', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-06 16:33:50'),
(91, 33, 'Jennings Ritchie', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-01 01:51:05'),
(92, 33, 'Palma Lebsack', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-11-21 18:13:16'),
(93, 33, 'Selena Dietrich', 'labore et dolore magna aliqua. Lacus sed viverra tellus in hac habitasse. Accumsan sit amet nulla facilisi. Risus', '2020-12-11 11:27:50'),
(94, 27, 'akrem gharbi', 'thanks for sharing this kind of knowledge!', '2021-01-08 22:37:23'),
(95, 34, 'akrem gharbi', 'thank you !', '2021-01-08 23:14:55'),
(96, 26, 'ahmed gharbi', 'nice job!', '2021-01-08 23:38:19');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `last_name`) VALUES
(1, 'akrem@gmail.com', '[]', '123456', '', ''),
(2, 'olfa@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$XH8hfzCUc5XJP4JtClLdpA$oZxm/+0zLpEhFhjkm8jZJ8VEkx7z4l8L1uBUJ6TRvUE', '', ''),
(3, 'akremdev@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$L84CxjDw4b/GgH33NRCUog$OYS9kyAROblxy79GjEDYSq3QVEpVqJvHMp2GM6K3fvY', 'Akrem', 'Gharbi'),
(4, 'ahmed@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$73ZC+w6QsyZKKDYdEe/ohA$xJcrHjvOZzH4+RQQh0g+HVbbZDTW2F4I4VRs3IBEMbA', 'ahmed', 'gharbi');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E6612469DE2` (`category_id`),
  ADD KEY `IDX_23A0E66A76ED395` (`user_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C7294869C` (`article_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
