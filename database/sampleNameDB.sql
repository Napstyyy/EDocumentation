-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 31, 2024 at 02:33 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampleNameDB`
--
CREATE DATABASE IF NOT EXISTS `sampleNameDB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `u182025010_edb`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brackets`
--

CREATE TABLE `brackets` (
  `id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `bracketNo` int(11) NOT NULL,
  `bye` tinyint(1) NOT NULL,
  `lastGames` varchar(16) DEFAULT NULL,
  `nextGame` int(11) DEFAULT 0,
  `roundNo` int(11) NOT NULL,
  `teamnames` text DEFAULT NULL,
  `winner` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `final_match` tinyint(1) DEFAULT 0,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `win_by_host` tinyint(1) DEFAULT 0,
  `is_double` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_actions`
--

CREATE TABLE `log_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(10) UNSIGNED NOT NULL,
  `action` varchar(6) NOT NULL,
  `params` varchar(128) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1730302359, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1730302359, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1730302359, 1),
(4, '2024-05-02-053318', 'App\\Database\\Migrations\\CreateParticipantsTable', 'default', 'App', 1730302359, 1),
(5, '2024-05-02-053421', 'App\\Database\\Migrations\\CreateBracketsTable', 'default', 'App', 1730302359, 1),
(6, '2024-05-08-021145', 'App\\Database\\Migrations\\CreateTournaments', 'default', 'App', 1730302359, 1),
(7, '2024-05-27-013123', 'App\\Database\\Migrations\\CreateLogActionsTable', 'default', 'App', 1730302359, 1),
(8, '2024-05-28-133051', 'App\\Database\\Migrations\\CreateShareSettingsTable', 'default', 'App', 1730302359, 1),
(9, '2024-06-13-160401', 'App\\Database\\Migrations\\AddDeletedByToBracketsTable', 'default', 'App', 1730302359, 1),
(10, '2024-06-18-120729', 'App\\Database\\Migrations\\TournamentShareAccessLogTable', 'default', 'App', 1730302359, 1),
(11, '2024-06-21-083733', 'App\\Database\\Migrations\\AddURLInMusicSettingsTable', 'default', 'App', 1730302359, 1),
(12, '2024-06-28-140454', 'App\\Database\\Migrations\\AddSearchableColumnInTournamentsTable', 'default', 'App', 1730302359, 1),
(13, '2024-07-01-204928', 'App\\Database\\Migrations\\AddArchivedColumnToTournamentsTable', 'default', 'App', 1730302359, 1),
(14, '2024-07-03-235325', 'App\\Database\\Migrations\\CreateNotificationsTable', 'default', 'App', 1730302359, 1),
(15, '2024-07-05-044320', 'App\\Database\\Migrations\\CreateUserSettingsTable', 'default', 'App', 1730302359, 1),
(16, '2024-07-11-055946', 'App\\Database\\Migrations\\AddShuffleEnableColumnInTournamentsTable', 'default', 'App', 1730302359, 1),
(17, '2024-07-16-151458', 'App\\Database\\Migrations\\AddDescriptionColumnInTournamentTable', 'default', 'App', 1730302359, 1),
(18, '2024-07-17-123407', 'App\\Database\\Migrations\\AddScoreColumnsInTournamentTable', 'default', 'App', 1730302359, 1),
(19, '2024-07-19-194457', 'App\\Database\\Migrations\\AddScoreEnabledColumnInTournamentsTable', 'default', 'App', 1730302359, 1),
(20, '2024-07-23-053746', 'App\\Database\\Migrations\\AddIncrementScoreEnabledColumnInTournamentsTable', 'default', 'App', 1730302359, 1),
(21, '2024-08-05-060741', 'App\\Database\\Migrations\\AddVisibilityInTournamentsTable', 'default', 'App', 1730302359, 1),
(22, '2024-08-20-234333', 'App\\Database\\Migrations\\AlterDescriptionTypeInTorunamentsTable', 'default', 'App', 1730302359, 1),
(23, '2024-08-28-203140', 'App\\Database\\Migrations\\AddAvailableColumnsInTournamentsTable', 'default', 'App', 1730302359, 1),
(24, '2024-08-28-213259', 'App\\Database\\Migrations\\DropForeignkeys', 'default', 'App', 1730302359, 1),
(25, '2024-08-29-161127', 'App\\Database\\Migrations\\AddImageToParticipants', 'default', 'App', 1730302359, 1),
(26, '2024-08-30-040901', 'App\\Database\\Migrations\\AlterTableBrackets', 'default', 'App', 1730302359, 1),
(27, '2024-09-10-082042', 'App\\Database\\Migrations\\AddSessionIDInParticipants', 'default', 'App', 1730302359, 1),
(28, '2024-09-18-063134', 'App\\Database\\Migrations\\AddEvaluationColumnsInTournamentsTable', 'default', 'App', 1730302359, 1),
(29, '2024-09-19-153047', 'App\\Database\\Migrations\\AddIncrementTypeInTournamentsTable', 'default', 'App', 1730302359, 1),
(30, '2024-09-19-184830', 'App\\Database\\Migrations\\AlterIncrementScoreColumnTypeInTournamentsTable', 'default', 'App', 1730302359, 1),
(31, '2024-09-20-180251', 'App\\Database\\Migrations\\CreateVotesTable', 'default', 'App', 1730302359, 1),
(32, '2024-09-20-180903', 'App\\Database\\Migrations\\AddVotingRetainColumnInTournamentsTable', 'default', 'App', 1730302359, 1),
(33, '2024-09-24-004043', 'App\\Database\\Migrations\\AddAllowHostOverrideColumnInTournamentsTable', 'default', 'App', 1730302359, 1),
(34, '2024-09-25-093234', 'App\\Database\\Migrations\\CreateScheduleTable', 'default', 'App', 1730302359, 1),
(35, '2024-10-01-134424', 'App\\Database\\Migrations\\CreateTournamentRoundSettingsTable', 'default', 'App', 1730302359, 1),
(36, '2024-10-14-130416', 'App\\Database\\Migrations\\DropForeignKeyOnVotesTable', 'default', 'App', 1730302359, 1),
(37, '2024-10-23-021831', 'App\\Database\\Migrations\\AddUUIDToVotesTable', 'default', 'App', 1730302359, 1),
(38, '2024-10-23-024238', 'App\\Database\\Migrations\\AddMarkByHostToBracketsTable', 'default', 'App', 1730302359, 1),
(39, '2024-10-25-031046', 'App\\Database\\Migrations\\AddIsDoubleInVotesTable', 'default', 'App', 1730302359, 1),
(40, '2024-10-25-050701', 'App\\Database\\Migrations\\AddIsDoubleInBracketsTable', 'default', 'App', 1730302359, 1);

