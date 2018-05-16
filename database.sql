-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 06:22 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-lms-laravelbusiness`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(15,2) DEFAULT NULL,
  `course_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `published` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `description`, `price`, `course_image`, `start_date`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Creating a Bookmarker appliction using Pure JavaScript', 'carli-hand', 'Rerum aspernatur nisi accusamus. Sint dolorem ipsa quia voluptate repudiandae. Saepe et quasi non quaerat ex. Molestias odit dignissimos et quos perferendis maxime tempora.', '182.17', '1524564577-abstract-2100__340.jpg', '2018-01-02', 1, '2018-04-24 07:03:03', '2018-05-02 03:24:57', NULL),
(3, 'Thea Abernathy', 'thea-abernathy', 'Sunt exercitationem iste autem aliquam. Eligendi temporibus eum illo qui incidunt rerum corrupti. Libero ab voluptate qui quibusdam sint aut. Eos quo quod ex amet dolor rerum optio.', '66.32', NULL, NULL, 1, '2018-04-24 07:03:03', '2018-04-24 07:03:03', NULL),
(4, 'Wilmer Friesen', 'wilmer-friesen', 'Et quia tenetur qui deleniti quia aut animi. Ipsum voluptates deleniti perferendis atque maxime vel recusandae. Est vel ea incidunt error qui perspiciatis aut.', '162.74', NULL, NULL, 1, '2018-04-24 07:03:03', '2018-04-24 07:03:03', NULL),
(5, 'Dr. Wilfred McCullough MD', 'dr-wilfred-mccullough-md', 'Esse fugiat velit sint molestiae quae. Ut sapiente nobis qui impedit similique quod et. Sint perspiciatis sed mollitia voluptas et sunt nam qui.', '51.08', NULL, NULL, 1, '2018-04-24 07:03:03', '2018-04-24 07:03:03', NULL),
(6, 'English Liteeature Adnvanced', 'eng-lit', 'mbrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr \r\nhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\r\nhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh\r\n,njnkjn', '89.00', '1524588129-camera-15807__340.jpg', '2018-01-17', 1, '2018-04-24 13:42:10', '2018-04-24 13:43:54', NULL),
(7, 'Kiswahili Fasihi', 'kis-wan', 'mbcxkjscj jhc hj hjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj jscbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbkcbksjbckjsbckjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjkj cskj kj cjkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkjbsckjbckjsbcskjbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbjbkjscbjscbjsckbjkcsb', '87.00', '1524588322-Marketing6.png', '2018-01-04', 0, '2018-04-24 13:45:22', '2018-04-24 13:45:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`) VALUES
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci,
  `full_text` text COLLATE utf8mb4_unicode_ci,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `free_lesson` tinyint(4) DEFAULT '0',
  `published` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Qui voluptas quia ullam aliquam commodi id.', 'qui-voluptas-quia-ullam-aliquam-commodi-id', NULL, 'Et dolore excepturi et unde odit quos at. Repellat qui dolor fugit quis modi et omnis voluptatum. Modi eum dolorem corrupti mollitia ut. Perspiciatis repellendus atque autem.', 'Ut nisi sapiente impedit mollitia laboriosam. Nihil quam ut beatae odit nihil consequatur labore dolorem. Voluptatum voluptatem iure impedit doloribus. Officia ea quo fugit odio.\r\nCulpa odit expedita laboriosam est. Illum est id dolor aspernatur voluptas minus quas mollitia. Enim est amet dolores dolore.\r\nRepellat veritatis qui perspiciatis asperiores aut adipisci voluptate. Magnam ratione architecto qui quaerat et ut. Illo cupiditate labore eveniet similique eos non.\r\nAut quisquam cupiditate voluptatem eligendi autem sit. Modi sed quae fugiat adipisci iusto et et. Corporis suscipit quaerat animi debitis. Consectetur et aliquid exercitationem perspiciatis dolores ut quae. Soluta eum voluptatibus a tenetur officiis dolore praesentium odio.\r\nOccaecati iusto et blanditiis ea illo vero officia. Asperiores dolorum ab ut harum voluptatum quos optio. Ratione odit eius quo quis repudiandae maiores autem. Exercitationem excepturi nostrum ut et aut et.', 10, 1, 0, '2018-04-24 07:03:03', '2018-04-25 03:42:43', NULL),
(2, 1, 'Adipisci neque perferendis a voluptas maxime.', 'adipisci-neque-perferendis-a-voluptas-maxime', NULL, 'Commodi nesciunt id suscipit vel non error. Sed quia sed nihil. Qui sint nihil esse ea dolorem consequatur.', 'Et voluptatibus quia modi nesciunt. Suscipit ipsam corrupti ut. Ipsam enim distinctio qui perferendis fuga.\nNumquam mollitia repudiandae quis quibusdam voluptates. Rerum dolores consequatur ut magni eaque sed.\nUt ad id vitae ut magnam et repellat ut. Voluptas labore et quia et cumque dignissimos eos eos. Et ad temporibus in sunt ullam.\nDolor asperiores maiores ullam tempora id nostrum rem quae. Cum aut ea quam odio accusantium. Ea molestiae alias molestias sint. Enim alias qui ut veritatis. Tempora ex tempore ipsa illum quia sint.\nLaborum porro iure debitis iste et. Voluptas id explicabo omnis qui tempora nulla nihil et. Ut dolorem ad magni ratione. Magnam in animi nihil voluptas fugit est tempore.\nMaxime enim et iste recusandae cum voluptas et earum. Aperiam tempore minus error necessitatibus qui. Tempora sed molestias omnis qui et minima nemo quos.\nEt aut magnam provident eaque tempora qui eos odit. Eveniet quae recusandae at officia.', 2, 1, 0, '2018-04-24 07:03:03', '2018-04-24 07:03:05', NULL),
(3, 1, 'Sed cum numquam mollitia tempora nobis quia.', 'sed-cum-numquam-mollitia-tempora-nobis-quia', NULL, 'Voluptates sed sunt quod eligendi. Sapiente fuga velit adipisci hic voluptas quod illum. Laborum nobis dolore qui. Nisi aliquam quidem ea delectus quis.', 'Est delectus necessitatibus praesentium modi nesciunt numquam pariatur. Accusamus sunt repudiandae deserunt itaque. Minus quis deserunt perspiciatis.\nNon similique ut aut et in cumque molestias aliquam. Eos minus ipsa nemo et enim maiores vitae. Dolor qui dicta deserunt ut voluptates. In sapiente qui ut quod.\nUt sint sunt voluptas cum. Et et deleniti aliquid dolorum eos fugit vero. Omnis quia eveniet sit nihil aut. Optio facere quaerat a a perferendis earum et velit.\nCulpa praesentium commodi repudiandae facilis nobis consequatur nesciunt. Provident cumque voluptate in voluptas est enim iusto. Ipsam fugiat tenetur sed quas voluptas explicabo. Ea magni molestiae corporis labore harum ut qui.\nCommodi ratione inventore voluptas sit est quis eos. Est qui ea earum incidunt doloribus aspernatur eaque. Et molestias ipsam suscipit non reiciendis placeat repudiandae. Iusto placeat explicabo ipsam est est voluptatum saepe. Necessitatibus quia et sit aut et doloribus.', 4, 1, 1, '2018-04-24 07:03:03', '2018-04-24 07:03:05', NULL),
(4, 1, 'Ullam aliquam excepturi molestiae saepe.', 'ullam-aliquam-excepturi-molestiae-saepe', NULL, 'Facilis temporibus harum hic eaque consequatur et. Voluptate aut similique autem beatae tempora voluptas. Quibusdam et eum et id dolorem reiciendis facilis eaque. Omnis repellat voluptas vero illo dolores rerum quod sed.', 'Necessitatibus quae qui cupiditate repellendus dolorem. Consequatur laborum maiores repudiandae. Est eos ut consequatur. Ipsum magnam nisi fugiat aspernatur ut.\nOccaecati fugit et placeat id ipsam id error. Modi voluptatem nihil dolor labore. Facilis cum non qui ut nostrum.\nExpedita quae sunt eligendi accusantium. Repudiandae omnis sapiente eaque voluptas suscipit aut. Nihil aut dolore explicabo distinctio velit.\nVel fuga et itaque nemo mollitia enim. Vero cupiditate nisi illum fuga. Et qui temporibus non.\nMolestiae fugit ut magnam voluptatem quos accusantium. Vel perspiciatis sapiente ratione et nihil soluta.\nEt aperiam cupiditate laboriosam id ratione rem. Omnis similique id voluptate ex vel et.\nQuos eos veniam magni quos incidunt facilis id et. Voluptas ut voluptas quod molestiae. Minus aut consequatur dolor sit quis consequatur.\nEst maiores at et. Eaque eveniet rerum necessitatibus. Et voluptas autem pariatur quidem. Blanditiis est occaecati rerum rem corrupti ducimus.', 10, 0, 0, '2018-04-24 07:03:03', '2018-04-24 07:03:05', NULL),
(5, 1, 'Aut quae voluptatem eligendi magni iste aut.', 'aut-quae-voluptatem-eligendi-magni-iste-aut', '1524638927-arrows-1229878__340.jpg', 'Minus aut soluta et non molestias eos. Dolore sint ipsa eveniet perferendis voluptates. Architecto nesciunt aut vero earum dolor minus. Vero iste autem culpa consectetur et quisquam. Molestiae molestiae qui quis qui.', 'Consequatur ullam eum reiciendis. Sed illum ea enim omnis enim exercitationem delectus porro. Illo vel adipisci non amet hic.\r\nVeritatis fugiat est ut aut. Doloribus qui maxime aut qui. Ut vel voluptatem consequuntur modi voluptatem odio. Ad alias dolore voluptas recusandae quia.\r\nId numquam sapiente accusantium nesciunt voluptatibus exercitationem. Sit quia non repudiandae et omnis dolores ut. Quia quasi et a et facere nam aut.\r\nFugiat eveniet ut qui quibusdam id est in. Occaecati omnis corporis et eius reprehenderit. Voluptatum ea amet provident nisi eum. Qui non sit corrupti laborum rerum debitis.\r\nCupiditate et recusandae minima. Aperiam dignissimos nam repellat nesciunt. Temporibus deleniti nostrum voluptatum quisquam consequatur sint voluptas dolorem.\r\nVeritatis alias quos et enim. Excepturi sed a consequuntur illo omnis nisi.\r\nSit soluta rerum tempore autem. Dolorem ut voluptatem itaque. Rerum eum sunt vitae deleniti molestiae occaecati eum. Itaque iure commodi sint quasi quod quas.', 3, 0, 1, '2018-04-24 07:03:03', '2018-04-25 03:48:47', NULL),
(6, 1, 'Omnis autem adipisci a ut est.', 'omnis-autem-adipisci-a-ut-est', NULL, 'Ullam doloribus hic velit et. Iste repudiandae placeat aut veritatis.', 'Nobis sequi dolorum temporibus ut. Eum enim magni consequatur. Recusandae est voluptas quasi porro consequatur excepturi quasi. Voluptatem ex explicabo quam laboriosam error blanditiis quisquam.\nIpsam et et officiis illo eum id quos. Ut mollitia molestiae aut labore provident eaque itaque officiis.\nDucimus nihil at ipsam et qui. Omnis voluptatum architecto et qui sit. Beatae delectus ipsum enim accusamus adipisci et nam. Sapiente deleniti saepe laudantium pariatur quia aut.\nIncidunt velit quisquam at tempora minus. Sit nemo asperiores dignissimos quae rerum repellendus nobis. Ut ipsam dolores commodi pariatur animi. Dolor blanditiis aliquam deleniti dolorum architecto et.\nAut quas dolorem amet commodi corrupti sequi dolore. Culpa deserunt quaerat nobis sunt quia. Modi officiis atque sit facilis voluptas sapiente quia.', 10, 0, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:05', NULL),
(7, 1, 'Eum magnam culpa enim porro animi explicabo iste.', 'eum-magnam-culpa-enim-porro-animi-explicabo-iste', NULL, 'Aut voluptatem dolore reprehenderit tempore. Ut voluptatibus perspiciatis quos aut alias maiores et. Minus quibusdam ut quis est.', 'Molestias asperiores nostrum vero sed ab. Voluptates sunt aut sed fugit omnis reprehenderit.\nQuia facilis occaecati dicta quidem est reprehenderit error aut. Necessitatibus sunt aliquam id et. Nihil ullam veritatis voluptatum sapiente ipsum sint et. In dicta nihil sed occaecati corporis modi.\nNon dignissimos commodi quidem et vel. Dolores quam omnis rerum ad id itaque. Voluptas tempora veritatis debitis ut eaque repellendus eius vel. Officia hic sit et voluptatem dignissimos.\nVoluptatem impedit qui facilis officiis quas error. Quia vel dolorum sapiente ullam fuga officiis ipsum aspernatur. Et voluptatem consequatur deleniti aperiam rerum consectetur. Quasi illo eum et quis.\nUt autem corporis cum et eius. Ut et consequatur unde ex nam. Consequatur culpa est molestiae qui perspiciatis et voluptatem. Excepturi voluptatem dicta doloribus hic harum.', 5, 0, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:05', NULL),
(8, 1, 'Atque consectetur eos cumque ex omnis voluptas.', 'atque-consectetur-eos-cumque-ex-omnis-voluptas', NULL, 'Sed excepturi qui deleniti quas fugit ipsum reprehenderit. Quam natus ipsa rem eos. Quisquam qui impedit dolores voluptatem autem.', 'Sequi harum qui distinctio expedita voluptatem et voluptatibus. Vel consectetur ut est. Et nihil nam eos necessitatibus et repudiandae harum.\nVeniam minus sequi exercitationem natus sequi recusandae. Molestiae est ullam iste harum non. Quisquam nihil eius itaque quos officiis at. Sed optio quia alias quae. Sed iste non illo sunt perspiciatis quod cumque.\nConsequatur qui occaecati omnis unde aut esse qui. Voluptatem qui veniam odio sint consequatur. Consequatur corporis voluptate deserunt est sit maiores. Cupiditate soluta molestiae velit laborum non illum esse. Velit velit provident ratione labore eveniet voluptatem.\nAutem cum error aut quo recusandae eligendi. Assumenda explicabo tenetur enim laborum et alias. Laudantium corrupti voluptatem inventore quasi aliquam.\nCumque tenetur ipsum officiis omnis doloremque et. Doloribus earum omnis voluptatem consequatur qui. Illo totam quo ipsa velit.', 1, 1, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:05', NULL),
(9, 1, 'Magni nisi quos nostrum dolores eum optio.', 'magni-nisi-quos-nostrum-dolores-eum-optio', NULL, 'Tempore adipisci quo rerum dolore. Qui asperiores temporibus quos sed. Iste fuga non ratione asperiores aspernatur cupiditate.', 'Cumque natus iusto ut aliquam doloremque. Ab quibusdam sit occaecati neque. Sapiente similique modi minima perferendis.\nUt eos pariatur modi dolor. Odit aspernatur pariatur eius dolor iste harum. Nihil molestias rerum distinctio ducimus modi a. Iure aut reprehenderit non et unde.\nTempore eveniet et repellat recusandae ut doloremque beatae. Autem dolore cum autem rerum iste. Quod reiciendis et ab.\nAt a quidem rerum omnis est inventore eligendi. Doloribus rerum vitae error quia aliquid aperiam. Quo sit incidunt mollitia odio ducimus quod eaque.\nEt aut voluptate qui possimus. Et soluta nulla aut dolorem rerum. Vero ut itaque officiis qui ea. Quam blanditiis facilis sint aut alias reiciendis quia.\nUnde pariatur est illo tempore voluptatum rem qui. Amet autem laboriosam natus qui ut repellendus. Placeat temporibus laboriosam aut explicabo voluptatem et. Excepturi ab quis veniam. Enim et occaecati quas saepe ut quo totam.', 7, 1, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:05', NULL),
(10, 1, 'Et explicabo molestias minus eum ab placeat et.', 'et-explicabo-molestias-minus-eum-ab-placeat-et', NULL, 'Voluptas iure rem molestias ut inventore atque doloremque. Et odit quia beatae quibusdam quas error sit. Enim quia eligendi aliquam ea. Ipsum non aspernatur est veniam. Aperiam mollitia qui vel.', 'Et necessitatibus commodi corporis ullam. Ad exercitationem et vero rerum nihil odit explicabo. Alias ratione quibusdam molestiae dolorem doloremque. Nulla ipsa et voluptatem laudantium enim. Provident voluptates veniam saepe et est mollitia ex.\nNisi dolor qui voluptatem. Qui autem excepturi quasi. Velit perferendis numquam rerum et unde quas praesentium.\nDeserunt ut ut consequatur. Sed qui laborum veritatis aut placeat natus similique. Fuga fugit dolorum nulla est. Voluptatem enim accusamus tenetur vero et ut incidunt.\nQuasi voluptatem est a quos hic quidem aut. Fuga velit voluptatibus voluptatem id. Minus minima tempore maiores reprehenderit.\nOmnis expedita numquam atque ea ut qui sunt. Qui sequi soluta perspiciatis et sunt quis. Ut ipsum quia et voluptate ut.\nRem temporibus expedita aut voluptatem. Eum officia et necessitatibus occaecati sint quia. Magni et inventore in in at.', 8, 1, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:05', NULL),
(21, 3, 'Assumenda cum esse occaecati.', 'assumenda-cum-esse-occaecati', NULL, 'Voluptate eos doloremque sequi natus et. Nihil nobis non et enim et. Pariatur sunt quibusdam veniam odio iure deleniti est.', 'Magni non voluptatem aut distinctio ipsa quia. Nobis facilis praesentium illum accusantium. Illum quo architecto qui qui modi.\nPariatur autem modi in nihil ex deserunt doloribus. Dolor aperiam a omnis omnis aliquid aut. Sit dolores repellat debitis neque et et atque. Tenetur ea aut minus molestias architecto consectetur.\nCorrupti quia cumque repellat fuga. Eveniet maiores beatae possimus similique mollitia iure doloremque. Aperiam dolorem reprehenderit provident et sunt voluptas provident et.\nSed repellat accusantium natus aliquam voluptatem. Dolores itaque saepe aut aut ut quia expedita soluta. Quis aut minima et illum debitis facere magnam temporibus. Quibusdam velit voluptatum sunt qui est quo quasi.\nQui doloribus qui quia veniam voluptate sed. Explicabo sit consequatur in magni. Qui veritatis minus cum quam aut alias officia voluptatem. Delectus non similique atque dolores.', 8, 1, 1, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(22, 3, 'Facilis corrupti vitae dicta atque eos nemo ut.', 'facilis-corrupti-vitae-dicta-atque-eos-nemo-ut', NULL, 'Neque temporibus nam consequatur mollitia natus pariatur molestiae. Sit enim et voluptas cupiditate dolorem fuga. Recusandae distinctio a ipsa et at mollitia consequatur.', 'Eaque accusantium magnam modi. Sed similique iure et.\nConsectetur nostrum asperiores autem sit distinctio occaecati expedita. Eum quod repellat tempore consectetur repellendus suscipit. Vero ea reiciendis animi quia ea.\nNulla aut repellendus iste consequuntur ipsam quia. Maiores consectetur totam voluptates dolorum. Quia totam aut sed officia qui consequatur.\nTotam corrupti facilis sit quidem non. Voluptas nihil labore ut veniam voluptatibus quo. Facere ipsam eos excepturi voluptatum dolor. Dignissimos dolorum blanditiis sed.\nQuia qui et ipsam autem. Dignissimos itaque soluta non voluptas consequatur deleniti hic. Et voluptates cum voluptate quis vel quia.\nMollitia cupiditate aut voluptatibus. Odit quo deleniti id facere doloremque recusandae. Quo dolorum officia accusamus accusantium. Temporibus autem iste deleniti voluptate.', 3, 0, 1, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(23, 3, 'Quasi non voluptas minus qui qui.', 'quasi-non-voluptas-minus-qui-qui', NULL, 'Amet perspiciatis vero nam error. Dolor laborum odio tempora laborum. Voluptas labore autem quis totam.', 'Ut possimus ab amet maiores omnis aut. Dolores possimus quidem totam dignissimos. Vel optio et voluptatem necessitatibus officia.\nMinus quos numquam quidem quos facere. Maiores et ea ut ipsum odio eos ex. Ex vel tempora beatae officia minima ut facilis.\nQuasi odit nostrum eligendi. Est voluptas maxime velit alias qui. Deserunt exercitationem asperiores magnam quasi soluta ipsum omnis quo. Non suscipit quisquam omnis architecto eos ea ad dolorem. Voluptatem aut natus voluptatem aperiam dolorum odit.\nSimilique nemo cumque nulla omnis sed impedit totam. Dolor temporibus quidem velit sit architecto cumque. Sed cumque recusandae expedita consequatur voluptatem beatae magnam.\nVoluptatem inventore dolor voluptatem. Aut ducimus necessitatibus quis beatae nihil officiis incidunt aut. Dolores sint eos perferendis quidem assumenda odio. Et qui voluptates illum molestiae.', 8, 0, 1, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(24, 3, 'Ut laudantium eveniet et quia sit quia accusamus.', 'ut-laudantium-eveniet-et-quia-sit-quia-accusamus', NULL, 'Vel autem saepe dolorum. Enim soluta sunt dolorum sunt. Et omnis cumque molestiae quod ratione. Adipisci dolore et nostrum qui velit et debitis. Molestiae dignissimos unde velit corporis optio aliquam.', 'Sed est porro autem repudiandae. Aut voluptatem eum quaerat sequi pariatur. Consectetur distinctio pariatur vel.\nVero voluptatem hic laudantium numquam dolor dolore dolores. Et molestiae aliquid beatae odio totam modi repellendus suscipit. Iure autem eum dolorum itaque.\nSint occaecati recusandae voluptatibus laborum voluptatem. Voluptas nesciunt amet fugit nobis omnis. Odio sit deleniti modi nihil quasi consequatur id. Nihil rerum enim quas id.\nArchitecto ut reprehenderit sint veniam nisi ut quisquam. Iste labore nemo dolore voluptatum ab. Quaerat quis eos adipisci expedita. Voluptatem non praesentium hic sapiente est.\nQuo tenetur commodi voluptatem a quis error. Omnis laboriosam consequatur dolor. Rem fuga eaque quasi incidunt nemo.\nQui perferendis quia consectetur expedita minus at atque. Laborum qui dicta impedit illum dicta omnis. Nesciunt totam et soluta aliquam rerum.', 6, 0, 1, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(25, 3, 'Sunt nulla autem sit consequatur quam quos.', 'sunt-nulla-autem-sit-consequatur-quam-quos', NULL, 'Sequi necessitatibus ratione vel ipsam et. Veritatis reiciendis praesentium at temporibus ad rerum corporis. Quos ab dolorum corrupti vitae iusto. Ipsa aut quia est delectus incidunt nisi maiores qui. Eum velit itaque et porro quas et excepturi in.', 'Doloremque atque vel deserunt commodi aliquam ea quod. Rerum sit eius molestias id et alias similique. Excepturi ipsa et perspiciatis quo. Accusantium qui neque et expedita officiis dolorem.\nDoloribus in et culpa placeat. Saepe quidem molestias ut dicta sapiente. Assumenda ut dolorem sit exercitationem magnam est quisquam.\nMagni illo consequuntur ut iure. Placeat quod rerum consectetur. Explicabo aut est quisquam sint fugiat est consequuntur cupiditate.\nIpsa consequatur eveniet dolorum doloribus et iste vel. Minima modi et neque rerum quo eos. Dignissimos sed et nihil neque.\nRepudiandae et laborum est impedit voluptatem a. Quasi provident illum veniam ab. Reprehenderit similique at aut qui. Maxime voluptates officiis blanditiis enim.\nId voluptatem quia et deleniti fuga repudiandae. Et at adipisci voluptas inventore. Dolores nobis dolor odio inventore facere.\nNumquam non tempora sed omnis nulla dolores. Id facere nihil illo ratione blanditiis et. Ipsum dolor nihil omnis.', 10, 1, 0, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(26, 3, 'At sint dolore iure sunt possimus in quia.', 'at-sint-dolore-iure-sunt-possimus-in-quia', NULL, 'Similique veritatis doloribus aut vero. Quaerat nam qui dicta pariatur omnis et. Doloremque vel nulla qui est illo reiciendis. Voluptatibus inventore possimus magni et repellendus.', 'Qui ducimus et dolores quo. Odio nihil vitae porro quasi eveniet quasi. Velit dolores eos est dolor.\nAccusantium et nihil porro eligendi dicta. Commodi alias similique blanditiis cum. Sequi voluptatem praesentium quisquam adipisci dignissimos rerum. Voluptatem aliquid autem occaecati consequuntur aspernatur.\nQuia voluptatibus vero minima ab quod ipsam. Harum tenetur vel molestiae. Tempore sint est et officia et. Nihil ipsa incidunt ducimus exercitationem commodi enim voluptatem. Commodi labore ut non cupiditate quis rerum.\nExercitationem aut unde natus autem ut delectus. Soluta nihil numquam doloribus. Est dolores expedita rerum sequi itaque facilis. Voluptates et ipsa dolor sint distinctio.\nSit ab nihil quia aut. Omnis non ut ullam qui aut autem provident. Provident quo odio sint aut sint excepturi quis. Officiis dicta error voluptas dignissimos.\nA voluptatem consequuntur distinctio itaque assumenda. Inventore itaque in culpa laudantium id rerum. Perspiciatis dicta sit commodi.', 3, 1, 0, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(27, 3, 'Dolor occaecati soluta commodi.', 'dolor-occaecati-soluta-commodi', NULL, 'Alias quibusdam distinctio necessitatibus nostrum perferendis id id recusandae. Voluptates quia ut cupiditate et optio voluptates. Eos asperiores dolorum qui et saepe voluptatem aliquam sit. Excepturi neque sit eum magni deleniti rerum.', 'Aut dicta vel voluptatem. Voluptates natus qui ullam in. Molestiae labore vitae non dignissimos sit.\nPlaceat et iusto velit dolorum voluptatem quia commodi. Dolores quo quasi et odit quia. Animi sint repudiandae adipisci temporibus quas nam. Laboriosam excepturi et quas nemo dolores expedita expedita.\nDeleniti consequatur et est commodi unde dolor labore quas. Repudiandae numquam minus minima error dignissimos. Nesciunt placeat exercitationem cupiditate dolor optio qui.\nMaxime sunt itaque ab dolorem ab ipsum similique. Ea ut in velit voluptatum. Officiis cumque perspiciatis officia a ut placeat.\nAsperiores modi expedita dolorem expedita. Molestiae itaque quia qui ipsum possimus et dolorem. Ullam officiis incidunt mollitia dolorum beatae quia error. Fuga consequatur nesciunt exercitationem.\nOfficia praesentium deserunt ducimus voluptatem. Veniam velit sunt dicta debitis consectetur qui. Quis sint rerum consequatur nihil autem. Iusto alias enim eum rem id facilis consequuntur.', 7, 1, 0, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(28, 3, 'Ea dicta autem unde repellendus doloribus.', 'ea-dicta-autem-unde-repellendus-doloribus', NULL, 'Est explicabo voluptate omnis debitis magni fugiat soluta. Voluptatem ipsum tempore nam quia nesciunt et aut est. Quia nihil nisi natus nobis aliquid. Suscipit reiciendis ipsam laboriosam beatae.', 'Et rerum aut et ea. Magnam molestiae doloremque placeat ut autem illum corporis similique. In eos enim recusandae ipsam nulla vel vel praesentium. Sed et sed enim qui deserunt iste in.\nPerspiciatis eos eos vel et. Odio omnis ut iste ipsa aut illum. Sit reiciendis tempora aperiam tempore corrupti inventore.\nPerferendis cum recusandae porro nemo. Praesentium aspernatur minima aut assumenda corporis laboriosam dolor. Consectetur ex suscipit aut aliquam. Dolores ut dignissimos id soluta earum.\nSed ipsa sapiente enim error non. Expedita enim nemo odit itaque provident aut. Facilis sunt esse quas impedit vitae sed. Est vel voluptas itaque sed ut.\nEnim quaerat alias quia dolorem commodi est magnam. Dolor voluptas dolorem doloremque ut illum consequatur. Quibusdam autem nam aut dolor accusamus porro eligendi totam. Aut a impedit eaque modi dolore fugit illum.\nVero et consequatur omnis consectetur. Libero similique nobis eligendi. Ipsum cumque ex non optio tempora voluptatem.', 2, 0, 0, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(29, 3, 'Est blanditiis aliquam vel accusamus.', 'est-blanditiis-aliquam-vel-accusamus', NULL, 'Cumque ab rem sint officiis. Id ut consequatur animi aut iste aut.', 'Dolorem fuga sit excepturi omnis. Et nulla unde eveniet esse eum qui nulla. Tempore dignissimos dolores dolorem rerum et laboriosam blanditiis.\nError dolores numquam eum molestiae quia et. Suscipit consequatur ab harum dolores hic ad.\nFuga commodi hic quidem qui in ea in. Delectus quos quod deleniti aut. Odit magni voluptatem saepe quo.\nQui vero sed libero iure aut eum omnis. Voluptatum libero ipsam vel nemo qui non. Recusandae deleniti et eum id velit. At porro at voluptates.\nSint eligendi molestiae velit. Numquam maiores dolores sunt sapiente. Magnam hic molestiae magnam molestiae et. Id sint velit neque ipsum.\nDolorem quidem ducimus delectus est. Possimus minima inventore incidunt pariatur odio. Qui officiis omnis ipsa ratione.\nExcepturi pariatur nesciunt quis temporibus voluptatum quia qui repudiandae. Laborum nemo similique ab delectus. Nemo aliquid magnam ad aliquid nesciunt quae nostrum.', 2, 0, 0, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(30, 3, 'Aliquid qui dolorum est aut.', 'aliquid-qui-dolorum-est-aut', NULL, 'Sit praesentium sapiente consequuntur et voluptas. Aliquam sit autem quis. A dicta soluta ducimus maxime quis est.', 'Omnis hic assumenda consequatur et aut sequi. Ea quod officiis beatae magnam odio. Omnis culpa ab accusamus voluptatem facere. Ut architecto esse rem dolores et.\nCulpa aut aut tempore ex voluptas. Modi culpa est delectus. Harum ut ullam voluptatibus ratione. Aperiam minus nihil nulla maxime voluptatibus saepe.\nOmnis qui nisi ullam eos sed iure assumenda. Ipsa ab quo cumque rerum ipsam modi aspernatur. Et amet dolore sed esse beatae qui non. Dolorem totam ad incidunt id.\nExplicabo quam aliquid molestiae veritatis. Consectetur est quas fugiat animi facilis earum animi libero. Et tempore consectetur qui non libero dolor molestiae.\nVoluptatem autem omnis iure qui doloribus iusto quia. Quo temporibus quia quo perspiciatis nam nulla explicabo. Omnis quis id rerum itaque harum.\nId sequi totam animi tenetur quaerat et. Quisquam dolore id quibusdam vero et voluptas aut.', 8, 1, 0, '2018-04-24 07:03:07', '2018-04-24 07:03:09', NULL),
(31, 4, 'Eius beatae veniam culpa qui in.', 'eius-beatae-veniam-culpa-qui-in', NULL, 'Modi sit voluptates cum enim. Similique omnis temporibus culpa consequuntur. Blanditiis et ducimus odio. Ullam rerum voluptatem vel cupiditate aut assumenda. Ipsa quae alias sequi voluptatem a.', 'Perspiciatis delectus sed aliquam sint sint aliquid praesentium. Totam exercitationem ut dolore illo dolores at. Itaque sequi et inventore ullam.\nSaepe voluptas qui qui quo. Aliquid nulla iure dolorem saepe temporibus accusantium qui qui. Sunt totam neque ut sunt voluptatum quibusdam aperiam.\nSoluta delectus inventore itaque facere soluta et qui. Sapiente et eligendi sit vel. Ipsam impedit quia assumenda.\nDolores ipsa vel sint optio quo iusto. Sunt et sed et et tempora non.\nEum alias quia dignissimos ab nobis. Et est ea esse eum sed sed. Recusandae quia omnis quos amet. Autem aspernatur rerum nostrum laboriosam laborum aut eaque. Vitae accusamus numquam animi necessitatibus consectetur est.\nAspernatur dolor ad libero necessitatibus ab. Itaque quo voluptatem atque occaecati assumenda. Quo architecto in iste quisquam autem. Rerum quis omnis possimus.', 6, 1, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(32, 4, 'Consequatur et est rerum vero.', 'consequatur-et-est-rerum-vero', NULL, 'Architecto et enim excepturi ea. Voluptas consectetur nulla ea incidunt pariatur incidunt porro. Et minus quis reiciendis ut. Tempora ab accusamus et quasi totam.', 'Aliquid reiciendis ipsam sed sed velit. Porro voluptatem repudiandae suscipit. Vel ut molestias officiis veniam totam et.\nDignissimos error nemo nemo autem inventore fuga fugit. Dolores pariatur dolorem non cumque error tenetur iusto. Sequi libero odio quis qui.\nVoluptatem qui eius et omnis iste. Omnis labore ut enim corrupti esse deserunt qui. Officiis modi enim officia magnam nisi.\nNostrum magni qui odio qui nemo numquam accusamus possimus. Fuga ut necessitatibus ut vero saepe porro. Amet dolorem sequi est a. Reprehenderit nemo et excepturi non.\nAperiam magni est soluta reiciendis exercitationem. Doloribus reprehenderit sed dolor tempora iusto. In unde autem ipsam tempora.\nEt ea est iusto impedit molestias ea. Quos quod sed voluptates quas. Totam ea error sed aut vitae. Autem magnam sit deserunt itaque sint magni quibusdam.', 9, 1, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(33, 4, 'Sapiente iusto architecto fugiat eius.', 'sapiente-iusto-architecto-fugiat-eius', NULL, 'Eveniet doloremque nihil iste nobis. Expedita eligendi omnis amet sunt est sint. Esse similique occaecati et et sed. Et iure reprehenderit quasi fugit.', 'Sed earum dignissimos omnis. Hic incidunt magnam voluptate ea. Consequatur cumque ducimus vel consequatur.\nQuia id perferendis eveniet eum itaque aut dolores impedit. Qui temporibus accusantium consequuntur exercitationem a. Ut numquam ab est tempore ullam alias dignissimos. Tempora dolores cumque quaerat commodi iste veniam omnis. Perferendis harum et praesentium illum sunt suscipit hic neque.\nVoluptatum et ratione et rerum. Libero dignissimos hic architecto optio corrupti laborum. Numquam et ducimus labore enim error beatae.\nDolores id occaecati sit molestias dolorem nam. Dicta architecto aut perferendis qui cumque doloribus. Eius ipsum rerum voluptate est dolores consequatur architecto. Similique earum maxime eos et aspernatur eligendi qui.\nSimilique beatae et praesentium temporibus cumque. At eum non omnis blanditiis.', 9, 0, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(34, 4, 'Impedit voluptate doloremque corrupti eius.', 'impedit-voluptate-doloremque-corrupti-eius', NULL, 'Qui at quae est quis blanditiis eum. Necessitatibus fugit consequatur qui atque eos aliquid dolores iusto. Sit maiores nihil voluptatibus exercitationem porro. Et officiis placeat et quia ad nisi consequuntur quo. Fugiat voluptate asperiores ut culpa.', 'Eum culpa fuga quia magni ratione magnam est. Quam beatae praesentium eaque. Similique dolores suscipit id ut a non labore sed. Eos quo porro quia rem dolores assumenda laboriosam molestiae. Occaecati aut magni excepturi beatae non quia a.\nRatione quis omnis eos laborum odio. Maxime qui odio quod harum quo veniam. Omnis dolor quo voluptas.\nAssumenda rerum quia adipisci laborum officiis et. Doloremque eaque quaerat consectetur aut. At placeat atque veniam neque.\nCupiditate et unde sit reprehenderit nesciunt porro sed nobis. Voluptatem voluptates unde sint consequatur voluptatem. Qui quia qui laborum numquam. Tempore dolores perspiciatis sint animi dicta.\nEx et dolorem qui quo impedit et. Dolorum dolores pariatur delectus earum. Excepturi et sint iure illum. Suscipit quia autem sit temporibus a ea.\nAspernatur laboriosam sunt quod quo ipsum minima expedita. Voluptas voluptas recusandae sed repudiandae ut illum doloribus. Asperiores facere odit sed est.', 4, 0, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(35, 4, 'Quo voluptatem qui et magni repudiandae totam.', 'quo-voluptatem-qui-et-magni-repudiandae-totam', NULL, 'Sit aut similique dolores ab molestiae. Iste eum non quidem aliquid voluptate enim qui. Ratione voluptate ea tempora esse voluptas dolorem laboriosam.', 'Aut excepturi eligendi fugit ipsam. Repudiandae ad libero provident incidunt iure voluptatibus natus.\nAtque sunt possimus libero sapiente. Temporibus corporis vero veniam eligendi et quia. Voluptatem qui itaque voluptas consectetur natus blanditiis necessitatibus. Officia sapiente beatae molestias vel animi.\nNumquam quasi eius consequuntur. Cupiditate cum laborum quia excepturi temporibus. Amet ut alias porro assumenda praesentium non. Consequatur vel doloremque aut dolorem debitis magnam.\nEveniet rem adipisci rerum explicabo. Quaerat officia ut voluptatem sit in explicabo architecto. Ea alias natus deleniti.\nDolorem ut ut ut quo a id. Hic consectetur est natus sapiente tempore. Aliquam ab quas sint blanditiis. Ab expedita dolore et totam. Delectus vero maiores illo enim totam.', 3, 1, 0, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(36, 4, 'Aut quia et in sunt eum ipsa.', 'aut-quia-et-in-sunt-eum-ipsa', NULL, 'Cupiditate velit dolorum corrupti eius aut. Minima voluptas repellat placeat aut voluptas aliquam. Ducimus dolore ad maxime est. Placeat libero ut voluptas ea.', 'Nemo nam veniam accusamus et qui minima rerum. Cum veniam saepe nostrum esse ipsum modi consequuntur.\nOfficiis in labore sint fugit. Itaque suscipit corrupti necessitatibus eum est facilis ab. Incidunt voluptatum omnis consequatur fugiat debitis inventore.\nPraesentium sapiente ea dolorem vero. Eius officia aut unde fugiat.\nEt vitae voluptatibus quae maxime. Voluptatem possimus nisi suscipit nulla. Eos at quam ullam eum.\nModi tempore itaque consectetur vel repudiandae. Quasi qui voluptates tenetur vel et. Quo et quod modi.\nEt praesentium et consequatur quia minus. Qui quia distinctio consequatur aut rerum ut suscipit. Eligendi dolore eos ea aut quisquam deleniti est. At nesciunt aut omnis.\nDolor fugit est in. Quos sed repellendus iure delectus hic expedita rerum. Ut blanditiis quibusdam sunt eum. Dolorem unde modi dolor eum fuga ipsum corporis.\nMaiores minus et et qui nobis. Qui quisquam sint deserunt vitae culpa. Ut sequi numquam sit. Et dolor iusto veniam aliquid similique ab eum.', 7, 0, 0, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(37, 4, 'Asperiores itaque et dignissimos.', 'asperiores-itaque-et-dignissimos', NULL, 'Facilis voluptatem ut magni corporis praesentium molestiae laboriosam. Saepe nobis tenetur ut deserunt saepe. Adipisci eaque vitae ut quia aut. Aut voluptatem quidem repellat assumenda.', 'Deleniti iure voluptatem nihil. Eligendi quisquam alias ipsum et. Quibusdam soluta corrupti voluptatibus impedit.\nVero et velit quo aut est rerum. Sed tempore debitis qui. Laborum reiciendis amet qui est et ipsum.\nDeleniti quisquam dolorum quia expedita ratione nihil blanditiis. Non nostrum aperiam aut ad corrupti laudantium autem sapiente. Magni dolores illo qui illum.\nSint veritatis ut sed laboriosam unde veritatis. Optio tenetur est nemo dolore quis quibusdam. Sit voluptate consequatur dolores corporis et. Qui explicabo dignissimos quam et.\nVoluptas doloribus aut ut et enim qui. Nostrum et commodi eos ut officia. Illo dolorem quam dolor veniam quisquam aut est. Velit exercitationem deserunt fugiat iure accusamus cupiditate enim atque.\nVelit provident illo dolor quo esse aliquid perspiciatis. Ea necessitatibus quis natus. Exercitationem et enim ut cum. Magni veniam temporibus quia voluptatem consequatur nisi doloremque.', 6, 0, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(38, 4, 'Illo recusandae omnis deserunt pariatur iusto et.', 'illo-recusandae-omnis-deserunt-pariatur-iusto-et', NULL, 'Molestiae voluptates quibusdam nesciunt et fuga maxime et. Rerum consequuntur consequatur modi labore. Consequatur veniam molestiae voluptas minus beatae voluptatem totam sint. Voluptate odio quo nostrum aspernatur.', 'Eligendi voluptate officia repellendus. Sit rerum consequatur porro fugit perspiciatis. Id provident ducimus fugiat velit. Accusantium quis molestiae magni illo asperiores quasi ipsam.\nVoluptates eum et voluptatem ut corporis perferendis. Temporibus rerum quae dolores est et. Placeat provident optio vero reprehenderit.\nVelit reiciendis et consequatur quae. Qui in consequatur quia cupiditate animi qui. Deleniti sed iure aut consequatur temporibus ad.\nExplicabo distinctio omnis sed quo hic molestias. Ipsa impedit architecto aut exercitationem ea ut. Et eligendi modi reiciendis facilis voluptatibus praesentium cumque.\nCupiditate cupiditate ab voluptatum. Officia rem ab vel ipsum ipsa nostrum. Molestiae sapiente animi voluptates eaque aut minima et.\nEst dolorum nostrum omnis. Id dolore similique dignissimos distinctio. Molestias alias illo et aliquid iusto corrupti.', 6, 1, 0, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(39, 4, 'Aut repudiandae pariatur perferendis enim omnis.', 'aut-repudiandae-pariatur-perferendis-enim-omnis', NULL, 'Minima qui omnis illo et ullam at hic. Eveniet tenetur ut quis vel. Esse quod commodi a. Ea enim sapiente libero architecto incidunt alias.', 'Repudiandae veniam et vel voluptates placeat et tenetur. Odio perspiciatis inventore dolor illo perspiciatis. Et earum iste illum dignissimos. Nobis deserunt excepturi ex dicta est aut. Similique eligendi iste alias rem.\nVitae incidunt ut harum non distinctio nam enim dolorem. Omnis voluptate deserunt voluptate sit. Suscipit corporis qui nihil nesciunt cumque.\nNostrum fuga aspernatur error qui alias omnis. Minima repudiandae facilis et molestiae id. Deserunt et necessitatibus eius minima ut velit.\nAperiam et reprehenderit nostrum iusto accusantium sint. Illo veritatis dolores in accusantium possimus dolore voluptate. Et natus ipsum laudantium.\nNumquam voluptas ab eum est quo. Sunt rerum quis molestiae quidem quis dignissimos. Id facilis optio placeat porro ex consequatur. Et nihil voluptates voluptatem ad.', 10, 0, 0, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(40, 4, 'Enim eos cumque rerum.', 'enim-eos-cumque-rerum', NULL, 'Necessitatibus mollitia et sequi sit soluta sit dolores. Aut laborum dolore incidunt blanditiis id et nesciunt perspiciatis. Omnis enim repellat inventore qui est animi rerum.', 'Dolores ut labore sunt minus molestiae eius. Rerum sit consequatur id quis ipsum.\nDoloribus aut suscipit in aut sapiente est odio repellendus. Quas voluptas temporibus qui nobis consequuntur.\nAperiam omnis et et natus quis. Et dicta soluta consectetur quibusdam. Animi consequuntur cupiditate praesentium totam similique nemo.\nSunt id laudantium dicta tempore eius quis. Repudiandae dolor voluptatem doloribus nobis non. Mollitia enim et hic corrupti. Sapiente eveniet omnis porro tempora.\nQuasi ut qui eum qui quidem maxime commodi. Sequi exercitationem veritatis hic consequuntur. Quos voluptates quod quibusdam voluptatem dolor rerum sapiente.\nMagni sequi explicabo eos rerum temporibus in earum. Quia accusamus ut qui eaque suscipit omnis. Eum sit sint voluptatem inventore corporis voluptatem. Fugiat harum aliquam exercitationem incidunt aut.', 2, 1, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(41, 5, 'Voluptatem sit quae sit qui.', 'voluptatem-sit-quae-sit-qui', NULL, 'Deleniti aut quia eaque. Aut eaque quia voluptatem perferendis veritatis dolor dolore. Deleniti itaque animi saepe aliquid ut consequatur eum. A eos at quidem omnis aut placeat.', 'Laborum atque soluta magni maiores exercitationem velit rerum. Fugiat fuga sapiente tenetur eligendi facilis dolore. Nam omnis et esse dolorem provident fugit aut.\nAnimi libero modi repellendus qui. Tempore eum aut quis nemo sunt aliquid fuga. Dolor maiores soluta doloremque.\nExpedita consequatur unde quis id sapiente velit. Inventore quibusdam aut aspernatur amet quis et rerum. Soluta voluptas soluta soluta alias enim. Inventore voluptates incidunt alias quam totam.\nAut ratione sunt cumque adipisci earum voluptas modi. Quasi alias quia eum non deserunt sint. Nihil illo officia velit voluptatem. Debitis ut earum ipsum quos harum ullam.\nNon iure nulla impedit rerum eos quod. Omnis cum dolorum cupiditate ut vero.\nNumquam dolorem sed vitae fugit. Enim facere eligendi occaecati ipsa dignissimos. Sed et suscipit dolor aliquid dolore sed porro. Rerum ipsum quam voluptas magni quia ducimus et.', 8, 0, 0, '2018-04-24 07:03:10', '2018-04-24 07:03:11', NULL),
(42, 5, 'Incidunt atque impedit est modi odio sed atque.', 'incidunt-atque-impedit-est-modi-odio-sed-atque', NULL, 'Dolorum fuga voluptas mollitia reprehenderit voluptatibus nemo. Autem sed dicta aliquid optio. Est consequatur veritatis aut et illum et velit.', 'Non qui quia qui et adipisci animi aut. Quae est deserunt delectus quidem odit officiis saepe cupiditate. Et voluptas quisquam perferendis et laborum et exercitationem.\nLaboriosam rerum porro aut minima. Repellendus qui quo consequatur et et aut in. Eaque culpa quia quas enim cum voluptatum rem.\nBlanditiis voluptatum dignissimos rerum reiciendis quos. Nemo omnis aut quae ipsam. Animi enim et praesentium et iusto aut et et. Accusantium quibusdam iusto corrupti earum necessitatibus omnis exercitationem. Non ut sit voluptatem eius.\nUt rerum officia voluptates sint. Debitis tempore et voluptate quis. Reprehenderit sit laudantium ut eaque magni est dignissimos.\nSunt laudantium doloremque voluptatem voluptatum molestiae aut soluta. Vel consequatur reiciendis quod nam. Rerum quisquam neque culpa vitae ut ipsa vel. Dolorem labore facilis distinctio et.', 2, 0, 0, '2018-04-24 07:03:10', '2018-04-24 07:03:11', NULL),
(43, 5, 'Quidem officia assumenda labore sed dolor.', 'quidem-officia-assumenda-labore-sed-dolor', NULL, 'Et earum perferendis numquam quo possimus magnam ex. Voluptatem fugiat rerum ad itaque quaerat est velit. Qui nam eum nemo eveniet.', 'Praesentium ut explicabo soluta aliquam est. Deleniti id molestiae non velit. Aut aliquam tenetur voluptatem.\nAssumenda at aperiam sed iusto fugiat deleniti. Occaecati sequi numquam eos officiis ea odio facilis. Vitae fugit labore in iste minima asperiores. Et commodi ducimus eligendi tenetur perferendis perspiciatis quia omnis.\nConsequatur quidem ipsa qui aperiam enim et ullam laboriosam. Aperiam eos ad minus culpa libero consequatur. Minima eveniet debitis rem ex.\nCulpa numquam ut est voluptatem dignissimos. Amet mollitia quia illo reprehenderit. Et molestiae cum et voluptatem illum tempore delectus. Dolorem facilis debitis dolore dicta eius voluptatem qui.\nAut nemo ut quia facere tempora sed. Rerum recusandae odit sapiente. Dolor earum magnam autem sapiente repellendus.\nUt expedita doloribus necessitatibus accusamus. Corrupti a et unde dolore. Iusto illo rem in id officia pariatur ipsum. Sed repellendus perspiciatis magnam aliquam quae vel illo.', 4, 1, 0, '2018-04-24 07:03:10', '2018-04-24 07:03:11', NULL),
(44, 5, 'Ipsum eum est dolore laudantium est.', 'ipsum-eum-est-dolore-laudantium-est', NULL, 'Voluptatum veniam cumque molestiae ex delectus. Ipsam exercitationem cumque et molestiae aut perspiciatis aperiam. Magnam excepturi sequi eum amet quia quidem.', 'Est omnis fugiat aut dolorum inventore. Et dolor voluptatem beatae vel ut. Porro est minima aperiam eveniet nemo.\nVoluptas ut deleniti eveniet rerum officia voluptatum expedita. Est quidem soluta corrupti repellat incidunt. Molestiae eaque tenetur consequatur accusamus ipsam eius. Dolores reiciendis rem dicta laudantium dolor qui labore.\nDicta consequatur consequatur at deserunt possimus rerum quod. Rerum ab aperiam tempore et ut. Sed explicabo deleniti ullam dolor consequatur voluptas. Quas in quod sed beatae.\nConsectetur dolor non et porro voluptatem. Ullam enim error est ex quos. Ut qui possimus laudantium repellat quod eum.\nMinus libero distinctio ut itaque aut deserunt molestias voluptates. Voluptatem fugiat quam autem quia laudantium consequuntur et. Iusto ex facilis aut consectetur quisquam. Non iusto ut ea quia.', 8, 0, 1, '2018-04-24 07:03:10', '2018-04-24 07:03:11', NULL),
(45, 5, 'Autem et nihil voluptatem.', 'autem-et-nihil-voluptatem', NULL, 'Quasi consequatur ipsum deserunt aut. Et delectus commodi fugit fugit voluptas porro et. Dolores iusto sequi porro accusamus enim. Beatae enim distinctio minima ea impedit.', 'Eos a voluptas asperiores velit expedita tempora. Qui optio natus architecto excepturi sunt temporibus ipsam dignissimos. Quasi quisquam quas voluptates sequi. Ipsam odit vel assumenda.\nQuia molestiae quo iure sed voluptas ipsa ut. Voluptatem consequatur consequatur est quo id dolore laudantium. Et hic dolores sed minus distinctio. Inventore earum illum similique ut eius cum temporibus.\nEum recusandae occaecati nemo quos. Suscipit minima similique blanditiis natus explicabo cum. Nulla recusandae voluptatem eligendi consectetur vitae quo voluptatum. Natus ad quam dignissimos praesentium eum. Ut earum ea perferendis deleniti.\nCumque id id possimus tempore aliquid. Et fuga eum exercitationem neque rerum repudiandae eum doloremque. Quos et consequatur quaerat voluptatibus veniam.\nOmnis dolorem eligendi et. Odio consectetur nihil nulla ut veritatis. Rerum quia odio eveniet assumenda itaque.', 5, 1, 0, '2018-04-24 07:03:10', '2018-04-24 07:03:11', NULL),
(46, 5, 'Cupiditate nostrum aut nobis.', 'cupiditate-nostrum-aut-nobis', NULL, 'Rerum omnis et accusantium. Quibusdam omnis voluptatem suscipit nulla ut et. Earum suscipit maiores assumenda possimus mollitia libero odio. Accusantium optio est est sunt veritatis beatae modi.', 'Eius facilis vitae ut sunt quisquam eveniet necessitatibus. Molestiae velit cum commodi totam velit dolor. Nisi quis quasi consequatur voluptas.\nNumquam officia nesciunt corrupti. Dolorum sed id voluptatum iure corporis eaque quia. Dolorum dolor et autem eos dolore velit. Sint excepturi reprehenderit ratione necessitatibus. Ullam repellat sit necessitatibus perferendis ipsa quia accusantium.\nAmet qui laborum qui dolores at. Nobis hic amet quo voluptatem libero. Explicabo doloremque qui consequatur aut quia enim.\nUllam blanditiis soluta modi repellat ad accusantium ratione aspernatur. Tempora ea deleniti perspiciatis eaque saepe voluptatibus quis. Doloribus esse amet accusantium quis. Est amet architecto accusamus. Repellat iusto inventore sed sequi voluptatibus.\nQuia voluptate optio eos. Odio voluptas quis ea quaerat consequatur. Quaerat non nemo voluptatibus repellendus quia enim quos. Iste dolor neque non minima aperiam eligendi cupiditate.', 3, 0, 0, '2018-04-24 07:03:11', '2018-04-24 07:03:12', NULL),
(47, 5, 'Fuga error officia qui aliquam similique.', 'fuga-error-officia-qui-aliquam-similique', NULL, 'Quisquam nam vero rem dolores. Natus aliquam labore rerum ipsa. Atque ratione officiis qui sequi. Animi expedita quisquam magni consequatur distinctio modi qui rerum.', 'Harum sunt dolores ea. Fuga optio non vero sit possimus id. Saepe eligendi quo voluptas molestiae cum. Veritatis autem atque eum aut sint amet.\nQuidem optio voluptatibus facilis eum. Dolorem tenetur nihil incidunt excepturi accusantium. Voluptatem aut quos officiis deserunt sapiente quo possimus. Non sed sed consequatur aut repellendus sed ea. Ut voluptatem possimus deserunt maiores voluptatem veniam.\nPlaceat fuga ut recusandae non cumque accusamus temporibus. Dolorem sapiente dolores temporibus enim modi. Cum quisquam asperiores odio accusamus corporis nulla. Assumenda veritatis aut vel non quae qui.\nVoluptates eligendi corrupti laudantium sit ut commodi. Modi ut quidem animi nemo. Consequatur laborum ut accusamus et atque necessitatibus.\nAut maiores voluptatem molestiae voluptatem. Earum ut dolorem temporibus consequatur. Est soluta aut sed accusamus est harum. Placeat eum consequatur odit expedita quia perferendis.', 7, 0, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:12', NULL),
(48, 5, 'Ipsum et molestias repellat alias dolor id.', 'ipsum-et-molestias-repellat-alias-dolor-id', NULL, 'Distinctio eos aut vel sit modi molestiae. Sint est quo quia expedita occaecati earum unde. Rem in ut molestias quae.', 'Blanditiis sunt aut est provident. Quas aut tempore consequatur qui est. Consequuntur ut repellat consequuntur ratione aut debitis et. Et numquam neque quia atque. Ipsa ullam nulla in eligendi similique.\nOmnis et quod alias dolorem maiores. Cumque et inventore molestias illo qui laboriosam quaerat. Et blanditiis qui quibusdam deleniti. Ea consectetur vero sapiente beatae qui necessitatibus.\nVoluptatem vel corporis ducimus est et dolorem accusantium. Minus eos reprehenderit quis reiciendis sint. Iusto quaerat aliquam vitae quis aut pariatur.\nConsequatur molestiae et dolorem rerum placeat. Debitis itaque molestiae sunt magnam. Et temporibus voluptas mollitia aperiam quos vero. Voluptatibus exercitationem officia quibusdam non nobis vero aut necessitatibus.\nRatione consequatur ut dolores ex esse mollitia sunt. Quia omnis necessitatibus vero rem esse voluptatum. Delectus accusamus aut aut at natus voluptatem necessitatibus. Est sit non nulla ad sequi.', 10, 0, 0, '2018-04-24 07:03:11', '2018-04-24 07:03:12', NULL),
(49, 5, 'Quidem voluptatibus dolore maiores facilis et ut.', 'quidem-voluptatibus-dolore-maiores-facilis-et-ut', NULL, 'Molestias error autem sequi quaerat. Unde rerum modi nulla eos. Consectetur nihil necessitatibus consequatur fugiat illo ut.', 'Asperiores quisquam tempora adipisci quibusdam voluptatem consectetur est. Velit voluptatem quis aut a. Hic non autem facilis repudiandae perferendis. Repellendus et doloremque aliquam saepe.\nOptio ut maiores ut facilis. Quia est et nihil quia. Libero voluptatem quia aspernatur voluptas. Explicabo vero ipsam quo sunt dolores beatae.\nAut laudantium dignissimos distinctio adipisci libero quis non. Eveniet voluptates eum cupiditate officia. Illum officia placeat libero magni asperiores.\nSit ab asperiores ut dolore distinctio. Corrupti hic sed in architecto reprehenderit itaque. Tempora tenetur pariatur qui nam.\nMagnam hic quia illum. Dolorem facilis vel nostrum accusamus sequi et. Sit omnis adipisci cum libero. Voluptas aspernatur quo adipisci consectetur.\nAliquid est non id ut atque iure libero. Amet veniam rem dolorum. Autem maiores quo et molestias. Cum numquam dicta unde sapiente.', 7, 0, 0, '2018-04-24 07:03:11', '2018-04-24 07:03:12', NULL),
(50, 5, 'Quia voluptatem molestias voluptas.', 'quia-voluptatem-molestias-voluptas', NULL, 'Ut eligendi dolor quaerat unde rem consequatur voluptates. Aut facilis consequatur quia excepturi repudiandae. Sequi dignissimos sed optio eum qui veniam.', 'Ipsam laudantium consequatur rerum quia. Necessitatibus nihil nobis iste et.\nA labore vel alias sapiente et fugit facere. Et nemo aspernatur minima nemo incidunt aut corporis hic. Et doloremque nemo itaque laboriosam earum. Eligendi modi placeat quia provident enim. Dolorum nisi exercitationem quos tempora sed sunt quo alias.\nQuo omnis et aut dicta. Id voluptatem qui sapiente et dolor error. Aliquam aut autem error praesentium vel laudantium molestiae excepturi. Corporis tempora at assumenda mollitia expedita.\nMaxime eum velit asperiores iure omnis ut modi. Ad eum qui aut maxime quis et aut velit. Amet nobis recusandae dolorem. Vero illum praesentium reprehenderit laborum. Laborum eos omnis sunt.\nQui delectus quo tenetur rerum porro. Ex ea mollitia ipsum aliquid qui. Dignissimos tempore dolores ut molestiae beatae molestiae doloremque. Ut aut quasi tenetur error doloribus quaerat voluptatem. Expedita maiores qui quia.', 9, 0, 0, '2018-04-24 07:03:11', '2018-04-24 07:03:12', NULL);
INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(51, 6, 'Fasihi 2', 'fasihi-swahili', '1524856526-button-892164__340.png', 'nb bn bnvbnvhjvhjvhjvhjvhj hjvhjvhjvjhvhjvjhvhjvj,bjhvhjvjhvhjvhjvhjv', NULL, 1, 1, 0, '2018-04-27 16:15:27', '2018-04-27 16:15:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_student`
--

CREATE TABLE `lesson_student` (
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(1, NULL, 'App\\Lesson', 'downloadable_files', 'Auntie ID033', 'Auntie ID033.pdf', 'media', 698543, '[]', '[]', 1, '2018-04-25 03:41:56', '2018-04-25 03:41:56'),
(2, NULL, 'App\\Lesson', 'downloadable_files', 'Auntie front032', 'Auntie front032.pdf', 'media', 655842, '[]', '[]', 2, '2018-04-25 03:42:24', '2018-04-25 03:42:24'),
(3, 1, 'App\\Lesson', 'downloadable_files', 'Auntie024', 'Auntie024.pdf', 'media', 623880, '[]', '[]', 1, '2018-04-25 03:42:36', '2018-04-25 03:42:44'),
(4, NULL, 'App\\Lesson', 'downloadable_files', 'Kungu017', 'Kungu017.jpg', 'media', 50783, '[]', '[]', 3, '2018-04-25 03:47:12', '2018-04-25 03:47:12'),
(5, 5, 'App\\Lesson', 'downloadable_files', 'Clare028', 'Clare028.jpg', 'media', 64935, '[]', '[]', 1, '2018-04-25 03:48:38', '2018-04-25 03:48:48'),
(6, 51, 'App\\Lesson', 'downloadable_files', 'Auntie ID033', 'Auntie ID033.pdf', 'media', 698543, '[]', '[]', 4, '2018-04-27 16:15:20', '2018-04-27 16:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_07_19_082005_create_1500441605_permissions_table', 1),
(3, '2017_07_19_082006_create_1500441606_roles_table', 1),
(4, '2017_07_19_082009_create_1500441609_users_table', 1),
(5, '2017_07_19_082347_create_1500441827_courses_table', 1),
(6, '2017_07_19_082723_create_1500442043_lessons_table', 1),
(7, '2017_07_19_082724_create_media_table', 1),
(8, '2017_07_19_082929_create_1500442169_questions_table', 1),
(9, '2017_07_19_083047_create_1500442247_questions_options_table', 1),
(10, '2017_07_19_083236_create_1500442356_tests_table', 1),
(11, '2017_07_19_120427_create_596eec08307cd_permission_role_table', 1),
(12, '2017_07_19_120430_create_596eec0af366b_role_user_table', 1),
(13, '2017_07_19_120808_create_596eece522a6e_course_user_table', 1),
(14, '2017_07_19_121657_create_596eeef709839_question_test_table', 1),
(15, '2017_08_14_085956_create_course_students_table', 1),
(16, '2017_08_17_051131_create_tests_results_table', 1),
(17, '2017_08_17_051254_create_tests_results_answers_table', 1),
(18, '2017_08_18_054622_create_lesson_student_table', 1),
(19, '2017_08_18_060324_add_rating_to_course_student_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mndungu730@gmail.com', '$2y$10$gOowyV0cQ1HFMgW6QZfo9uPZToX4XbLiJBEDnW4ICG/wAOtx35ty.', '2018-04-24 13:36:19');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2018-04-24 07:02:58', '2018-04-24 07:02:58'),
(2, 'user_management_create', '2018-04-24 07:02:58', '2018-04-24 07:02:58'),
(3, 'user_management_edit', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(4, 'user_management_view', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(5, 'user_management_delete', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(6, 'permission_access', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(7, 'permission_create', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(8, 'permission_edit', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(9, 'permission_view', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(10, 'permission_delete', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(11, 'role_access', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(12, 'role_create', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(13, 'role_edit', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(14, 'role_view', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(15, 'role_delete', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(16, 'user_access', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(17, 'user_create', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(18, 'user_edit', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(19, 'user_view', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(20, 'user_delete', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(21, 'course_access', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(22, 'course_create', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(23, 'course_edit', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(24, 'course_view', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(25, 'course_delete', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(26, 'lesson_access', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(27, 'lesson_create', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(28, 'lesson_edit', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(29, 'lesson_view', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(30, 'lesson_delete', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(31, 'question_access', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(32, 'question_create', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(33, 'question_edit', '2018-04-24 07:02:59', '2018-04-24 07:02:59'),
(34, 'question_view', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(35, 'question_delete', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(36, 'questions_option_access', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(37, 'questions_option_create', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(38, 'questions_option_edit', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(39, 'questions_option_view', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(40, 'questions_option_delete', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(41, 'test_access', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(42, 'test_create', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(43, 'test_edit', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(44, 'test_view', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(45, 'test_delete', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(46, 'Create Students', '2018-04-24 07:48:32', '2018-04-24 07:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(1, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(1, 3),
(21, 3),
(24, 3),
(26, 3),
(29, 3),
(31, 3),
(34, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `question_image`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'What is your uncles name ?', '1524589229-boy-1300226__340.png', 85, '2018-04-24 07:03:12', '2018-04-24 14:00:29', NULL),
(2, 'Aut et sequi cum labore non qui ab.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 16:30:34', '2018-04-24 16:30:34'),
(3, 'Animi aut ea mollitia id aut.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 07:03:12', NULL),
(4, 'Ullam totam veritatis accusantium.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 07:03:12', NULL),
(5, 'Reiciendis quia eligendi et in pariatur.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 07:03:12', NULL),
(6, 'Labore impedit aut odio accusamus.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 07:03:12', NULL),
(7, 'Et eius asperiores non occaecati sunt nemo.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 07:03:12', NULL),
(8, 'Nostrum quia vel laboriosam illo blanditiis.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 07:03:12', NULL),
(9, 'Et quae enim sequi quis nobis repellendus.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 07:03:12', NULL),
(10, 'In non qui repudiandae.?', NULL, 1, '2018-04-24 07:03:12', '2018-04-24 07:03:12', NULL),
(11, 'Veritatis quisquam voluptates ad rerum nam cum.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(12, 'Enim et possimus nemo facilis enim.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(13, 'Consectetur sed esse sit sed nulla ipsam.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(14, 'Natus quos ut soluta dolores sed distinctio.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(15, 'Debitis et rerum aliquid.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(16, 'Aspernatur quo impedit dolorem.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(17, 'Eos et et beatae in ut consequatur et.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(18, 'Totam iste molestiae reiciendis eum.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(19, 'Molestiae accusantium cum ipsum deserunt.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(20, 'Vel reiciendis id aliquid dicta sunt culpa.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(21, 'Hic omnis consequatur in voluptatem.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(22, 'Eaque enim totam molestiae omnis.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(23, 'Tempora cum et magnam est ut quis.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(24, 'Et vitae aut enim voluptas.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(25, 'Possimus accusamus laudantium quia omnis.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(26, 'Voluptatem dicta totam et placeat.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(27, 'Quasi eligendi quam consequatur ullam.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(28, 'In consequuntur ut nemo aperiam et laboriosam.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(29, 'Autem ut alias qui ipsum.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(30, 'Dicta velit eveniet totam enim.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(31, 'Est earum sed et enim voluptatibus quaerat non.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(32, 'Fuga et est rerum iste rem et consectetur.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(33, 'Distinctio pariatur in doloribus.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(34, 'Rerum et nobis aperiam provident.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(35, 'Laborum illum modi consequatur.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(36, 'Unde velit error illum quaerat cumque.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(37, 'A perferendis dicta quia adipisci iure non enim.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(38, 'Laboriosam quod quos deserunt corrupti quasi.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(39, 'Ut ab excepturi quia qui sint.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(40, 'Ab quasi amet ut accusantium.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(41, 'Architecto sed quos sit aspernatur commodi.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(42, 'Sit ducimus sed ut ea pariatur.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(43, 'Quaerat corporis iure repellendus laboriosam ut.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(44, 'Qui et vel perferendis animi nihil.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(45, 'Odit laborum quam sapiente voluptatibus.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(46, 'Maxime expedita et doloremque numquam quas.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(47, 'Sit consequatur a voluptas.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(48, 'Similique minima non voluptates natus facere.?', NULL, 1, '2018-04-24 07:03:13', '2018-04-24 07:03:13', NULL),
(49, 'In et perspiciatis molestiae eveniet corrupti.?', NULL, 1, '2018-04-24 07:03:14', '2018-04-24 07:03:14', NULL),
(50, 'Voluptas odio ducimus aut aperiam ullam est.?', NULL, 1, '2018-04-24 07:03:14', '2018-04-24 07:03:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions_options`
--

CREATE TABLE `questions_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions_options`
--

INSERT INTO `questions_options` (`id`, `question_id`, `option_text`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 'say you', 1, '2018-04-24 07:03:14', '2018-04-24 07:06:44', NULL),
(2, 1, 'Omnis aut est voluptatibus deleniti.?', 0, '2018-04-24 07:03:14', '2018-04-24 07:03:14', NULL),
(3, 1, 'Doloremque est ducimus non dolor qui.?', 1, '2018-04-24 07:03:14', '2018-04-24 14:04:13', NULL),
(4, 1, 'Ipsam doloribus facilis impedit quasi.?', 0, '2018-04-24 07:03:14', '2018-05-02 02:39:29', '2018-05-02 02:39:29'),
(5, 2, 'Voluptatem omnis quia molestiae sit et aut id.?', 1, '2018-04-24 07:03:14', '2018-04-24 07:03:14', NULL),
(6, 2, 'Eum quam reiciendis veritatis ea.?', 1, '2018-04-24 07:03:14', '2018-04-24 07:03:14', NULL),
(7, 2, 'Eligendi iusto et itaque et.?', 1, '2018-04-24 07:03:14', '2018-04-24 07:03:14', NULL),
(8, 2, 'Quidem qui dolore quia earum at omnis vero.?', 0, '2018-04-24 07:03:14', '2018-04-24 07:03:14', NULL),
(9, 3, 'Quod eum modi blanditiis.?', 0, '2018-04-24 07:03:15', '2018-04-24 07:03:15', NULL),
(10, 3, 'Numquam voluptatum dolor dolores consectetur.?', 1, '2018-04-24 07:03:15', '2018-04-24 07:03:15', NULL),
(11, 3, 'Ipsum deserunt inventore et.?', 1, '2018-04-24 07:03:15', '2018-04-24 07:03:15', NULL),
(12, 3, 'Qui ut aut ut in.?', 0, '2018-04-24 07:03:15', '2018-04-24 07:03:15', NULL),
(13, 4, 'Velit vel excepturi similique ipsum ut.?', 0, '2018-04-24 07:03:15', '2018-04-24 07:03:15', NULL),
(14, 4, 'Sed accusantium et odit voluptas optio cum at.?', 0, '2018-04-24 07:03:15', '2018-04-24 07:03:15', NULL),
(15, 4, 'Dolore excepturi delectus dolorem voluptas non.?', 0, '2018-04-24 07:03:15', '2018-04-24 07:03:15', NULL),
(16, 4, 'Sed perspiciatis eligendi accusantium repellat.?', 1, '2018-04-24 07:03:15', '2018-04-24 07:03:15', NULL),
(17, 5, 'Atque quasi facilis rerum excepturi.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(18, 5, 'Est et et inventore dolor et autem voluptate.?', 1, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(19, 5, 'Sunt ea nisi eum nisi debitis eaque.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(20, 5, 'Est id veritatis nesciunt et expedita cum.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(21, 6, 'Quasi dolorum omnis est qui.?', 1, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(22, 6, 'Quia quod est incidunt voluptas itaque odio iure.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(23, 6, 'Odio et quaerat quas labore et.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(24, 6, 'Doloribus deserunt quo repellat praesentium.?', 1, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(25, 7, 'Minus illum nihil consequatur odio.?', 1, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(26, 7, 'Et quo rerum architecto iure eius.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(27, 7, 'Consectetur nihil non quae molestiae repudiandae.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(28, 7, 'Non occaecati cum vel sunt exercitationem vel.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(29, 8, 'Eum rem omnis alias odio.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:16', NULL),
(30, 8, 'Eos ut eos magnam assumenda.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:17', NULL),
(31, 8, 'Qui quasi ipsa accusantium.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:17', NULL),
(32, 8, 'Qui minima est numquam et odio ut est.?', 0, '2018-04-24 07:03:16', '2018-04-24 07:03:17', NULL),
(33, 9, 'Ipsam temporibus qui aut corporis est voluptas.?', 0, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(34, 9, 'Odit corrupti quisquam et earum.?', 1, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(35, 9, 'Rem sapiente magnam qui voluptatem dolorem.?', 0, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(36, 9, 'Quia voluptas reiciendis voluptatibus.?', 1, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(37, 10, 'Dolorem quam sit nihil iusto ut.?', 0, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(38, 10, 'Sequi qui atque magni alias accusamus aut.?', 1, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(39, 10, 'Reiciendis blanditiis assumenda in omnis.?', 0, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(40, 10, 'Et dolorem fugit sed soluta enim.?', 1, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(41, 11, 'Nobis qui rerum consequuntur aperiam et.?', 0, '2018-04-24 07:03:17', '2018-04-24 07:03:17', NULL),
(42, 11, 'Ex totam ut rerum impedit ut voluptatem nihil.?', 1, '2018-04-24 07:03:17', '2018-04-24 07:03:18', NULL),
(43, 11, 'Dolores nisi ut est quia est.?', 1, '2018-04-24 07:03:17', '2018-04-24 07:03:18', NULL),
(44, 11, 'Ut aut eaque voluptatem veniam.?', 1, '2018-04-24 07:03:17', '2018-04-24 07:03:18', NULL),
(45, 12, 'Reprehenderit totam et quia tenetur quia ea fuga.?', 0, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(46, 12, 'Reiciendis rerum cum consequuntur necessitatibus.?', 1, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(47, 12, 'Laudantium eum tenetur quia eveniet.?', 0, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(48, 12, 'Ea voluptas adipisci quod quidem.?', 1, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(49, 13, 'Non nulla nemo voluptatem rerum libero non.?', 1, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(50, 13, 'Deleniti totam et fuga recusandae et.?', 0, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(51, 13, 'Fugit nobis eligendi ad ut cumque qui.?', 1, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(52, 13, 'Cum dolore explicabo delectus sit.?', 1, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(53, 14, 'Optio voluptatem nihil sunt veniam.?', 1, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(54, 14, 'Laudantium expedita asperiores sint.?', 0, '2018-04-24 07:03:18', '2018-04-24 07:03:18', NULL),
(55, 14, 'Consequuntur est dolore illum rerum qui.?', 0, '2018-04-24 07:03:18', '2018-04-24 07:03:19', NULL),
(56, 14, 'Et non magnam inventore at.?', 1, '2018-04-24 07:03:18', '2018-04-24 07:03:19', NULL),
(57, 15, 'Et dolor illum quasi ut et possimus.?', 0, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(58, 15, 'Vel est et omnis pariatur libero officiis magnam.?', 1, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(59, 15, 'Et laudantium sunt et sed eum non.?', 1, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(60, 15, 'Alias quod ut quo aut omnis.?', 1, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(61, 16, 'Consequatur ab est iusto id numquam animi.?', 0, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(62, 16, 'Necessitatibus hic debitis nihil qui cupiditate.?', 0, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(63, 16, 'Culpa sint dolores autem et.?', 0, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(64, 16, 'Doloribus est consectetur aperiam repudiandae.?', 1, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(65, 17, 'Quis dolores dolores temporibus autem saepe.?', 1, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(66, 17, 'Animi nihil tempore rem at saepe nisi.?', 0, '2018-04-24 07:03:19', '2018-04-24 07:03:19', NULL),
(67, 17, 'Aut provident qui nulla iste quasi.?', 1, '2018-04-24 07:03:19', '2018-04-24 07:03:20', NULL),
(68, 17, 'Et cumque corporis nemo hic aut.?', 1, '2018-04-24 07:03:19', '2018-04-24 07:03:20', NULL),
(69, 18, 'Velit ratione est molestiae.?', 1, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(70, 18, 'Animi velit minus repudiandae fugit.?', 0, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(71, 18, 'Consequatur ut error harum eaque.?', 1, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(72, 18, 'Aliquam distinctio neque minima quibusdam.?', 0, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(73, 19, 'Qui nostrum natus non et.?', 1, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(74, 19, 'Eum et dolor soluta autem sunt voluptatibus.?', 1, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(75, 19, 'Quo consequuntur rerum sunt aut.?', 1, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(76, 19, 'Numquam ut pariatur quasi repudiandae.?', 0, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(77, 20, 'Ad rem quasi id et odit.?', 1, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(78, 20, 'Voluptas quam architecto blanditiis nam facilis.?', 1, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(79, 20, 'Quia aliquam ea quod quidem commodi et quis.?', 1, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(80, 20, 'Rerum id sit ut hic exercitationem culpa.?', 0, '2018-04-24 07:03:20', '2018-04-24 07:03:20', NULL),
(81, 21, 'Iure a voluptate cum sit facilis eum eaque.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(82, 21, 'Corrupti totam in dolore quod nulla.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(83, 21, 'Minima delectus quos assumenda cupiditate et non.?', 1, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(84, 21, 'Vel necessitatibus occaecati quam.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(85, 22, 'Voluptatem qui blanditiis dolor voluptas.?', 1, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(86, 22, 'Odit molestiae consequatur doloribus aut.?', 1, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(87, 22, 'Quas eaque itaque voluptatem eum quae sapiente.?', 1, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(88, 22, 'Iusto dolores libero vero dolore voluptatem.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(89, 23, 'Illum voluptatum deserunt tenetur quam.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(90, 23, 'Aut at harum fugiat delectus nihil aspernatur.?', 1, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(91, 23, 'Beatae placeat expedita et omnis.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(92, 23, 'Ut nihil ratione architecto.?', 1, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(93, 24, 'Ipsum inventore eius et facere nostrum.?', 1, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(94, 24, 'Aut voluptatem blanditiis totam voluptas dolorum.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(95, 24, 'Delectus sequi officia sit alias sint deserunt.?', 1, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(96, 24, 'Veniam quas sunt voluptatem reiciendis.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:21', NULL),
(97, 25, 'Libero sint in numquam.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:22', NULL),
(98, 25, 'Nam quo consequatur quis eum porro.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:22', NULL),
(99, 25, 'Laboriosam corporis ut nisi.?', 0, '2018-04-24 07:03:21', '2018-04-24 07:03:22', NULL),
(100, 25, 'Illum eveniet nobis tempore sit.?', 1, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(101, 26, 'Dignissimos est molestias omnis.?', 1, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(102, 26, 'Rem est dolor hic assumenda.?', 0, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(103, 26, 'Aliquid nesciunt est eos molestiae.?', 1, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(104, 26, 'Laboriosam aperiam aut iure vel nulla omnis.?', 0, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(105, 27, 'Necessitatibus aperiam nihil esse tempore eaque.?', 0, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(106, 27, 'Iusto autem omnis mollitia maxime.?', 0, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(107, 27, 'Saepe accusamus eligendi velit sed illum nemo.?', 1, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(108, 27, 'Modi ex at ut nihil recusandae qui est.?', 1, '2018-04-24 07:03:22', '2018-04-24 07:03:22', NULL),
(109, 28, 'Consequatur ut voluptatum corporis sed.?', 0, '2018-04-24 07:03:22', '2018-04-24 07:03:23', NULL),
(110, 28, 'Quo ut non laudantium et sed aut.?', 1, '2018-04-24 07:03:22', '2018-04-24 07:03:23', NULL),
(111, 28, 'Similique laboriosam qui officia commodi ullam.?', 0, '2018-04-24 07:03:22', '2018-04-24 07:03:23', NULL),
(112, 28, 'Ut blanditiis exercitationem vel et corporis est.?', 0, '2018-04-24 07:03:22', '2018-04-24 07:03:23', NULL),
(113, 29, 'Voluptate repellat ullam illo voluptatem sed.?', 0, '2018-04-24 07:03:23', '2018-04-24 07:03:23', NULL),
(114, 29, 'Adipisci dignissimos eos est est neque sunt.?', 1, '2018-04-24 07:03:23', '2018-04-24 07:03:23', NULL),
(115, 29, 'Unde facilis quia saepe praesentium.?', 1, '2018-04-24 07:03:23', '2018-04-24 07:03:23', NULL),
(116, 29, 'Ea quia reiciendis odit velit quisquam ea velit.?', 0, '2018-04-24 07:03:23', '2018-04-24 07:03:23', NULL),
(117, 30, 'Consequatur voluptatibus doloribus et quas.?', 0, '2018-04-24 07:03:23', '2018-04-24 07:03:24', NULL),
(118, 30, 'Consectetur quo et eum ex eum tempora et.?', 0, '2018-04-24 07:03:23', '2018-04-24 07:03:24', NULL),
(119, 30, 'Beatae ut aut eos eligendi.?', 0, '2018-04-24 07:03:23', '2018-04-24 07:03:24', NULL),
(120, 30, 'Rerum temporibus iusto sit aspernatur et sit ut.?', 1, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(121, 31, 'Id optio dolor velit quibusdam magni.?', 0, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(122, 31, 'Sapiente et aperiam fugiat perspiciatis in earum.?', 0, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(123, 31, 'Nesciunt corporis quia earum.?', 1, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(124, 31, 'Incidunt corrupti dolorem voluptas ducimus.?', 0, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(125, 32, 'Voluptas ullam ipsam veritatis sequi.?', 0, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(126, 32, 'Fuga ipsum id autem.?', 0, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(127, 32, 'Et neque autem perferendis temporibus.?', 1, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(128, 32, 'Sed praesentium sint aut et commodi.?', 0, '2018-04-24 07:03:24', '2018-04-24 07:03:24', NULL),
(129, 33, 'Sunt consequatur quae voluptas natus.?', 0, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(130, 33, 'Facere non et perferendis non.?', 1, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(131, 33, 'Aspernatur ut consequatur et voluptatem neque et.?', 1, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(132, 33, 'In eum ducimus dolor aliquid provident non.?', 1, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(133, 34, 'Praesentium est omnis est consequuntur.?', 0, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(134, 34, 'Qui maxime qui adipisci.?', 1, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(135, 34, 'Ut aut architecto aut.?', 0, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(136, 34, 'Maxime quia id ullam dolorem.?', 1, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(137, 35, 'Possimus in beatae sint eligendi eveniet fuga.?', 1, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(138, 35, 'Et quis et repudiandae qui et autem corporis.?', 1, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(139, 35, 'Et iusto nemo voluptatem qui est.?', 1, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(140, 35, 'Velit quia consectetur minus aut.?', 0, '2018-04-24 07:03:25', '2018-04-24 07:03:25', NULL),
(141, 36, 'A illo doloribus temporibus nobis debitis.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(142, 36, 'Minus sunt et veniam sed.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(143, 36, 'Iure voluptatem dolores a autem qui.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(144, 36, 'Quia rerum quis iste quisquam enim quis.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(145, 37, 'Expedita soluta corporis iure optio qui.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(146, 37, 'Incidunt laudantium ratione earum possimus.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(147, 37, 'Et neque velit nam.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(148, 37, 'Ex cupiditate aut ut blanditiis.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(149, 38, 'Quod consequatur sint iste quae esse at quia.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(150, 38, 'Quas accusantium vel voluptates est facere.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(151, 38, 'Ab amet in optio natus numquam.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(152, 38, 'Quis quia qui in omnis facilis.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(153, 39, 'Sed et ut at aut nihil consequatur nemo.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(154, 39, 'Aliquam doloremque sequi sit aliquam ea.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(155, 39, 'Sed possimus exercitationem est est et.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(156, 39, 'Minima in repellat mollitia temporibus unde non.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(157, 40, 'Occaecati ut tenetur rerum sequi.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(158, 40, 'Adipisci et et iure dolores est est perferendis.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:26', NULL),
(159, 40, 'Eveniet eum amet animi quisquam magnam.?', 1, '2018-04-24 07:03:26', '2018-04-24 07:03:27', NULL),
(160, 40, 'Voluptas ut officiis sunt.?', 0, '2018-04-24 07:03:26', '2018-04-24 07:03:27', NULL),
(161, 41, 'Sequi quaerat enim aut aliquid fuga delectus qui.?', 1, '2018-04-24 07:03:27', '2018-04-24 07:03:27', NULL),
(162, 41, 'In temporibus laboriosam dolorem animi.?', 1, '2018-04-24 07:03:27', '2018-04-24 07:03:27', NULL),
(163, 41, 'Non qui eaque blanditiis.?', 1, '2018-04-24 07:03:27', '2018-04-24 07:03:27', NULL),
(164, 41, 'Odit impedit recusandae nam sapiente alias.?', 0, '2018-04-24 07:03:27', '2018-04-24 07:03:27', NULL),
(165, 42, 'Eius occaecati sapiente illum accusantium quas.?', 0, '2018-04-24 07:03:27', '2018-04-24 07:03:27', NULL),
(166, 42, 'Officia qui et tenetur veritatis.?', 0, '2018-04-24 07:03:27', '2018-04-24 07:03:27', NULL),
(167, 42, 'Sunt reiciendis ea natus et rem.?', 0, '2018-04-24 07:03:27', '2018-04-24 07:03:27', NULL),
(168, 42, 'Aliquid veniam vel excepturi iste.?', 0, '2018-04-24 07:03:27', '2018-04-24 07:03:27', NULL),
(169, 43, 'Quos sunt aut at.?', 1, '2018-04-24 07:03:27', '2018-04-24 07:03:28', NULL),
(170, 43, 'Sunt quae quos et cumque.?', 0, '2018-04-24 07:03:27', '2018-04-24 07:03:28', NULL),
(171, 43, 'Blanditiis animi quia quidem eveniet vitae.?', 1, '2018-04-24 07:03:27', '2018-04-24 07:03:28', NULL),
(172, 43, 'Enim deserunt eum vel omnis.?', 0, '2018-04-24 07:03:27', '2018-04-24 07:03:28', NULL),
(173, 44, 'Et possimus eum minima autem.?', 1, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(174, 44, 'Ipsum odio atque ut in alias.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(175, 44, 'Quo error aut dolor quisquam et sed ut.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(176, 44, 'Nam ducimus repellendus et numquam ullam eos.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(177, 45, 'Nam sed iure assumenda.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(178, 45, 'Perspiciatis dolores recusandae omnis.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(179, 45, 'Eveniet adipisci natus quis aut ut molestias.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(180, 45, 'Quas libero quo fugit quod et ut voluptatem.?', 1, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(181, 46, 'Est ut voluptas eaque unde nemo quo rerum.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(182, 46, 'Et debitis qui optio.?', 1, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(183, 46, 'Quas deserunt voluptate hic ut rerum voluptatem.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(184, 46, 'Est perspiciatis est iure rerum.?', 1, '2018-04-24 07:03:28', '2018-04-24 07:03:28', NULL),
(185, 47, 'Ab dolor itaque ea adipisci beatae facilis.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:29', NULL),
(186, 47, 'Fugiat facilis laborum animi eos iure.?', 1, '2018-04-24 07:03:28', '2018-04-24 07:03:29', NULL),
(187, 47, 'Sed repellat inventore distinctio voluptatem.?', 1, '2018-04-24 07:03:28', '2018-04-24 07:03:29', NULL),
(188, 47, 'Quos reiciendis distinctio odit placeat.?', 0, '2018-04-24 07:03:28', '2018-04-24 07:03:29', NULL),
(189, 48, 'Ut nostrum voluptatem nemo temporibus.?', 0, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(190, 48, 'Eos enim quis labore sed veniam.?', 0, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(191, 48, 'Ea aut modi quaerat mollitia error quo qui.?', 0, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(192, 48, 'Quia quaerat alias est incidunt id est et.?', 1, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(193, 49, 'Laudantium unde quidem quo accusamus.?', 0, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(194, 49, 'Dolor dolor architecto aut.?', 1, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(195, 49, 'Facilis sunt numquam odit.?', 0, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(196, 49, 'Dolorem consequatur maxime ducimus.?', 1, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(197, 50, 'Repellendus molestiae officiis et deserunt.?', 0, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(198, 50, 'Sunt sint voluptate libero dicta corporis minus.?', 1, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(199, 50, 'Nihil repellat eligendi doloremque eaque.?', 1, '2018-04-24 07:03:29', '2018-04-24 07:03:29', NULL),
(200, 50, 'Omnis et sed et aspernatur porro fugit ab et.?', 0, '2018-04-24 07:03:29', '2018-04-24 07:07:12', '2018-04-24 07:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_test`
--

INSERT INTO `question_test` (`question_id`, `test_id`) VALUES
(1, 29),
(4, 4),
(5, 40),
(7, 7),
(8, 39),
(10, 33),
(11, 33),
(12, 8),
(13, 47),
(14, 29),
(15, 50),
(16, 1),
(17, 31),
(18, 23),
(19, 32),
(21, 9),
(22, 37),
(25, 23),
(26, 22),
(27, 29),
(28, 42),
(30, 26),
(31, 9),
(32, 49),
(33, 27),
(34, 26),
(35, 50),
(37, 5),
(40, 6),
(43, 42),
(45, 24),
(47, 39),
(48, 48),
(49, 27),
(50, 43);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(2, 'Teacher', '2018-04-24 07:03:00', '2018-04-24 07:03:00'),
(3, 'Students', '2018-04-24 07:03:00', '2018-04-24 12:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(3, 6),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `course_id`, `lesson_id`, `title`, `description`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, 'Exercitationem non est quia esse amet voluptas.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(2, NULL, 2, 'Quia sit impedit vel aliquid hic est.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(3, NULL, 3, 'Iusto sapiente possimus ea fuga facere quis eum.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(4, NULL, 4, 'Hic sint quia possimus explicabo ullam.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(5, NULL, 5, 'Modi cumque explicabo quas commodi quia qui.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(6, NULL, 6, 'Quos sit debitis ut natus odio.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(7, NULL, 7, 'Quasi eligendi corporis earum ut qui beatae iste.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(8, NULL, 8, 'Aliquam laboriosam et dolores quis illo illo.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(9, NULL, 9, 'Eius quia eius mollitia nemo.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:04', NULL),
(10, NULL, 10, 'Et corporis ut dolorum est eos quia.', NULL, 1, '2018-04-24 07:03:04', '2018-04-24 07:03:05', NULL),
(21, NULL, 21, 'Et et dolorum sunt sunt itaque.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(22, NULL, 22, 'Quisquam iste debitis doloremque.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(23, NULL, 23, 'Fugiat qui ut consequatur sint illum corrupti.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(24, NULL, 24, 'Ea sit vel aspernatur saepe in ut.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(25, NULL, 25, 'Recusandae velit ipsa quam voluptas eligendi.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(26, NULL, 26, 'Sint corporis facilis mollitia fugit earum.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(27, NULL, 27, 'Soluta quis voluptatum aut recusandae officia.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(28, NULL, 28, 'Ducimus et vel consequatur quasi.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(29, NULL, 29, 'Quam nostrum dolorem facere.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(30, NULL, 30, 'Velit et dolores delectus expedita dolor rerum.', NULL, 1, '2018-04-24 07:03:08', '2018-04-24 07:03:08', NULL),
(31, NULL, 31, 'Blanditiis minus est natus.', NULL, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:09', NULL),
(32, NULL, 32, 'Qui sunt quam quibusdam eligendi.', NULL, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:09', NULL),
(33, NULL, 33, 'Id sunt aut amet eligendi eius commodi.', NULL, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:09', NULL),
(34, NULL, 34, 'Odio voluptas hic voluptatum.', NULL, 1, '2018-04-24 07:03:09', '2018-04-24 07:03:10', NULL),
(35, NULL, 35, 'Harum pariatur nisi et sit laudantium.', NULL, 1, '2018-04-24 07:03:10', '2018-04-24 07:03:10', NULL),
(36, NULL, 36, 'Unde minima placeat quia totam quam et.', NULL, 1, '2018-04-24 07:03:10', '2018-04-24 07:03:10', NULL),
(37, NULL, 37, 'Nisi laborum occaecati perferendis eligendi.', NULL, 1, '2018-04-24 07:03:10', '2018-04-24 07:03:10', NULL),
(38, NULL, 38, 'Quos harum esse nulla quo modi ea.', NULL, 1, '2018-04-24 07:03:10', '2018-04-24 07:03:10', NULL),
(39, NULL, 39, 'Voluptates numquam saepe quaerat nemo omnis.', NULL, 1, '2018-04-24 07:03:10', '2018-04-24 07:03:10', NULL),
(40, NULL, 40, 'Dicta dolores officiis corrupti occaecati.', NULL, 1, '2018-04-24 07:03:10', '2018-04-24 07:03:10', NULL),
(41, NULL, 41, 'Saepe ex fugit dolorum voluptatem esse.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(42, NULL, 42, 'Perspiciatis porro ea ea.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(43, NULL, 43, 'Dolores quo animi quibusdam sint.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(44, NULL, 44, 'Voluptatem voluptas soluta maxime sunt nemo.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(45, NULL, 45, 'Velit iure voluptatem ut esse voluptas rerum.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(46, NULL, 46, 'Saepe optio cumque recusandae.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(47, NULL, 47, 'Ullam et fuga fugit ut qui veritatis et nesciunt.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(48, NULL, 48, 'Perspiciatis velit nulla unde esse perferendis.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(49, NULL, 49, 'Minus et blanditiis ut suscipit.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL),
(50, NULL, 50, 'Quos id necessitatibus deleniti totam.', NULL, 1, '2018-04-24 07:03:11', '2018-04-24 07:03:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests_results`
--

CREATE TABLE `tests_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `test_result` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_results`
--

INSERT INTO `tests_results` (`id`, `test_id`, `user_id`, `test_result`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 0, '2018-04-25 03:45:16', '2018-04-25 03:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `tests_results_answers`
--

CREATE TABLE `tests_results_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `tests_result_id` int(10) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option_id` int(10) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_results_answers`
--

INSERT INTO `tests_results_answers` (`id`, `tests_result_id`, `question_id`, `option_id`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 47, 0, '2018-04-25 03:45:16', '2018-04-25 03:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$lojJd9LP5qLDF8WKIwgJUO2FYRWEfJXCynrBHw/p4gSn/1Js5Mkqe', '8CuYpEvHEWCSNkkshxTHgjEZMXlO08ZjbYTQhbGGuuNpAQDeH1rEsKlhUpWb', '2018-04-24 07:03:00', '2018-04-24 07:16:51'),
(6, 'Student1', 'student@student.com', '$2y$10$XohXlz.3WNLEuteq0zeBhurE9lBbUguMR7MTNvFMirVCPVXknziua', '4pQkQEgS9DnTIedX5nREGPTw8HRqGfZnr2U48G8PvbzY5VCyL094Z6nzsKB6', '2018-05-16 13:16:33', '2018-05-16 13:16:33'),
(7, 'Teacher1', 'teacher@teacher.com', '$2y$10$xoYXk2pLOYF41HRck4S1Lu8tvUCYYKkrUuWoa6V8r8gBMMhr74MXW', 'EHo9C0zM36KaIjPNZxyGxZLyS4rzgOPodD2IFNXrIT5rwk7hkY6AYTKjevgH', '2018-05-16 13:19:19', '2018-05-16 13:19:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `fk_p_54418_54417_user_cou_596eece522b73` (`course_id`),
  ADD KEY `fk_p_54417_54418_course_u_596eece522bee` (`user_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54419_596eedbb6686e` (`course_id`),
  ADD KEY `lessons_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD KEY `lesson_student_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `fk_p_54415_54416_role_per_596eec08308d0` (`permission_id`),
  ADD KEY `fk_p_54416_54415_permissi_596eec0830986` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54421_596eee8745a1e` (`question_id`),
  ADD KEY `questions_options_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD KEY `fk_p_54420_54422_test_que_596eeef70992f` (`question_id`),
  ADD KEY `fk_p_54422_54420_question_596eeef7099af` (`test_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_p_54416_54417_user_rol_596eec0af3746` (`role_id`),
  ADD KEY `fk_p_54417_54416_role_use_596eec0af37c1` (`user_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54422_596eeef514d00` (`course_id`),
  ADD KEY `54422_596eeef53411a` (`lesson_id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_test_id_foreign` (`test_id`),
  ADD KEY `tests_results_user_id_foreign` (`user_id`);

--
-- Indexes for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_answers_tests_result_id_foreign` (`tests_result_id`),
  ADD KEY `tests_results_answers_question_id_foreign` (`question_id`),
  ADD KEY `tests_results_answers_option_id_foreign` (`option_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `questions_options`
--
ALTER TABLE `questions_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tests_results`
--
ALTER TABLE `tests_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `fk_p_54417_54418_course_u_596eece522bee` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54418_54417_user_cou_596eece522b73` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `54419_596eedbb6686e` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD CONSTRAINT `lesson_student_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `fk_p_54415_54416_role_per_596eec08308d0` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54416_54415_permissi_596eec0830986` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD CONSTRAINT `54421_596eee8745a1e` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_test`
--
ALTER TABLE `question_test`
  ADD CONSTRAINT `fk_p_54420_54422_test_que_596eeef70992f` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54422_54420_question_596eeef7099af` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_p_54416_54417_user_rol_596eec0af3746` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54417_54416_role_use_596eec0af37c1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `54422_596eeef514d00` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `54422_596eeef53411a` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD CONSTRAINT `tests_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD CONSTRAINT `tests_results_answers_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `questions_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_tests_result_id_foreign` FOREIGN KEY (`tests_result_id`) REFERENCES `tests_results` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
