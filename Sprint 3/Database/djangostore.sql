-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 02:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangostore`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$9qH1ofKsTKk8ztID94EFUr$7isi8OGLvuIC2KgYJC2I8s1gfRJ1EqbUljKxX69urDM=', '2022-05-25 10:11:29.676866', 1, 'lunch', '', '', 'lloydwallysdc@gmail.com', 1, 1, '2022-05-25 09:43:52.562860');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-25 10:16:22.072994', '1', 'Tiny Tina and the Jungle Beast', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-05-25 10:25:11.008919', '2', 'Undead 3000', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-05-25 10:26:43.158021', '3', 'The Appetizer', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-05-25 10:28:03.904393', '4', 'Goblin\'s Gold', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-05-25 10:29:02.279784', '5', 'Pirate', 1, '[{\"added\": {}}]', 7, 1),
(6, '2022-05-25 10:30:14.495957', '6', 'Flytrap', 1, '[{\"added\": {}}]', 7, 1),
(7, '2022-05-25 10:31:08.058282', '7', 'Wiz', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-05-25 10:32:10.044885', '8', 'Gizmo', 1, '[{\"added\": {}}]', 7, 1),
(9, '2022-05-26 02:45:08.560324', '8', 'Gizmo', 3, '', 7, 1),
(10, '2022-05-26 02:45:08.564562', '7', 'Wiz', 3, '', 7, 1),
(11, '2022-05-26 02:45:08.566835', '6', 'Flytrap', 3, '', 7, 1),
(12, '2022-05-26 02:45:08.569740', '5', 'Pirate', 3, '', 7, 1),
(13, '2022-05-26 02:45:08.575227', '4', 'Goblin\'s Gold', 3, '', 7, 1),
(14, '2022-05-26 02:45:08.577163', '3', 'The Appetizer', 3, '', 7, 1),
(15, '2022-05-26 02:45:08.579516', '2', 'Undead 3000', 3, '', 7, 1),
(16, '2022-05-26 02:45:08.582327', '1', 'Tiny Tina and the Jungle Beast', 3, '', 7, 1),
(17, '2022-05-26 02:52:05.463394', '9', 'Tiny Tina and the Jungle Beast', 1, '[{\"added\": {}}]', 7, 1),
(18, '2022-05-26 02:55:18.106225', '10', 'Pirate', 1, '[{\"added\": {}}]', 7, 1),
(19, '2022-05-26 02:55:43.545839', '11', 'Undead 3000', 1, '[{\"added\": {}}]', 7, 1),
(20, '2022-05-26 02:56:19.341529', '12', 'The Appetizer', 1, '[{\"added\": {}}]', 7, 1),
(21, '2022-05-26 02:56:50.843869', '13', 'Goblin\'s Gold', 1, '[{\"added\": {}}]', 7, 1),
(22, '2022-05-26 02:58:29.341593', '14', 'Flytrap', 1, '[{\"added\": {}}]', 7, 1),
(23, '2022-05-26 02:58:50.644467', '15', 'Wiz', 1, '[{\"added\": {}}]', 7, 1),
(24, '2022-05-26 02:59:43.941560', '16', 'Gizmo', 1, '[{\"added\": {}}]', 7, 1),
(25, '2022-05-26 03:31:39.070867', '9', 'Tiny Tina', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(26, '2022-05-26 03:33:42.304101', '11', '[und]ead', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(27, '2022-05-26 03:34:01.938629', '11', 'Mommy', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(28, '2022-05-29 01:27:10.226315', '1', 'Monsters', 1, '[{\"added\": {}}]', 8, 1),
(29, '2022-05-29 01:27:18.010009', '2', 'Mech', 1, '[{\"added\": {}}]', 8, 1),
(30, '2022-05-29 01:38:11.153789', '3', 'Humans', 1, '[{\"added\": {}}]', 8, 1),
(31, '2022-05-29 01:38:30.319928', '4', 'Goblin', 1, '[{\"added\": {}}]', 8, 1),
(32, '2022-05-29 02:11:00.529021', '10', 'Pirate', 2, '[{\"changed\": {\"fields\": [\"Sell price\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'lunch', 'category'),
(7, 'lunch', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-25 07:26:09.732014'),
(2, 'auth', '0001_initial', '2022-05-25 07:26:10.253032'),
(3, 'admin', '0001_initial', '2022-05-25 07:26:10.361847'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-25 07:26:10.373701'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-25 07:26:10.383703'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-25 07:26:10.457708'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-25 07:26:10.508886'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-25 07:26:10.536888'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-25 07:26:10.546887'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-25 07:26:10.603879'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-25 07:26:10.607879'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-25 07:26:10.618880'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-25 07:26:10.639880'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-25 07:26:10.663053'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-25 07:26:10.689056'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-25 07:26:10.705058'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-25 07:26:10.727059'),
(18, 'sessions', '0001_initial', '2022-05-25 07:26:10.770556'),
(19, 'lunch', '0001_initial', '2022-05-25 10:09:37.503436'),
(20, 'lunch', '0002_product_status', '2022-05-26 02:51:29.064805'),
(21, 'lunch', '0003_category', '2022-05-29 01:25:03.460832');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('vxubptikh0lexwrgxyxluj1rgq4m0dxw', '.eJxVjMEOwiAQRP-FsyGwbaF49N5vIAu7SNVAUtqT8d9tkx40c5v3Zt7C47ZmvzVe_EziKrS4_HYB45PLAeiB5V5lrGVd5iAPRZ60yakSv26n-3eQseV93VmCParrnVYmGgpslCWMrBN0cRiICXgcnbPBICSVdM_JabAUElgnPl_qgzg6:1ntnzF:QsRibnpsfLT1wYpxA1QxsWhvLFXBcZYUR6IOyW6IrIc', '2022-06-08 10:11:29.680598');

-- --------------------------------------------------------

--
-- Table structure for table `lunch_category`
--

CREATE TABLE `lunch_category` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lunch_category`
--

