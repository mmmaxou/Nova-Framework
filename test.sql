-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Mer 29 Mars 2017 à 09:38
-- Version du serveur :  5.5.42
-- Version de PHP :  5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `sample`
--

-- --------------------------------------------------------

--
-- Structure de la table `nova_chanson`
--

CREATE TABLE `nova_chanson` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `duree` time NOT NULL,
  `fichier` varchar(255) NOT NULL,
  `post_date` datetime NOT NULL,
  `style` varchar(255) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  `pochette` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `nova_chanson`
--

INSERT INTO `nova_chanson` (`id`, `nom`, `duree`, `fichier`, `post_date`, `style`, `utilisateur_id`, `pochette`) VALUES
(5, 'aaa', '00:00:00', 'aaa', '0000-00-00 00:00:00', 'aaa', 1, ''),
(6, 'coucou', '00:00:02', 'aaa', '0000-00-00 00:00:00', 'rock', 1, ''),
(7, 'coucou', '00:00:02', 'aaa', '2017-03-17 03:57:20', 'rock', 1, ''),
(8, 'coucou', '00:00:00', 'aefaefaef', '2017-03-17 03:57:39', 'aefeafaefaefaefaef', 1, ''),
(9, 'coucou', '00:00:00', 'aefaefaef', '2017-03-17 04:17:46', 'aefeafaefaefaefaef', 1, ''),
(10, 'aaa', '00:00:00', '/assets/chanson/admin/02. The Game of Love.mp3', '2017-03-20 07:43:48', 'aaa', 1, ''),
(11, 'aaa', '00:00:00', '/assets/chanson/admin/06.LoseYourselftoDance.mp3', '2017-03-20 07:52:15', 'aaaaa', 1, ''),
(12, 'aaa', '00:00:00', '/assets/chanson/admin/06.LoseYourselftoDance.mp3', '2017-03-20 07:53:27', 'aaaaa', 1, ''),
(13, 'aaa', '00:00:00', '/assets/chanson/admin/06.LoseYourselftoDance.mp3', '2017-03-20 07:53:33', 'aaaaa', 1, ''),
(14, 'aaa', '00:00:00', '/assets/chanson/admin/06.LoseYourselftoDance.mp3', '2017-03-20 07:55:24', 'aaaaa', 1, ''),
(15, 'aaa', '00:00:00', '/assets/chanson/admin/06.LoseYourselftoDance.mp3', '2017-03-20 07:55:29', 'aaaaa', 1, ''),
(16, 'aaa', '00:00:00', '/assets/chanson/admin/04.Within.mp3', '2017-03-20 07:57:00', 'aaa', 1, ''),
(17, 'azert', '00:00:00', '/assets/chanson/admin/03-ed_sheeran-dive.mp3', '2017-03-20 10:08:10', 'azert', 1, ''),
(18, 'Antidote', '00:00:03', '/assets/chanson/admin/02-TheAntidote.mp3', '2017-03-27 09:11:16', 'rap', 1, ''),
(19, 'aeaef', '00:00:00', '/assets/chanson/admin/03-ed_sheeran-dive.mp3', '2017-03-27 09:45:03', 'aefaef', 1, ''),
(20, 'shape of ..', '03:00:00', '/assets/chanson/admin/04-ed_sheeran-shape_of_you.mp3', '2017-03-27 09:47:50', 'folk', 1, '/assets/pochettes/admin/ed-sheeran-divide-portada-1.png'),
(21, 'get lucky', '20:00:00', '/assets/chanson/admin/08.GetLucky.mp3', '2017-03-27 10:00:43', 'electro', 1, '/assets/pochettes/admin/proof.JPG'),
(22, 'antidote', '00:00:00', '/assets/chanson/admin/02-TheAntidote.mp3', '2017-03-27 10:20:29', 'Musique', 1, '/assets/pochettes/admin/Stupeflip-StupVirus-back.png');

-- --------------------------------------------------------

--
-- Structure de la table `nova_contient`
--

CREATE TABLE `nova_contient` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `chanson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nova_password_reminders`
--

