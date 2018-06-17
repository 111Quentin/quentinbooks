-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018-06-16 04:52:21
-- 服务器版本： 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quentinbooks`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'system', '系统管理员', '2018-06-12 16:28:56', '2018-06-12 16:28:56'),
(3, 'post', '文章管理员', '2018-06-12 16:30:07', '2018-06-12 16:30:07'),
(4, 'notice', '通知管理员', '2018-06-12 16:30:25', '2018-06-12 16:30:25'),
(5, 'topic', '专题管理员', '2018-06-12 16:31:05', '2018-06-12 16:31:05');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permission_role`
--

DROP TABLE IF EXISTS `admin_permission_role`;
CREATE TABLE IF NOT EXISTS `admin_permission_role` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permission_role`
--

INSERT INTO `admin_permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(3, 4, 1, NULL, NULL),
(4, 5, 1, NULL, NULL),
(5, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sys_manager', '6292279', '2018-06-12 16:28:29', '2018-06-12 16:28:29'),
(2, 'system_manager', '系统管理员', '2018-06-12 16:31:43', '2018-06-12 16:31:43');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_user`
--

DROP TABLE IF EXISTS `admin_role_user`;
CREATE TABLE IF NOT EXISTS `admin_role_user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_user`
--

INSERT INTO `admin_role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 3),
(2, 2, 4);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Quentin', '$2y$10$vnT0WKtN5nIuaiJdWixoNOWg7FZ.eUHwzFYlFbHJV1gOLNHndheEW', NULL, '2018-06-12 16:03:01', '2018-06-12 16:03:01'),
(4, 'system', '$2y$10$DtE2liHCEG4jU0bftufqUOFneXFocJZV9LpqdZD5uhagNXaKNYno2', NULL, '2018-06-12 16:27:59', '2018-06-12 16:27:59');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '打广告过过过过过过过过过过过过过过过', '2018-06-12 14:25:18', '2018-06-12 14:25:18'),
(2, 1, 3, '呈现出错错错', '2018-06-12 14:28:30', '2018-06-12 14:28:30'),
(3, 2, 10, '没错，就是我', '2018-06-14 01:54:53', '2018-06-14 01:54:53'),
(4, 2, 11, '美的过分了', '2018-06-15 08:22:55', '2018-06-15 08:22:55');

-- --------------------------------------------------------

--
-- 表的结构 `fans`
--

DROP TABLE IF EXISTS `fans`;
CREATE TABLE IF NOT EXISTS `fans` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL DEFAULT '0',
  `star_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `fans`
--

INSERT INTO `fans` (`id`, `fan_id`, `star_id`, `created_at`, `updated_at`) VALUES
(16, 2, 3, '2018-06-15 17:18:40', '2018-06-15 17:18:40'),
(15, 3, 2, '2018-06-15 17:14:56', '2018-06-15 17:14:56');

-- --------------------------------------------------------

--
-- 表的结构 `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_18_161510_create_posts_table', 1),
(4, '2018_03_24_184912_create_comments_table', 1),
(5, '2018_03_25_170200_create_zans_table', 1),
(6, '2018_03_30_081151_create_fans_table', 1),
(7, '2018_04_01_085529_create_topics_table', 1),
(8, '2018_04_02_134200_create_post_topic_table', 1),
(9, '2018_04_03_095320_create_admin_user_table', 1),
(10, '2018_04_03_104039_alter_posts_table', 1),
(11, '2018_04_04_111215_create_perssion_and_roles', 1),
(12, '2018_04_05_210344_create_notice_table', 1),
(13, '2018_04_06_000711_create_jobs_table', 1),
(14, '2018_04_06_100806_alter_user_table_add_avatar', 1);

-- --------------------------------------------------------

--
-- 表的结构 `notices`
--

DROP TABLE IF EXISTS `notices`;
CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `notices`
--