INSERT INTO `lunch_category` (`id`, `slug`, `name`, `status`, `created_at`) VALUES
(1, 'Monster', 'Monsters', 0, '2022-05-29'),
(2, 'Mech', 'Mech', 0, '2022-05-29'),
(3, 'human', 'Humans', 0, '2022-05-29'),
(4, 'goblin', 'Goblin', 0, '2022-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `lunch_product`
--

CREATE TABLE `lunch_product` (
  `id` bigint(20) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `og_price` double NOT NULL,
  `sell_price` double NOT NULL,
  `tag` varchar(150) NOT NULL,
  `created_at` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lunch_product`
--

INSERT INTO `lunch_product` (`id`, `slug`, `name`, `image`, `description`, `og_price`, `sell_price`, `tag`, `created_at`, `status`) VALUES
(9, 'tina', 'Tiny Tina', 'uploads/20220526105205hearthstone_12.jpg', '\"You look pathetic from up here.\"', 12, 12, 'monster', '2022-05-26', 0),
(10, 'pirate', 'Pirate', 'uploads/20220526105518hearthstone_7.jpg', '\"Netflix are for scruvs\"', 12, 8, 'human', '2022-05-26', 0),
(11, 'mummy', 'Mommy', 'uploads/20220526105543hearthstone_22.jpg', '\"What is death?\"', 12, 12, 'mecha, monster', '2022-05-26', 0),
(12, 'chef', 'The Appetizer', 'uploads/20220526105619hearthstone_18.jpg', '\"Perhaps you are the new delivery?\"', 12, 12, 'reptile, monster', '2022-05-26', 0),
(13, 'gold', 'Goblin\'s Gold', 'uploads/20220526105650hearthstone_23.jpg', '\"You wish you were me, eh?\"', 12, 12, 'goblin', '2022-05-26', 0),
(14, 'flytrap', 'Flytrap', 'uploads/20220526105829hearthstone_15.jpg', '\"The name\'s a lie\"', 12, 12, 'monster', '2022-05-26', 0),
(15, 'wiz', 'Wiz', 'uploads/20220526105850hearthstone_8.jpg', '\"Fruit loops\"', 12, 12, 'human', '2022-05-26', 0),
(16, 'gizmo', 'Gizmo', 'uploads/20220526105943hearthstone_6.jpg', '\"I invent for good... of the baddies\"', 12, 12, 'mecha, goblin', '2022-05-26', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `lunch_category`
--
ALTER TABLE `lunch_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lunch_product`
--
ALTER TABLE `lunch_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `lunch_category`
--
ALTER TABLE `lunch_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lunch_product`
--
ALTER TABLE `lunch_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
