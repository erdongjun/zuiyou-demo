-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: 2018-01-25 13:54:46
-- 服务器版本： 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dakcms`
--

-- --------------------------------------------------------

--
-- 表的结构 `dak_access_log`
--

CREATE TABLE `dak_access_log` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '日志类型:0=>一般操作,1=>登陆操作,2=>数据库操作',
  `uid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名称',
  `target_url` varchar(255) NOT NULL DEFAULT '' COMMENT '访问的url',
  `query_params` longtext NOT NULL COMMENT 'get和post参数',
  `ua` varchar(255) NOT NULL DEFAULT '' COMMENT '访问ua',
  `ip` varchar(32) NOT NULL DEFAULT '' COMMENT '访问ip',
  `note` varchar(1000) NOT NULL DEFAULT '' COMMENT 'json格式备注字段',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '记录时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作记录表';

--
-- 转存表中的数据 `dak_access_log`
--

INSERT INTO `dak_access_log` (`id`, `type`, `uid`, `name`, `target_url`, `query_params`, `ua`, `ip`, `note`, `create_time`) VALUES
(101, 2, 1, 'admin', '/admin/access/add', '{\"title\":\"asd\",\"urls\":\"asd\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516470073),
(102, 1, 1, 'admin', '/admin/login/login', '{\"name\":\"admin\",\"password\":\"xifan123\",\"verify\":\"d3by\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '账号登陆', 1516470089),
(103, 1, 1, 'admin', '/admin/login/login', '{\"name\":\"admin\",\"password\":\"xifan123\",\"verify\":\"bhlk\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '账号登陆', 1516541149),
(104, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"6\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542310),
(105, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542313),
(106, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"8\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542315),
(107, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"9\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542317),
(108, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"10\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542319),
(109, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"11\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542321),
(110, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"12\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542324),
(111, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"5\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542326),
(112, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"15\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542331),
(113, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"16\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542333),
(114, 2, 1, 'admin', '/admin/user/del', '{\"id\":\"14\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516542336),
(115, 2, 1, 'admin', '/admin/access/del', '{\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除权限', 1516542364),
(116, 2, 1, 'admin', '/admin/access/del', '{\"id\":\"17\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除权限', 1516542365),
(117, 2, 1, 'admin', '/admin/access/del', '{\"id\":\"16\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除权限', 1516542367),
(118, 2, 1, 'admin', '/admin/cate/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516543932),
(119, 2, 1, 'admin', '/admin/cate/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516543934),
(120, 2, 1, 'admin', '/admin/cate/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516543935),
(121, 2, 1, 'admin', '/admin/cate/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516543948),
(122, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516543960),
(123, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516543967),
(124, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544055),
(125, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544096),
(126, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544249),
(127, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544269),
(128, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544343),
(129, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544348),
(130, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544368),
(131, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\",\"id\":\"64\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544454),
(132, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"64\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544520),
(133, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"das\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544560),
(134, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"das\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544572),
(135, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"das\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544588),
(136, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"das\",\"des\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544593),
(137, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"das\",\"des\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544597),
(138, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"das\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544600),
(139, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"das\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544606),
(140, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"das1\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516544608),
(141, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sc\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545346),
(142, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sc\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545457),
(143, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sv\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545489),
(144, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sd\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545508),
(145, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sd\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545524),
(146, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sd\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545534),
(147, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sd1\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545537),
(148, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sd1\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545567),
(149, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sd11\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545571),
(150, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"1\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545616),
(151, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"72\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545624),
(152, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"71\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545652),
(153, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"70\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545654),
(154, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"68\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545656),
(155, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"67\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545658),
(156, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"66\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545660),
(157, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"1212\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545665),
(158, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u6c14\\u6e29\\u6c14\\u6e29\",\"des\":\"\\u5927\\u58f0\\u9053\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545695),
(159, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"69\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545711),
(160, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"73\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545713),
(161, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"65\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545716),
(162, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"74\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545734),
(163, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"des\":\"\\u4e00\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545777),
(164, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"des\":\"\\u4e8c\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545791),
(165, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u8d26\\u53f7\\u7ba1\\u7406\",\"des\":\"\\u4e8c\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545823),
(166, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u7f51\\u7ad9\\u8bbe\\u7f6e\",\"des\":\"\\u4e8c\\u7ea7\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545854),
(167, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"76\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545907),
(168, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"77\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545909),
(169, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"78\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545910),
(170, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u7f51\\u7ad9\\u8bbe\\u7f6e\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545931),
(171, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u8d26\\u53f7\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545978),
(172, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u6743\\u9650\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545989),
(173, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u89d2\\u8272\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516545999),
(174, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u5b89\\u5168\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546010),
(175, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u6a21\\u5757\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546025),
(176, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546047),
(177, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u8fd0\\u8425\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546056),
(178, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u6570\\u636e\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546068),
(179, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"84\",\"name\":\"\\u5708\\u5b50\\u6a21\\u5757\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546102),
(180, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"84\",\"name\":\"\\u5c0f\\u8bf4\\u6a21\\u5757\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546108),
(181, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"84\",\"name\":\"\\u6587\\u7ae0\\u6a21\\u5757\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546113),
(182, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"84\",\"name\":\"\\u56fe\\u96c6\\u6a21\\u5757\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546124),
(183, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"84\",\"name\":\"\\u5e94\\u7528\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546129),
(184, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"84\",\"name\":\"\\u539f\\u521b\\u6a21\\u5757\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546139),
(185, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"84\",\"name\":\"\\u53cb\\u94fe\\u6a21\\u5757\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546148),
(186, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"84\",\"name\":\"\\u5e94\\u7528\\u6a21\\u5757\",\"des\":\"\",\"id\":\"92\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546190),
(187, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"75\",\"name\":\"\\u7f51\\u7ad9\\u8bbe\\u7f6e\",\"des\":\"11\",\"id\":\"79\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546252),
(188, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"75\",\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516546785),
(189, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"95\",\"title\":\"\\u83dc\\u5355\\u5217\\u8868\",\"urls\":\"menu\\/index\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516546814),
(190, 2, 1, 'admin', '/admin/access/edit', '{\"m_id\":\"95\",\"title\":\"\\u83dc\\u5355\\u5217\\u8868\",\"urls\":\"menu\\/index\",\"id\":\"19\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '编辑权限', 1516547078),
(191, 2, 1, 'admin', '/admin/access/edit', '{\"m_id\":\"82\",\"title\":\"\\u83dc\\u5355\\u5217\\u8868\",\"urls\":\"menu\\/index\",\"id\":\"19\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '编辑权限', 1516547087),
(192, 2, 1, 'admin', '/admin/access/edit', '{\"m_id\":\"95\",\"title\":\"\\u83dc\\u5355\\u5217\\u8868\",\"urls\":\"menu\\/index\",\"id\":\"19\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '编辑权限', 1516547094),
(193, 2, 1, 'admin', '/admin/access/edit', '{\"m_id\":\"81\",\"title\":\"\\u5220\\u9664\\u6743\\u9650\",\"urls\":\"access\\/del\",\"id\":\"6\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '编辑权限', 1516547117),
(194, 2, 1, 'admin', '/admin/access/edit', '{\"m_id\":\"81\",\"title\":\"\\u7f16\\u8f91\\u6743\\u9650\",\"urls\":\"access\\/edit\",\"id\":\"5\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '编辑权限', 1516547126),
(195, 2, 1, 'admin', '/admin/access/edit', '{\"m_id\":\"81\",\"title\":\"\\u6dfb\\u52a0\\u6743\\u9650\",\"urls\":\"access\\/add\",\"id\":\"4\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '编辑权限', 1516547146),
(196, 2, 1, 'admin', '/admin/access/edit', '{\"m_id\":\"81\",\"title\":\"\\u6743\\u9650\\u5217\\u8868\",\"urls\":\"access\\/index\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '编辑权限', 1516547164),
(197, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"95\",\"title\":\"\\u6dfb\\u52a0\\u83dc\\u5355\",\"urls\":\"menu\\/add\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547244),
(198, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"95\",\"title\":\"\\u4fee\\u6539\\u83dc\\u5355\",\"urls\":\"menu\\/edit\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547280),
(199, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"95\",\"title\":\"\\u5220\\u9664\\u83dc\\u5355\",\"urls\":\"menu\\/del\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547292),
(200, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"75\",\"name\":\"\\u7f51\\u7ad9\\u8bbe\\u7f6e\",\"des\":\"2\",\"id\":\"79\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改菜单', 1516547317),
(201, 2, 1, 'admin', '/admin/access/edit', '{\"m_id\":\"81\",\"title\":\"\\u4fee\\u6539\\u6743\\u9650\",\"urls\":\"access\\/edit\",\"id\":\"5\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '编辑权限', 1516547402),
(202, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"80\",\"title\":\"\\u8d26\\u53f7\\u5217\\u8868\",\"urls\":\"user\\/index\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547429),
(203, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"80\",\"title\":\"\\u6dfb\\u52a0\\u8d26\\u53f7\",\"urls\":\"user\\/add\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547440),
(204, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"80\",\"title\":\"\\u4fee\\u6539\\u8d26\\u53f7\",\"urls\":\"user\\/edit\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547452),
(205, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"80\",\"title\":\"\\u5220\\u9664\\u8d26\\u53f7\",\"urls\":\"user\\/del\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547462),
(206, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"80\",\"title\":\"\\u5220\\u9664\\u8d26\\u53f7\",\"urls\":\"user\\/del\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547466),
(207, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"82\",\"title\":\"\\u89d2\\u8272\\u5217\\u8868\",\"urls\":\"role\\/index\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547496),
(208, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"82\",\"title\":\"\\u6dfb\\u52a0\\u89d2\\u8272\",\"urls\":\"role\\/add\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547508),
(209, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"82\",\"title\":\"\\u4fee\\u6539\\u89d2\\u8272\",\"urls\":\"role\\/edit\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547517),
(210, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"82\",\"title\":\"\\u5220\\u9664\\u89d2\\u8272\",\"urls\":\"role\\/del\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547527),
(211, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"83\",\"title\":\"\\u767b\\u9646\\u65e5\\u5fd7\",\"urls\":\"accesslog\\/index\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547610),
(212, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"83\",\"title\":\"\\u666e\\u901a\\u65e5\\u5fd7\",\"urls\":\"accesslog\\/simple\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547628),
(213, 2, 1, 'admin', '/admin/access/add', '{\"m_id\":\"83\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"urls\":\"accesslog\\/action\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加权限', 1516547658),
(214, 1, 1, 'admin', '/admin/login/login', '{\"name\":\"admin\",\"password\":\"xifan123\",\"verify\":\"ll87\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '账号登陆', 1516791530),
(215, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"\\u524d\\u7aef\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加菜单', 1516793215),
(216, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"96\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除菜单', 1516793425),
(217, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"96\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除菜单', 1516793481),
(218, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"96\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除菜单', 1516793487),
(219, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"96\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除菜单', 1516793488),
(220, 2, 1, 'admin', '/admin/menu/del', '{\"id\":\"96\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除菜单', 1516793488),
(221, 2, 1, 'admin', '/admin/menu/add', '{\"parent_id\":\"0\",\"name\":\"sad\",\"des\":\"\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加菜单', 1516798290),
(222, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"0\",\"name\":\"saddqw\",\"des\":\"\",\"id\":\"97\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改菜单', 1516798298),
(223, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"0\",\"name\":\"saddqw\",\"des\":\"\",\"id\":\"97\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改菜单', 1516798299),
(224, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"0\",\"name\":\"saddqw\",\"des\":\"\",\"id\":\"97\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改菜单', 1516798300),
(225, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"0\",\"name\":\"saddqw\",\"des\":\"\",\"id\":\"97\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改菜单', 1516798305),
(226, 2, 1, 'admin', '/admin/menu/edit', '{\"parent_id\":\"0\",\"name\":\"saddqw\",\"des\":\"\",\"id\":\"97\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改菜单', 1516798336),
(227, 2, 1, 'admin', '/admin/article/add', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516801348),
(228, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802046),
(229, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802170),
(230, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"1\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802196),
(231, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802230),
(232, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"1\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802230),
(233, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802305),
(234, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"1\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802307),
(235, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802330),
(236, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"1\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802331),
(237, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802332),
(238, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802351),
(239, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"1\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802386),
(240, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802387),
(241, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"1\",\"id\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516802448),
(242, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"100\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803099),
(243, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"100\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803106),
(244, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"100\",\"title\":\"\\u963f\\u8428\\u5fb7\\u64921\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803141),
(245, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"100\",\"title\":\"\\u963f\\u8428\\u5fb7\\u64921\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803142),
(246, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"100\",\"title\":\"\\u963f\\u8428\\u5fb7\\u64921\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803143),
(247, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"100\",\"title\":\"\\u963f\\u8428\\u5fb7\\u64921\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803150),
(248, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"100\",\"title\":\"\\u963f\\u8428\\u5fb7\\u64921\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803182),
(249, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803218),
(250, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803274),
(251, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803335),
(252, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803335),
(253, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803337),
(254, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803340),
(255, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803411),
(256, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516803411),
(257, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842661),
(258, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842683),
(259, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842686),
(260, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842687),
(261, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842690),
(262, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842730),
(263, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842768),
(264, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842778),
(265, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842795),
(266, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842827),
(267, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842856),
(268, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842865),
(269, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516842893),
(270, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"des\":\"\\u963f\\u8428\\u5fb7\\u6492\",\"content\":\"<p>\\u963f\\u8428\\u5fb7\\u6492\\u591a<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843166),
(271, 2, 1, 'admin', '/admin/article/add', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"101\",\"title\":\"121\",\"des\":\"12\",\"content\":\"<p>12121<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843208),
(272, 2, 1, 'admin', '/admin/article/add', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"101\",\"title\":\"121\",\"des\":\"12\",\"content\":\"<p>12121<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843211),
(273, 2, 1, 'admin', '/admin/article/add', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\",\"des\":\"\\u963f\\u8428\\u5fb7\",\"content\":\"<p>\\u963f\\u8428\\u5fb7V\\u578b<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843245),
(274, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"3\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843254),
(275, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"0\",\"id\":\"4\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843275),
(276, 2, 1, 'admin', '/admin/article/edit', '{\"status\":\"1\",\"id\":\"4\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843278);
INSERT INTO `dak_access_log` (`id`, `type`, `uid`, `name`, `target_url`, `query_params`, `ua`, `ip`, `note`, `create_time`) VALUES
(277, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"121\\u8428\\u9876\\u9876\\u6492\",\"des\":\"12\",\"content\":\"<p>12121<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843303),
(278, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"id\":\"4\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\",\"des\":\"\\u963f\\u8428\\u5fb7\",\"content\":\"<p>\\u963f\\u8428\\u5fb7V\\u578b<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516843348),
(279, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"id\":\"4\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\",\"des\":\"\\u963f\\u8428\\u5fb7\",\"content\":\"<p>\\u963f\\u8428\\u5fb7V\\u578b<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516845764),
(280, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"id\":\"4\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\",\"des\":\"\\u963f\\u8428\\u5fb7\",\"content\":\"<p>\\u963f\\u8428\\u5fb7V\\u578b<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516845768),
(281, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"id\":\"4\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\",\"des\":\"\\u963f\\u8428\\u5fb7\",\"content\":\"<p>\\u963f\\u8428\\u5fb7V\\u578b<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516845771),
(282, 2, 1, 'admin', '/admin/article/edit', '{\"uid\":\"1\",\"id\":\"4\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"\\u963f\\u8428\\u5fb7\",\"des\":\"\\u963f\\u8428\\u5fb7\",\"content\":\"<p>\\u963f\\u8428\\u5fb7V\\u578b<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1516845797),
(283, 1, 1, 'admin', '/admin/login/login', '{\"name\":\"admin\",\"password\":\"xifan123\",\"verify\":\"ytlr\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '账号登陆', 1516872871),
(284, 1, 1, 'admin', '/admin/login/login', '{\"name\":\"admin\",\"password\":\"xifan123\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '账号登陆', 1516879020),
(285, 1, 1, 'admin', '/admin/login/login', '{\"name\":\"admin\",\"password\":\"xifan123\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '账号登陆', 1516879039);

-- --------------------------------------------------------

--
-- 表的结构 `dak_admin_access`
--

CREATE TABLE `dak_admin_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `m_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属菜单id',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '权限标题',
  `urls` varchar(255) NOT NULL DEFAULT '' COMMENT '对应页面的url, json数据存储',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态:0=>无效,1=>有效',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员权限表';

--
-- 转存表中的数据 `dak_admin_access`
--

INSERT INTO `dak_admin_access` (`id`, `m_id`, `title`, `urls`, `status`, `update_time`, `create_time`) VALUES
(1, 81, '权限列表', 'access/index', 1, 1516547164, 1516417865),
(4, 81, '添加权限', 'access/add', 1, 1516547146, 1516439640),
(5, 81, '修改权限', 'access/edit', 1, 1516547402, 1516439665),
(6, 81, '删除权限', 'access/del', 1, 1516547117, 1516439681),
(19, 95, '菜单列表', 'menu/index', 1, 1516547094, 1516546814),
(20, 95, '添加菜单', 'menu/add', 1, 1516547244, 1516547244),
(21, 95, '修改菜单', 'menu/edit', 1, 1516547280, 1516547280),
(22, 95, '删除菜单', 'menu/del', 1, 1516547292, 1516547292),
(23, 80, '账号列表', 'user/index', 1, 1516547429, 1516547429),
(24, 80, '添加账号', 'user/add', 1, 1516547440, 1516547440),
(25, 80, '修改账号', 'user/edit', 1, 1516547452, 1516547452),
(26, 80, '删除账号', 'user/del', 1, 1516547462, 1516547462),
(27, 82, '角色列表', 'role/index', 1, 1516547496, 1516547496),
(28, 82, '添加角色', 'role/add', 1, 1516547508, 1516547508),
(29, 82, '修改角色', 'role/edit', 1, 1516547517, 1516547517),
(30, 82, '删除角色', 'role/del', 1, 1516547527, 1516547527),
(31, 83, '登陆日志', 'accesslog/index', 1, 1516547610, 1516547610),
(32, 83, '普通日志', 'accesslog/simple', 1, 1516547628, 1516547628),
(33, 83, '操作日志', 'accesslog/action', 1, 1516547658, 1516547658);

-- --------------------------------------------------------

--
-- 表的结构 `dak_admin_menu`
--

CREATE TABLE `dak_admin_menu` (
  `id` int(11) NOT NULL COMMENT '菜单id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `parent_id` int(50) NOT NULL DEFAULT '0' COMMENT '所属父级菜单',
  `des` varchar(50) NOT NULL DEFAULT '这是菜单描述' COMMENT '菜单描述',
  `create_time` int(50) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(20) NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台菜单列表';

--
-- 转存表中的数据 `dak_admin_menu`
--

INSERT INTO `dak_admin_menu` (`id`, `name`, `parent_id`, `des`, `create_time`, `update_time`) VALUES
(75, '系统管理', 0, '一级', 1516545777, 1516545777),
(79, '网站设置', 75, '2', 1516545931, 1516547317),
(80, '账号管理', 75, '', 1516545978, 1516545978),
(81, '权限管理', 75, '', 1516545989, 1516545989),
(82, '角色管理', 75, '', 1516545999, 1516545999),
(83, '安全管理', 75, '', 1516546010, 1516546010),
(84, '模块管理', 0, '', 1516546025, 1516546025),
(85, '用户管理', 0, '', 1516546047, 1516546047),
(86, '运营管理', 0, '', 1516546056, 1516546056),
(87, '数据管理', 0, '', 1516546068, 1516546068),
(88, '圈子模块', 84, '', 1516546102, 1516546102),
(89, '小说模块', 84, '', 1516546108, 1516546108),
(90, '文章模块', 84, '', 1516546113, 1516546113),
(91, '图集模块', 84, '', 1516546124, 1516546124),
(92, '应用模块', 84, '', 1516546129, 1516546190),
(93, '原创模块', 84, '', 1516546139, 1516546139),
(94, '友链模块', 84, '', 1516546148, 1516546148),
(95, '菜单管理', 75, '', 1516546785, 1516546785),
(97, 'saddqw', 0, '', 1516798290, 1516798336);

-- --------------------------------------------------------

--
-- 表的结构 `dak_admin_role`
--

CREATE TABLE `dak_admin_role` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '角色名称',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态:0=>无效,1=>有效',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

--
-- 转存表中的数据 `dak_admin_role`
--

INSERT INTO `dak_admin_role` (`id`, `name`, `status`, `update_time`, `create_time`) VALUES
(9, '运营管理员', 1, 1516450653, 1516371785),
(22, '文章管理员', 1, 1516450660, 1516444865),
(23, '数据管理员', 1, 1516450667, 1516444893),
(24, '圈子管理员', 1, 1516444911, 1516444911),
(25, '小说管理员', 1, 1516444922, 1516444922);

-- --------------------------------------------------------

--
-- 表的结构 `dak_admin_role_access`
--

CREATE TABLE `dak_admin_role_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '对应admin_role表中的id字段 ',
  `access_id` int(11) NOT NULL DEFAULT '0' COMMENT '对应admin_access表中的id字段',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限关系表';

--
-- 转存表中的数据 `dak_admin_role_access`
--

INSERT INTO `dak_admin_role_access` (`id`, `role_id`, `access_id`, `create_time`) VALUES
(8, 21, 5, 1516443258),
(9, 21, 4, 1516443258),
(10, 9, 6, 1516444939),
(11, 9, 5, 1516444939),
(12, 9, 4, 1516444939),
(13, 9, 1, 1516444939),
(14, 23, 1, 1516450584),
(15, 9, 7, 1516450653),
(16, 22, 7, 1516450660),
(17, 22, 6, 1516450660),
(18, 22, 5, 1516450660),
(19, 22, 4, 1516450660),
(20, 22, 1, 1516450660),
(21, 23, 7, 1516450667),
(22, 23, 6, 1516450667),
(23, 23, 5, 1516450667),
(24, 23, 4, 1516450667);

-- --------------------------------------------------------

--
-- 表的结构 `dak_admin_user`
--

CREATE TABLE `dak_admin_user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '管理员id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `email` varchar(30) NOT NULL DEFAULT '' COMMENT '邮箱 ',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是管理员: 0=>否,1=>是 ',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态: 0=>无效,1=>有效',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `ip` varchar(20) DEFAULT NULL COMMENT '当前登录ip'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

--
-- 转存表中的数据 `dak_admin_user`
--

INSERT INTO `dak_admin_user` (`id`, `name`, `email`, `mobile`, `password`, `is_admin`, `status`, `update_time`, `create_time`, `ip`) VALUES
(1, 'admin', '1@qq.com', '18736901975', '9440205c1bfd06072c70f1ef6ab89cce', 1, 1, 1516444196, 0, NULL),
(3, 'xifan1', '2@qq.com', '18736545678', '9440205c1bfd06072c70f1ef6ab89cce', 0, 1, 1516447934, 1516376714, '127.0.0.1'),
(4, 'xifan2', '3@qq.com', '18765434567', 'd41d8cd98f00b204e9800998ecf8427e', 0, 1, 1516443948, 1516376868, '127.0.0.1'),
(13, 'xifan', '1e@qq.com', '18736901974', '9440205c1bfd06072c70f1ef6ab89cce', 0, 1, 1516421550, 1516421550, '127.0.0.1'),
(17, '1xifan', '12q@qq.com', '18765456789', '5c95b414c781306d116fe3840420faf5', 0, 1, 1516443562, 1516443562, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `dak_admin_user_role`
--

CREATE TABLE `dak_admin_user_role` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '对应admin_user表的id字段',
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '对应admin_role表中的id字段',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员角色关系表';

--
-- 转存表中的数据 `dak_admin_user_role`
--

INSERT INTO `dak_admin_user_role` (`id`, `uid`, `role_id`, `create_time`) VALUES
(40, 4, 11, 1516438021),
(41, 5, 11, 1516438041),
(42, 5, 5, 1516438041),
(43, 5, 4, 1516438041),
(44, 3, 25, 1516447934),
(45, 3, 24, 1516447934),
(46, 3, 23, 1516447934),
(47, 3, 22, 1516447934),
(48, 3, 9, 1516447934);

-- --------------------------------------------------------

--
-- 表的结构 `dak_article`
--

CREATE TABLE `dak_article` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` int(11) DEFAULT '0' COMMENT '用户id',
  `author_name` varchar(10) DEFAULT '佚名' COMMENT '作者',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `des` varchar(200) DEFAULT NULL COMMENT '描述',
  `c_id` int(11) NOT NULL COMMENT '所属文章分类id',
  `status` tinyint(11) NOT NULL DEFAULT '1' COMMENT '文章是否显示',
  `content` text NOT NULL COMMENT '内容',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dak_article`
--

INSERT INTO `dak_article` (`id`, `uid`, `author_name`, `title`, `des`, `c_id`, `status`, `content`, `update_time`, `create_time`) VALUES
(1, 1, 'admin', '阿萨德撒', '阿萨德撒', 97, 1, '<p>阿萨德撒多</p>', 1516802448, 1516801348),
(2, 1, 'admin', '121', '12', 101, 1, '<p>12121</p>', 1516843208, 1516843208),
(3, 1, 'admin', '121', '12', 101, 1, '<p>12121</p>', 1516843211, 1516843211),
(4, 1, 'admin', '阿萨德', '阿萨德', 97, 1, '<p>阿萨德V型</p>', 1516845797, 1516843245),
(5, 0, '佚名', '完呢', NULL, 97, 1, '人死了大叔阿斯顿撒旦撒大1', 1516873260, 1516873260),
(6, 1, '佚名', '完呢', NULL, 97, 1, '人死了大叔阿斯顿撒旦撒大1', 1516873326, 1516873326),
(7, 1, '佚名', '完呢', NULL, 97, 1, '人死了大叔阿斯顿撒旦撒大1', 1516873380, 1516873380),
(8, 1, '佚名', '完呢', NULL, 97, 1, '人死了大叔阿斯顿撒旦撒大1', 1516873408, 1516873408),
(9, 1, '佚名', '完呢', NULL, 97, 1, '人死了大叔阿斯顿撒旦撒大1', 1516873452, 1516873452);

-- --------------------------------------------------------

--
-- 表的结构 `dak_article_cate`
--

CREATE TABLE `dak_article_cate` (
  `id` int(11) NOT NULL COMMENT '文章分类id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '分类名称',
  `parent_id` int(50) NOT NULL DEFAULT '0' COMMENT '所属父级分类',
  `des` varchar(50) DEFAULT NULL COMMENT '分类描述',
  `create_time` int(50) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(20) NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章分类表';

--
-- 转存表中的数据 `dak_article_cate`
--

INSERT INTO `dak_article_cate` (`id`, `name`, `parent_id`, `des`, `create_time`, `update_time`) VALUES
(97, '玄幻小说', 0, '', 1516793400, 1516873889),
(98, '历史架空', 0, '', 1516793410, 1516873902),
(99, '男生小说', 0, '', 1516793418, 1516873921);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dak_access_log`
--
ALTER TABLE `dak_access_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_uid` (`uid`);

--
-- Indexes for table `dak_admin_access`
--
ALTER TABLE `dak_admin_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_admin_menu`
--
ALTER TABLE `dak_admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_admin_role`
--
ALTER TABLE `dak_admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_admin_role_access`
--
ALTER TABLE `dak_admin_role_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_admin_user`
--
ALTER TABLE `dak_admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_admin_user_role`
--
ALTER TABLE `dak_admin_user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_article`
--
ALTER TABLE `dak_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_article_cate`
--
ALTER TABLE `dak_article_cate`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dak_access_log`
--
ALTER TABLE `dak_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- 使用表AUTO_INCREMENT `dak_admin_access`
--
ALTER TABLE `dak_admin_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- 使用表AUTO_INCREMENT `dak_admin_menu`
--
ALTER TABLE `dak_admin_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id', AUTO_INCREMENT=98;
--
-- 使用表AUTO_INCREMENT `dak_admin_role`
--
ALTER TABLE `dak_admin_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- 使用表AUTO_INCREMENT `dak_admin_role_access`
--
ALTER TABLE `dak_admin_role_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- 使用表AUTO_INCREMENT `dak_admin_user`
--
ALTER TABLE `dak_admin_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员id', AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `dak_admin_user_role`
--
ALTER TABLE `dak_admin_user_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- 使用表AUTO_INCREMENT `dak_article`
--
ALTER TABLE `dak_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `dak_article_cate`
--
ALTER TABLE `dak_article_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章分类id', AUTO_INCREMENT=105;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
