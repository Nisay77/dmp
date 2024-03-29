-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 27 jan. 2019 à 21:42
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sih`
--

-- --------------------------------------------------------

--
-- Structure de la table `identification_valise`
--

DROP TABLE IF EXISTS `identification_valise`;
CREATE TABLE IF NOT EXISTS `identification_valise` (
  `id_valise` int(11) NOT NULL,
  `nom_du_patient` varchar(45) NOT NULL,
  `prénom_du_patient` varchar(45) NOT NULL,
  `date_du_1_er_enregistrement` varchar(45) NOT NULL,
  PRIMARY KEY (`id_valise`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `identification_valise`
--

INSERT INTO `identification_valise` (`id_valise`, `nom_du_patient`, `prénom_du_patient`, `date_du_1_er_enregistrement`) VALUES
(1, ' ASSARAR ', ' Wafae', '13/11/2018'),
(2, 'Amellal', 'mouna', '14/05/2018'),
(3, 'LAMY', 'Camille', '09/04/2019'),
(4, 'ISKOUNENE', 'Lydia', '19/12/2018'),
(5, 'DJEACHANDRANE', 'Abhishek', '08/01/2019'),
(6, 'AGUENIHANAI', 'Yasmina', '09/04/2019'),
(7, 'YIN', 'ANthony', '14/06/2019');

-- --------------------------------------------------------

--
-- Structure de la table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE IF NOT EXISTS `maintenance` (
  `id_valise` int(11) NOT NULL,
  `date_de_maintenance` varchar(45) NOT NULL,
  `heure_de_maintenance` varchar(45) NOT NULL,
  `nom_du_maintenant` varchar(45) NOT NULL,
  PRIMARY KEY (`id_valise`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maintenance`
--

INSERT INTO `maintenance` (`id_valise`, `date_de_maintenance`, `heure_de_maintenance`, `nom_du_maintenant`) VALUES
(1, '23/11/2018', '14h00', 'Vauthier'),
(2, '28/12/2018', '9h45', 'AMAR'),
(3, '20/08/2018', '16h00', 'NOBLET'),
(6, '02/08/2019', '10h00', 'AGUENIHANAI'),
(8, '19/05/2019', '14h30', 'MADANI'),
(9, '10/09/2019', '11h30', 'NABOL');

-- --------------------------------------------------------

--
-- Structure de la table `médecin`
--

DROP TABLE IF EXISTS `médecin`;
CREATE TABLE IF NOT EXISTS `médecin` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `telephone` varchar(45) NOT NULL,
  `Service` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  `Ville` varchar(45) NOT NULL,
  `Code Postal` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `médecin`
--

INSERT INTO `médecin` (`id`, `nom`, `prenom`, `telephone`, `Service`, `adresse`, `Ville`, `Code Postal`) VALUES
(1, 'Dominique', 'Anne', '01 40 35 18 11', 'Généraliste', '47 Rue Marx Dormoy', 'Paris', '75018'),
(2, 'Mayer', 'Jean-Michel', '01 46 22 05 29', 'Neurologie', '114 Avenue de Wagram', 'Paris', '75017 '),
(3, 'MONCOLLIN', 'Marie', '01 44 12 86 86', 'obstétrique', '31 Rue Pajol', 'Paris', '75018'),
(4, 'Bringard', 'Michel', '01 53 24 98 61', 'ORL', '132 Rue la Fayette', 'Paris', '75010'),
(6, 'Haddad', 'Elias', '01 48 08 88 07', 'Oncologie', '13 Rue de Turin', 'Paris', '75008'),
(7, 'NIANGO', 'Gabriel', '01 44 12 84 44', 'ORL', '31 Rue Pajol', 'Paris', '75018'),
(8, 'Carde', 'Patrice', '--------------------', 'Oncologie', '63 Boulevard Victor Hugo', 'Neuilly-sur-Seine', '92200'),
(9, 'Defontaines', 'Julien', '01 69 39 96 05', 'Urologie', '20 Route de Boussy-Saint-Antoine', 'Quincy-sous-Sénart', '91480'),
(11, 'Zerbib', 'Thierry', '01 42 09 04 04', 'radiologie', '46 Rue Marx Dormoy', 'Paris', '75018'),
(12, 'SIMILOWSKI', 'Thomas', '01 42 16 00 00', 'Pneumologie', '47-83 Boulevard de l\'Hôpital ', 'Paris', '75013'),
(13, 'CARPENTIER', 'Alexandre', '01 42 16 00 00', 'Neurochirurgie', '47-83 Boulevard de l\'Hôpital ', 'Paris', '75013'),
(14, 'BAILLY', 'Florian', '01 42 16 00 00', 'Douleur', '47-83 Boulevard de l\'Hôpital ', ' Paris ', '75013'),
(15, 'FAUTREL', 'Bruno', '01 42 16 00 00', 'Douleur', '47-83 Boulevard de l\'Hôpital', 'Paris', '75013'),
(16, 'Orabi', 'Mikael', '01 49 95 81 69', 'Neurochirurgie', '2 Rue Ambroise Paré', 'Paris', '75010');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `date_naissance` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `sexe` char(1) NOT NULL,
  `adresse` varchar(200) DEFAULT NULL,
  `ville` varchar(45) NOT NULL,
  `Code_Postal` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`id`, `pid`, `nom`, `prenom`, `date_naissance`, `age`, `sexe`, `adresse`, `ville`, `Code_Postal`) VALUES