-- --------------------------------------------------------

--
-- Table structure for table `music_settings`
--

CREATE TABLE `music_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(128) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `source` varchar(1) NOT NULL DEFAULT 'f',
  `tournament_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `duration` varchar(8) NOT NULL DEFAULT '1',
  `start` varchar(8) NOT NULL DEFAULT '1',
  `end` varchar(8) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_to` int(10) UNSIGNED NOT NULL,
  `message` varchar(128) NOT NULL,
  `type` varchar(3) NOT NULL,
  `link` varchar(255) NOT NULL,
  `mark_as_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `image` text DEFAULT NULL,
  `sessionid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_name` varchar(16) NOT NULL,
  `tournament_id` int(10) UNSIGNED DEFAULT NULL,
  `round_no` int(10) UNSIGNED DEFAULT NULL,
  `result` tinyint(1) NOT NULL DEFAULT 0,
  `schedule_time` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `share_settings`
--

CREATE TABLE `share_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(10) UNSIGNED NOT NULL,
  `target` varchar(1) NOT NULL,
  `users` text DEFAULT NULL,
  `permission` varchar(1) NOT NULL DEFAULT 'v',
  `token` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `searchable` text DEFAULT NULL,
  `archive` tinyint(4) DEFAULT 0,
  `shuffle_enabled` tinyint(4) DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `score_bracket` tinyint(4) DEFAULT NULL,
  `increment_score` decimal(10,2) DEFAULT NULL,
  `score_enabled` tinyint(4) DEFAULT 0,
  `increment_score_enabled` tinyint(4) DEFAULT 0,
  `visibility` tinyint(4) DEFAULT 0,
  `availability` tinyint(4) DEFAULT 0,
  `available_start` datetime DEFAULT NULL,
  `available_end` datetime DEFAULT NULL,
  `evaluation_method` varchar(1) DEFAULT NULL,
  `voting_accessibility` tinyint(4) DEFAULT NULL,
  `voting_mechanism` tinyint(4) DEFAULT NULL,
  `max_vote_value` int(11) DEFAULT NULL,
  `increment_score_type` varchar(1) DEFAULT 'p',
  `voting_retain` int(11) DEFAULT 0,
  `allow_host_override` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tournament_round_settings`
