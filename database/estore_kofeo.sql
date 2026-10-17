-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 09 mai 2026 à 12:57
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `estore`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg5uhi8vpsuy0lgloxk2h4w5o6` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--

-- --------------------------------------------------------

--
-- Structure de la table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
CREATE TABLE IF NOT EXISTS `cart_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `unit_price` double DEFAULT NULL,
  `cart_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1uobyhgl1wvgt1jpccia8xxs3` (`cart_id`),
  KEY `FKjcyd5wv4igqnw413rgxbfu4nv` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK46ccwnsi9409t36lurvtyljak` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `description`, `name`) VALUES
(1, 'Machines à café espresso, automatiques, manuelles et cafetières pour préparer différents types de café.', 'Machines'),
(2, 'Capsules de café compatibles avec différentes machines, disponibles en plusieurs saveurs et intensités.', 'Capsules'),
(3, 'Café en grains torréfié provenant de différentes origines pour une expérience café authentique.', 'Grains'),
(4, 'Accessoires pour café comme les tasses, moulins, mousseurs à lait, filtres et outils de barista.', 'Accessoires');

-- --------------------------------------------------------

--
-- Structure de la table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKce3rbi3bfstbvvyne34c1dvyv` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `inventory`
--

INSERT INTO `inventory` (`id`, `quantity`, `product_id`) VALUES
(1, 12, 1),
(2, 8, 5),
(3, 4, 11),
(4, 25, 2),
(5, 40, 6),
(6, 18, 8),
(7, 30, 10),
(8, 60, 3),
(9, 45, 7),
(10, 50, 12),
(11, 35, 4),
(12, 20, 9),
(13, 28, 13);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_date` datetime(6) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



-- --------------------------------------------------------

--
-- Structure de la table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
CREATE TABLE IF NOT EXISTS `order_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `unit_price` double DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK551losx9j75ss5d6bfsqvijna` (`product_id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `description`, `image_url`, `name`, `price`, `category_id`) VALUES
(1, 'La De\'Longhi Magnifica S ECAM22.110.B est une machine à espresso automatique qui moud vos grains de café juste avant la préparation, garantissant une fraîcheur et une qualité optimales à chaque tasse. Son système Cappuccino manuel permet de réaliser des b', '/images/products/machine1.png', 'DeLonghi Magnifica S', 2300, 1),
(2, 'Le moulin à café manuel permet de préparer du café fraîchement moulu savoureux de manière pratique, rapide et sans gâchis. Insérez simplement vos grains dans le compartiment de broyage, réglez le réglage de mouture souhaité et transformez vos grains préfé', '/images/products/Moulin-cafe-manuel.png', 'Moulin à café manuel', 147, 4),
(3, 'Boîte de 10 capsules en aluminium Puissant – Expressif – Absolu Composé avec soin, Ristretto éblouit les sens grâce à son caractère expressif et vivifiant et ses puissantes notes épicées. Un Ristretto idéal pour un voyage intense inoubliable. Compatible a', 'images/products/Nespresso-Ristretto.png', 'Nespresso Ristretto', 72.45, 2),
(4, 'Ce café est cultivé au Chiapas. Les plantations se trouvent sur les flancs de deux chaines de montagne du Chiapas : la Sierra Madre et le Los Altos, au milieu de forêts tropicales et de pinèdes.\r\nPour un café plus savoureux, nous avons réalisé une recette', '/images/products/grain-lobodis.png', 'Café Grains Lobodis -Pur Arabica Colombie', 220.45, 3),
(5, 'La machine à café légère de 4 kg avec un réservoir d\'eau d\'1 litre, un bac pour 10 capsules usagées et des dimensions compactes de 14.2x42.9x31.4 cm. Son câble d\'alimentation de 75 cm offre une flexibilité optimale. L\'Escriptif s\'arrête automatiquement ap', '/images/products/Nespresso-Vertuo-Next.png', 'Nespresso Vertuo Next', 2599.5, 1),
(6, 'tasse à café en verre borosilicate de 50ml est résistante à la chaleur et à double paroi, gardant vos boissons chaudes sans brûler vos doigts. Son design élégant et transparent permet de voir le café flotter, idéale pour le café, le thé ou les expressos. ', '/images/products/Tasse-double-paroi.png', 'Tasse double paroi', 30, 4),
(7, 'Un classique italien prêt en seulement quelques secondes. Vous allez adorer l\'association entre la couche onctueuse et généreuse de mousse de lait entier et l\'espresso intense assemblé à partir de grains d\'Arabica premium d’Amérique du Sud, renforcés par ', '/images/products/nescafe-dolce.png', 'NESCAFE DOLCE GUSTO CAPPUCCINO 3X16 CAPS', 262, 2),
(8, 'Tasse à café en céramique chanceuse avec coussin chauffant automatique Température de 55°C Économie d\'énergie rapide Chaleur rapide qui peut garder votre café à la température la plus appropriée pour la consommation.', '/images/products/Lucky-Tasse.png', 'Lucky Tasse', 64, 4),
(9, 'Café en grains premium apprécié pour son goût équilibré et sa torréfaction marocaine.', '/images/products/Bonna-Cafe-Gold.png', 'Bonna Café Gold', 20, 3),
(10, 'Mélangeurde boisson portable électrique portable -mousseur de café électrique alimenté par batterie permet de créer une mousse parfaite pour cappuccino et latte en 15 à 20 secondes.', '/images/products/Mousseur-lait-electrique.png', 'Mousseur à lait électrique', 49, 4),
(11, 'Machine expresso semi-automatique avec broyeur intégré', '/images/products/Machine-Pro.png', 'Machine Expresso Breville Barista Pro', 6834.9, 1),
(12, '12x10 Capsules Starbucks compatibles Nespresso avec goût doux et équilibré.', '/images/products/starbucks.png', 'Starbucks House Blend', 109.99, 2),
(13, 'Café en grains équilibré avec des notes de cacao et de noix, torréfaction moyenne signature Starbucks.', '/images/products/House-Blend.png', 'Starbucks House Blend Grains', 62, 3);