CREATE TABLE `nova_password_reminders` (
  `email` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nova_playlist`
--

CREATE TABLE `nova_playlist` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `utilisateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `nova_playlist`
--

INSERT INTO `nova_playlist` (`id`, `nom`, `utilisateur_id`) VALUES
(0, 'az', 1),
(0, 'eafea', 1),
(0, 'aefaefaef', 1),
(0, 'eafaef', 1),
(0, 'aegean', 1),
(0, 'aefaef', 1),
(0, 'zrgzrg', 1),
(0, 'zrgrg', 1),
(0, 'zrgzrgzr', 1),
(0, 'after', 1),
(0, 'aeff', 1),
(0, 'afeaef', 1),
(0, 'aefaef', 1),
(0, 'aefaef', 1),
(0, 'aefaef', 1),
(0, 'afeea', 1),
(0, 'aefgr', 1),
(0, 'rtbf''§j(èi', 1),
(0, 'efe', 1),
(0, 'aef', 1),
(0, 'aef', 1),
(0, 'ad', 1),
(0, 'adz', 1),
(0, 'azd', 1),
(0, 'aefeaf', 1),
(0, 'aefaef', 1),
(0, 'zfefae', 1),
(0, 'tet', 1),
(0, 'ereta', 1),
(0, 'aeae', 1),
(0, 'eafazefea', 1);

-- --------------------------------------------------------

--
-- Structure de la table `nova_roles`
--

CREATE TABLE `nova_roles` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 NOT NULL,
  `slug` varchar(40) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `nova_roles`
--

INSERT INTO `nova_roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Root', 'root', 'Use this account with extreme caution. When using this account it is possible to cause irreversible damage to the system.', '2016-06-04 23:48:00', '2016-06-04 23:48:00'),
(2, 'Administrator', 'administrator', 'Full access to create, edit, and update companies, and orders.', '2016-06-04 23:48:00', '2016-06-04 23:48:00'),
(3, 'Manager', 'manager', 'Ability to create new companies and orders, or edit and update any existing ones.', '2016-06-04 23:48:00', '2016-06-04 23:48:00'),
(4, 'Company Manager', 'company-manager', 'Able to manage the company that the user belongs to, including adding sites, creating new users and assigning licences.', '2016-06-04 23:48:00', '2016-06-04 23:48:00'),
(5, 'User', 'user', 'A standard user that can have a licence assigned to them. No administrative features.', '2016-06-04 23:48:00', '2016-06-04 23:48:00');

-- --------------------------------------------------------

--
-- Structure de la table `nova_suit`
--

CREATE TABLE `nova_suit` (
  `id` int(11) NOT NULL,
  `suiveur_id` int(11) NOT NULL,
  `suivi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nova_users`
--

CREATE TABLE `nova_users` (
  `id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `realname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `active` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `nova_users`
--

INSERT INTO `nova_users` (`id`, `role_id`, `username`, `password`, `realname`, `email`, `active`, `image`, `activation_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '$2y$10$MZpxcVZpwTCCotIkkfPP5O1sDC7GiKzD9klh4MoM/aE44YaVm4Xga', 'Administrator', 'admin@novaframework.dev', 1, NULL, NULL, 'BPcmo1usK1pFX0GTCwvsIJNaLwicUOmeNtXXKTneIUQuS5JhGuK3mnCKbXME', '2016-06-03 10:15:00', '2017-03-29 06:24:04'),
(2, 2, 'marcus', '$2y$10$B1Q7LNu2xuIcFJ1lAotb5O93kkvUfFdOzUZhTmSdkQZ.6woLmgu3S', 'Marcus Spears', 'marcus@novaframework.dev', 1, NULL, NULL, NULL, '2016-06-03 10:19:00', '2016-06-03 10:19:00'),
(3, 3, 'michael', '$2y$10$klop7YxFoZOVqDq3hA7efeKEz4csFhAelfwP8M4s1ROlgpkBx9qVW', 'Michael White', 'michael@novaframework.dev', 1, NULL, NULL, NULL, '2016-06-03 10:20:00', '2016-06-05 14:22:19'),
(4, 5, 'john', '$2y$10$WzBPFMiFeJ2XK9eW34zEgelSJI3R1TVrOWbjVDxFXDeMQxoh8asYK', 'John Kennedy', 'john@novaframework.dev', 1, NULL, NULL, NULL, '2016-06-03 10:21:00', '2016-06-05 14:22:32'),
(5, 5, 'mark', '$2y$10$z4bRYEcnoHOR.GuObWTATuH/x1lto.2wUJ1RxCYWOmfjay2LnTd8W', 'Mark Black', 'mark@novaframework.dev', 1, NULL, NULL, NULL, '2016-06-03 10:22:00', '2016-06-05 13:16:05'),
(6, 5, 'mehechi', '$2y$10$lIOj0Ha/Jv8RjfYveK.4Ee4iROWIKJeSQeG4tNCWpZa5SvTP0Rtjy', 'Jacquet Maxime', 'jacquet.maxime@orange.fr', 1, 'assets/profils/maxime.jpg', 'b457dbde1739bf90eb01c2d53b3e0884900ead907c7bc2a81bc4ca7165565dd5', 'jB2v12ix8vkaRlV5kynuEQc3kGH6lpzc3GCqzhEiciHpM6QTxkPkuDkuTftW', '2017-03-29 06:25:40', '2017-03-29 06:27:22');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `nova_chanson`
--
ALTER TABLE `nova_chanson`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nova_password_reminders`
--
ALTER TABLE `nova_password_reminders`
  ADD KEY `email` (`email`),
  ADD KEY `token` (`token`);

--
-- Index pour la table `nova_roles`
--
ALTER TABLE `nova_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nova_users`
--
ALTER TABLE `nova_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `nova_chanson`
--
ALTER TABLE `nova_chanson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `nova_roles`
--
ALTER TABLE `nova_roles`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `nova_users`
--
ALTER TABLE `nova_users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;