INSERT INTO `notices` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, '李秋填真帅', '我也觉得，是时候洗澡了', '2018-06-12 16:33:11', '2018-06-12 16:33:11'),
(2, '妈的，陈德坤好帅', '我也觉得', '2018-06-14 01:56:33', '2018-06-14 01:56:33');

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(6, '彭于晏帅到掉渣', '<p>fweffffffffff</p>', 2, '2018-06-12 17:18:29', '2018-06-12 17:18:29', 0),
(5, '李秋填是傻嗨中的战斗机', '<p><img src=\"http://localhost:8000/storage/471d2db942e8e1dc0cb936a05cb68b4a/CZUk9kyrhKAGIALt53JzLCTcbZjzJjQgkvT8omrP.jpeg\" alt=\"彭于晏\" style=\"max-width:100%;\" class=\"\"><br></p><p>那必须的</p>', 2, '2018-06-12 16:49:08', '2018-06-12 16:49:08', 0),
(4, 'PHP 学习目录', '<p><img src=\"http://localhost:8000/storage/7225e0bc92a43fc5620651a69555ab9b/YfF3OJzpk4E9Xg226oPnKAwcER061Pft29qs5Vjp.jpeg\" alt=\"李沁002\" style=\"max-width:100%;\"><br></p><p><br></p>', 1, '2018-06-12 14:28:06', '2018-06-12 16:32:43', 1),
(7, '此生，请珍惜那个把你当孩子的女人', '<p>这几天老感觉右边的肩膀很不舒服，后来连带着半个后背都有疼痛的感觉，甚至牵连着整个脑袋都不舒服。我已经很久没有生过病了，记得上次生病还是在怀二宝前。我有时会和感冒或者发烧的朋友戏谑说：“你知足吧，你还能生病，我现在连生病的资格都没有”。虽是戏言，可说完心里酸酸的。是啊，先生每天要工作，妈妈前一阵子回老家两个多月照顾八十多岁的姥姥，而我每天像陀螺一样，每天除了忙二宝（现在刚过一岁），还要按时给上小学四年级的大宝做饭。哪有时间生病啊？</p><p>妈妈从老家一回来，仅仅在自己家里住了一个晚上，第二天就直接奔我这来。每天买菜、做饭、洗衣服、打扫卫生......能做的事情她都包了下来。其实，妈妈身体一直不是很好，年轻时就有胃病，后来好了几年，这两年又犯了，有时因为胃疼一宿只能睡半宿，但她很少和我说，我知道她怕我担心。母亲的腿也不是很好，不仅膝关节半月板有些损伤，一天下来，左腿比早起时粗了一圈，我知道这是水肿，可她从来不当回事，我知道这是当年生我时大出血所致......</p><p>由于这几天我膀背不舒服，妈妈更辛苦了，她每天不仅要忙家务，还要尽可能多的帮我照看二宝，上楼下楼她都不让我抱孩子，每次在后面看她抱着二宝的背影，泪水都止不住在眼里打转。她已经62岁了，还把快要进入不惑之年的我呵护的像个孩子。也许不管多大，在母亲的眼里我们都是长不大的孩子。</p><p>肩背虽说一直不很舒服，但我不敢过多的表现，我怕母亲担心。也许是母女心有灵犀，就算我尽量的不表现出来，但她还是感觉到。今天早上她兴冲冲的给我说：“我用原始点给你按摩吧”，原来妈妈这几天一有空闲就研究这个，泪水再一次在眼眶打转。本来计划去中医院做理疗，还要扎针，母亲知道我怕扎针，所以......</p><p>吃过早饭，母亲让我趴在床上，就开始用这几天学来的方法给我按摩，随着她的手掌一点点滑过我的肌肤，我的内心五味杂陈一起涌来，母亲从来没有对我有过任何的要求，我在育儿路上所学习的对孩子无条件的爱原来我一直都拥有。可是我呢？有多少次让母亲伤心，有多少次让母亲偷偷哭泣。嫌母亲话多唠叨，多少次打断不让她继续说......</p><p>曾看到这样一则故事：13岁的女儿一直认为母亲地位卑微，使她在人前抬不起头。母亲虽终日忙碌辛苦，也不能使女儿快乐起来。</p><p>母亲为了让女儿开心，某天带女儿一起去阿尔卑斯山滑雪。母女俩在滑雪途中，由于缺乏经验偏离滑道迷路了，又遭遇了可怕的雪崩。</p><p>母女俩在雪山中挣扎了两天两夜，几次看见前来搜寻她们的直升机，都因为她们身穿的是银灰色的滑雪装而未被发现。</p><p>终于，女儿因体力不支昏迷过去，她醒来时发现自己躺在医院里，而母亲已不在人世了。医生告诉她，是母亲用生命救了她。</p><p>原来，为了让直升飞机能够看到她们，母亲割断自己的动脉在雪地里爬行，用自己的鲜血染红一片白雪。最后，母亲的尝试成功了，直升机因此而发现了她们。</p><p>原来，真正爱你的人，是舍得把命给你的。因为在她眼里，你就是她的孩子，是她的全世界。此生，请对那个给予你生命，一直把你当作孩子的女人，能有多爱就有多爱吧！</p><p>这一路上，她陪你长大，你成为了她的全世界，而你毕业后，却有着自己的别样人生，你的孩子成为了你的全世界，于是你重复着这一场轮回的辜负。</p><p>而她，纵然有不舍，只能目送你渐行渐远。如同作家龙应台说的那样：所谓的母子一场，不过意味着她只能目送你的背影离开。</p><p>《诗经 邶风 凯风》有言：</p><p>凯风自南，吹彼棘心。</p><p>棘心夭夭，母氏劬劳。</p><p>凯风自南，吹彼棘薪。</p><p>母氏圣善，我无令人。</p><p>爰有寒泉?在浚之下。</p><p>有子七人，母氏劳苦。</p><p>睍睆黄鸟，载好其音。</p><p>有子七人，莫慰母心。</p><blockquote>不要等到有一天“子欲养而亲不待”。不管你走得多远，请记得停下脚步，常回家看看，多陪陪她聊聊天，说说话。毕竟，陪伴是最长情的告白。</blockquote><p><br><br></p><p>作者：芸荞冰</p><p><br></p><p>链接：https://www.jianshu.com/p/abca2cf9c8bd</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', 2, '2018-06-13 11:15:38', '2018-06-13 11:15:38', 0),
(8, '杀手的爱情', '<p>里昂，一个优秀的职业杀手，身手敏捷，办事利落。</p><p>可是生活中的他，是个再普通不过的单身男人，年逾不惑。他自己购物、看电影、熨衬衣、养植物……</p><p>他只喝牛奶，只睡椅子（如果坐着也算睡觉的话），只在送心爱的植物晒太阳时才开窗。如果生活一直这样平静，他或许就不会早死。</p><p>小女孩玛蒂尔达的出现，打乱了他的生活。</p><p>他们最初的交集，不过是同住一层楼，在走廊里打过几次照面，给过她一块手帕擦鼻血，有过几句简单的对话。</p><p>玛蒂尔达的继父是个贪婪而胆肥的毒贩，替黑警贩毒还私吞人家的货。拒不还货的他被灭了满门。</p><p>被迫外出买早餐的玛蒂尔达，回来看到的就是门前守着一个壮汉，家里唯一跟她最亲的弟弟倒在门廊处。</p><p>她强忍着悲痛和恐惧，镇定自若地走过家门，去敲里昂的门，装作回家。</p><p>在猫眼后偷窥一切的里昂犹豫着，直到听到她小声央求开门的声音带上了哭腔。他开了门，就像是打开了命运的潘多拉魔盒。</p><p>晚上，他想杀掉这个一时心软而救回来的麻烦，可是不杀女人和小孩的原则让他下不了手。</p><p>第二天早上，他让她吃了早饭就离开。可是玛蒂尔达告诉他，自己无处可去，赶她走等于逼她死。</p><p>他暴露自己的身份想吓走她，她却问雇他报仇需要多少钱。</p><p>他说自己价码很高，她请不起。</p><p>她说那就训练她成为杀手，让她自己报仇。</p><p>他给了她一把枪，让她爱打谁打谁去。</p><p>她抬手就抠动扳机，扫射了一圈，表示自己资质不错。</p><p>最终，12岁的她以不合年纪的成熟与勇敢让他改变初衷，他留下了她。</p><p>于是，他教她如何杀人；她教他如何识字：他们共同生活，相依为命。</p><p>他会在意她抽烟、说粗话，他会紧张她跟陌生人搭讪，他甚至会在去完成任务受伤后，也不忘给她买好看的衣服回来。</p><p>如果是我，也会爱上这样的男人。何况只是一个从来没有得到过家庭温暖的小女孩。</p><p>她说，我好像爱上你了。</p><p>他满口的牛奶喷了她满脸。他觉得她不懂爱情。可是借口出门后，他无力地瘫靠在墙壁上，表情痛苦而悲哀。</p><p>是因为年龄的差距吗？</p><p>爱情没有年龄界线。</p><p>所以，当她报仇心切，寻上警局去暗杀仇家，反被对方擒获，他追踪而来，几乎毁了整个警局才救下她时，她扑到他怀里，他紧紧抱住她。尽管身高的悬殊让她的脚离地一尺，但这距离，没有让人觉得可笑。</p><p>所以，当勃然大怒的黑警查出他的落脚处，调派所有警力去围歼他们，生死关头，他奋力为她打通一条生命通道，她却执意不走时，他说他爱她，绝不会让她再孤独，这样本是很煽情的对白也没有让人觉得可笑。</p><p>有的只是感动。</p><p>可是他还是死了，尽管他是那样渴望能和玛蒂尔达一起过着幸福的生活。甚至直到临死，他都没忘记帮心爱的女孩报仇：他拉开了身上的手雷，跟坏人同归于尽。</p><p>玛蒂尔达带着他心爱的植物回到了学校，把植物种在校园里。</p><p>她说，我们从此会在这里好好的。</p><p>真的能好吗？忘不掉的记忆，刻骨铭心的爱人？</p><p>只怕也是此生虽未死，寂寞已销魂。</p><p><br><br></p><p>作者：反影</p><p><br></p><p>链接：https://www.jianshu.com/p/c2ed5691838b</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', 2, '2018-06-13 11:18:16', '2018-06-13 11:18:16', 0),
(9, '颠倒的另一个时空•天堂', '<p>莉莉随着维安走出了房间，来到医院的走廊，这时候她才清清楚楚的看到天堂的医院是什么样子。</p><p>这里医院的布置很像人类的医院，由不同的病房组成，有医生护士有病人有手术刀，当然也有痛苦的呻吟。不同之处在于，这里的医院不是统一的白色，当然也有白色，这里的房间颜色更像彩虹的颜色，五彩斑斓，很多房间的颜色都不同。这里的空间也不像人类那么拥挤，好像总有看不完的空间展现到眼前，所以每个房间都是单人的，很少看到多人房。</p><p>“是不是觉得这里和人间没什么区别？”维安走在前面，故意放慢了些脚步。</p><p>“是啊，看起来没什么不同。”莉莉突然怀念起自己还没死之前住的那个医院，它叫什么来着，哦，好像是叫华光路医院。</p><p>“你知道吗，在我死之前，有一段时间我住在一个叫华光路的医院里。那时候这家医院就霸占了我一生中最深恶痛绝的十大地方的清单之首，现在想来，那时候我多么有失公允，讽刺的是，我会在某一天想念起它来。”</p><p>莉莉悠悠的走在后面，一边环顾四周一边继续说：“那时候我多么不想待在那个医院、多么希望医生消失、多么讨厌化疗啊。”</p><p>“人死了，总是容易多愁善感。”维安继续走，偶尔向碰到的熟悉的人打招呼。</p><p>莉莉也跟在后面点头表示礼貌，停止了说话，她也觉得自己说的有点多了，她总结出一点，不管人老了还是死了都容易变得唠叨。</p><p>他们走进电梯，里面已经站了几个人，有一个老人主动微笑着和他们打招呼。莉莉和维安也都微笑着说了声你好。莉莉注意到这个老人虽然老，估计年纪和她差不多，但是她的模样很好看，也很有精神，于是在电梯下行的时候，莉莉多看了这个老人一眼。</p><p>老人注意到莉莉在看她，又和她打招呼并且问她：“刚来这里不太适应吧？”</p><p>莉莉先是震惊了一下，但很快就恢复了正常，她想起维安说的话，知道这个老人可以看见自己的标志。莉莉保持微笑说：“是的，不过我想很快就好了。”</p><p>老人没接话，然后‘叮’的一声，电梯停下，电梯门打开，老人向他们致意之后走了出去。</p><p>当电梯只剩他们俩的时候，莉莉问：“为什么电梯里没有按钮，那电梯怎么知道在哪一层停下来？”</p><p>维安回答：“哦，亲爱的，这个问题又要涉及到你熟悉这里的生活之后了。但我可以先跟你解释一下，这里的电梯不像人类那样的，但也有按钮。不过不装在电梯里，它存在你的脑子里。如果你想到哪一层去，你的脑子会给你按的。”</p><p>莉莉很疑惑，表示不理解。</p><p>维安解释道：“这样说吧，你可以想象你的眼前有一个虚拟的屏幕，屏幕上面有按钮，你想到哪一个地方你就按哪一个地方。”</p><p>“蛤，好像科幻大片里的场景啊，我很喜欢看科幻片，马可不喜欢，但他总是陪我看，怎么说呢，马可更偏爱温情一点、小众一点的东西。”</p><p>维安好像在听，又好像心不在焉，任凭莉莉自言自语。</p><p>电梯速度很快，他们到底层好像只是一秒钟功夫的事。</p><p>“抓紧我。”维安说。</p><p>“发生了什么事？”刚到医院门口的莉莉话还没说完，维安就打断了她。她不知道为什么这样做，但还是照着维安说的做了，她紧紧地抓着维安的胳膊。然后，她就看见出现一道白光，把他们俩裹挟了进去。</p><p>莉莉觉得自己这副苍老的身体实在是经不起这样折腾，她刚想开口第二次问维安发生了什么的时候，他们已经站在了一间漂亮屋子的门口了。</p><p>“我知道你要说什么，先不要问问题好吗。”维安按了几下门铃，他阻止了莉莉的发问。</p><p>按到第三下的时候，门打开了，开门的是一个很干净但看起来很忧郁的年轻小伙子，他大概二十多岁的样子。</p><p>小伙子大概也注意到了莉莉投过去的打量的眼神，皱了皱眉，表示有点不悦，声音低沉地问维安：“她是谁？”</p><p>维安拍了拍他的背让他不要在意，回答道：“她是我偶然碰到的，刚到这个世界。”</p><p>“这个我知道，我是问你怎么把其他人带到这里来？”小伙子推掉维安搭在他背上的手。</p><p>站在维安身后的莉莉感到颇为尴尬，同时又觉得这个年轻人如此不礼貌，这要是放在她还活着的时候，她一定会狠狠地教育他，非得让他懂得尊老爱幼不可。</p><p>维安转身给了莉莉一个眼神，让她不要介意。转而对小伙子说：“她刚来对这里一点都不熟悉，也走错地方了，我就先让她跟着我。麦克斯，希望你不要介意。”</p><p>麦克斯不情不愿的让他们进了屋子，然后‘啪’的一声把门关上了。</p><p>这是一个欧式风格的房子，好像有两层，楼下是开放式的客厅，楼上是卧室之类的，莉莉猜，毕竟她也没上去过。客厅里大部分被书架占据了，书架上整整齐齐的排满了各式各样的书，书架的前面是一张圆形的小矮桌，矮桌旁边是一张长方形的蓝色沙发，不得不说这样的布置很合莉莉的口味，如果能在角落里放一台电视机或者放映机那么再好不过了。活着的时候，她和马可都很喜欢看电影，几乎是每天一部的速度，直到后来电影更新的速度都赶不上他们观看的速度，她和马可就把那些感触特别深的电影看上好几遍。自从她病了之后，她不能再看了，她总是觉得很累，支撑不下去，她经常睡觉。她觉得很遗憾，因为马可也不再看了。</p><p>麦克斯给坐在沙发上的维安端上茶，然后他坐在维安的对面。</p><p>麦克斯看了正在到处端详的莉莉一眼，对维安说：“你应该让她去天堂之心的。”</p><p>维安端起茶杯轻啜了一口答道：“她会去的。”</p><p>“那你应该先带她去，既然你遇到了她。”麦克斯站起来。</p><p>“她的事她会处理好的，我现在比较担心你，麦克斯。”维安轻轻地放下茶杯说。</p><p>麦克斯走到窗户边，望向远处：“你知道，刚来这个世界的人混沌太久不是什么好事。”</p><p><br><br></p><p>作者：M抹茶_</p><p><br></p><p>链接：https://www.jianshu.com/p/14ff40dcc7cc</p><p><br></p><p>來源：简书</p><p><br></p><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', 2, '2018-06-13 11:20:43', '2018-06-13 11:20:43', 0),
(10, '挖槽，陈德锟好积极哦', '<p>果然认真的男生最帅</p>', 2, '2018-06-14 00:47:18', '2018-06-14 01:55:25', 1),
(11, '大渣好，我是李沁小baby', '<p><img src=\"http://localhost:8000/storage/cda73c2acc46d23efd9e5a2a377d1722/uyqnEhmBLM18AA89je7WcUp82A4ZF00Qte5td4FM.jpeg\" alt=\"李沁001\" style=\"max-width:100%;\"><br></p><p>略略略略略略</p>', 2, '2018-06-15 08:22:21', '2018-06-15 11:45:04', 1),
(12, '只想与你共度一生', '<p><img src=\"http://localhost:8000/storage/59ea7f52e32b81ed7449d1fb9d54868f/HS1wZg6uMR6fjXStE1kmNN1TIzznTzlhyQ4XhZvR.jpeg\" alt=\"超时空同居\" style=\"max-width:100%;\" class=\"\"><br></p><p>哪怕超市空同居</p><p><br></p>', 2, '2018-06-15 17:50:00', '2018-06-15 17:50:00', 0);

