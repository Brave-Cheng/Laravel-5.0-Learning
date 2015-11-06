-- phpMyAdmin SQL Dump
-- version 4.4.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2015 at 03:26 PM
-- Server version: 5.6.21-log
-- PHP Version: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laravel5`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `nickname`, `email`, `website`, `content`, `page_id`, `created_at`, `updated_at`) VALUES
(1, 'brave', 'chenghuiyong1987@gmail.com', 'http://www.chenghuiyong.com', '这是一条评论信息--', 12, '2015-11-06 03:09:22', '2015-11-06 03:35:46'),
(2, 'brave', 'chenghuiyong1987@gmail.com', 'http://www.chenghuiyong.com', '<blockquote><p>这是第二条评论内容</p></blockquote>', 12, '2015-11-06 03:10:06', '2015-11-06 06:08:44'),
(3, 'brave', 'chenghuiyong1987@gmail.com', 'http://www.chenghuiyong.com', '<ol><li>今日说法</li><li>小脚印</li><li>文档<br></li></ol>', 8, '2015-11-06 05:25:03', '2015-11-06 05:25:03'),
(4, 'brave', 'chenghuiyong1987@gmail.com', 'http://www.chenghuiyong.com', '<blockquote><ol><li><a target="_blank" href="http://www.example.com">链接文字</a></li></ol></blockquote><p>这里是我们的文字<br></p>', 12, '2015-11-06 06:13:50', '2015-11-06 06:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_11_05_021335_create_articles_table', 2),
('2015_11_05_021406_create_pages_table', 2),
('2015_11_06_022934_create_comments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rendering HTML from database table to view {{ blade issue or... }}?', 'first-page', '<p style="text-align: start;">You may need to apply html_entity_decode to your data.</p><p style="text-align: start;">This works fine for Laravel 4</p><pre><code>{{html_entity_decode(<span class="hljs-variable" style="box-sizing: border-box; color: rgb(138, 190, 183);">$post</span><span class="hljs-variable" style="box-sizing: border-box; color: rgb(138, 190, 183);">-&gt;body</span>)}}\r\n</code></pre><p style="text-align: start;">For Laravel 5 you may need to use this instead</p><pre><code>{!!html_entity_decode(<span class="hljs-variable" style="box-sizing: border-box; color: rgb(138, 190, 183);">$post</span><span class="hljs-variable" style="box-sizing: border-box; color: rgb(138, 190, 183);">-&gt;body</span>)!!}</code></pre>', 1, '2015-11-05 02:41:56', '2015-11-06 06:14:59'),
(2, 'PHP html_entity_decode() 函数', 'first-page', '<h2 style="text-align: left;">实例</h2><p style="text-align: left;">把 HTML 实体转换为字符：</p><pre><code>&lt;?php\r\n$str = "&lt;© W3Sçh°°¦§&gt;";\r\necho html_entity_decode($str);\r\n?&gt;\r\n</code></pre><p style="text-align: left;">以上代码的 HTML 输出如下（查看源代码）：</p><pre><code>&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;body&gt;\r\n&lt;? W3S?h????&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n</code></pre><p style="text-align: left;">以上代码的浏览器输出：</p><pre><code>&lt;? W3S?h????&gt;</code></pre>', 1, '2015-11-05 02:41:56', '2015-11-06 06:15:18'),
(3, 'Title 2', 'first-page', 'Body 2', 1, '2015-11-05 02:41:56', '2015-11-05 02:41:56'),
(4, 'Title 3', 'first-page', 'Body 3', 1, '2015-11-05 02:41:56', '2015-11-05 02:41:56'),
(5, 'Title 4', 'first-page', 'Body 4', 1, '2015-11-05 02:41:56', '2015-11-05 02:41:56'),
(6, 'Title 5', 'first-page', 'Body 5', 1, '2015-11-05 02:41:56', '2015-11-05 02:41:56'),
(7, 'Title 6', 'first-page', 'Body 6', 1, '2015-11-05 02:41:56', '2015-11-05 02:41:56'),
(8, 'Title 7', 'first-page', 'Body 7', 1, '2015-11-05 02:41:56', '2015-11-05 02:41:56'),
(9, 'Title 8', 'first-page', 'Body 8', 1, '2015-11-05 02:41:56', '2015-11-05 02:41:56'),
(10, 'Title 9', 'first-page', 'Body 9', 1, '2015-11-05 02:41:56', '2015-11-05 02:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('chenghuiyong1987@gmail.com', 'b989d1e234c065f72af4d2a313107b2fdb004cf1f35a1d67b5e0182d75252bdb', '2015-11-05 02:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'brave', 'chenghuiyong1987@gmail.com', '$2y$10$ilXWMra0lQkY90y.dKvAAOLH2IvWe1CQbr2vfJJpmIaeZp1UDygdK', 'WynDXU7QI5UyF8PZ3pVZtAv40qvfdJ5UfcHffRECcmYyC4VdPPKGsMXsV15c', '2015-11-03 10:26:30', '2015-11-05 08:56:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
