-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2016 at 11:01 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', 10, 1, 1, '::1', 1448488005),
(3, 0, 'c8k0oowckk4wgk40ggow04c0okogoo0c8kwg848w', 1, 1, 0, NULL, 1468521685),
(4, 0, 'wwc8k8gcwwkwsowwok4skog40wos04w8owksc4wo', 1, 1, 0, NULL, 1468521976),
(5, 0, 'kg0cgsk44so8ooso80wwc0g0ko0skk4sco0wc4c8', 1, 1, 0, NULL, 1468523414),
(6, 0, 'okk0wk88ckk4ks044w8c0owo4w0w44s0s8cgk844', 1, 1, 0, NULL, 1468523567),
(7, 0, 'w4cw0sgo0kscc8k4s88k88w8oo4wc8oo0ggkkwck', 1, 1, 0, NULL, 1468524205),
(8, 0, 'osg00sg0kwo4ok8s4kwcokcc8cc4k4gkw4o8wccc', 1, 1, 0, NULL, 1468524333),
(9, 0, 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', 1, 1, 0, NULL, 1468524780),
(10, 0, '44o40kkkggc4o88so0kwkksk0w8s44gsoook4ow0', 1, 1, 0, NULL, 1468525395),
(11, 0, 'wc40ckgow00co8g4gw848kw4g8o0wgogkgoc8wgc', 1, 1, 0, NULL, 1468525403),
(12, 0, '0o0o4ws8g0sw00kcoww00ss0cwg8440so44g0kk8', 1, 1, 0, NULL, 1468525668),
(13, 0, 'cosgss8osk4ckk880s4w4kckwgg4wcsgo080owsw', 1, 1, 0, NULL, 1468525727),
(14, 0, 'ck4o4448s4cswkcwg8oko0s8ogcgog04w0goscwo', 1, 1, 0, NULL, 1468526196),
(15, 0, '8sgog4kgcw0g0c800cck440wskokko4okoo4oo84', 1, 1, 0, NULL, 1468526262),
(16, 0, 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', 1, 1, 0, NULL, 1468526282),
(17, 0, 'ww04gc84ksc0k4ksc0gwkk0oggwcswo8s4oggsow', 1, 1, 0, NULL, 1468526875),
(18, 0, 'sswcg4ko0gk0o880sgswkowws88wwc88c44sgwg8', 1, 1, 0, NULL, 1468526983),
(19, 0, '0o4gg0ks0ksk8w88ksc0so0cosccc4gsk8k8owgw', 1, 1, 0, NULL, 1468527168),
(20, 0, 'wg04g8w0oko8ck4cc0gg48ws84cwskkwgo8800ok', 1, 1, 0, NULL, 1468527229),
(21, 0, 'ko0c48wg8s4gg40sg84cs8gkckc04kswwsgc8s4o', 1, 1, 0, NULL, 1468527269),
(22, 0, '0cck484o8kokowkkkw44ggk8s0g80kw0ko8s0w88', 1, 1, 0, NULL, 1468527328),
(23, 0, 'wws0gw884go8wcgc444ogk8ws4wkkgscwc800w48', 1, 1, 0, NULL, 1468527419),
(24, 0, '0k0o08ogowg88k4gc0g8ockoo8s8gk44g4o88ocw', 1, 1, 0, NULL, 1468527731),
(25, 0, '8cw444wgoosg48og4gscos400s8ww8808oc4gkcg', 1, 1, 0, NULL, 1468527807),
(26, 0, '8cwg80swccckgkkssoc888ksc848c088wooc84gk', 1, 1, 0, NULL, 1468603643),
(27, 0, '4skw4kg8g4kkwsgg0kg80sk44g0oc80g0gc8w000', 1, 1, 0, NULL, 1468689964),
(28, 0, 'sg4kwww0og4gwg000kgwk0woskwogo8kckokco0w', 1, 1, 0, NULL, 1468690021),
(29, 0, 'ko8s4c4w848kk48wooow0ow08o4wcwkw8go0sg8s', 1, 1, 0, NULL, 1468690085),
(30, 0, '00go8s0oos8gco0wo8wgc0wgoss08swc4wgow0gg', 1, 1, 0, NULL, 1468690247),
(31, 0, 'kwsg8wo4cc0wo84o48wcocssg0g4osgsgw0co88k', 1, 1, 0, NULL, 1468690307),
(32, 0, 'wkc4kgw4cgw408k40cw04g8kowsw80ogkc80088o', 1, 1, 0, NULL, 1468690337),
(33, 0, 'ocwcck4kkcwskoowk4wwgcsk8o88w4kwswgos0ww', 1, 1, 0, NULL, 1468690387),
(34, 0, 'ckccg8csg4400owwcco0k4oco04scc4084w8c480', 1, 1, 0, NULL, 1468690443),
(35, 0, '00s48oosc0co80cs08csogg0o8ss4scc04k4cw8s', 1, 1, 0, NULL, 1468690473),
(36, 0, 'sg888cw0kskkc0kk4o4k0ks88cgooswo8owkk4gc', 1, 1, 0, NULL, 1468690507),
(39, 0, 'k8o4sw0w40wscwsw0ssck0s0k0gowsc0s4csg0go', 1, 1, 0, NULL, 1468690673),
(40, 0, 'c0ws4c4wgskgc4swo0o0gs44osc84k8co84oo8cc', 1, 1, 0, NULL, 1468691794),
(41, 0, 'sc0swkwg0ww4g0s8g4osc0wkcwocg0scssgcwkcg', 1, 1, 0, NULL, 1468692225),
(42, 0, '0s0wswgsskw0s0gsoc4g884c04cco480s4gw8skg', 1, 1, 0, NULL, 1468695029),
(43, 0, '0owkcscsg4gcwsc8c8scwocgk8ggsc88s80cwoko', 1, 1, 0, NULL, 1468695033),
(44, 0, 's4k0gg0coos84gws0k4g0c48wgoc8cgskcoks0g8', 1, 1, 0, NULL, 1468695037),
(45, 0, 'o4o00cks08gsso4wsw4k8k8ockgsw8o48gwsgckg', 1, 1, 0, NULL, 1468695041),
(46, 0, 'sg0wskcccwo4ss8w84ccco8goskcg0cc0s0s84gk', 1, 1, 0, NULL, 1468695057),
(47, 0, 'so8ocwcswo4o4kcwsw4k04gocc008w04kw00c88k', 1, 1, 0, NULL, 1468695061),
(48, 0, '4s40g88ossocwscggsg8gcgokkkc4okcwkog8go0', 1, 1, 0, NULL, 1468697118),
(49, 0, '8wggcggoowcs08k00ockssg04wwo840c0sok0kws', 1, 1, 0, NULL, 1469220191),
(51, 0, 'go4c88coook84kkskkks0ccg04w4gw0wkgg8k4go', 1, 1, 0, NULL, 1469220427),
(52, 0, 'ssgk0cogcosgck08s8wso80o4cg4ws4okosk4804', 1, 1, 0, NULL, 1469220479);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` mediumint(8) unsigned NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_grant`
--

CREATE TABLE IF NOT EXISTS `rest_grant` (
  `id` int(11) unsigned NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_limits`
--

CREATE TABLE IF NOT EXISTS `rest_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rest_logs`
--

CREATE TABLE IF NOT EXISTS `rest_logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rest_logs`
--

INSERT INTO `rest_logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(1, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"sc0swkwg0ww4g0s8g4osc0wkcwocg0scssgcwkcg";s:12:"Content-type";s:16:"application/json";}', 'sc0swkwg0ww4g0s8g4osc0wkcwocg0scssgcwkcg', '::1', 1468694438, 0.118874, '0', 401),
(2, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1468695029, 0.233077, '1', 201),
(3, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1468695033, 0.198736, '1', 201),
(4, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1468695037, 0.131835, '1', 201),
(5, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1468695041, 0.11353, '1', 201),
(6, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1468695057, 0.095829, '1', 201),
(7, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1468695061, 0.118461, '1', 201),
(8, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1468697118, 0.162257, '1', 201),
(9, 'api/example/users', 'get', 'a:4:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:12:"Content-type";s:16:"application/json";}', '', '::1', 1468697122, 0.117058, '0', 403),
(10, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697125, 0.0537908, '1', 200),
(11, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697144, 0.108134, '1', 200),
(12, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697145, 0.146847, '1', 200),
(13, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697145, 0.053062, '1', 200),
(14, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697145, 0.053803, '1', 200),
(15, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697146, 0.0727811, '1', 200),
(16, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697146, 0.107058, '1', 200),
(17, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697146, 0.070133, '1', 200),
(18, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697146, 0.0696759, '1', 200),
(19, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697146, 0.0564182, '1', 200),
(20, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697146, 0.057869, '1', 200),
(21, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697147, 0.056551, '1', 200),
(22, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697399, 0.07267, '1', 200),
(23, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697402, 0.0821161, '1', 200),
(24, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0";s:12:"Content-type";s:16:"application/json";}', 'gkg4k0cwcwckco4gw80wks0440wgwwsg4ww0o0k0', '::1', 1468697404, 0.057719, '1', 200),
(25, 'api/example/users', 'get', 'a:4:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:12:"Content-type";s:16:"application/json";}', '', '::1', 1468697407, 0.109572, '0', 403),
(26, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468697412, 0.06301, '1', 200),
(27, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468697449, 0.103722, '0', 401),
(28, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698590, 0.125557, '1', 200),
(29, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698592, 0.133501, '1', 200),
(30, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698593, 0.071147, '1', 200),
(31, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698593, 0.0586421, '1', 200),
(32, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698593, 0.0795181, '1', 200),
(33, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698593, 0.0718889, '1', 200),
(34, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698593, 0.0622239, '1', 200),
(35, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698594, 0.0541251, '1', 200),
(36, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698594, 0.0870981, '1', 200),
(37, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698594, 0.057874, '1', 200),
(38, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698602, 0.0828319, '1', 200),
(39, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698647, 0.098659, '1', 200),
(40, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698648, 0.075444, '1', 200),
(41, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698648, 0.0538101, '1', 200),
(42, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698648, 0.0543609, '1', 200),
(43, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg";s:12:"Content-type";s:16:"application/json";}', 'wk0ksgosk8ko8480o800csow4cg00k0ckgogc4kg', '::1', 1468698648, 0.0842781, '1', 200),
(44, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1469220191, 0.22262, '1', 201),
(45, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1469220230, 0.0958471, '1', 201),
(46, 'api/key/index', 'delete', 'a:6:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:2:"44";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:3:"key";s:40:"o0cog844g8sook888cw8gcs4g8w4oo8c0s0s08gs";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1469220231, 0.105725, '1', 204),
(47, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1469220427, 0.158395, '1', 201),
(48, 'api/key/create', 'put', 'a:5:{s:4:"Host";s:9:"localhost";s:6:"Accept";s:3:"*/*";s:9:"X-API-KEY";s:40:"cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g";s:14:"Content-Length";s:1:"0";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";}', 'cw8s4csggkksos8gcgc000w00cwk0s0sok074s0g', '::1', 1469220479, 0.160771, '1', 201),
(49, 'api/example/users', 'get', 'a:5:{s:2:"id";s:1:"1";s:4:"Host";s:9:"localhost";s:6:"Accept";s:16:"application/json";s:9:"X-API-KEY";s:40:"ssgk0cogcosgck08s8wso80o4cg4ws4okosk4804";s:12:"Content-type";s:16:"application/json";}', 'ssgk0cogcosgck08s8wso80o4cg4ws4okosk4804', '::1', 1469220492, 0.0918901, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(8) unsigned NOT NULL,
  `ip_address` varbinary(16) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(80) NOT NULL,
  `salt` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `app_name` varchar(50) NOT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret_key` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `app_name`, `api_key`, `secret_key`) VALUES
(1, 0x3132372e302e302e31, 'administrator', '$2y$08$CRVs71R5X56DkubWGtKLx.CiGsFHhVdsg59tSA/7PdcKP0dYfY6YC', '', 'admin@admin.com', '', NULL, NULL, 'QMPrbds6kUkRpyRaSqxDNO', 1268889823, 1461171917, 1, 'Admin', 'istrator', 'ADMIN', '0', '', '', NULL),
(3, 0x3a3a31, 'afzal afridi', '$2y$08$buEA492eIPHM4or71odw9.VRjEi6sU/iCNObfZsJCndMi/tea7ayS', '', 'khan@khan.com', NULL, NULL, NULL, 'QlyPNEd4s94F26TeFmBjre', 1454866042, 1454938397, 1, 'Afzal', 'Afridi', 'Khan bacha model school', NULL, '', '126fd910d070fd1d54c0e3402bac47e07740d716', NULL),
(4, 0x3a3a31, 'test', '$2y$08$ka6ITMOn.bkqW8VkcJoTU.f.T3dD9FWA/Jae9HLqf7w836pOdXmnS', '', 'admin@gmail.com', NULL, NULL, NULL, NULL, 1469219917, 1469220478, 1, NULL, NULL, NULL, NULL, 'Parexons', 'ssgk0cogcosgck08s8wso80o4cg4ws4okosk4804', '91ffd72327228e9f459dfd9e7120edac');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `user_id` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(3, 3, 1),
(4, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_keys`
--

CREATE TABLE IF NOT EXISTS `user_keys` (
  `user_id` int(11) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `app_key` varchar(40) NOT NULL,
  `secret_key` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_keys`
--

INSERT INTO `user_keys` (`user_id`, `app_name`, `app_key`, `secret_key`, `created`) VALUES
(1, 'Kami', 'ocwcck4kkcwskoowk4wwgcsk8o88w4kwswgos0ww', 'f344b516aa7d24af94a92ff66b7689e1', '2016-07-16 17:33:07'),
(2, 'samad', 'sc0swkwg0ww4g0s8g4osc0wkcwocg0scssgcwkcg', '8637f204e46d27ddb95d0ea382cbea94', '2016-07-16 18:03:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_grant`
--
ALTER TABLE `rest_grant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_limits`
--
ALTER TABLE `rest_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rest_logs`
--
ALTER TABLE `rest_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_keys`
--
ALTER TABLE `user_keys`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rest_grant`
--
ALTER TABLE `rest_grant`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rest_limits`
--
ALTER TABLE `rest_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rest_logs`
--
ALTER TABLE `rest_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_keys`
--
ALTER TABLE `user_keys`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