(2, '555444444', 'ASSARAR', 'Wafae', '01/01/1989', '29', 'F', '45 Avenue du President Franklin Roosevelt', ' Thiais', '94320 '),
(3, '555444451', 'Amellal', 'mouna', '26/06/1958', '60', 'F', '98-104 Avenue de la République', 'PARIS', '75011'),
(11, '555444456', 'AMAR', 'Oumaima', '22/12/1993', '25', 'F', '112 Avenue du Général de Gaulle', 'Créteil', '94000'),
(12, '555444422', 'YIN', 'ANthony', '02/01/1998', '20', 'M', '101 Rue Jeanne d\'Arc', 'Paris', '75013'),
(14, '555444477', 'ASLAN', 'Yasin', '22/07/1996', '24', 'M', '6 Rue Marcel Gabriel Rivière', 'Lyon', '69002'),
(15, '555444466', 'AGUENIHANAI', 'Yasmina', '27/02/1950', '68', 'F', '5 Rue Solférino', ' Lille', '59000 '),
(16, '555444488', 'ZEGHLACH', 'Rachid', '03/05/1977', '41', 'M', '40 Rue du 19 Novembre', 'Metz', '57070'),
(17, '555444499', 'KALINKIN', 'Nicolas', '02/12/1995', '23', 'M', '98 Avenue de Saint-Julien', 'Marseille', '13012'),
(18, '555444424', 'DJEACHANDRANE', 'Abhishek', '27/05/1956', '62', 'M', '56 Rue des 16e et 22e Dragons\r\n', 'Reims', '51100'),
(19, '555444445', 'LAMY', 'Camille', '19/10/1992', '26', 'M', '19 Rue aux Ours\r\n', ' Rouen', ' 76000 '),
(20, '555444445', 'ISKOUNENE', 'Lydia', '06/04/1971', '47', 'F', '18 Avenue du Canada', 'Caen', '14000');

-- --------------------------------------------------------

--
-- Structure de la table `rendez_vous`
--

DROP TABLE IF EXISTS `rendez_vous`;
CREATE TABLE IF NOT EXISTS `rendez_vous` (
  `pid` varchar(45) NOT NULL,
  `nom_du_patient` varchar(45) NOT NULL,
  `prenom_du_patient` varchar(45) NOT NULL,
  `nom_du_medecin` varchar(45) NOT NULL,
  `dates` varchar(45) NOT NULL,
  `heure` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `rendez_vous`
--

INSERT INTO `rendez_vous` (`pid`, `nom_du_patient`, `prenom_du_patient`, `nom_du_medecin`, `dates`, `heure`) VALUES
('555444444', 'ASSARAR', 'Wafae', 'Dominique', '20/12/2018', '16h30'),
('555444445', 'LAMY', 'Camille', 'CARPENTIER', '04/09/2019', '9h30'),
('555444451', 'Amellal', 'mouna', 'Haddad', '03/02/2018', '9h30'),
('555444456', 'YIN', 'ANthony', 'Bringard', '12/12/2018', '14h00'),
('555444488', 'ZEGHLACH', 'Rachid', 'SIMILOWSKI', '22/05/2019', '10h');

-- --------------------------------------------------------

--
-- Structure de la table `resultats_capteurs`
--

DROP TABLE IF EXISTS `resultats_capteurs`;
CREATE TABLE IF NOT EXISTS `resultats_capteurs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` varchar(45) NOT NULL,
  `Temperature` varchar(45) NOT NULL,
  `Frequence_Cardiaque` varchar(45) NOT NULL,
  `SpO2` varchar(45) NOT NULL,
  `Tension_Arterielle_diastolique` varchar(45) NOT NULL,
  `Tension_Arterielle_systolique` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `resultats_capteurs`
--

INSERT INTO `resultats_capteurs` (`id`, `pid`, `Temperature`, `Frequence_Cardiaque`, `SpO2`, `Tension_Arterielle_diastolique`, `Tension_Arterielle_systolique`) VALUES
(2, '555444444', '37', '89', '99', '75', '137'),
(3, '555444451', '37,5', '70', '95', '80', '130'),
(11, '555444456', '37,3', '79', '97', '67', '135'),
(12, '555444422', '37', '88', '99', '81', '134'),
(14, '555444477', '37', '87', '100', '86', '140'),
(15, '555444466', '37,4', '90', '101', '60', '131'),
(18, '555444424', '37', '85', '97', '85', '126'),
(19, '555444445', '37,5', '87', '100', '75', '140');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mail` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `idpublic` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `mail`, `password`, `idpublic`) VALUES
(12, 'ASLAN', 'yasin.aslan@outlook.fr', '$2a$10$1qAz2wSx3eDc4rFv5tGb5evEjlKLI0HkQu/EJX/.ag24WHzeCOZlW', '5bc998bfc4a3d');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