-- --------------------------------------------------------

--
-- Structure de la table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- --------------------------------------------------------

--
-- Structure de la table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `approved` bit(1) NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `rating` int NOT NULL,
  `verified_purchase` bit(1) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_review_user_product` (`user_id`,`product_id`),
  KEY `FKiyof1sindb9qiqr9o8npj8klt` (`product_id`)
) ;

--
-- Déchargement des données de la table `review`
--

INSERT INTO `review` (`id`, `approved`, `comment`, `created_at`, `rating`, `verified_purchase`, `product_id`, `user_id`) VALUES
(1, b'1', 'Excellente machine à café, très facile à utiliser et le café est délicieux.', '2025-05-02 14:20:00.000000', 5, b'1', 1, 1),
(2, b'1', 'Très bon moulin à café, compact et pratique pour une utilisation quotidienne.', '2025-05-02 16:00:00.000000', 4, b'1', 2, 1),
(3, b'1', 'Le goût des capsules est vraiment intense et riche en arôme.', '2025-05-03 11:10:00.000000', 5, b'1', 3, 2),
(4, b'1', 'Bon café en grains avec une saveur équilibrée.', '2025-05-03 13:40:00.000000', 4, b'1', 4, 2),
(5, b'1', 'Machine premium incroyable, parfaite pour les amateurs de café.', '2025-05-05 18:25:00.000000', 5, b'1', 11, 1),
(6, b'1', 'Les tasses sont jolies mais un peu petites.', '2025-05-06 09:15:00.000000', 3, b'1', 6, 2),
(7, b'0', 'Design élégant et bonne qualité de fabrication.', '2025-05-06 12:30:00.000000', 4, b'0', 13, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`) VALUES
(1, 'marwa1234@gmail.com', 'Marwa', 'Maqsoudi', 'marwa12maqsoudi'),
(2, 'safaa5678@gmail.com', 'Safaa', 'Mounkid', 'safaa34mounkid');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FKg5uhi8vpsuy0lgloxk2h4w5o6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `FK1uobyhgl1wvgt1jpccia8xxs3` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `FKjcyd5wv4igqnw413rgxbfu4nv` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `FKp7gj4l80fx8v0uap3b2crjwp5` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `FK551losx9j75ss5d6bfsqvijna` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK6cpw2nlklblpvc7hyt7ko6v3e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKiyof1sindb9qiqr9o8npj8klt` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