--

CREATE TABLE `tournament_round_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(10) UNSIGNED DEFAULT NULL,
  `round_no` int(10) UNSIGNED DEFAULT NULL,
  `round_name` varchar(64) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tournament_share_access_logs`
--

CREATE TABLE `tournament_share_access_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `share_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `tournament_id` int(10) UNSIGNED NOT NULL,
  `bracket_id` int(10) UNSIGNED NOT NULL,
  `participant_id` int(10) UNSIGNED NOT NULL,
  `round_no` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `is_double` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `brackets`
--
ALTER TABLE `brackets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_actions`
--
ALTER TABLE `log_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_actions_user_id_foreign` (`user_id`),
  ADD KEY `log_actions_tournament_id_foreign` (`tournament_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_settings`
--
ALTER TABLE `music_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `music_settings_user_id_foreign` (`user_id`),
  ADD KEY `music_settings_tournament_id_foreign` (`tournament_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`),
  ADD KEY `notifications_user_to_foreign` (`user_to`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_tournament_id_foreign` (`tournament_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_settings`
--
ALTER TABLE `share_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `share_settings_user_id_foreign` (`user_id`),
  ADD KEY `share_settings_tournament_id_foreign` (`tournament_id`);

--
-- Indexes for table `tournaments`
--
ALTER TABLE `tournaments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tournament_round_settings`
--
ALTER TABLE `tournament_round_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_round_settings_tournament_id_foreign` (`tournament_id`),
  ADD KEY `tournament_round_settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `tournament_share_access_logs`
--
ALTER TABLE `tournament_share_access_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tournament_share_access_logs_user_id_foreign` (`user_id`),
  ADD KEY `tournament_share_access_logs_share_id_foreign` (`share_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_settings_user_id_foreign` (`user_id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_user_id_foreign` (`user_id`),
  ADD KEY `votes_tournament_id_foreign` (`tournament_id`),
  ADD KEY `votes_bracket_id_foreign` (`bracket_id`),
  ADD KEY `votes_participant_id_foreign` (`participant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brackets`
--
ALTER TABLE `brackets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_actions`
--
ALTER TABLE `log_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `music_settings`
--
ALTER TABLE `music_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `share_settings`
--
ALTER TABLE `share_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tournaments`
--
ALTER TABLE `tournaments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tournament_round_settings`
--
ALTER TABLE `tournament_round_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tournament_share_access_logs`
--
ALTER TABLE `tournament_share_access_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `log_actions`
--
ALTER TABLE `log_actions`
  ADD CONSTRAINT `log_actions_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `log_actions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `music_settings`
--
ALTER TABLE `music_settings`
  ADD CONSTRAINT `music_settings_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `music_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notifications_user_to_foreign` FOREIGN KEY (`user_to`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `share_settings`
--
ALTER TABLE `share_settings`
  ADD CONSTRAINT `share_settings_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tournament_round_settings`
--
ALTER TABLE `tournament_round_settings`
  ADD CONSTRAINT `tournament_round_settings_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tournament_round_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tournament_share_access_logs`
--
ALTER TABLE `tournament_share_access_logs`
  ADD CONSTRAINT `tournament_share_access_logs_share_id_foreign` FOREIGN KEY (`share_id`) REFERENCES `share_settings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tournament_share_access_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `user_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_tournament_id_foreign` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
