-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 12:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m3_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Graphic Design', 'graphic-design', '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(2, 'Personal', 'personal', '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(3, 'World City', 'world-city', '2022-11-08 10:30:56', '2022-11-08 10:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_09_040148_create_posts_table', 1),
(6, '2022_10_21_060511_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Explicabo corrupti nihil eaque id et explicabo voluptatem.', 'a-nisi-et-modi-nihil-aperiam-et-sed', 'Nesciunt vel eos consequatur voluptatem tempora in aut deleniti. Incidunt ea nulla voluptas cum voluptatem quasi eum. Eum rerum occaecati nobis ut. Doloremque voluptas sapiente ut porro mollitia quos.', '<p>Optio et expedita consequatur odit ab mollitia. Cum officiis deleniti vitae magni quibusdam odio et. Ab voluptates provident eos dignissimos ducimus. Architecto aspernatur itaque numquam similique.</p><p>Dolor quia excepturi facilis minima. Alias et iusto eveniet doloribus animi. Eligendi temporibus dolorem repellat fugiat qui ut. Natus blanditiis aut rerum repellendus distinctio.</p><p>Molestiae qui ea atque velit quis. Deleniti inventore omnis accusamus. Quae et et cupiditate magni reiciendis non nobis. Occaecati quo aut eligendi est.</p><p>Neque adipisci eum ratione aut. Vitae sunt voluptatem laboriosam eveniet dolore autem. Est dolore quia incidunt in qui ipsam.</p><p>Molestiae modi corporis sit totam. Sed tempora saepe aliquam ab doloremque et. Temporibus et est voluptatem sequi inventore. Eveniet delectus consequuntur minima officia cupiditate.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(2, 1, 1, 'Libero id.', 'hic-libero-rerum-et-deserunt-sequi-dolorem', 'Laboriosam laboriosam ea iusto accusantium perspiciatis nemo et. Qui sit eos eum eligendi.', '<p>Expedita omnis et alias aut. Molestias nulla ea placeat voluptatem temporibus.</p><p>Aut occaecati delectus doloremque expedita voluptas sit quidem enim. Enim qui nihil temporibus ut laboriosam. Dolores quaerat laborum fuga asperiores exercitationem esse itaque. Ab provident saepe repudiandae delectus non facilis.</p><p>Quis unde animi consectetur ipsa. Occaecati voluptatem qui atque est enim quis nesciunt. Earum ut rerum ipsam sapiente laudantium. Ex sequi quo ut tenetur eum dignissimos labore amet.</p><p>Laboriosam sequi fuga velit vel sed quia non. Occaecati cumque vero ea nulla et quibusdam commodi.</p><p>Laborum totam totam praesentium quis sed. Aperiam sit aut distinctio. Eum delectus eaque laudantium quo corrupti. Enim omnis eum quo cupiditate.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(3, 1, 2, 'Consequuntur quae veniam sed voluptas eos.', 'et-laborum-odio-sed', 'Alias quia quo qui nihil assumenda numquam. Culpa placeat et voluptas accusamus similique. Omnis odio itaque iste. Et inventore vitae eos amet officia eaque esse quaerat.', '<p>Vel ut doloremque aut quo et sunt est. Aut aut vero delectus sapiente molestiae nam quia vel. Vel iure accusantium explicabo aut unde. Vel molestiae eligendi perspiciatis est sit magnam ipsa.</p><p>Debitis dignissimos quod numquam et qui commodi repellat. Officia unde qui atque soluta dicta natus voluptatem.</p><p>Exercitationem ut placeat assumenda adipisci aperiam nobis dolorem. Reiciendis numquam dolores alias voluptates doloribus. Ducimus magni et ea quis veritatis cupiditate voluptatem. Vitae dicta at deserunt dolores illo. Commodi aut enim itaque maiores id pariatur id nobis.</p><p>Aut corrupti amet veniam cumque quaerat voluptatem. Qui repellendus vel molestiae maxime est. Harum ipsam libero laborum ut voluptatum amet. Praesentium atque ut et.</p><p>Mollitia eveniet aut soluta ipsa. Iusto impedit rerum dolor incidunt adipisci ad occaecati ad. Quae quia officia necessitatibus aliquam. Est labore saepe illum quo.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(4, 1, 1, 'Molestias soluta dolorem.', 'esse-aut-et-non-eaque-ut-necessitatibus-natus-sit', 'Voluptas est natus nihil et. Iusto pariatur recusandae culpa eos sit ut repudiandae.', '<p>Quod ut est nemo eos sequi. Aut sapiente expedita ut aut a nisi fugit. Soluta ut architecto quis voluptatem.</p><p>Et voluptatibus modi odit aut sit velit dolorem. Voluptatem qui deserunt sint eveniet. Autem nemo accusamus facere possimus odio excepturi rem nam. Sed optio quod commodi atque sint modi.</p><p>Et ea corporis dolorem voluptatem sint accusamus. Laboriosam officia beatae veritatis praesentium quibusdam. Nisi voluptas sint sint sequi eveniet vel. Deleniti aut esse dolor et inventore sit iusto qui.</p><p>Facilis accusamus quod alias aliquam illum. Omnis ad quidem nihil voluptate velit odio. Placeat assumenda pariatur ut et.</p><p>Omnis quasi autem aut ipsa soluta cum. Enim tenetur est ut suscipit ut quia doloremque repellendus. Autem nobis ut dolores in ipsum illum voluptatem fugit.</p><p>Eveniet asperiores mollitia voluptatum iusto est. Quia nemo aliquid aut quos.</p><p>Consectetur laudantium non asperiores esse neque nihil. Sit quia ut quis quia. Qui esse vero et officiis eum eos aliquid.</p><p>Cumque esse nostrum ab nam reiciendis. Est provident perferendis aut dolorem accusamus. Tempora maiores in voluptatem sit maiores cum ex et.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(5, 2, 2, 'Omnis hic doloremque est consequatur dolore qui dolores doloremque.', 'at-in-excepturi-provident-accusantium-reiciendis-vitae-dolores', 'Culpa quo numquam ab optio animi. Eos iusto maxime ut commodi neque suscipit. Nostrum voluptatum aliquam accusantium itaque.', '<p>Consectetur quibusdam illo dolores aut nihil aspernatur. Tempore eius expedita non quisquam eligendi. Blanditiis ipsa molestias libero veritatis repudiandae.</p><p>Rerum ut quia quia sed. Dolorum in suscipit quia tempore illo. Quis est enim exercitationem.</p><p>Ut officia autem commodi. Occaecati mollitia corporis incidunt temporibus eum aut. Odio fugiat commodi est nisi ut odit ducimus.</p><p>Eum et recusandae sit consequuntur. Dolores non porro deserunt in officiis delectus. Aut sed consequuntur officiis necessitatibus at ullam fugiat.</p><p>Voluptatem enim nihil porro quod omnis est. Voluptatibus enim sunt a debitis qui earum. Tenetur perspiciatis labore dolorum ipsa et et.</p><p>Deserunt vitae totam nostrum et rerum assumenda sit dolorem. Qui dignissimos asperiores molestiae aut et atque aut aliquam. Voluptatum ipsum molestiae aperiam ad voluptatem et odit.</p><p>Eos quae libero nisi qui cupiditate inventore cumque. Nihil debitis veniam ea repellat quos. Quia numquam totam hic magni commodi ea pariatur.</p><p>Animi qui omnis dolorum vel. Ut autem quidem suscipit qui. Numquam provident est consequatur ea ut. Vel in iusto quia dignissimos repellendus error id.</p><p>Corrupti temporibus iste facere totam error deleniti. Repellendus placeat soluta non voluptatem. Est soluta quae temporibus ut expedita. Qui sed dolores beatae sit dolores.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(6, 2, 3, 'Dolorem blanditiis laudantium aut ipsum.', 'quis-sit-exercitationem-aut-magni-et', 'Et ut temporibus consequatur ut ipsum. Animi provident hic beatae sint. Molestiae dolor sequi molestias porro quia alias voluptas. Vero odit officia aliquid omnis eos dolorem.', '<p>Nam reiciendis corrupti ut qui. Perspiciatis sint delectus odit at qui ab nesciunt. Ut nobis impedit ex perspiciatis. Ut dolorum quaerat officiis.</p><p>Et neque ut suscipit est et. Facilis nobis et occaecati aut error exercitationem minus nihil. Sit dolorem minus aut eum facilis.</p><p>Vitae qui earum ut. Quae dicta est id et odit inventore. Reiciendis occaecati deserunt quia. Et ea impedit aperiam enim sequi officiis reiciendis.</p><p>Recusandae sint veniam asperiores totam voluptatibus non in. Repellendus velit nemo aut. Mollitia ut rerum eum voluptatum voluptates omnis non dolorem. Officiis aspernatur dolore ut temporibus. Amet quia et nemo possimus quis.</p><p>Eum cum asperiores impedit mollitia. Fuga sit maiores omnis id eligendi velit qui. Dolor quis minus asperiores illo in dolore.</p><p>Consectetur dolorem voluptatibus officiis facere. Optio aut enim est omnis aut neque ipsa. Qui voluptas laudantium ex excepturi sequi unde. Voluptas et sequi voluptas eum reprehenderit laborum perspiciatis.</p><p>Vero maxime sit aut praesentium. Commodi et est numquam nihil ex. Harum illo est dicta qui ratione. Sequi quaerat ipsa maxime quo dolor.</p><p>Unde quia voluptas ipsam cupiditate architecto alias. Repellendus recusandae autem ipsam quam fugit ducimus. Voluptas nihil voluptatem a molestiae ut.</p><p>Magni dolores doloribus porro aut iste dolorem quibusdam. Doloribus consequatur quae deserunt. Animi modi fugit sapiente est pariatur. In doloremque accusamus vel maiores consequatur eius.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(7, 1, 2, 'Deleniti earum sed ex eum dicta ad sit.', 'amet-quasi-ex-explicabo-quasi', 'Ipsam enim veniam vero non nisi. Animi fugit pariatur quod iste et. Consequuntur quibusdam sint est molestiae.', '<p>Architecto eaque dolorem id ut. Hic unde incidunt minus quis. Voluptatem maxime velit et eaque et.</p><p>Quae et tenetur totam id quidem magnam. Laudantium quod est fugiat aut omnis quasi maiores. Harum aut quisquam eveniet inventore molestiae nostrum ut.</p><p>Incidunt dolorum deleniti qui. Vero vitae corporis voluptates veritatis dolore. Voluptatem nemo voluptate alias quibusdam voluptatem. Ex ut in odio deleniti in ut.</p><p>Sequi cum minima ad sunt omnis eaque tempora. Soluta rerum similique dolor consectetur velit rerum dicta. Quia aut dolores velit autem amet. Necessitatibus enim sapiente velit quod. Ut qui ipsa molestiae cupiditate est consequatur corporis.</p><p>Nobis aut itaque asperiores repellendus. Doloremque sapiente ex porro laboriosam animi ut aut illum. Neque nulla quam dolor repellendus et maxime voluptatem.</p><p>Sunt odio autem id. Est corporis occaecati facilis doloribus. Quia ut nihil expedita nihil.</p><p>Earum possimus voluptatem adipisci. Voluptatem cum asperiores vel. In unde aut voluptatum est.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(8, 2, 3, 'Qui nihil optio.', 'dolores-ut-est-ut-facere-consequatur-non', 'Et nulla neque et dolor a mollitia porro. Dolore molestiae sint et omnis. Neque est labore et cumque. Porro quia dolore culpa iste sit voluptate dignissimos.', '<p>Cumque omnis officia sapiente quod reprehenderit velit. Quia quaerat exercitationem et in quia quia. Voluptatem eaque aut vitae totam tempora ullam.</p><p>Aliquid in nihil sed nam est deserunt mollitia fugiat. Omnis nostrum quo iusto ea unde architecto aut. Accusamus ut quod non inventore. Ullam laboriosam adipisci sunt ipsum rerum ipsum officia.</p><p>Velit quis est rerum expedita. Consequatur ut culpa iure et repellendus placeat. Autem maxime repellendus repellendus mollitia placeat deserunt. Voluptate eius quibusdam praesentium iusto ipsum.</p><p>Dignissimos voluptatem doloremque quos illum quisquam alias. Ab totam tempora voluptas. Assumenda et aut aliquam maiores magni aliquam aut. Et ad adipisci aut quasi accusantium.</p><p>Voluptatum qui sit voluptas magni in. Ut est eius sequi quia voluptatem. Quasi nulla dolore impedit nam.</p><p>Maiores cumque deleniti qui omnis. Doloribus quia qui et. Molestias et voluptatem et accusamus.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(9, 1, 1, 'Hic quo deleniti id aliquid enim.', 'autem-excepturi-ut-delectus-est', 'Possimus magnam repellendus sit qui. Fugit ut odit nesciunt placeat rerum ipsam et. Non doloribus alias ut voluptatem nobis ea beatae.', '<p>Delectus aut repudiandae consequatur. Architecto saepe recusandae quas temporibus. Qui sunt molestiae iusto veritatis quasi dolorem.</p><p>Laboriosam modi beatae deserunt fuga laudantium exercitationem. Suscipit est quia repellat voluptate et quis et. Enim ipsam modi qui perspiciatis. Voluptatum beatae rerum hic veritatis.</p><p>Enim enim sint non quidem praesentium. Ut recusandae unde quos ad. Et quis quasi veritatis autem. Beatae quis officia tempore sapiente quae necessitatibus.</p><p>Quia repudiandae quam quasi quae. Facere rerum tenetur iste quis sint possimus veritatis. Consequatur non occaecati nobis eaque accusantium ut omnis. Nisi earum delectus et facilis nisi.</p><p>Exercitationem mollitia dicta perferendis aut. Odio aut consequuntur consectetur et sint. Ipsum velit labore expedita fugiat omnis accusantium rerum. Cumque pariatur quia et totam ex. Magnam voluptatem occaecati neque et autem.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(10, 2, 2, 'Occaecati quisquam aspernatur soluta sapiente esse.', 'veritatis-voluptatibus-quia-voluptatum', 'Aut sint quod corrupti ea similique nihil. Omnis similique occaecati dolor enim voluptatem explicabo quisquam. Eligendi distinctio sapiente voluptatum ipsa.', '<p>Accusamus molestiae dolor voluptatum quidem quis rerum. Incidunt cum et omnis dolores incidunt. Consequatur incidunt maxime amet est vel enim sit nihil. Blanditiis ullam doloribus debitis at blanditiis quia.</p><p>Nesciunt asperiores qui recusandae aut laudantium corporis. Repellendus dignissimos delectus veniam possimus. Temporibus ab mollitia molestiae enim temporibus.</p><p>Non libero reprehenderit temporibus asperiores non. Animi necessitatibus ut quia iste vel ea voluptatem. Est non iure dolorem. Illo quia minima consequatur dignissimos doloremque vel aut.</p><p>Voluptate et atque ea omnis. At doloremque temporibus odit pariatur. Voluptas enim aut sapiente rerum ducimus reprehenderit enim. Amet at non sunt nesciunt.</p><p>Dolorem reiciendis veritatis recusandae quia veritatis. Soluta et facere deserunt facilis adipisci nobis.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(11, 2, 2, 'Perspiciatis ab.', 'vel-fugiat-dolor-sed-non-libero-molestiae-dignissimos-ullam', 'Eum repellendus doloremque sapiente consequatur. Vel dignissimos voluptatem tempora aut inventore accusamus rerum aut. Vel qui iure iste. Similique eius distinctio enim libero tempore dolorum iste.', '<p>Provident et explicabo dolorum saepe voluptatibus. Eos quod deserunt enim numquam quisquam minima et. Reiciendis sit qui esse iusto.</p><p>Ipsam nesciunt sequi voluptas voluptatibus blanditiis. Consequatur quia at qui ut voluptatum aut. Maiores distinctio ut non sed dolorem mollitia.</p><p>Soluta saepe repellat animi quasi soluta quod ipsum velit. Aspernatur fugiat quis quasi velit. Veritatis nobis quidem provident quia dolor.</p><p>Perferendis ipsa quia et provident ipsum praesentium debitis. Excepturi ab consequuntur culpa ut voluptas molestiae et. Dolores doloremque ullam fugiat sapiente quia libero esse. Dicta possimus quaerat tempore quasi. Debitis numquam enim pariatur vel.</p><p>Sit nam labore blanditiis nihil. Quia ut quo at. Est ad et aperiam est dolorem minus corporis. Minima qui vel quibusdam modi dolores.</p><p>Ducimus illum magni praesentium nesciunt et. Ut tempora incidunt placeat aliquid ratione consectetur. Velit sit nam quia ut qui tempora. Soluta eligendi magnam magnam aspernatur ex in.</p><p>Velit numquam est debitis. Possimus enim vel quidem quam autem aut velit. Nobis suscipit quo ut nobis voluptatem. Illum labore perferendis excepturi nemo explicabo.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(12, 2, 3, 'Cum qui est tempora asperiores ratione.', 'enim-exercitationem-incidunt-officia-necessitatibus-nobis-tempore', 'At atque quidem et nulla sint non recusandae. Nostrum omnis iusto repudiandae ratione.', '<p>Est maxime iure eius cupiditate autem voluptas. Voluptas veniam voluptatibus nostrum vel ad hic doloribus. Laboriosam nihil laudantium sunt veniam tempora aut ducimus. Cumque odio aliquam ut quam voluptatem.</p><p>Expedita mollitia nemo eum saepe optio. Dolore rerum ab assumenda voluptatem nulla rem. Iure ullam consequatur occaecati accusamus nam aut pariatur.</p><p>Aut labore adipisci eligendi iure distinctio rem voluptatibus. Et nostrum nihil quam facere est. Qui qui dolores eum. Autem omnis quasi facere laborum sed accusantium.</p><p>Ea commodi ea minus porro enim deserunt sit qui. Non rerum doloribus ut et ipsum.</p><p>Ipsa voluptatum dolor et. Et aspernatur nihil ut fugit distinctio laudantium. Sed et sunt consectetur esse.</p><p>Est ut rem veritatis nisi ducimus officia nostrum. Ut laborum quasi officia ad et itaque. Sapiente enim sint fuga iure explicabo. Nam ut ex minus tempora.</p><p>Rerum rem nobis debitis velit eos neque. Tempore perspiciatis molestiae rerum fugit aspernatur repellendus aut. Odio molestias vitae sunt.</p><p>Dolor porro qui velit aut eius. Nostrum voluptas explicabo est sint rerum temporibus totam. Commodi autem ducimus autem dolorem veniam.</p><p>Consectetur sint voluptatem error et voluptatum tenetur. Dolor quis cupiditate perspiciatis omnis ipsa dignissimos. Velit dolorem rerum tempora voluptatem cum ad. Aut voluptatibus occaecati ea non error modi voluptatum. Et repellendus officiis eos inventore in ut.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(13, 2, 3, 'Eum accusantium.', 'aut-quo-nihil-ut', 'Aliquam porro ipsum aut blanditiis enim magni soluta. Sit quia perspiciatis est quaerat sit sit. Et dolor aut laborum ea et qui velit.', '<p>Aut iure est odio enim vel. Excepturi velit cum deleniti porro. Doloremque eum a id rerum et. Molestiae nostrum reiciendis aliquam aliquam qui eum velit.</p><p>Ratione ut et nemo eum id blanditiis. Recusandae est odit repudiandae est sunt minima est. Unde quam saepe eos eum id quia et molestias. Necessitatibus minus facere in nulla alias eveniet error.</p><p>Sunt ut aut sint suscipit est earum quisquam. Saepe expedita aut labore perferendis quibusdam. Est est cupiditate labore assumenda.</p><p>Suscipit omnis et itaque sint. Perspiciatis non quibusdam dolorem officia omnis et sunt laboriosam. Dolorum ut velit nemo qui cum.</p><p>Est iusto numquam consectetur qui. Quaerat doloribus accusantium quia delectus quis quos in. Est corrupti aliquid nesciunt qui. Sed eaque atque quos.</p><p>Nisi et est dolorem sed laudantium autem. Voluptas doloremque culpa dolores quam dolorum. Ea enim et perspiciatis consequatur enim iure.</p><p>Eveniet est cupiditate ea reiciendis amet dignissimos laboriosam. Iusto animi perspiciatis quia repellat consequatur architecto eveniet. Officia adipisci et modi sit provident animi. Quis tempore sit ea aliquid voluptatem non.</p><p>Magni mollitia cupiditate inventore autem quia. Voluptatem nihil excepturi distinctio cumque soluta omnis. Sit repudiandae dolore atque.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(14, 2, 3, 'Id nihil dicta quibusdam et voluptas molestias error.', 'est-doloremque-iusto-eveniet', 'Qui ducimus est id voluptatem eos quibusdam non. Sit ut nulla possimus pariatur dolore repellat. Dolorum aliquam est non quis ratione. Exercitationem nihil et necessitatibus non dolorem. Repellendus optio hic corrupti.', '<p>A sit dignissimos iste nihil ipsam. Laboriosam optio nam dolorem pariatur. Non atque voluptatem placeat dolorem rerum non.</p><p>Minus eveniet in sed saepe et voluptatem. Qui et quis delectus ab natus cum maiores. Consequatur quos omnis voluptatum enim. Repellendus et et nisi et nisi similique repudiandae.</p><p>Repellendus exercitationem at non impedit sequi doloremque. Maiores qui sapiente corrupti sint. Necessitatibus soluta voluptatem voluptas est et voluptatem consequatur. Similique expedita accusantium eius est.</p><p>Et est distinctio ex quo minus. Temporibus occaecati dicta veritatis recusandae sit possimus. Quis quisquam a ab porro. Sit sunt nemo et.</p><p>Delectus iure optio quia voluptas. Suscipit id hic ipsa aut nihil. Sed dolore eius ut et ut. Corrupti voluptatem totam illo.</p><p>Modi modi at et doloremque pariatur. Quam omnis qui tenetur soluta.</p><p>Ut quos quod enim quibusdam ab. Eligendi consequatur at neque sed totam aliquam. Laboriosam atque dolores deserunt aut rerum ut. Est qui non minus reprehenderit nemo consequatur.</p><p>Ex sit delectus sed quam deserunt nisi qui. Quam quae labore natus voluptatem velit non. Exercitationem sint in itaque quia. At aut adipisci eos at sequi.</p>', NULL, '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(15, 1, 2, 'Hic ratione ea repudiandae.', 'et-perspiciatis-earum-consequatur-est-pariatur-ea-sit', 'Ea delectus facilis et. Laudantium natus enim tempora inventore aspernatur minus velit. Consequatur temporibus dolor accusamus laborum aperiam.', '<p>Culpa quasi a illum mollitia. Ut repellat ut beatae eveniet asperiores quia. Aut velit est voluptatem autem sit enim.</p><p>Voluptatem quia eum sed. Dolorem ut ut quisquam voluptatibus ea ipsum culpa ut. Consequatur consequatur libero eaque quaerat. Autem iure sequi architecto sit eum.</p><p>Ipsam qui quia facilis voluptatibus minus. Ut minima cum aut libero vel voluptatem repudiandae. Assumenda quam consequatur ratione aut at tenetur cumque. Maiores assumenda ut vero inventore numquam incidunt iste. Doloribus quam iure ut est occaecati.</p><p>Ut consectetur voluptatem est cupiditate. Vel atque dolorum laudantium velit sint veniam sed. At nemo provident nam occaecati aliquam nihil. Ad praesentium et excepturi magnam nam.</p><p>Ipsum eius possimus quia mollitia quia. Quasi ut neque pariatur non in. Atque odio mollitia enim perspiciatis corrupti quasi. Nostrum laborum nulla soluta rerum. Quis rem sunt dolorem dolor.</p>', NULL, '2022-11-08 10:30:57', '2022-11-08 10:30:57'),
(16, 1, 3, 'Veritatis nisi voluptate sed modi ut omnis.', 'earum-ut-a-temporibus-occaecati-et', 'Omnis voluptatem quia odio esse rerum ratione qui. Porro est ullam hic eos consequatur consequatur omnis fugit. Excepturi rerum ducimus quasi. Ipsam occaecati adipisci distinctio non.', '<p>Deleniti explicabo et rerum distinctio delectus. Non sed totam ipsa molestiae nam amet velit commodi. Autem illo dolor earum. Itaque deserunt accusamus ratione tempore dolores voluptate nobis.</p><p>Et ipsam non harum et laborum vitae voluptate. Voluptates eius nihil ex qui sint vitae. Deserunt repellendus quo ad sunt est facilis consequatur maiores. Non id omnis dolores nihil voluptas molestiae.</p><p>Nemo libero nihil ut aut maiores. Sit excepturi voluptatem quia. Laboriosam odit nulla necessitatibus repellendus voluptas laudantium dolor. Occaecati officiis et magnam ea ipsam.</p><p>Rerum et libero harum harum eius et voluptate non. Exercitationem libero esse ipsum velit est neque. Et quisquam velit ut sunt nihil dicta. Nam tempora et qui distinctio dignissimos ea eum.</p><p>Excepturi neque tempora aliquid sint. A dolor optio qui fugit. Eum praesentium aut rerum dolorum.</p><p>Est molestias ea rerum incidunt et labore qui voluptatibus. Ipsam adipisci doloremque accusantium est ut a. Aliquam reprehenderit id et nesciunt sunt est et.</p><p>Id odit odio rem impedit cupiditate vitae ullam et. Hic qui aperiam perspiciatis temporibus cumque sit praesentium. Voluptatem asperiores et architecto.</p>', NULL, '2022-11-08 10:30:57', '2022-11-08 10:30:57'),
(17, 2, 1, 'Non facere aliquam nam amet quas illum sint atque dolorem deleniti.', 'et-error-labore-illo-tenetur-earum-est', 'Sed incidunt omnis omnis. Id nihil non distinctio aliquam vitae ducimus.', '<p>Libero nostrum tempore voluptate repellendus qui quae. Fugiat corporis non dolorum quaerat est quam asperiores aliquid. Facere rerum iusto dolores quo quis. Animi cum odio iste nostrum.</p><p>Deleniti et repudiandae ea et. Sit magni non illo qui qui consequatur et. Nobis deserunt molestiae enim adipisci. Deserunt neque commodi aut. Explicabo aut perspiciatis corporis dolor asperiores qui.</p><p>Quia debitis nam provident officiis et rerum. Quaerat expedita sint amet voluptas. Nisi quis quae qui nam.</p><p>Incidunt at quia libero et nihil ut aut et. Repellat itaque beatae suscipit corrupti facere itaque. Earum ratione veritatis et reprehenderit perspiciatis. Occaecati unde tempora accusamus doloremque.</p><p>Enim saepe blanditiis dicta a consequuntur. Omnis provident sunt vitae impedit omnis rerum. Quas deleniti qui quod unde error esse et. Unde exercitationem quo laudantium delectus enim optio. Enim repellendus impedit aut amet itaque maxime repellendus.</p><p>Eaque cum velit aut consequatur nulla. Suscipit omnis iste ipsum dignissimos quidem placeat. Quis aut dignissimos recusandae voluptatibus hic occaecati. Illum illo fugiat voluptatum id.</p><p>Commodi quibusdam numquam deserunt est sunt. Libero aperiam blanditiis ut ut est in enim. Iste nostrum non cum. Voluptatem velit est sit eligendi deleniti ut et.</p><p>Illum facilis distinctio rerum impedit. A est sint occaecati quasi quae quae sit praesentium. Quam quam ut fugit. Sequi architecto tempora rerum nulla omnis voluptas.</p><p>Temporibus delectus voluptatem impedit odio. Itaque et eligendi adipisci. Nam explicabo occaecati maxime.</p><p>Officiis officiis accusamus quis quidem incidunt doloremque saepe. Omnis dolor totam quia. Natus repellendus et aliquid sequi.</p>', NULL, '2022-11-08 10:30:57', '2022-11-08 10:30:57'),
(18, 2, 3, 'Eum veniam eligendi aut et fugit accusamus et porro sit quis.', 'aperiam-necessitatibus-rerum-sed-perspiciatis-iste', 'Accusamus libero unde at nulla est sed. Quis quos assumenda qui corporis. Ut iure ut saepe delectus tempora. Aut recusandae sit quos.', '<p>Quod dolorem deleniti quaerat vitae ab officia ut. Excepturi non sed et tempora ducimus enim. Aut neque cum iste omnis ut est. Sint consectetur adipisci mollitia enim sed temporibus.</p><p>Consequuntur dolore sed quibusdam iusto consectetur odio aut. Aut eligendi modi est explicabo minus molestiae. Et labore qui iusto quam. Suscipit nulla iste et qui.</p><p>Voluptas quidem dolores et. Quaerat perferendis qui sapiente qui et fugit. Vel placeat dolor hic et assumenda omnis est dolores.</p><p>Sed nihil et quo reiciendis aut quae non. In natus enim qui quod occaecati sunt. Eligendi dignissimos ut occaecati porro officiis quod. Quia officiis veritatis blanditiis dolore incidunt iste.</p><p>Facilis consequuntur deserunt voluptatibus veritatis vel nam. Fuga magni et velit officiis. Illo aut incidunt delectus commodi natus molestiae. Hic deleniti veritatis quis consectetur distinctio tempore.</p><p>Tenetur quod veritatis sunt corporis eos veniam laborum. In asperiores magni nihil nobis expedita. Architecto provident est sit et error exercitationem debitis placeat. Iste totam itaque sit in rerum et velit.</p>', NULL, '2022-11-08 10:30:57', '2022-11-08 10:30:57'),
(19, 1, 1, 'Quisquam ea similique vitae atque voluptatum aut.', 'sunt-nesciunt-error-omnis-aut-quaerat', 'Maiores maxime tempora repellendus nesciunt quo et. Voluptas est doloribus fugiat numquam quas. Consectetur facere sit non dolore expedita ut veniam. Et sit sit vitae numquam quae.', '<p>Qui officia quisquam assumenda sunt eveniet reprehenderit. Iusto voluptas sed reprehenderit aliquid ab eligendi. Voluptates dignissimos aut magnam ut et deleniti cumque expedita. Non assumenda ut ipsam rem dolorem.</p><p>Voluptatem doloribus est repellat quos eius voluptatem unde. Dignissimos deleniti hic optio quo. Modi in repudiandae totam omnis.</p><p>Ratione recusandae aut qui illum et nemo. Sunt accusamus voluptas vero amet repellendus harum dolor molestiae. Deleniti repudiandae at voluptatem enim quis.</p><p>Voluptatem aliquid quibusdam aspernatur rerum omnis blanditiis. Esse qui accusantium ipsa soluta sint quibusdam enim. Eveniet ad ea consequatur quasi temporibus deleniti quia.</p><p>Aliquam tempora perspiciatis a quis dicta maxime. Consequuntur harum et autem temporibus nihil est fugiat. Praesentium consequuntur sunt non et. Aut id sapiente vitae non est id magnam.</p><p>Vel magni occaecati aut nostrum sunt rem quidem repellat. Aliquid distinctio earum et non. Dolorem magni sequi blanditiis ea nemo.</p><p>Doloremque id doloribus placeat earum officiis fugit. Reprehenderit magni repellendus exercitationem odio. Sed aut consequatur laboriosam natus velit inventore. Et id quis illum nemo.</p><p>Ipsum quas eveniet sequi illo voluptas. Veniam molestias animi consequatur quidem. Rerum dolorem labore nesciunt.</p>', NULL, '2022-11-08 10:30:57', '2022-11-08 10:30:57'),
(20, 1, 1, 'Est voluptatibus unde mollitia placeat libero.', 'ut-dolorem-velit-natus-aut-eligendi', 'Qui sunt ipsum cum numquam. Id repellendus odio amet ut et maxime. Perspiciatis voluptas inventore id laudantium illo.', '<p>Officia qui et corporis repellat perferendis harum error rerum. Libero quisquam totam cupiditate.</p><p>Sit aliquam quaerat et eveniet qui pariatur. Dolores quibusdam dolorum numquam mollitia magnam. Voluptas quo placeat consequatur explicabo deleniti nesciunt unde repellendus.</p><p>Totam dicta sed recusandae et sit quo sit. Expedita voluptates doloribus officia est ut assumenda. Exercitationem qui voluptatem quis officia atque ratione dolore.</p><p>Delectus laborum quia nostrum sequi. Inventore rerum fugiat corporis et ullam. Debitis et sunt temporibus. Commodi magni nesciunt molestiae dicta quas.</p><p>Tempora molestiae tempora iste quia aliquid. Illum esse numquam odit dolores delectus. Facilis quis doloremque quae voluptates labore vitae maxime quas. Consequuntur rerum non architecto eos consequuntur aspernatur.</p><p>Quae quidem possimus et alias ipsam in. Explicabo vitae ullam ad incidunt corporis.</p><p>Sunt in ipsam sint autem commodi quaerat quam. Itaque rerum rerum consequatur ut unde sapiente. Similique vel inventore autem repellendus.</p><p>Vel dignissimos quidem delectus vero. Harum assumenda quia aut est ut quo eius esse. Enim recusandae maiores ut commodi. Ut illum ut velit nulla non qui repellendus. Dolor eaque natus voluptatem voluptas voluptatem.</p><p>Enim accusantium qui enim dolore dolores corrupti maxime. Vero sequi possimus nam. Est similique sint dolores quae. Iste eligendi quibusdam rerum dolor voluptatum sit.</p>', NULL, '2022-11-08 10:30:57', '2022-11-08 10:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dewi Maryati', 'alambana79', 'cnurdiyanti@example.org', '2022-11-08 10:30:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Md0PTQek29', '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(2, 'Kalim Najmudin', 'bputra', 'cahyadi.prasetya@example.org', '2022-11-08 10:30:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mYsQaDXemB', '2022-11-08 10:30:56', '2022-11-08 10:30:56'),
(3, 'Jono Wijaya S.IP', 'jailani.kani', 'wijayanti.ade@example.net', '2022-11-08 10:30:56', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vIdZQoIBxo', '2022-11-08 10:30:56', '2022-11-08 10:30:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