-- --------------------------------------------------------

--
-- 表的结构 `post_topics`
--

DROP TABLE IF EXISTS `post_topics`;
CREATE TABLE IF NOT EXISTS `post_topics` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `post_topics`
--

INSERT INTO `post_topics` (`id`, `post_id`, `topic_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-06-12 16:33:45', '2018-06-12 16:33:45'),
(2, 7, 2, '2018-06-15 06:44:19', '2018-06-15 06:44:19'),
(3, 7, 1, '2018-06-15 08:03:26', '2018-06-15 08:03:26'),
(4, 6, 2, '2018-06-15 08:04:31', '2018-06-15 08:04:31'),
(5, 5, 2, '2018-06-15 08:04:31', '2018-06-15 08:04:31'),
(6, 8, 2, '2018-06-15 08:04:31', '2018-06-15 08:04:31'),
(7, 9, 2, '2018-06-15 08:04:31', '2018-06-15 08:04:31'),
(8, 10, 2, '2018-06-15 08:04:31', '2018-06-15 08:04:31'),
(9, 11, 2, '2018-06-15 17:31:37', '2018-06-15 17:31:37');

-- --------------------------------------------------------

--
-- 表的结构 `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `topics`
--

INSERT INTO `topics` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'travel', '2018-06-12 16:33:28', '2018-06-12 16:33:28'),
(2, 'study', '2018-06-15 06:43:11', '2018-06-15 06:43:11');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Quentin', '15551881447@qq.com', '$2y$10$Pbodp9Col/4ftrGyyuTjGuVvTGo/xlpGozog38I0eBE4Q042jQjeu', NULL, '2018-06-12 13:40:11', '2018-06-12 14:27:48', '/storage/42a700c8a8d81041e60fce3c8781c18b/XQZsGfzvX8BFgECjHpTItuSI6DQ46TiXwZ2emSjh.jpeg'),
(2, 'Quentin_li', '123@qq.com', '$2y$10$d.VK6ZWNnnOKCOiFjnNn8OjYfHqo07zCnmwAK44eXxhhGV710Dntu', 'lO71aJ99bSYraEUTzCAP7DeKuilB7ZJChWmVKlkiVW1JeBrxB5WeWTMErHBV', '2018-06-12 13:41:13', '2018-06-14 13:50:27', '/storage/5be46ed08caef41d24005c24573d8cdf/4ZkjkaGOY61LVJiIYTllqjRZxIh4x3r8xQkXegkc.jpeg'),
(3, 'test1', '456@qq.com', '$2y$10$4bJkQKyvxMznTwGrBbcImeHfkK3AXn8ighUbTk/upus3QEknJUoKK', '9sf6I1WAXbr7Jqg7hIPgag7CcEup8UNIUhUqbJsSjHUf1DsgClpFuE66PHcY', '2018-06-15 15:57:24', '2018-06-15 16:00:35', '/storage/dacacd1e06320f5144b25f2ea24c8e8a/ImuqtwHvPwWm3EGyDt21vCoewodVa35sTeoKqdtn.jpeg');

-- --------------------------------------------------------

--
-- 表的结构 `user_notice`
--

DROP TABLE IF EXISTS `user_notice`;
CREATE TABLE IF NOT EXISTS `user_notice` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notice_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user_notice`
--

INSERT INTO `user_notice` (`id`, `user_id`, `notice_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `zans`
--

DROP TABLE IF EXISTS `zans`;
CREATE TABLE IF NOT EXISTS `zans` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `zans`
--

INSERT INTO `zans` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '2018-06-12 14:25:09', '2018-06-12 14:25:09'),
(2, 1, 3, '2018-06-12 14:28:22', '2018-06-12 14:28:22'),
(3, 2, 4, '2018-06-12 16:39:46', '2018-06-12 16:39:46'),
(32, 2, 12, '2018-06-16 02:24:58', '2018-06-16 02:24:58'),
(5, 2, 9, '2018-06-14 13:35:32', '2018-06-14 13:35:32'),
(6, 2, 7, '2018-06-15 06:44:44', '2018-06-15 06:44:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
