-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: 2018-02-12 10:26:31
-- 服务器版本： 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
(1, 2, 1, 'admin', '/admin/article/del', '{\"id\":\"14\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518181148),
(2, 2, 1, 'admin', '/admin/article/del', '{\"id\":\"15\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518181282),
(3, 2, 1, 'admin', '/admin/article/del', '{\"id\":\"16\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518181300),
(4, 2, 1, 'admin', '/admin/article/add', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"121\",\"des\":\"12\",\"content\":\"<p>1212<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518181309),
(5, 2, 1, 'admin', '/admin/article/del', '{\"id\":\"17\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518181317),
(6, 2, 1, 'admin', '/admin/article/add', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"21\",\"des\":\"12\",\"content\":\"<p>121<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518181337),
(7, 2, 1, 'admin', '/admin/article/del', '{\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518181344),
(8, 2, 1, 'admin', '/admin/article/add', '{\"uid\":\"1\",\"author_name\":\"admin\",\"c_id\":\"97\",\"title\":\"121\",\"des\":\"12\",\"content\":\"<p>12<\\/p>\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518181375),
(9, 2, 1, 'admin', '/admin/video/del', '{\"id\":\"6\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182545),
(10, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182551),
(11, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182553),
(12, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182553),
(13, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182554),
(14, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182554),
(15, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182554),
(16, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182918),
(17, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"5,1,4\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182923),
(18, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"1\",\"ids\":\"1,4,5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182927),
(19, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"0\",\"ids\":\"1,4,5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182932),
(20, 2, 1, 'admin', '/admin/video/edit', '{\"status\":\"1\",\"ids\":\"1,4,5\",\"batch\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182937),
(21, 2, 1, 'admin', '/admin/video/del', '{\"ids\":\"1\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518182943),
(22, 2, 1, 'admin', '/admin/video/del', '{\"id\":\"4\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518183000),
(23, 2, 1, 'admin', '/admin/video/del', '{\"ids\":\"5\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518183005),
(24, 1, 1, 'admin', '/admin/login/login', '{\"name\":\"admin\",\"password\":\"xifan123\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '账号登陆', 1518228677),
(25, 2, 1, 'admin', '/admin/video/add', '{\"c_id\":\"116\",\"title\":\"223\",\"recommend_url\":\"23\",\"cover_url\":\"23\",\"url\":\"23\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518229214),
(26, 2, 1, 'admin', '/admin/video/del', '{\"id\":\"2\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518229240),
(27, 2, 1, 'admin', '/admin/role/edit', '{\"status\":\"0\",\"id\":\"25\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改角色', 1518236884),
(28, 2, 1, 'admin', '/admin/role/edit', '{\"status\":\"0\",\"id\":\"24\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改角色', 1518236888),
(29, 2, 1, 'admin', '/admin/role/edit', '{\"status\":\"1\",\"id\":\"24\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改角色', 1518236890),
(30, 2, 1, 'admin', '/admin/role/edit', '{\"status\":\"1\",\"id\":\"25\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '修改角色', 1518236891),
(31, 2, 1, 'admin', '/admin/role/add', '{\"name\":\"12212\",\"status\":\"1\",\"access_ids\":{\"1\":\"33\"}}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '添加角色', 1518236907),
(32, 2, 1, 'admin', '/admin/role/del', '{\"id\":\"26\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '删除角色', 1518236914),
(33, 2, 1, 'admin', '/admin/adminuser/del', '{\"id\":\"17\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237025),
(34, 2, 1, 'admin', '/admin/adminuser/add', '{\"name\":\"admin\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"1872\",\"role_ids\":{\"1\":\"25\"}}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237042),
(35, 2, 1, 'admin', '/admin/adminuser/add', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"1872\",\"role_ids\":{\"1\":\"25\"}}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237045),
(36, 2, 1, 'admin', '/admin/adminuser/add', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"}}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237051),
(37, 2, 1, 'admin', '/admin/adminuser/add', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"}}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237052),
(38, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237062),
(39, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237062),
(40, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237064),
(41, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237064),
(42, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237064),
(43, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237064),
(44, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237064),
(45, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237064),
(46, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237084),
(47, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237084),
(48, 2, 1, 'admin', '/admin/adminuser/edit', '{\"name\":\"admin1\",\"password\":\"xifan123\",\"email\":\"121@qq.com\",\"mobile\":\"18736901978\",\"role_ids\":{\"1\":\"25\"},\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237127),
(49, 2, 1, 'admin', '/admin/adminuser/del', '{\"id\":\"18\"}', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '127.0.0.1', '', 1518237820);

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
(24, '圈子管理员', 1, 1518236890, 1516444911),
(25, '小说管理员', 1, 1518236891, 1516444922);

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
(24, 23, 4, 1516450667),
(25, 26, 33, 1518236907);

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
(13, 'xifan', '1e@qq.com', '18736901974', '9440205c1bfd06072c70f1ef6ab89cce', 0, 1, 1516421550, 1516421550, '127.0.0.1');

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
(48, 3, 9, 1516447934),
(49, 18, 25, 1518237051);

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
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `read_num` int(11) NOT NULL DEFAULT '0' COMMENT '已阅读人数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章';

--
-- 转存表中的数据 `dak_article`
--

INSERT INTO `dak_article` (`id`, `uid`, `author_name`, `title`, `des`, `c_id`, `status`, `content`, `update_time`, `create_time`, `read_num`) VALUES
(19, 1, 'admin', '121', '12', 97, 1, '<p>12</p>', 1518181375, 1518181375, 6);

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
(98, '历史架空', 0, '', 1516793410, 1516873902);

-- --------------------------------------------------------

--
-- 表的结构 `dak_cate`
--

CREATE TABLE `dak_cate` (
  `id` int(11) NOT NULL COMMENT '链接分类id',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '分类的类型:0=>其他类型,1=>友情链接, 2=> 视频分类',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '分类名称',
  `parent_id` int(50) NOT NULL DEFAULT '0' COMMENT '所属父级分类',
  `des` varchar(50) DEFAULT NULL COMMENT '分类描述',
  `create_time` int(50) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(20) NOT NULL DEFAULT '0' COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='链接分类表';

--
-- 转存表中的数据 `dak_cate`
--

INSERT INTO `dak_cate` (`id`, `type`, `name`, `parent_id`, `des`, `create_time`, `update_time`) VALUES
(111, 1, '视频', 0, '', 1517043969, 1517043969),
(116, 2, '电影', 0, '', 1518000431, 1518000431),
(118, 2, '电视剧', 0, '', 1518000712, 1518000712);

-- --------------------------------------------------------

--
-- 表的结构 `dak_config`
--

CREATE TABLE `dak_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(100) NOT NULL DEFAULT '' COMMENT '配置key',
  `value` varchar(200) NOT NULL DEFAULT '' COMMENT '配置value',
  `update_time` int(11) NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置表';

--
-- 转存表中的数据 `dak_config`
--

INSERT INTO `dak_config` (`id`, `key`, `value`, `update_time`) VALUES
(2, 'site_url', 'www.mayiyingcheng.com', 0),
(3, 'site_name', '蚂蚁影城', 0),
(4, 'site_key', '蚂蚁影城,在线观看', 0),
(5, 'site_des', '蚂蚁影城描述', 0),
(6, 'site_icp', '备案号', 0),
(7, 'site_qq', '站长qq', 0),
(8, 'site_weixin', '站长微信', 0),
(9, 'site_mail', '站长邮箱', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dak_link`
--

CREATE TABLE `dak_link` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '链接名称',
  `c_id` int(11) NOT NULL COMMENT '所属链接分类id',
  `link` varchar(200) DEFAULT NULL COMMENT '链接地址',
  `status` tinyint(11) NOT NULL DEFAULT '1' COMMENT '链接是否显示',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `read_num` int(11) NOT NULL DEFAULT '0' COMMENT '点击查看人数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- --------------------------------------------------------

--
-- 表的结构 `dak_user`
--

CREATE TABLE `dak_user` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '用户id',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱 ',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态: 0=>无效,1=>有效',
  `level` int(11) DEFAULT '0' COMMENT '用户等级',
  `is_vip` int(11) NOT NULL DEFAULT '0' COMMENT '是否是会员. 0 不是会员,1 是会员 2 终身会员',
  `member_end_time` int(11) NOT NULL DEFAULT '0' COMMENT '会员结束时间',
  `integral` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `email_code` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱验证码',
  `used_invite_code` int(11) DEFAULT NULL COMMENT '注册时使用的邀请码',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '上次更新时间',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `ip` varchar(20) DEFAULT NULL COMMENT '注册ip'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `dak_user`
--

INSERT INTO `dak_user` (`id`, `email`, `password`, `status`, `level`, `is_vip`, `member_end_time`, `integral`, `email_code`, `used_invite_code`, `update_time`, `create_time`, `ip`) VALUES
(33, '993656553@qq.com', '9440205c1bfd06072c70f1ef6ab89cce', 1, 0, 0, 1518424095, 0, '34f98c7c5d7063181da890ea8d25265a', 33, 1518420495, 1518417847, '127.0.0.1');

-- --------------------------------------------------------

--
-- 表的结构 `dak_video`
--

CREATE TABLE `dak_video` (
  `id` int(11) UNSIGNED NOT NULL,
  `c_id` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '视频标题',
  `recommend_url` varchar(200) DEFAULT '' COMMENT '推荐图',
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐,默认不推荐',
  `cover_url` varchar(200) DEFAULT '' COMMENT '封面图',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显示 默认1',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '视频地址',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `read_num` int(11) NOT NULL DEFAULT '0' COMMENT '查看人数'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dak_video`
--

INSERT INTO `dak_video` (`id`, `c_id`, `title`, `recommend_url`, `is_recommend`, `cover_url`, `status`, `url`, `update_time`, `create_time`, `read_num`) VALUES
(1, 116, '她被撞亡身份未知，市民满地找手机', 'http://image2.pearvideo.com/cont/20180207/cont-1275131-10989884.png', 0, 'http://image2.pearvideo.com/cont/20180207/cont-1275131-10989884.png', 1, 'http://video.pearvideo.com/mp4/short/20180207/cont-1275063-11549419-hd.mp4', 1518182937, 1518002587, 20);

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
-- Indexes for table `dak_cate`
--
ALTER TABLE `dak_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_config`
--
ALTER TABLE `dak_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_link`
--
ALTER TABLE `dak_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_user`
--
ALTER TABLE `dak_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dak_video`
--
ALTER TABLE `dak_video`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `dak_access_log`
--
ALTER TABLE `dak_access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- 使用表AUTO_INCREMENT `dak_admin_user`
--
ALTER TABLE `dak_admin_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '管理员id', AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `dak_admin_user_role`
--
ALTER TABLE `dak_admin_user_role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- 使用表AUTO_INCREMENT `dak_article`
--
ALTER TABLE `dak_article`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `dak_article_cate`
--
ALTER TABLE `dak_article_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章分类id', AUTO_INCREMENT=99;
--
-- 使用表AUTO_INCREMENT `dak_cate`
--
ALTER TABLE `dak_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '链接分类id', AUTO_INCREMENT=119;
--
-- 使用表AUTO_INCREMENT `dak_config`
--
ALTER TABLE `dak_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `dak_link`
--
ALTER TABLE `dak_link`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `dak_user`
--
ALTER TABLE `dak_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=34;
--
-- 使用表AUTO_INCREMENT `dak_video`
--
ALTER TABLE `dak_video`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;