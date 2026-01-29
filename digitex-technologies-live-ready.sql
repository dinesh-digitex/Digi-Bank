-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 16, 2026 at 06:11 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digitex-technologies-live-ready`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_script` text COLLATE utf8mb4_unicode_ci,
  `body_script` text COLLATE utf8mb4_unicode_ci,
  `footer_script` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authors_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `case_studies`
--

DROP TABLE IF EXISTS `case_studies`;
CREATE TABLE IF NOT EXISTS `case_studies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technology_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_tags` text COLLATE utf8mb4_unicode_ci,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_highlight_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_highlight_description` text COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversation_increase` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_views` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_app_purchase` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `case_studies_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_studies`
--

INSERT INTO `case_studies` (`id`, `title`, `slug`, `featured_image`, `featured_video`, `timeline`, `technology_tags`, `project_tags`, `website_link`, `content_heading`, `content_image`, `company_logo`, `company_highlight_heading`, `company_highlight_description`, `video`, `client`, `conversation_increase`, `screen_views`, `in_app_purchase`, `conclusion`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Samantha Knight', 'samantha-knight', 'storage/case_study/IMG_6968b1a268348.jpg', NULL, '2023, 2024', NULL, NULL, NULL, NULL, 'storage/case_study/IMG_6968b2768c3ea.jpg', NULL, 'Samantha Knight: Transforming Houses Into Home That Exudes Luxury And Functionality', 'Samantha Knight is an interior design company that operates in London as well as Mallorca, Spain. In this case study, we will take a look at Samantha Knight\'s digital transformation from 2021 to 2024, highlighting the struggles the company faced and the strategies put into action and the results they achieved.', NULL, 'Samantha Knight', '96', '75', '80', 'This case study demonstrates how our strategic digital marketing initiatives helped Samantha Knight to overcome challenges, establish itself as a distinct identity, and connect with their target\r\naudience on a deeper level. As Samantha Knight continues to inspire with their exquisite designs and unparalleled craftsmanship, we at Digitex Technologies remain committed to supporting their journey towards continued success in the competitive landscape of interior design.', 'active', '2026-01-15 03:51:38', '2026-01-15 03:55:10'),
(3, 'Kidz Corner', 'kidz-corner', 'storage/case_study/IMG_6968b3edc3c1c.webp', NULL, '2022, 2023, 2024', NULL, NULL, NULL, NULL, 'storage/case_study/IMG_6968b3edc5163.jpg', NULL, NULL, NULL, NULL, 'Talha', '96', '75', '80', 'Kidz Corner\'s journey with us since 2022 highlights the power of strategic digital initiatives in overcoming challenges and driving growth in a competitive market. With our innovative tactics for content creation, SEO, and website maintenance, Kidz Corner successfully enhanced its online presence, improved user interaction, and achieved notable results in customer satisfaction, digital growth, conversion rates, and search engine rankings.', 'active', '2026-01-15 04:01:25', '2026-01-15 04:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `case_study_challenges`
--

DROP TABLE IF EXISTS `case_study_challenges`;
CREATE TABLE IF NOT EXISTS `case_study_challenges` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `case_study_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_study_challenges_case_study_id_foreign` (`case_study_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_study_challenges`
--

INSERT INTO `case_study_challenges` (`id`, `case_study_id`, `content`, `created_at`, `updated_at`) VALUES
(4, 2, 'Crafting A Website: The very first hurdle confronted by Samantha Knight was developing a website that could accurately portray the brand\'s ethos of barefoot elegance and minimalist style. Samantha Knight\'s vision demanded more than just a functional website; it necessitated an online platform that exuded sophistication, captivated visitors, and provided a seamless user experience. Crafting such a website required meticulous attention to detail, from the layout to the imagery, in order to ensure every aspect resonated with the brand\'s essence.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(5, 2, 'Establishing Brand Identity: In a saturated market brimming with competitors, Samantha Knight faced difficulty carving out a distinct identity that would set her apart from the crowd. The challenge lay not only in standing out amidst a sea of interior design firms but also in resonating with discerning clientele seeking authenticity and innovation. To succeed, Samantha Knight needed to cultivate a brand identity that spoke volumes about its values, aesthetic principles, and her unique approach to design. This demanded a strategic blend of creativity, consistency, and authenticity to capture the attention and admiration of potential clients.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(6, 2, 'Online Visibility: In the digital landscape, where myriad voices are constantly battling for attention, securing a prominent place in search engine results became paramount for Samantha Knight. With countless competitors competing for the spotlight, Samantha Knight aimed to position itself strategically to attract the right audience and foster brand recognition. This necessitated a comprehensive approach to search engine optimisation (SEO), including keyword research, content optimisation, and link building strategies to\r\nenhance online visibility and drive organic traffic to the website. Additionally, leveraging social media platforms and digital marketing initiatives played a pivotal role in amplifying Samantha Knight\'s online presence and expanding its reach to a broader audience.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(17, 3, 'Establishing A Strong Brand Presence: The children\'s clothing wholesale industry in the UK is fiercely competitive, with numerous established names and new brands coming up every day. Kidz Corner faced the challenge of differentiating itself from competitors and establishing a strong brand presence that resonated with its target audience.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(18, 3, 'Website Accessibility And Maintenance: Kidz Corner struggled with maintaining and optimising its website for accessibility and user experience. Technical issues, slow loading times, and navigation difficulties hindered the website\'s performance and accessibility, impacting user engagement and conversion rates.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(19, 3, 'Targeting The Right Audience: The company also faced difficulties in reaching and engaging with its ideal audience effectively. In a crowded digital landscape, it found it challenging to identify and target the right audience segments with tailored marketing messages.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(20, 3, 'Low Conversion Rates: Despite attracting traffic to its website, Kidz Corner experienced low conversion rates. Visitors were not effectively guided through the purchasing process, resulting in missed opportunities for sales and revenue generation.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(21, 3, 'Poor Search Engine Visibility: Kidz Corner struggled to rank prominently in search engine results for relevant keywords. Low visibility in search engines limited organic traffic to the website, reducing opportunities for brand exposure and customer acquisition.', '2026-01-15 04:07:15', '2026-01-15 04:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `case_study_credits`
--

DROP TABLE IF EXISTS `case_study_credits`;
CREATE TABLE IF NOT EXISTS `case_study_credits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `case_study_id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_study_credits_case_study_id_foreign` (`case_study_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_study_credits`
--

INSERT INTO `case_study_credits` (`id`, `case_study_id`, `role`, `name`, `created_at`, `updated_at`) VALUES
(5, 2, 'Client', 'Samantha Knight', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(6, 2, 'Creative Director', 'Sarkar.K', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(7, 2, 'Designers', 'Sarkar.K', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(8, 2, 'Developers', 'Sarkar.K', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(17, 3, 'Client', 'Md Talha', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(18, 3, 'Creative Director', 'S.Paul', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(19, 3, 'Designers', 'Sarkar.K, S.Paul', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(20, 3, 'Developers', 'Saubhik.M, Sarkar.K', '2026-01-15 04:07:15', '2026-01-15 04:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `case_study_results`
--

DROP TABLE IF EXISTS `case_study_results`;
CREATE TABLE IF NOT EXISTS `case_study_results` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `case_study_id` bigint UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_study_results_case_study_id_foreign` (`case_study_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_study_results`
--

INSERT INTO `case_study_results` (`id`, `case_study_id`, `content`, `created_at`, `updated_at`) VALUES
(9, 2, 'Intuitive Website: Samantha Knight\'s website emerged as a digital masterpiece, seamlessly blending aesthetics with functionality. Every element of the website was meticulously crafted to reflect the brand\'s ethics of barefoot elegance and minimalist style. Visitors were\r\ngreeted with a visually captivating interface, inviting them to explore Samantha Knight\'s world of timeless sophistication. From the layout to the navigation, every aspect of the website was designed to provide a seamless and immersive browsing experience. The intuitive design ensured that visitors could effortlessly explore the brand\'s offerings, learn about its philosophy, and engage with its content, fostering a deeper connection with the brand.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(10, 2, 'Google Ranking: Through our strategic SEO efforts, Samantha Knight achieved a prominent position on Google\'s first page for relevant keywords and search terms. This significant milestone brought the brand into the spotlight, enhancing its online visibility and attracting a steady stream of organic traffic to the website. By optimising content, meta tags, and other on-page elements, Samantha Knight\'s website became more discoverable to users actively searching for interior design services. The improved search engine ranking not only increased brand exposure but also reinforced Samantha Knight\'s credibility and authority in\r\nthe industry, positioning it as a trusted resource for discerning homeowners seeking elegant and sophisticated design solutions.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(11, 2, 'Brand Image: With an enriched online presence and a distinct identity, Samantha Knight solidified its position as an ambassador of quiet luxury in the interior design landscape. The website served as a digital showcase of Samantha Knight\'s unparalleled craftsmanship, attention to detail, and commitment to excellence. Through compelling visuals, captivating content, and a seamless user experience, the brand\'s narrative resonated deeply with homeowners who have a refined taste, evoking a sense of trust, admiration, and aspiration. Samantha Knight became known for understated sophistication, elegance, and timeless style, capturing the hearts and minds of its target audience and establishing itself as an\r\ninspiration in the world of interior design.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(12, 2, 'Reaching The Right Audience: Our targeted approach to digital marketing ensured that Samantha Knight effectively reached and engaged with the right audience who appreciated and sought out elegance, comfort, and sophistication in their living spaces. By understanding the preferences, needs, and aspirations of its target demographic, we were able to tailor its messaging, content, and offerings to resonate with potential clients on a deeper level. This alignment of brand values and audience expectations translated into high conversion rates, as visitors to the website were more inclined to explore Samantha Knight\'s services, engage with its content, and ultimately, become loyal customers. The targeted approach not only attracted quality leads but also fostered long-term relationships and brand loyalty, driving sustained growth and success for Samantha Knight.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(23, 3, 'Improved User Interaction: Through strategic digital marketing initiatives, including website optimisation and engaging content creation, we significantly enhanced user interaction on Kidz Corner UK Ltd\'s website. Streamlined navigation, informative product descriptions, and visually appealing imagery fostered greater engagement and increased the average time audiences spent on the site.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(24, 3, 'Enhanced Customer Satisfaction: Our efforts to optimise the website for accessibility and user experience resulted in improved customer satisfaction. Visitors found it easier to browse and shop for products, leading to a more positive overall experience with the brand.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(25, 3, 'Digital Growth: Kidz Corner experienced substantial digital growth as a result of our targeted digital marketing campaigns. They led to increased website traffic, expanded social media presence, and higher engagement rates, which in turn enhanced brand visibility and awareness among its target audience.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(26, 3, 'Increased Conversion Rate: Through conversion rate optimisation techniques, such as improving website usability, implementing persuasive call-to-action buttons, and optimising product pages, we successfully increased Kidz Corner\'s conversion rate. As a result more visitors were converted into paying customers, which led to higher sales and revenue.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(27, 3, 'Google First Page Ranking: Our comprehensive SEO strategies propelled Kidz Corner UK Ltd to achieve first-page rankings in Google search results for 22 relevant keywords. This improved search visibility boosted organic traffic to their website, increasing brand exposure and attracting qualified leads.', '2026-01-15 04:07:15', '2026-01-15 04:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `case_study_screens`
--

DROP TABLE IF EXISTS `case_study_screens`;
CREATE TABLE IF NOT EXISTS `case_study_screens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `case_study_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_study_screens_case_study_id_foreign` (`case_study_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_study_screens`
--

INSERT INTO `case_study_screens` (`id`, `case_study_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 2, 'storage/case_study/screen/IMG_6968b1a273344.webp', '2026-01-15 03:51:38', '2026-01-15 03:51:38'),
(2, 2, 'storage/case_study/screen/IMG_6968b1a273c13.webp', '2026-01-15 03:51:38', '2026-01-15 03:51:38'),
(3, 3, 'storage/case_study/screen/IMG_6968b54b78e37.webp', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(4, 3, 'storage/case_study/screen/IMG_6968b54b79ba3.webp', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(5, 3, 'storage/case_study/screen/IMG_6968b54b7a242.webp', '2026-01-15 04:07:15', '2026-01-15 04:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `case_study_sections`
--

DROP TABLE IF EXISTS `case_study_sections`;
CREATE TABLE IF NOT EXISTS `case_study_sections` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `case_study_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_study_sections_case_study_id_foreign` (`case_study_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_study_sections`
--

INSERT INTO `case_study_sections` (`id`, `case_study_id`, `heading`, `content`, `created_at`, `updated_at`) VALUES
(2, 2, 'Background:', 'Samantha Knight\'s passion for transforming heritage properties into opulent heavens garnered attention, establishing her as a leading name in the world of interior design in London. However, it was the allure of Mallorca, with its serene landscapes and authentic charm, that beckoned Samantha to expand her horizons. Thus, Samantha Knight was born, bridging the sophistication of British design with the understated elegance of Mallorcan\r\naesthetics.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(7, 3, 'Kidz Corner UK Ltd: One Stop Destination For Wholesale Kids Clothing In The UK', 'Kidz Corner UK Ltd is an UK-based e-commerce platform for retailers of children clothing for over a decade. This case study aims to explore the growth trajectory of the company from 2022 to 2024, highlighting the difficulties faced, the strategies implemented and their results.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(8, 3, 'Background:', 'Founded in 2009, Kidz Corner UK Ltd prides itself on offering a diverse range of high-quality apparel, from baby clothes to teen\r\nparty dresses, along with a collection of blank clothing for personalisation. With a commitment to maintaining a broad\r\ncollection line, fast delivery, and excellent customer service, the company wanted to carve a niche for itself in the competitive\r\nchildren\'s wear market.', '2026-01-15 04:07:15', '2026-01-15 04:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `case_study_strategies`
--

DROP TABLE IF EXISTS `case_study_strategies`;
CREATE TABLE IF NOT EXISTS `case_study_strategies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `case_study_id` bigint UNSIGNED NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `case_study_strategies_case_study_id_foreign` (`case_study_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_study_strategies`
--

INSERT INTO `case_study_strategies` (`id`, `case_study_id`, `headline`, `content`, `created_at`, `updated_at`) VALUES
(3, 2, '2021 - 2022', 'Website Development: In collaboration with Samantha Knight, Digitex Technologies, our digital marketing company in London, set out on a journey to create a digital space that mirrored the brand\'s essence. Meticulous attention was paid to every detail, from the layout to the imagery, ensuring a seamless user experience. The website emerged as a virtual gallery, showcasing Samantha Knight\'s portfolio in all its splendour. With intuitive navigation and captivating visuals, visitors were immersed in a world of high-end sophistication.\r\n\r\nWeb Maintenance And Hosting: After developing the website, our team assumed the responsibility of constantly nurturing it. Our regular maintenance efforts ensured the website remained pristine, free from glitches or downtime. Coupled with excellent web hosting services, this fostered trust and reliability, two crucial elements in the digital landscape.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(4, 2, '2022-2024', 'Social Media Optimisation: As one of the leading digital marketing companies in London, we recognised the power of social media as a catalyst for brand storytelling and curated a strategy to amplify Samantha Knight\'s exposure to a larger audience. Our team created engaging content, infused with the brand\'s ethics of elegance and comfort, to captivate audiences across social platforms like Facebook.\r\n\r\nContent Creation: With our expert team, content became the foundation of Samantha Knight\'s digital presence. Through skillfully crafted blogs and articles, the brand\'s story started to become popular. Each piece delved into the intricacies of design, offering insights into Samantha Knight\'s creative process. From the inspiration behind each project to useful tips for styling interiors, the content resonated with audiences, fostering connection and engagement.\r\n\r\nSearch Engine Optimisation: To secure a prominent position on search engines for Samantha Knight, our team implemented strategic steps. Through keyword research and optimisation techniques, we helped the brand climb the ranks, securing a coveted position on Google\'s first page. This heightened visibility not only boosted the brand\'s credibility but also ensured its presence was noticed by the right audience.', '2026-01-15 03:55:10', '2026-01-15 03:55:10'),
(11, 3, NULL, 'Content Creation: Our team at Digitex collaborated closely with Kidz Corner to develop a comprehensive content strategy tailored to its target audience. As a leading provider of digital marketing services in London, we crafted engaging and informative content, including blog posts, articles, product descriptions, and guides, designed to attract and educate potential customers about Kidz Corner\'s extensive range of products and offerings. By leveraging compelling storytelling, eye-catching visuals, and industry insights, we aimed to captivate audiences and drive interest in Kidz Corner\'s brand.', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(12, 3, NULL, 'Search Engine Optimisation (SEO): Recognising the importance of search engine visibility in driving organic traffic and increasing brand exposure, our team at Digitex implemented a robust SEO strategy for Kidz Corner. This involved in-depth keyword research to identify relevant search terms and phrases used by Kidz Corner\'s target audience. We optimised on-page elements such as meta tags, headers, and content,\r\nensuring alignment with targeted keywords to improve search engine rankings. Additionally, we executed off-page SEO tactics, including link building and local SEO optimisation, to enhance Kidz Corner\'s online authority and visibility in search engine results pages (SERPs).', '2026-01-15 04:07:15', '2026-01-15 04:07:15'),
(13, 3, NULL, 'Website Maintenance: Ensuring Kidz Corner\'s website remained functional, up-to-date, and user-friendly was paramount to its online success. Our team provided ongoing website maintenance services, including regular updates, security enhancements, and performance optimisation, to ensure their website operated seamlessly across all devices and browsers. We conducted thorough website audits to identify and address any technical issues or usability concerns, optimising the website for improved user experience and conversion rates. Additionally, our team monitored website analytics and performance metrics to track progress and identify areas for further improvement.', '2026-01-15 04:07:15', '2026-01-15 04:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_script` text COLLATE utf8mb4_unicode_ci,
  `body_script` text COLLATE utf8mb4_unicode_ci,
  `footer_script` text COLLATE utf8mb4_unicode_ci,
  `type` enum('blog') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_submissions`
--

DROP TABLE IF EXISTS `contact_submissions`;
CREATE TABLE IF NOT EXISTS `contact_submissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_submissions`
--

INSERT INTO `contact_submissions` (`id`, `name`, `email`, `phone`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Isaias Kertzmann', 'gerda93@example.org', '740-306-0672', 'Est ut aliquam itaque officia dolorum voluptas eum molestiae exercitationem.', 'Qui quis perferendis totam provident voluptas molestiae. Et iure eveniet voluptatum consequatur. Dolore illum occaecati sed facilis quo sunt.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(2, 'Prof. Patience Beer PhD', 'oda.wolff@example.com', '(620) 703-8574', 'Nihil aut optio est voluptates mollitia reiciendis.', 'Incidunt fugit temporibus earum sapiente. Facilis ratione perspiciatis in neque mollitia eius. Quos maxime accusantium harum nobis enim et. Pariatur quisquam qui provident accusamus.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(3, 'Fay Thompson', 'kshlerin.hayden@example.com', '+13253830406', 'Eum eum sit qui necessitatibus aut perspiciatis.', 'Placeat consectetur laborum nulla et et dignissimos voluptatem. Laborum ut voluptas cum voluptatem omnis. Nulla voluptatem optio placeat iusto quae. Quis et magni reprehenderit.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(4, 'Dr. Margarette Goldner PhD', 'zetta28@example.com', '(832) 526-3788', 'Iusto et sapiente numquam aliquam debitis voluptatem quis ut dolorum tenetur dicta.', 'Vitae pariatur hic nostrum numquam quidem incidunt recusandae. Alias quis quo soluta est iure. Et aliquam et veritatis ut eos in voluptas. Dolor et ratione est ab omnis.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(5, 'Adaline Schaefer', 'kautzer.christina@example.com', '(737) 989-9600', 'Eos corporis id autem distinctio voluptatem provident quibusdam recusandae nihil impedit sed qui quidem quidem magni dolorem.', 'Natus illo dolor quidem odio omnis qui quia labore. Autem neque consequuntur esse suscipit. Soluta ab facere inventore voluptate sed error at.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(6, 'Vance Abernathy', 'elna23@example.net', '518-979-6433', 'Sequi aliquam qui.', 'Ratione aliquam nobis qui. Ab labore quia unde. Consequatur temporibus molestiae occaecati est minus quia.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(7, 'Fidel Nader', 'joreilly@example.com', '+1.531.564.3884', 'Est earum illo modi pariatur voluptatem tempora.', 'Rem sint iusto eius. Sed dicta modi deleniti. Harum in quis vero voluptate. Exercitationem mollitia earum mollitia saepe vel nihil amet.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(8, 'Darron Schoen', 'belle.auer@example.org', '+1-351-924-3933', 'Tenetur molestias nisi tenetur voluptatum quia dicta sit.', 'Ut vel cum voluptas debitis autem. Velit facilis eum repellendus quisquam a voluptatibus. Maxime natus sit ut fuga.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(9, 'Prof. Peyton O\'Kon', 'wjenkins@example.net', '820-848-0708', 'Consequatur necessitatibus autem vel consequatur dolor consequatur omnis.', 'Accusantium dicta voluptate sint cum laborum et distinctio. Debitis et quas quidem sed. Ratione in aut amet ratione quidem in in vel.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(10, 'Kristy Gerhold MD', 'stiedemann.walter@example.net', '+1-815-650-2012', 'Et iste nihil quia ea impedit repellendus vel perferendis.', 'Et nesciunt impedit rem et iusto nesciunt aperiam. Qui et laborum qui et quam exercitationem accusamus. Distinctio velit impedit sequi blanditiis.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(11, 'Roy Bailey III', 'xschamberger@example.net', '+1.508.458.6900', 'Qui ut aperiam similique aut a qui soluta.', 'Similique a similique cumque. Sunt inventore totam ad ipsam est. Dolorem corrupti velit aut dolores doloremque reiciendis odio.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(12, 'Betsy O\'Hara', 'eddie06@example.com', '978.772.5746', 'Quia et architecto dicta eaque cumque illo fuga.', 'Mollitia eum hic rerum laborum cum velit sit. Est similique dolor quasi error qui culpa. Sit repellendus velit exercitationem nulla rem facere voluptatum.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(13, 'Celine Klocko', 'travis.mann@example.com', '+1.864.935.6615', 'Eveniet laudantium aut molestiae et culpa.', 'Aliquid non aspernatur vero in a aut repudiandae. Omnis sit tempore nobis rem sed est. Itaque doloremque inventore et laborum nemo aut.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(14, 'Ollie Konopelski', 'alisha62@example.net', '276-364-4784', 'Quas quia necessitatibus quis quae velit.', 'Maxime repellat non sed cum. Quia alias quae eligendi in voluptatem quis. Neque facere eaque accusamus voluptas ex reprehenderit. Accusamus qui enim magnam sequi necessitatibus in labore reiciendis.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(15, 'Freeman Braun', 'effie.denesik@example.com', '1-562-397-8478', 'Temporibus quas voluptate qui distinctio sit aliquam atque ipsum.', 'Quae aut debitis est voluptatem. Omnis voluptas quod provident dolor possimus sed corrupti.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(16, 'Mr. Carol Reichert I', 'ucummings@example.org', '+1-828-876-1537', 'Quia officia vel nobis quo et non quia repellendus et consectetur.', 'Et in sint iure necessitatibus saepe. Quasi accusamus numquam sapiente eius sequi illo rerum. Porro magnam suscipit minus voluptates quae sit.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(17, 'Ms. Bettye Schimmel', 'mertz.jerome@example.com', '(820) 654-9768', 'Praesentium perferendis officiis quia.', 'Explicabo asperiores nisi dolorem. Repellendus mollitia nostrum rerum ad enim quia voluptatem. Unde inventore tempora unde nostrum. Eaque illo quos qui fugiat.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(18, 'Angelica Streich', 'wdoyle@example.com', '1-201-759-2095', 'Quia deserunt fuga excepturi ducimus voluptates tenetur doloremque assumenda quos et qui molestias.', 'Tempore consequatur beatae facere optio odio. Autem neque eum reprehenderit at ducimus inventore necessitatibus. Eveniet quibusdam voluptatem tempore error numquam sit. Quod modi quia et mollitia alias sed.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(19, 'Miss Leanne Hansen', 'bins.felipe@example.org', '+17759018853', 'Deleniti quis occaecati est quia quaerat qui quia eveniet.', 'Qui ea minus repellendus quia ipsa odio ut. Voluptatem distinctio expedita nulla dolor rerum nam. Aspernatur nemo enim possimus incidunt quia nihil voluptas. Excepturi eveniet est voluptates. Tempora et cupiditate est corporis sunt quis cum.', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(20, 'Forrest Ruecker', 'green20@example.com', '+1-971-435-5030', 'Aspernatur fugit quae tempora fuga optio.', 'Tempore error sint numquam quis velit quis. Placeat consequatur maiores accusantium ex. Eius iste quaerat fugit sunt et.', '2026-01-15 06:51:54', '2026-01-15 06:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso2` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso3` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso2`, `iso3`, `phone_code`, `currency_name`, `currency_code`, `currency_symbol`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '+93', 'Afghani', 'AFN', '؋', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(2, 'Albania', 'AL', 'ALB', '+355', 'Lek', 'ALL', 'L', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(3, 'Algeria', 'DZ', 'DZA', '+213', 'Dinar', 'DZD', 'د.ج', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(4, 'Andorra', 'AD', 'AND', '+376', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(5, 'Angola', 'AO', 'AGO', '+244', 'Kwanza', 'AOA', 'Kz', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(6, 'Antigua and Barbuda', 'AG', 'ATG', '+1-268', 'East Caribbean Dollar', 'XCD', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(7, 'Argentina', 'AR', 'ARG', '+54', 'Peso', 'ARS', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(8, 'Armenia', 'AM', 'ARM', '+374', 'Dram', 'AMD', '֏', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(9, 'Australia', 'AU', 'AUS', '+61', 'Australian Dollar', 'AUD', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(10, 'Austria', 'AT', 'AUT', '+43', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(11, 'Azerbaijan', 'AZ', 'AZE', '+994', 'Manat', 'AZN', '₼', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(12, 'Bahamas', 'BS', 'BHS', '+1-242', 'Bahamian Dollar', 'BSD', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(13, 'Bahrain', 'BH', 'BHR', '+973', 'Dinar', 'BHD', 'BD', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(14, 'Bangladesh', 'BD', 'BGD', '+880', 'Taka', 'BDT', '৳', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(15, 'Barbados', 'BB', 'BRB', '+1-246', 'Barbadian Dollar', 'BBD', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(16, 'Belarus', 'BY', 'BLR', '+375', 'Ruble', 'BYN', 'Br', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(17, 'Belgium', 'BE', 'BEL', '+32', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(18, 'Belize', 'BZ', 'BLZ', '+501', 'Belize Dollar', 'BZD', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(19, 'Benin', 'BJ', 'BEN', '+229', 'CFA Franc', 'XOF', 'CFA', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(20, 'Bolivia', 'BO', 'BOL', '+591', 'Boliviano', 'BOB', 'Bs', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(21, 'Bosnia and Herzegovina', 'BA', 'BIH', '+387', 'Convertible Mark', 'BAM', 'KM', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(22, 'Botswana', 'BW', 'BWA', '+267', 'Pula', 'BWP', 'P', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(23, 'Brazil', 'BR', 'BRA', '+55', 'Real', 'BRL', 'R$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(24, 'Brunei', 'BN', 'BRN', '+673', 'Brunei Dollar', 'BND', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(25, 'Bulgaria', 'BG', 'BGR', '+359', 'Lev', 'BGN', 'лв', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(26, 'Burkina Faso', 'BF', 'BFA', '+226', 'CFA Franc', 'XOF', 'CFA', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(27, 'Burundi', 'BI', 'BDI', '+257', 'Burundian Franc', 'BIF', 'FBu', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(28, 'Cambodia', 'KH', 'KHM', '+855', 'Riel', 'KHR', '៛', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(29, 'Cameroon', 'CM', 'CMR', '+237', 'CFA Franc', 'XAF', 'CFA', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(30, 'Canada', 'CA', 'CAN', '+1', 'Canadian Dollar', 'CAD', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(31, 'Chile', 'CL', 'CHL', '+56', 'Peso', 'CLP', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(32, 'China', 'CN', 'CHN', '+86', 'Yuan', 'CNY', '¥', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(33, 'Colombia', 'CO', 'COL', '+57', 'Peso', 'COP', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(34, 'Costa Rica', 'CR', 'CRI', '+506', 'Colón', 'CRC', '₡', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(35, 'Croatia', 'HR', 'HRV', '+385', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(36, 'Cuba', 'CU', 'CUB', '+53', 'Peso', 'CUP', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(37, 'Cyprus', 'CY', 'CYP', '+357', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(38, 'Czech Republic', 'CZ', 'CZE', '+420', 'Koruna', 'CZK', 'Kč', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(39, 'Denmark', 'DK', 'DNK', '+45', 'Krone', 'DKK', 'kr', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(40, 'Egypt', 'EG', 'EGY', '+20', 'Egyptian Pound', 'EGP', '£', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(41, 'Finland', 'FI', 'FIN', '+358', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(42, 'France', 'FR', 'FRA', '+33', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(43, 'Germany', 'DE', 'DEU', '+49', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(44, 'Greece', 'GR', 'GRC', '+30', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(45, 'India', 'IN', 'IND', '+91', 'Indian Rupee', 'INR', '₹', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(46, 'Indonesia', 'ID', 'IDN', '+62', 'Rupiah', 'IDR', 'Rp', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(47, 'Ireland', 'IE', 'IRL', '+353', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(48, 'Israel', 'IL', 'ISR', '+972', 'Shekel', 'ILS', '₪', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(49, 'Italy', 'IT', 'ITA', '+39', 'Euro', 'EUR', '€', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(50, 'Japan', 'JP', 'JPN', '+81', 'Yen', 'JPY', '¥', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(51, 'United Kingdom', 'GB', 'GBR', '+44', 'Pound Sterling', 'GBP', '£', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(52, 'United States', 'US', 'USA', '+1', 'US Dollar', 'USD', '$', 'active', '2026-01-14 08:57:38', '2026-01-14 08:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority_order` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `priority_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is the monthly fee for digital marketing?', 'How much you have to pay us monthly will depend on the range of services you require and the complexity of your business. Our packages in the UK are extremely affordable and provide fantastic ROI.', 13, 'active', '2026-01-15 00:47:23', '2026-01-15 01:06:17'),
(2, 'What is SEO in digital marketing?', 'SEO stands for Search Engine Optimisation. This refers to the practice of improving a website\'s visibility and ranking in search engine results pages (SERPs) for relevant keywords. It requires optimising various aspects of a website, including its content, structure, and technical elements, to make it more appealing to search engines and users, ultimately driving organic (non-paid) traffic to the site.', 12, 'active', '2026-01-15 00:47:54', '2026-01-15 01:06:17'),
(3, 'What are the 4 types of SEO?', 'On-Page SEO, Off-Page SEO, Technical SEO, and Local SEO are the four types of SEO services we offer. We use these SEO techniques to target and enhance various aspects of a website so as to enhance its visibility on SERPs and drive more traffic.', 11, 'active', '2026-01-15 00:48:07', '2026-01-15 01:06:17'),
(4, 'How many types of digital marketing services do you offer?', 'As a <a href=\"https://www.digitextechnologies.com/london/digital-marketing-agency/\">digital marketing company in London</a>,\r\n we offer a range of digital marketing services, such as – SEO, PPC, \r\nCRO, Email Marketing, Social Media Marketing, Content Marketing and \r\nmore. Each of these can be further broken down into subcategories and \r\nthen combined to create fully comprehensive campaigns.<br><br>Other than digital marketing, we also offer custom software design and development services, including e-commerce solutions.', 10, 'active', '2026-01-15 00:55:08', '2026-01-15 01:06:17'),
(5, 'What is custom software development?', 'Custom software development refers to the \r\nprocess of developing tailored software applications for specific needs \r\nof a particular business, rather than using pre-packaged solutions. \r\nUnlike a one size fits all approach, they address specific requirements \r\nand goals of a business.', 9, 'active', '2026-01-15 00:55:35', '2026-01-15 01:06:17'),
(6, 'How to choose the best ecommerce SEO agency in the UK?', 'To choose the best <a href=\"https://www.digitextechnologies.com/services/ecommerce-seo-agency/\">ecommerce SEO agency</a> in the UK, look for a company that has a good track record and \r\nexperience with businesses similar to yours. This will ensure that you \r\nreceive guaranteed ROI.<br><br>If you are looking for the best ecommerce\r\n SEO agency in the UK, we believe we are the best choice! We have worked\r\n with hundreds of ecommerce businesses in the UK in the last fourteen \r\nyears, propelling them towards their goals. This experience has helped \r\nus gain a good understanding of ecommerce businesses in the UK, which is\r\n why we offer tailored SEO solutions to ecommerce businesses that \r\nimprove their visibility on SERPs and drive sales.', 8, 'active', '2026-01-15 00:56:44', '2026-01-15 01:06:17'),
(7, 'Which areas do you serve?', '<p>At Digitex Technologies, we help businesses in Essex, Colchester, Southend, Chelmsford, Manchester, London, Birmingham, Portsmouth, Norwich, Middlesbrough, Leicester, Doncaster, Derby, Brighton, Cardiff, Aberdeen, Southampton and beyond.</p>', 7, 'active', '2026-01-15 00:57:13', '2026-01-15 01:06:17'),
(8, 'How does Digitex ensure the strategies work for your business?', '<p>We believe in a bespoke approach. While we use a core framework, we customise everything based on your business goals, target audience, and industry needs to deliver effective results.</p>', 6, 'active', '2026-01-15 00:57:32', '2026-01-15 01:06:17'),
(9, 'Can Digitex Technologies help a small business grow online?', 'Absolutely! As a specialised <a style=\"color: #008080; text-decoration: underline;\" href=\"https://www.digitextechnologies.com/london/small-business-digital-marketing-agency/\">digital marketing agency for small business</a>,\r\n we understand the challenges and opportunities specific to smaller \r\ncompanies and build strategies that maximise growth within your budget.', 5, 'active', '2026-01-15 00:58:18', '2026-01-15 01:06:17'),
(10, 'How long does it take to see results from digital marketing campaigns?', '<p>How long it will take to see the results will vary based on the chosen services and industry competition. Typically, SEO and content marketing show steady improvements within 3-6 months, with full results coming (as standard) in 6-12 months, while PPC and social media campaigns can deliver faster outcomes.&nbsp;</p>', 4, 'active', '2026-01-15 00:58:36', '2026-01-15 01:06:17'),
(11, 'How can I get started with Digitex Technologies?', '<p>Getting started with us is easy! Simply call us on <a href=\"tel:02081239770\">02081239770 </a>or email <a href=\"mailto:info@digitextechnologies.com\">info@digitextechnologies.com</a> to discuss what you need. We’ll provide tailored packages designed specifically for your unique requirements.&nbsp; &nbsp;</p>', 3, 'active', '2026-01-15 00:59:42', '2026-01-15 01:06:17'),
(12, 'What industries does Digitex Technologies specialise in?', '<p>We have over fourteen years of experience in working with a variety of industries in the UK including retail, healthcare, finance, technology, professional services, industrial manufacturing and more. Our tailored approach ensures you receive strategies that are relevant and effective for your specific market.&nbsp; &nbsp;</p>', 2, 'active', '2026-01-15 01:00:05', '2026-01-15 01:06:17'),
(13, 'Does Digitex Technologies provide ongoing support and reporting?', '<p>Yes. At Digitex Technologies, we provide every client with regular performance reports and ongoing support to optimise your campaigns and ensure continuous improvement aligned with your business goals.&nbsp; &nbsp;</p>', 1, 'active', '2026-01-15 01:00:26', '2026-01-15 01:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_countries', 1),
(2, '0001_01_01_000000_create_users_table', 1),
(3, '0001_01_01_000001_create_cache_table', 1),
(4, '0001_01_01_000002_create_jobs_table', 1),
(5, '2025_12_08_065744_create_options_table', 1),
(6, '2025_12_11_141824_page_management_migration', 1),
(7, '2026_01_06_081456_create_pages_table', 1),
(8, '2026_01_06_115837_create_our_teams_table', 1),
(9, '2026_01_07_075042_create_contact_submissions_table', 1),
(10, '2026_01_07_095913_create_our_clients_table', 1),
(11, '2026_01_07_142742_create_portfolios_table', 1),
(12, '2026_01_07_143038_create_portfolio_credits_table', 1),
(13, '2026_01_08_055452_create_portfolio_challenges_table', 1),
(14, '2026_01_08_055509_create_portfolio_strategies_table', 1),
(15, '2026_01_08_055602_create_portfolio_screens_table', 1),
(16, '2026_01_08_060452_create_portfolio_sections_table', 1),
(17, '2026_01_08_065959_create_portfolio_technology_tags_table', 1),
(18, '2026_01_08_070212_create_portfolio_project_tags_table', 1),
(19, '2026_01_08_131332_create_news_letter_subscribers_table', 1),
(20, '2026_01_08_133319_update_page_cms_content_table', 1),
(21, '2026_01_09_105634_create_case_studies_table', 1),
(22, '2026_01_09_105650_create_case_study_credits_table', 1),
(23, '2026_01_09_105659_create_case_study_challenges_table', 1),
(24, '2026_01_09_105711_create_case_study_strategies_table', 1),
(25, '2026_01_09_105720_create_case_study_screens_table', 1),
(26, '2026_01_09_105731_create_case_study_sections_table', 1),
(27, '2026_01_12_071338_create_services_table', 1),
(28, '2026_01_12_072629_create_service_faqs_table', 1),
(29, '2026_01_12_080912_create_service_boxes_contents_table', 1),
(30, '2026_01_12_081050_create_service_column_contents_table', 1),
(31, '2026_01_12_081416_create_service_steps_contents_table', 1),
(32, '2026_01_12_081649_create_service_why_opt_contents_table', 1),
(33, '2026_01_12_082340_create_service_multisection_contents_table', 1),
(34, '2026_01_12_102405_create_service_why_choose_us_contents_table', 1),
(35, '2026_01_13_061811_create_service_multiple_sections_table', 1),
(36, '2026_01_13_070551_create_service_what_we_offers_table', 1),
(37, '2026_01_13_070941_create_service_our_benifits_table', 1),
(38, '2026_01_13_101749_create_service_technologies_table', 1),
(39, '2026_01_13_112129_create_service_page_linked_services_table', 1),
(40, '2026_01_13_115210_create_service_locations_table', 1),
(41, '2026_01_13_121210_create_service_location_tab_contents_table', 1),
(42, '2026_01_13_121454_create_service_location_contents_table', 1),
(43, '2026_01_13_121609_create_service_location_faqs_table', 1),
(44, '2026_01_13_122001_create_service_location_icon_boxes_table', 1),
(45, '2026_01_14_140819_create_faqs_table', 1),
(46, '2026_01_15_083744_create_case_study_results_table', 2),
(47, '2026_01_15_083843_create_portfolio_results_table', 2),
(49, '2026_01_15_113617_create_service_blurb_contents_table', 3),
(51, '2026_01_15_122808_update_services_table', 4),
(52, '2026_01_15_133719_update_service_blurb_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news_letter_subscribers`
--

DROP TABLE IF EXISTS `news_letter_subscribers`;
CREATE TABLE IF NOT EXISTS `news_letter_subscribers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_letter_subscribers`
--

INSERT INTO `news_letter_subscribers` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Newell Ziemann IV', 'vivian66@example.org', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(2, 'Dr. Eladio Rau', 'brennon31@example.com', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(3, 'Muhammad Donnelly', 'turcotte.tyrel@example.net', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(4, 'Prof. Brain Doyle V', 'arnaldo70@example.org', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(5, 'Miss Serena Ebert III', 'kassandra72@example.com', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(6, 'Prof. Therese Brown V', 'reina26@example.com', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(7, 'Gloria Hirthe', 'shaun06@example.net', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(8, 'Kade Gorczany', 'welch.hunter@example.net', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(9, 'Kayley Kuhlman', 'haley.eloise@example.org', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(10, 'Sierra Hettinger V', 'ebahringer@example.com', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(11, 'Nigel Gutkowski', 'conn.bruce@example.org', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(12, 'Sincere Huels I', 'nels66@example.com', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(13, 'Prof. Alena Prosacco', 'cwilderman@example.net', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(14, 'Dr. Declan Bergnaum', 'bechtelar.vena@example.net', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(15, 'Dr. Maggie Lemke', 'shaniya11@example.org', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(16, 'Montana Nienow', 'taurean04@example.org', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(17, 'Marielle Stark', 'gilbert16@example.org', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(18, 'Dr. Name Stehr', 'eve78@example.net', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(19, 'Sophie Crist', 'asawayn@example.com', '2026-01-15 06:51:54', '2026-01-15 06:51:54'),
(20, 'Matteo Conn', 'amir.douglas@example.net', '2026-01-15 06:51:54', '2026-01-15 06:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `key`, `value`) VALUES
(1, 'site_title', 'Digitex Technologies'),
(2, 'admin_perpage', '10'),
(3, 'desktop_logo', 'storage/settings/IMG_6967a84073572.webp'),
(4, 'mobile_logo', 'storage/settings/IMG_6967a840744e5.webp'),
(5, 'favicon', 'storage/settings/IMG_6967a84075402.png'),
(6, 'copyright_text', 'Copyright © 2009-2026 Digitex Technologies. All Rights Reserved. Company reg No: 06487948'),
(7, 'facebook', 'https://www.facebook.com/digitextechnologies'),
(8, 'linkedin', 'https://www.linkedin.com/company/digitex-technologies/'),
(9, 'instagram', 'https://www.instagram.com/digitextechnologies/'),
(10, 'tweeter', 'https://x.com/DigitexUK'),
(11, 'pinterest', 'https://uk.pinterest.com/digitextechnologies/'),
(12, 'global_meta_title', 'Check out our popular blogs today | Digitex Technologies'),
(13, 'global_meta_description', 'Discover trending topics, tips, and insights in our most popular blogs. Stay updated with expert advice across digital marketing and tech.'),
(14, 'global_meta_keywords', 'Discover trending topics, tips, and insights in our most popular blogs. Stay updated with expert advice across digital marketing and tech.'),
(15, 'mail_host', 'smtp.gmail.com'),
(16, 'mail_username', 'dinesh.digitex@gmail.com'),
(17, 'mail_password', 'yxvejznneogtxnpg'),
(18, 'mail_from_address', 'dinesh.digitex@gmail.com'),
(19, 'mail_from_name', 'Digitex Technologies');

-- --------------------------------------------------------

--
-- Table structure for table `our_clients`
--

DROP TABLE IF EXISTS `our_clients`;
CREATE TABLE IF NOT EXISTS `our_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_order` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_clients`
--

INSERT INTO `our_clients` (`id`, `path`, `link`, `priority_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'storage/client/IMG_69688b73abd75.png', NULL, 5, 'active', '2026-01-15 01:08:43', '2026-01-15 01:09:20'),
(2, 'storage/client/IMG_69688b79f3cf5.png', NULL, 4, 'active', '2026-01-15 01:08:50', '2026-01-15 01:09:20'),
(3, 'storage/client/IMG_69688b80119e5.png', NULL, 3, 'active', '2026-01-15 01:08:56', '2026-01-15 01:09:20'),
(4, 'storage/client/IMG_69688b874e604.png', NULL, 2, 'active', '2026-01-15 01:09:03', '2026-01-15 01:09:20'),
(5, 'storage/client/IMG_69688b8fa14a9.png', NULL, 1, 'active', '2026-01-15 01:09:11', '2026-01-15 01:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `our_teams`
--

DROP TABLE IF EXISTS `our_teams`;
CREATE TABLE IF NOT EXISTS `our_teams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `priority_order` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_teams`
--

INSERT INTO `our_teams` (`id`, `image`, `name`, `role`, `linkedin`, `facebook`, `instagram`, `twitter`, `status`, `priority_order`, `created_at`, `updated_at`) VALUES
(1, 'storage/teams/IMG_69688c95bc5ce.webp', 'Dinendra Sarkar', 'Managing Director', 'https://www.linkedin.com/in/dinendra-sarkar-388b6320/', NULL, NULL, NULL, 'active', 11, '2026-01-15 01:13:33', '2026-01-15 01:23:45'),
(2, 'storage/teams/IMG_69688d4817743.webp', 'Corey Fielder', 'Sales & Digital Marketing Manager', 'https://www.linkedin.com/in/coreyfielder/', NULL, NULL, NULL, 'active', 10, '2026-01-15 01:16:32', '2026-01-15 01:23:45'),
(3, 'storage/teams/IMG_69688d7415f3d.webp', 'Nikola Hivesova', 'HR | Administrator', NULL, NULL, NULL, NULL, 'active', 9, '2026-01-15 01:17:16', '2026-01-15 01:23:45'),
(4, 'storage/teams/IMG_69688dc67c2cb.webp', 'Pratik Batt', 'Web Expert | Sales Manager', NULL, NULL, NULL, NULL, 'active', 8, '2026-01-15 01:18:38', '2026-01-15 01:23:45'),
(5, 'storage/teams/IMG_69688ddc46f33.webp', 'Sienna Roy', 'Business Development Manager', 'https://www.linkedin.com/in/sienna-pearl/', NULL, NULL, NULL, 'active', 7, '2026-01-15 01:19:00', '2026-01-15 01:23:45'),
(6, 'storage/teams/IMG_69688e0630fce.webp', 'Derek Wood', 'Sales Executive', NULL, NULL, NULL, NULL, 'active', 6, '2026-01-15 01:19:42', '2026-01-15 01:23:45'),
(7, 'storage/teams/IMG_69688e1f8cc79.webp', 'Michael Quinn', 'Content Writer', NULL, NULL, NULL, NULL, 'active', 5, '2026-01-15 01:20:07', '2026-01-15 01:23:45'),
(8, 'storage/teams/IMG_69688e36d45de.webp', 'David Bhattacharjee', 'Sales & Account Manager', NULL, NULL, NULL, NULL, 'active', 4, '2026-01-15 01:20:30', '2026-01-15 01:23:45'),
(9, 'storage/teams/IMG_69688e492d524.webp', 'Abi Mukasa', 'Sales Executive', NULL, NULL, NULL, NULL, 'active', 3, '2026-01-15 01:20:49', '2026-01-15 01:23:45'),
(10, 'storage/teams/IMG_69688e736e851.webp', 'Sarkar.K', 'Senior Web + App Designer & Developer', NULL, NULL, NULL, NULL, 'active', 2, '2026-01-15 01:21:31', '2026-01-15 01:23:45'),
(11, 'storage/teams/IMG_69688e8583ab8.webp', 'Saubhik.M', 'Lead Developer', NULL, NULL, NULL, NULL, 'active', 1, '2026-01-15 01:21:49', '2026-01-15 01:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_script` text COLLATE utf8mb4_unicode_ci,
  `body_script` text COLLATE utf8mb4_unicode_ci,
  `footer_script` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `header_script`, `body_script`, `footer_script`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '/', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(2, 'About Page', '/about', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(3, 'Projects', '/projects', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(4, 'Services', '/services', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(5, 'Case Studies', '/case-studies', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(6, 'Contact Us', '/contact-us', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(7, 'Blogs', '/blogs', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(8, 'Dedicated Hiring', '/dedicated-hiring', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(9, 'FAQ Page', '/faqs', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(10, 'Privacy Policy', '/privacy-policy', NULL, NULL, NULL, NULL, NULL, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(11, 'Our Team', '/team', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `page_cms_contents`
--

DROP TABLE IF EXISTS `page_cms_contents`;
CREATE TABLE IF NOT EXISTS `page_cms_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `type` enum('text','image','video','json') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `is_rich_text` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `display_order` int NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `min_length` int DEFAULT NULL,
  `max_length` int DEFAULT NULL,
  `no_special_charecter_allowed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `allowed_special_charecter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_number_allowed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `no_two_special_charecter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_email` tinyint(1) NOT NULL DEFAULT '0',
  `mimes_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_cms_contents_page_id_key_unique` (`page_id`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_cms_contents`
--

INSERT INTO `page_cms_contents` (`id`, `page_id`, `key`, `value`, `type`, `is_rich_text`, `display_order`, `is_required`, `min_length`, `max_length`, `no_special_charecter_allowed`, `allowed_special_charecter`, `no_number_allowed`, `no_two_special_charecter`, `is_email`, `mimes_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'heading', 'Digitex Technologies', 'text', '0', 1, 1, 3, 60, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(2, 1, 'subheading', 'A Digital Marketing Agency in London that delivers results,<br>regardless of the project.', 'text', '1', 2, 1, 20, 300, '0', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(3, 1, 'banner_video', 'storage/cms/videos/VIDEO_69687e529a369.mp4', 'video', '0', 3, 0, 0, 20480, '0', NULL, '0', '0', 0, 'mp4,webm', '2026-01-14 08:57:38', '2026-01-15 00:12:42'),
(4, 1, 'banner_image', 'storage/cms/images/IMG_69687e52a0b84.jpg', 'image', '0', 4, 0, 0, 5120, '0', NULL, '0', '0', 0, 'jpg,jpeg,png,webp', '2026-01-14 08:57:38', '2026-01-15 00:12:42'),
(5, 1, 'we_provide_headline', 'We provide the results you need', 'text', '0', 5, 1, 3, 80, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(6, 1, 'our_services_headline', 'Our Services', 'text', '0', 6, 1, 3, 60, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(7, 1, 'our_service_description', 'Here at Digitex Technologies, we offer a full suite of services that are designed to elevate your brand\'s presence in the digital realm.', 'text', '0', 7, 1, 30, 300, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(8, 1, 'why_choose_headline', 'Why Choose Digitex Technologies', 'text', '0', 8, 1, 5, 100, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(9, 1, 'why_choose_description', 'Here at Digitex Technologies, your success is our priority. We believe in delivering tangible results and a fast return on investment. With our 14 years of experience and a proactive team, we bring customised solutions that make your company grow and achieve its desired objective. With us, you can get.', 'text', '1', 9, 1, 50, 1000, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(10, 1, 'our_client_headline', 'Our Clients', 'text', '0', 10, 1, 3, 80, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(11, 1, 'our_portfolio_headline', 'Our Portfolio', 'text', '0', 11, 1, 3, 80, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(12, 1, 'our_portfolio_description', 'Welcome to our portfolio, where you can explore examples of our extensive work. We\'ve had the privilege of creating over 1000+ websites for our clients.', 'text', '0', 11, 1, 3, 250, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(13, 1, 'contact_form_left_side_heading', 'Your Project?', 'text', '0', 12, 1, 3, 60, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(14, 1, 'contact_form_left_side_sub_heading', 'Fill Out This Form and Get:', 'text', '0', 13, 1, 5, 100, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(15, 1, 'contact_form_points', '[\"A Free Audit\",\"Customised Solutions\",\"Guidance from Industry Professionals\",\"Get More Traffic\",\"Increase Quality Leads\",\"4X to 6X Increase in Revenue\"]', 'json', '0', 15, 0, 0, 0, '0', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(16, 1, 'contact_form_below_points_text', 'Choose Us for Expertise & Guaranteed ROI!', 'text', '0', 16, 1, 10, 120, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(17, 1, 'case_study_heading', 'Case Studies', 'text', '0', 17, 1, 5, 60, '1', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(18, 1, 'case_study_subheading', 'Welcome to our Case Studies, where you can explore examples of our extensive work. We\'ve had the privilege of creating over 1000+ websites for our clients.', 'text', '0', 18, 1, 10, 250, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(19, 2, 'small_text_before_heading', 'Celebrating 15 years : 2010 - 2025', 'text', '0', 1, 1, 0, 100, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(20, 2, 'heading', 'About Digitex Technologies', 'text', '0', 2, 1, 0, 100, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(21, 2, 'sub_heading', 'Our digital marketing services are catered carefully according to<br>your business needs. It\'s time to generate more revenue, bring in<br>more leads and give your company the spotlight it deserves.', 'text', '1', 3, 1, 0, 0, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(22, 2, 'content', 'Digitex has come a long way since being founded 15 years ago! Our team is now separated into five core functions- Web Development, SEO, PPC, App + Software Development, and Email Marketing. This allows our staff to have one speciality, ensuring the best results. We are a unique\r\n<a href=\"https://www.digitextechnologies.com/\">Digital Marketing Company</a>\r\nbecause we do not just focus on the here and now, but seek to implement strategies that will work in the long term. Without expertise, we can take the stress of building your online presence away and allow you to focus on other business needs!\r\n<br><br>\r\nWe understand that the modern-day online world is getting competitive and congested. Staying on the first page of Google is the target of every online business and generating high traffic is paramount. So is having an eye-catching, user-friendly web design, with\r\n<a href=\"https://www.digitextechnologies.com/services/ppc-agency/\">PPC adverts</a>\r\nsometimes necessary to boost your online presence further. Mobile app development is needed for some businesses.\r\n<br>\r\nThere is so much to think about that it can become overwhelming. That is where we step in. From our expert web design &amp; development to our mobile app development services team, we have specialist departments who all share the same end goal – making your business stand out from the crowd.', 'text', '1', 4, 0, 0, 0, '0', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-15 00:27:10'),
(23, 2, 'our_mission_headline', 'Our Mission', 'text', '0', 5, 1, 5, 150, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(24, 2, 'our_mission_list', '[\"Become an established brand in the London digital marketing industry\",\"Research the market and differentiate from competitors through innovation\",\"Create and grow a loyal customer base\",\"Establish trust and credibility\"]', 'json', '0', 6, 0, 0, 0, '0', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(25, 2, 'how_we_work_heading', 'How We Work', 'text', '0', 7, 1, 3, 60, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(26, 2, 'how_we_work_subheading', 'Here at Digitex, we understand the problems that clients face day by day, year on year. When a company starts facing these issues, it can be difficult to strategise growth and push the business forward. This is where our Digital Marketing Solutions can help.', 'text', '0', 8, 1, 5, 500, '0', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(27, 2, 'what_we_offer_heading', 'What We Offer', 'text', '0', 9, 1, 3, 60, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(28, 2, 'what_we_offer_list', '[\"Strategic meetings to fully understand your business needs\",\"Proposal generation following meetings that include CLEAR workflow timesheets from our tech teams\",\"Affordable pricing, to ensure our services are within reach for all clients\",\"Ongoing maintenance (website, apps, etc) provided by one of our digital experts\",\"Business support for as long as it is needed\"]', 'json', '0', 10, 0, 0, 0, '0', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(29, 2, 'what_we_offer_footer_text', 'We are here to partner with you and help your business as if it is our own!', 'text', '0', 11, 1, 3, 250, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(30, 2, 'google_review_heading', 'Our Clients Talk For Us', 'text', '0', 12, 1, 5, 150, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(31, 2, 'google_review_subheading', 'Our clients\' success speaks for itself. From small businesses to large companies, our tailored digital marketing strategies have helped them grow and thrive.', 'text', '0', 13, 1, 20, 300, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(32, 3, 'heading', 'Our Portfolio', 'text', '0', 1, 1, 5, 150, '1', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(33, 3, 'description', 'Welcome to our portfolio, where you can explore examples of our extensive work.<br>We\'ve had the privilege of creating over 1000+ websites for our clients.', 'text', '1', 2, 1, 30, 1000, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 09:00:32'),
(34, 4, 'heading', 'Our Services', 'text', '0', 1, 1, 5, 150, '1', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(35, 4, 'description', 'Here at Digitex Technologies, we are a leading digital marketing company<br>\r\n in the UK, offering a whole range of services that will help your <br>\r\nbusiness beat the competition and attract quality leads. Choose us for a<br>\r\n customised digital marketing strategy that addresses your unique needs!', 'text', '1', 2, 1, 20, 300, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-15 00:28:13'),
(36, 5, 'heading', 'Case Studies', 'text', '0', 1, 1, 5, 150, '1', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(37, 5, 'description', 'Explore our case studies to see how businesses have achieved growth and<br>success with our tailored digital marketing strategies.', 'text', '1', 2, 1, 20, 300, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 09:00:07'),
(38, 6, 'heading', 'Contact Us', 'text', '0', 1, 1, 5, 150, '1', '.,-\'&', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(39, 6, 'description', 'Please get in touch with us regarding any queries relating to Web Design and Development, SEO, SEM, SMO, SMM, Email Marketing, App Development and/or Software Development. We have a friendly customer service team waiting to speak with you!', 'text', '1', 2, 1, 30, 1000, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(40, 6, 'office_1_name', 'UK Office', 'text', '0', 3, 1, 3, 100, '0', '.!:\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(41, 6, 'office_1_address', 'The Hubb Business Centre,<br>335-351<br>Rainham Rd S, Dagenham RM10 8QR, United Kingdom', 'text', '1', 4, 1, 20, 500, '0', '.!:\'\"-/()[]{}&+<>,', '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(42, 6, 'office_1_email', '[\"info@digitextechnologies.com\"]', 'json', '0', 5, 1, 3, 150, '0', NULL, '0', '0', 1, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(43, 6, 'office_1_phone', '[\"0208 123 9770\",\"0208 144 0396\",\"0790 252 1410\"]', 'json', '0', 6, 0, 9, 15, '0', '-()+', '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(44, 6, 'office_2_name', 'India Office', 'text', '0', 7, 1, 3, 100, '0', '.!:\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(45, 6, 'office_2_address', 'Paulis business tower EN-46,<br>Saltlake Sector V,<br>Kolkata - 700091', 'text', '1', 8, 1, 20, 500, '0', '.!:\'\"-/()[]{}&+<>,', '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(46, 6, 'office_2_email', '[\"info@digitextechnologies.com\"]', 'json', '0', 9, 0, 3, 150, '0', NULL, '0', '0', 1, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(47, 6, 'office_2_phone', '[\"093330 43704\"]', 'json', '0', 10, 0, 9, 15, '0', '-()+', '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(48, 6, 'map_embed_link', 'https://www.google.com/maps/embed?origin=mfe&pb=!1m4!2m1!1sDigitex+Technologies+London!5e0!6i14', 'text', '0', 11, 0, 0, 0, '0', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(49, 7, 'heading', 'Our Latest Posts', 'text', '0', 1, 1, 3, 100, '0', '&,.-\'%$()', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(50, 8, 'banner_image', 'storage/cms/images/IMG_696883bf40264.jpg', 'image', '0', 1, 0, 0, 5120, '0', NULL, '0', '0', 0, 'jpg,jpeg,png,webp', '2026-01-14 08:57:38', '2026-01-15 00:35:51'),
(51, 8, 'heading', 'Dedicated Hiring', 'text', '0', 2, 1, 3, 100, '0', '-&\'', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(52, 8, 'sub_heading', 'Hire Web Developer | Hire Apps Developer | Hire Digital Marketing Expert | Hire Web Designers | Hire Software Developer', 'text', '0', 3, 1, 3, 250, '0', '-&\'|()_!?,', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(53, 8, 'header_content', 'Despite offering a range of in-house tech services, including SEO services, CRM development, PPC and email marketing, we appreciate that sometimes you want to build your team in-house. But do you have the right people to do it? Even though we are a digital marketing agency in London, we have expert recruiters who can help you resource the ideal candidates for your job roles!', 'text', '0', 4, 1, 3, 1500, '0', '.-&\'|()_!?,', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(54, 8, 'content', 'Whether you’re hiring contractors for a specific project or taking on permanent tech staff, finding the right IT recruitment agency can be tough. Selecting the right one is a surefire way to make sure you reach the right talent. Not only does this reduce the costly possibility of mis-hiring, but it also removes away the laborious tasks of sifting through CVs and conducting time-consuming first-stage interviews.<br><br>\r\n\r\nBuilding on years of experience in both recruitment and tech, Digitex has access to some of the hottest tech candidates who can make an immediate and measurable impact on your business. From developers and software engineers to product managers, we can help you build a leading tech team.', 'text', '1', 5, 1, 3, 5000, '0', NULL, '0', '0', 0, NULL, '2026-01-14 08:57:38', '2026-01-15 00:35:51'),
(55, 8, 'steps_heading', 'Digitex achieves this through a tried and tested four-step hiring programme.', 'text', '0', 6, 1, 3, 5000, '0', '.-&\'|()_!?,', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(56, 8, 'all_steps_headings', '[\"Step 1: Requirement gathering\",\"Step 2: First-round interview\",\"Step 3: Final round\",\"Step 4: Selection\"]', 'json', '0', 7, 1, 3, 250, '0', '.,:\'&-()%', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(57, 8, 'all_steps_content', '[\"During an initial meeting, Digitex will gain a deep understanding of youroverall business and personnel needs. Once we have clear candidateprofiles in mind, we will draw up a shortlist of suitable individuals.\",\"Digitex will handle the first stage of interviews, whittling down the groupto a smaller shortlist, which we present to you.\",\"You select who you want to progress to the final interview, with theoption to have a Digitex team member there for support.\",\"Once you have chosen your candidate, the paperwork is finalised, andyour new hire is ready to work.\"]', 'json', '0', 8, 1, 3, 2000, '0', ',.:\'&-()%?', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-15 00:35:51'),
(58, 8, 'why_choose_heading', 'Why choose Digitex instead of an IT recruitment agency?', 'text', '0', 9, 1, 3, 250, '0', '.,:\'&-()%?', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(59, 8, 'why_choose_all_headings', '[\"Extensive talent pool\",\"Flexibility\",\"Cost-effective\"]', 'json', '0', 10, 1, 3, 500, '0', ',.:\'&-()%?', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(60, 8, 'why_choose_all_contents', '[\"We have a wide pool of talented candidates built up from years of first hand industry experience.\",\"Digitex offers flexible payment terms, and if you don\'t have space in your office, we can provide the candidate with a seat in our Business hub.\",\"Compared with our competitors, Digitex offers affordable rates while never sacrificing quality.\"]', 'json', '0', 11, 1, 3, 1500, '0', ',.:\'&-()%?', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(61, 8, 'footer_heading', 'If you\'re looking to hire the top tech talent for your team, get in touch for a free consultation.', 'text', '0', 12, 1, 3, 250, '0', '.-&\',', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(62, 8, 'footer_subheading', 'We can help you with it. Let\'s talk!', 'text', '0', 13, 1, 3, 250, '0', '.-&\'|()_!?,', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(63, 8, 'footer_right_side_image', 'storage/cms/images/IMG_696883bf4d8f2.jpg', 'image', '0', 14, 0, 0, 5120, '0', NULL, '0', '0', 0, 'jpg,jpeg,png,webp', '2026-01-14 08:57:38', '2026-01-15 00:35:51'),
(64, 9, 'heading', 'Frequently Asked Questions', 'text', '0', 1, 1, 3, 60, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(65, 9, 'subheading', 'You can find answers to our most frequently asked questions about Digitex Technologies and our services, or reach out to our friendly team for support.', 'text', '0', 1, 1, 3, 150, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(66, 10, 'heading', 'Our Privacy Policy', 'text', '0', 1, 1, 3, 150, '0', '.,?!:;\'\"-/()[]{}&+', '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-14 08:57:38'),
(67, 10, 'content', '<p>Here at Digitex Technologies, we are committed to protecting your privacy and ensuring that your personal information is collected and used correctly (and professionally). Please ensure you read this privacy policy if required.</p>\r\n                <h3>Information We Collect:</h3>\r\n                <p>We collect personal information from our customers, including but not limited to name, email address, phone number, company name, and any other information that you have provided to us in the past.</p>\r\n                <h3>How We Use Your Information:</h3>\r\n                <p>-To provide you with information about our products and services<br>-To provide solutions to your requests for products and services<br>-To communicate customer service issues with you<br>-To improve our website and services<br>-To inform you of industry trends and interesting new information</p>\r\n                <h3>Sharing Of Your Information:</h3>\r\n                <p>We do not sell or share your personal information with third parties for marketing purposes. We may share your personal information with our service providers who assist us in providing our products and services,\r\n                for instance with our hosting provider etc.</p>\r\n                <h3>Security Of Your Information:</h3>\r\n                <p>We take reasonable steps to protect your personal information from unauthorised access, use, or disclosure. However, no data transmission across the internet can be guaranteed to be 100% secure.</p>\r\n                <h3>Cookies And Tracking Technologies:</h3>\r\n                <p>We use cookies and other tracking technologies to collect information about your usage of our website and services. This information is used to personalise your experience, analyse trends, and administer our\r\n                website.</p>\r\n                <h3>Changes To This Privacy Policy:</h3>\r\n                <p>We reserve the right to modify this Privacy Policy at any time. Any changes to this policy will be reflected on our website.</p>\r\n                <h3>Contact Us:</h3>\r\n                <p>If you have any questions about this Privacy Policy or our privacy practices, please contact us at <a href=\"mailto:privacy@digitextechnologies.com\">privacy@digitextechnologies.com</a>.</p>', 'text', '1', 2, 1, 3, 50000, '0', NULL, '0', '1', 0, NULL, '2026-01-14 08:57:38', '2026-01-15 00:43:11'),
(68, 10, 'banner_image', 'storage/cms/images/IMG_696885772bb28.jpg', 'image', '0', 0, 0, NULL, 5120, '0', NULL, '0', '0', 0, 'jpg,jpeg,png,webp', '2026-01-15 06:11:23', '2026-01-15 00:43:11'),
(69, 11, 'heading', 'Meet The Team', 'text', '0', 1, 1, 1, 150, '0', '-+&\'\":.,', '0', '1', 0, NULL, '2026-01-15 06:56:18', '2026-01-15 06:56:18'),
(70, 11, 'banner_image', 'storage/cms/images/IMG_696893ca806ee.jpg', 'image', '0', 2, 0, NULL, 5120, '0', NULL, '0', '0', 0, 'jpg,jpeg,png,webp', '2026-01-15 07:12:12', '2026-01-15 01:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_video` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technology_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_tags` text COLLATE utf8mb4_unicode_ci,
  `website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_highlight_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_highlight_description` text COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conversation_increase` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_views` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_app_purchase` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conclusion` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `portfolios_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `slug`, `featured_image`, `featured_video`, `timeline`, `technology_tags`, `project_tags`, `website_link`, `content_heading`, `content_image`, `company_logo`, `company_highlight_heading`, `company_highlight_description`, `video`, `client`, `conversation_increase`, `screen_views`, `in_app_purchase`, `conclusion`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Samantha Knight', 'samantha-knight', NULL, 'storage/portfolio/video/VID_69689d2e71be8.mp4', '2021', 'Development,Design', 'Design,UI\r\n/\r\nUX\r\nDesign,WordPress\r\nDevelopment', 'https://www.samanthaknight.co.uk/', NULL, 'storage/portfolio/IMG_696896e84c911.webp', 'storage/portfolio/IMG_696896e84ddf5.webp', 'Samantha Knight is a designer of residential interiors. Based in Mallorca, Spain, Samantha\'s interior design journey began in London, where she worked on transforming heritage properties into high-end luxury homes.', 'Following years of designing in London and internationally, Samantha was first drawn to the Mediterranean, more specifically to the island of Mallorca, when one of her London-based clients asked her to design the interior for their family home in the hills of Calvia.\r\n\r\nCaptivated by the tranquility and authenticity of the island, she felt compelled to further explore Mallorca in a professional capacity, and to eventually settle there.', 'storage/portfolio/video/VID_696896e84e3c9.mp4', 'Samantha Knight', NULL, NULL, NULL, NULL, 'active', '2026-01-15 01:57:36', '2026-01-15 02:24:22'),
(2, 'Gammax', 'gammax', NULL, 'storage/portfolio/video/VID_69689f82f0fb2.mp4', '2022', 'Development', 'Website\r\nDesign,Branding,Website\r\nDevelopment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2026-01-15 02:28:02', '2026-01-15 02:34:18'),
(3, 'Mojo Fun', 'mojo-fun', 'storage/portfolio/IMG_6968a16a14e98.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Samantha Knight', '96', '75', '80', 'This case study shows how Mojo Fun’s partnership with our online marketing company helped them carve a niche in the competitive e-commerce market by addressing the challenges of digital transformation with creativity and expertise. With a brand new website, Mojofun was all set for future success and driving meaningful results in the digital realm.', 'active', '2026-01-15 02:42:26', '2026-01-15 02:42:26'),
(4, 'London Drone Co Ltd', 'london-drone-co-ltd', NULL, 'storage/portfolio/video/VID_6968a2c3ddbc0.mp4', '2022', 'Development,Design', 'WordPress\r\nDevelopment,UI\r\n/\r\nUX\r\nDesign', 'https://www.london-drone.co.uk/', NULL, 'storage/portfolio/IMG_6968a2c3dc8a9.webp', NULL, 'The London Drone Company', 'Established in 2019 as a professional drone operator, we have anticipated and grown both in size and the range of services on offer. As drones have become more commonplace in the commercial work environment, we have expanded to meet the demand.\r\n\r\nAll pilots are CAA qualified with GVC & A2CofC qualifications, and for all missions we have a trained observer (CAA, CAD722 as a minimum)\r\n\r\nWe are able to provide a drone and pilot for any application that a drone is needed for in the UK.', NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2026-01-15 02:48:11', '2026-01-15 02:48:11'),
(5, 'Vinyl Music Madness', 'vinyl-music-madness', NULL, 'storage/portfolio/video/VID_6968a4888d02d.mp4', '2021', 'Development,Design', 'Branding,Website\r\nDesign,eCommerce\r\nDevelopment', 'https://vinylmusicmadness.co.uk/', NULL, 'storage/portfolio/IMG_6968a4888b8c4.webp', 'storage/portfolio/IMG_6968a4888cb2f.webp', NULL, 'Every record sold has been professionally cleaned in the VPI hw-27 typhoon record cleaner (unless the record is new or sealed). They have a wide knowledge of every type of music (although we are always ready to learn about any new types), and try to make sure our stock covers all genres.', NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2026-01-15 02:55:44', '2026-01-15 02:55:57'),
(6, 'The Go-To', 'the-go-to', NULL, 'storage/portfolio/video/VID_6968a5c28479d.mp4', '2022, 2023', NULL, NULL, NULL, NULL, 'storage/portfolio/IMG_6968a5c2832d1.jpg', NULL, 'The Go-To', 'The Go-To is a brand new online marketplace that cuts through the hassle to deliver inspired gifts that speak to every personality. Say goodbye to endless scrolling, overwhelming product lists and unhelpful filters.', NULL, NULL, NULL, NULL, NULL, NULL, 'active', '2026-01-15 03:00:58', '2026-01-15 03:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_challenges`
--

DROP TABLE IF EXISTS `portfolio_challenges`;
CREATE TABLE IF NOT EXISTS `portfolio_challenges` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_challenges_portfolio_id_foreign` (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_challenges`
--

INSERT INTO `portfolio_challenges` (`id`, `portfolio_id`, `content`, `created_at`, `updated_at`) VALUES
(2, 3, 'Mojo Fun\'s previous website struggled to keep users engaged or motivated enough to complete the buy\'s journey. As a result, the company lost opportunities to convert visitors into paying customers and failed to grow its revenue. Mojofun approached us at Digitex Technologies in 2023 with the challenge of translating its brand identity and offerings into a captivating and user-friendly website. The task involved striking a balance between showcasing the brand\'s personality and ensuring seamless navigation for users, presenting a unique set of challenges in the digital landscape.', '2026-01-15 03:31:26', '2026-01-15 03:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_credits`
--

DROP TABLE IF EXISTS `portfolio_credits`;
CREATE TABLE IF NOT EXISTS `portfolio_credits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_credits_portfolio_id_foreign` (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_credits`
--

INSERT INTO `portfolio_credits` (`id`, `portfolio_id`, `role`, `name`, `created_at`, `updated_at`) VALUES
(11, 1, 'Client', 'Samantha Knight', '2026-01-15 02:24:35', '2026-01-15 02:24:35'),
(12, 1, 'Creative Director', 'Corey.F, Sarkar.K', '2026-01-15 02:24:35', '2026-01-15 02:24:35'),
(13, 1, 'Designers', 'Sarkar.K', '2026-01-15 02:24:35', '2026-01-15 02:24:35'),
(14, 1, 'Developers', 'Sarkar.K', '2026-01-15 02:24:35', '2026-01-15 02:24:35'),
(15, 1, 'Website', 'www.samanthaknight.co.uk', '2026-01-15 02:24:35', '2026-01-15 02:24:35'),
(16, 2, 'Client', 'Cheryl Selfe', '2026-01-15 02:34:19', '2026-01-15 02:34:19'),
(17, 2, 'Creative Director', 'Sarkar.K', '2026-01-15 02:34:19', '2026-01-15 02:34:19'),
(18, 2, 'Designers', 'Sarkar.K', '2026-01-15 02:34:19', '2026-01-15 02:34:19'),
(19, 2, 'Developers', 'Sarkar.K, Saubhik.M', '2026-01-15 02:34:19', '2026-01-15 02:34:19'),
(20, 2, 'Website', 'https://gammax.co.uk/', '2026-01-15 02:34:19', '2026-01-15 02:34:19'),
(35, 5, 'Client', 'Warren', '2026-01-15 02:55:57', '2026-01-15 02:55:57'),
(36, 5, 'Creative Director', 'Sarkar.K', '2026-01-15 02:55:57', '2026-01-15 02:55:57'),
(37, 5, 'Designer', 'Sarkar.K', '2026-01-15 02:55:57', '2026-01-15 02:55:57'),
(38, 5, 'Developers', 'Saubhik.M, Sarkar.K', '2026-01-15 02:55:57', '2026-01-15 02:55:57'),
(39, 5, 'Website', 'https://vinylmusicmadness.co.uk/', '2026-01-15 02:55:57', '2026-01-15 02:55:57'),
(40, 6, 'Client Victoire', 'Tardy-Joubert', '2026-01-15 03:00:58', '2026-01-15 03:00:58'),
(41, 6, 'Creative Director', 'Corey.F, Charlotte Stones', '2026-01-15 03:00:58', '2026-01-15 03:00:58'),
(42, 6, 'Developers', 'Saubhik.M', '2026-01-15 03:00:58', '2026-01-15 03:00:58'),
(43, 6, 'Website', 'https://thegoto.com/', '2026-01-15 03:00:58', '2026-01-15 03:00:58'),
(44, 4, 'Client', 'Ross', '2026-01-15 03:29:55', '2026-01-15 03:29:55'),
(45, 4, 'Creative Director', 'Sarkar.K', '2026-01-15 03:29:55', '2026-01-15 03:29:55'),
(46, 4, 'Designer', 'Sarkar.K', '2026-01-15 03:29:55', '2026-01-15 03:29:55'),
(47, 4, 'Developers', 'Sarkar.K', '2026-01-15 03:29:55', '2026-01-15 03:29:55'),
(48, 4, 'Website', 'www.london-drone.co.uk', '2026-01-15 03:29:55', '2026-01-15 03:29:55'),
(49, 3, 'Client', 'Samantha Knight', '2026-01-15 03:31:26', '2026-01-15 03:31:26'),
(50, 3, 'Creative Director', 'Sarkar.K', '2026-01-15 03:31:26', '2026-01-15 03:31:26'),
(51, 3, 'Designers', 'Sarkar.K', '2026-01-15 03:31:26', '2026-01-15 03:31:26'),
(52, 3, 'Developers', 'Sarkar.K', '2026-01-15 03:31:26', '2026-01-15 03:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_project_tags`
--

DROP TABLE IF EXISTS `portfolio_project_tags`;
CREATE TABLE IF NOT EXISTS `portfolio_project_tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `portfolio_project_tags_value_unique` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_project_tags`
--

INSERT INTO `portfolio_project_tags` (`id`, `value`) VALUES
(11, 'Branding'),
(3, 'Design'),
(15, 'eCommerce\r\nDevelopment'),
(1, 'UI\r\n/\r\nUX\r\nDesign'),
(10, 'Website\r\nDesign'),
(12, 'Website\r\nDevelopment'),
(2, 'WordPress\r\nDevelopment');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_results`
--

DROP TABLE IF EXISTS `portfolio_results`;
CREATE TABLE IF NOT EXISTS `portfolio_results` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_results_portfolio_id_foreign` (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_results`
--

INSERT INTO `portfolio_results` (`id`, `portfolio_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 'Enhanced User Engagement: The newly crafted website captivated visitors from the moment they landed on the homepage, leading to increased time spent on the site and reduced bounce rates. Dynamic visuals, interactive features, and compelling storytelling elements kept users engaged throughout their journey, fostering a deeper connection with Mojo Fun\'s brand and products. Increased Conversion Rates: By optimising the user experience and streamlining the path to purchase, our digital marketing services in London significantly improved conversion rates on Mojo Fun\'s website. Clear calls-to-action, intuitive product categorisation and seamless checkout processes facilitated a frictionless buying experience, prompting visitors to convert into paying customers. Expanded Online Reach: The visually stunning and user-friendly website served as a powerful digital storefront for Mojo Fun, attracting new visitors and expanding its online reach, which resulted in increased visibility and brand awareness.', '2026-01-15 03:31:26', '2026-01-15 03:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_screens`
--

DROP TABLE IF EXISTS `portfolio_screens`;
CREATE TABLE IF NOT EXISTS `portfolio_screens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_screens_portfolio_id_foreign` (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_screens`
--

INSERT INTO `portfolio_screens` (`id`, `portfolio_id`, `path`, `created_at`, `updated_at`) VALUES
(1, 3, 'storage/portfolio/screen/IMG_6968a16a1d41d.webp', '2026-01-15 02:42:26', '2026-01-15 02:42:26'),
(2, 3, 'storage/portfolio/screen/IMG_6968a16a1dfe4.webp', '2026-01-15 02:42:26', '2026-01-15 02:42:26'),
(3, 3, 'storage/portfolio/screen/IMG_6968a16a1e633.webp', '2026-01-15 02:42:26', '2026-01-15 02:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_sections`
--

DROP TABLE IF EXISTS `portfolio_sections`;
CREATE TABLE IF NOT EXISTS `portfolio_sections` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_sections_portfolio_id_foreign` (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_sections`
--

INSERT INTO `portfolio_sections` (`id`, `portfolio_id`, `heading`, `content`, `created_at`, `updated_at`) VALUES
(3, 3, 'Mojo Fun: The Ultimate Destination In The UK For High-Quality Models For Collection & Play', 'Mojo Fun is a UK based company for top-quality fun models that are perfect for collection or play. In this case study, we will talk about the website development journey of Mojo Fun with our digital marketing company in London, Digitex Technologies, in 2023, highlighting the strategies implemented while crafting their website and the results we were able to achieve.', '2026-01-15 03:31:26', '2026-01-15 03:31:26'),
(4, 3, 'Background:', 'Founded in 2009, Mojo (HK) Limited, popularly known as Mojofun, embarked on a mission to redefine standards in the design and production of models for play and collection. This case study delves into the strategic interventions implemented by us, here at Digitex Technologies, to elevate Mojo Fun\'s digital presence and drive tangible results.', '2026-01-15 03:31:26', '2026-01-15 03:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_strategies`
--

DROP TABLE IF EXISTS `portfolio_strategies`;
CREATE TABLE IF NOT EXISTS `portfolio_strategies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` bigint UNSIGNED NOT NULL,
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portfolio_strategies_portfolio_id_foreign` (`portfolio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_strategies`
--

INSERT INTO `portfolio_strategies` (`id`, `portfolio_id`, `headline`, `content`, `created_at`, `updated_at`) VALUES
(4, 3, '1', 'Crafting An Engaging Website: Our experts, with their extensive experience, dived deep into Mojo Fun\'s brand identity, target audience, and unique selling points to better understand the brand and its offerings. We leveraged cutting-edge design principles and state-of-the-art technology to create a visually stunning website that captured the essence of Mojo Fun\'s brand. From the layout to the typography, every element was crafted with attention to detail in order to evoke a sense of excitement and wonder among visitors, mirroring the joy of interacting with Mojo Fun\'s products.', '2026-01-15 03:31:26', '2026-01-15 03:31:26'),
(5, 3, '2', 'Emphasising User-Friendliness: Recognising the importance of user experience, our team prioritised usability and accessibility in the website design. Through extensive user research and testing, we identified pain points and streamlined the navigation flow to ensure a seamless browsing experience. Intuitive menu structures, clear calls-to-action, and responsive design were implemented to cater to users across various devices and screen sizes, enhancing accessibility and engagement.', '2026-01-15 03:31:26', '2026-01-15 03:31:26'),
(6, 3, '3', 'Attractive Interface: Our core focus was to align the website design with Mojo Fun\'s brand identity and values. Drawing inspiration from Mojo Fun\'s hand-crafted models and commitment to quality, we integrated elements of craftsmanship, authenticity, and whimsy into the website design. Vibrant colour palettes, playful illustrations, and captivating imagery were strategically incorporated to evoke emotion and foster a strong connection with visitors.', '2026-01-15 03:31:26', '2026-01-15 03:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_technology_tags`
--

DROP TABLE IF EXISTS `portfolio_technology_tags`;
CREATE TABLE IF NOT EXISTS `portfolio_technology_tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `portfolio_technology_tags_value_unique` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_technology_tags`
--

INSERT INTO `portfolio_technology_tags` (`id`, `value`) VALUES
(1, 'Design'),
(2, 'Development');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('draft','published') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `type` enum('blog','static_page') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog',
  `author_id` bigint UNSIGNED DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_script` text COLLATE utf8mb4_unicode_ci,
  `body_script` text COLLATE utf8mb4_unicode_ci,
  `footer_script` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_parent_id_foreign` (`parent_id`),
  KEY `posts_author_id_foreign` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE IF NOT EXISTS `post_categories` (
  `post_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  KEY `post_categories_post_id_foreign` (`post_id`),
  KEY `post_categories_category_id_foreign` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  KEY `post_tags_post_id_foreign` (`post_id`),
  KEY `post_tags_tag_id_foreign` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `boxes_section_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxes_section_description` text COLLATE utf8mb4_unicode_ci,
  `boxes_per_row` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns_section_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `columns_section_description` text COLLATE utf8mb4_unicode_ci,
  `steps_section_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `steps_section_content` text COLLATE utf8mb4_unicode_ci,
  `steps_section_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_opt_section_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_opt_section_description` longtext COLLATE utf8mb4_unicode_ci,
  `why_opt_section_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technologies_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technologies_description` longtext COLLATE utf8mb4_unicode_ci,
  `why_you_choose_us_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `why_you_choose_us_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_we_offer_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `what_we_offer_description` longtext COLLATE utf8mb4_unicode_ci,
  `our_benifits_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_benifits_description` longtext COLLATE utf8mb4_unicode_ci,
  `blurb_section_heading` text COLLATE utf8mb4_unicode_ci,
  `blurb_section_theme` enum('dark','light') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dark',
  `priority_order` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `show_contact_form` tinyint(1) NOT NULL DEFAULT '0',
  `show_our_clients` tinyint(1) NOT NULL DEFAULT '0',
  `show_case_studies` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_service_page` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_menu` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_footer` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_slug_unique` (`slug`),
  KEY `services_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `parent_id`, `name`, `slug`, `title`, `icon`, `excerpt`, `description`, `boxes_section_heading`, `boxes_section_description`, `boxes_per_row`, `columns_section_heading`, `columns_section_description`, `steps_section_heading`, `steps_section_content`, `steps_section_image`, `why_opt_section_heading`, `why_opt_section_description`, `why_opt_section_image`, `location_heading`, `location_description`, `technologies_heading`, `technologies_description`, `why_you_choose_us_heading`, `why_you_choose_us_image`, `what_we_offer_heading`, `what_we_offer_description`, `our_benifits_heading`, `our_benifits_description`, `blurb_section_heading`, `blurb_section_theme`, `priority_order`, `status`, `show_contact_form`, `show_our_clients`, `show_case_studies`, `show_on_service_page`, `show_on_menu`, `show_on_footer`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Web Development', 'web-development', 'The best Web Development services in the UK', 'fas fa-chart-line', 'Your website offers the first glimpse into your business, but if it doesn\'t give potential customers..', 'Transform your website into a work of art. Get a convenient &amp; visually appealing website that drives success with Digitex Technologies.', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, 'Why opt for our Web Development services?', 'Choosing Digitex Technologies means partnering with a team that is committed to delivering excellence. We focus on creating websites that not only look great but also perform exceptionally well, ensuring you achieve your business objectives. All our websites have the following features:', 'storage/service/images/IMG_6968bb792b1cd.png', 'Web Development Agency Serving Across UK', 'Digitex has come a long way since being founded 15 years ago! Our team is now separated into five core ..', 'Our Web Development Services', 'As a leading web development agency in the UK, we design different types of websites for unique business needs. Our websites are built to operate on all devices, offering smooth navigation and a user-friendly interface. These factors lead to a convenient browsing experience, which lowers bounce rates and drives conversion. Explore our offerings to discover how we can help you build your dream website.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dark', 0, 'active', 1, 1, 1, 1, 1, 1, '2026-01-15 04:33:37', '2026-01-15 06:31:50'),
(2, 1, 'Wordpress Development', 'wordpress-development', 'WordPress Website Development Agency London, UK', NULL, 'WordPress is considered as the backbone of the internet. In the digital world, more than 25% of the websites are built on WordPress. We do create a WordPress plugin or developing a full customer WordPress website. As a full service WordPress development agency in London, we are here for everything.', 'Bespoke &amp; Custom WordPress Development<br>\r\n✔ WordPress Plugin Development<br>\r\n✔ WordPress Theme Development<br>\r\n✔ WordPress E-Commerce Solution<br>\r\n✔ WordPress API Integration<br>\r\n✔ WordPress Migration Services<br>\r\n✔ Custom Domain Name With Free Hosting<br>\r\n✔ Mobile-Friendly &amp; Responsive Design<br>\r\n✔ News/Blog Facility<br>\r\n✔ Full-Length CMS<br>\r\n✔ SSL Encryption (HTTPS)<br>\r\n✔ Unlimited Pages &amp; Products Supported<br>\r\n✔ Custom Logo Design<br>\r\n✔ All Social Media Page Design<br>\r\n✔ Full Website Ownership<br><br>Today, the internet is experiencing a countless number of websites and \r\nthe competition is skyscraping. To stand out from the crowd and stay on \r\ntop of the competition, you require the expert’s touch. That’s where our\r\n expertise strikes.', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dark', 0, 'active', 1, 1, 1, 0, 0, 0, '2026-01-15 05:58:41', '2026-01-15 06:28:44'),
(3, 1, 'Shopify Development Agency', 'shopify-development-agency', 'Shopify E-commerce Development Agency London', NULL, 'Shopify Web Design In UK - Build Your Beautiful E-Commerce Store Today As a leading Shopify design agency in London, Digitex Technologies delivers result-driven and appealing Shopify websites that will stay at the forefront of the competition, helping you to convert and retain more customers.', '<h2>Shopify Web Design &amp; Development</h2>\r\n\r\n<p>\r\nAt Digitex Technologies, we maintain an award-winning team of Shopify web designers and developers with profound knowledge. Our enriched inventory has stored the success stories of multiple clients all across the UK and the world, a witness of our triumphant Shopify works.\r\n</p>\r\n\r\n<p>\r\nHaving more than 500,000 users worldwide, Shopify is a continually popular e-commerce Content Management System (CMS) today. All of the users are carrying out Shopify services for developing e-commerce stores and SEO (Search Engine Optimisation).\r\n</p>\r\n\r\n<h3>What We Offer</h3>\r\n\r\n<p>\r\nAs an expert and well-known Shopify Plus agency, we develop entirely sales-focused Shopify stores. You will see our finest touch of technical excellence and hyperactive development approach in your Shopify store.\r\n</p>\r\n\r\n<p>\r\nOur range of Shopify e-commerce solution services include –\r\n</p>\r\n\r\n<ul>\r\n    <li>Shopify Store Installation, Setup &amp; Configuration</li>\r\n    <li>Shopify Web Development</li>\r\n    <li>Shopify Customisation</li>\r\n    <li>Theme Design</li>\r\n    <li>Shopify Mobile App Development</li>\r\n    <li>Migration To Shopify</li>\r\n</ul>', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dark', 0, 'active', 1, 1, 1, 0, 0, 0, '2026-01-15 06:35:59', '2026-01-15 06:35:59'),
(4, 1, 'Magento Development Agency', 'magento-development-agency', 'Magento Development Agency London, UK', NULL, 'It\'s time to super-boost your business with end to end Magento development services by Digitex Technologies. Clients demand easy, convenient and best shopping experience consistently. We deliver it by utilising our creative and technical prowess.', '<h2>Why Magento Development Services</h2>\r\n\r\n<p>\r\n    Being a leading global e-commerce platform, Magento gives you the opportunity\r\n    to deliver engaging, unique and exquisite shopping experiences to your customers.\r\n    Flawless third-party integrations, out of the box features, unlimited customisations,\r\n    rich interface – all of these make your online business stand out of the crowd.\r\n</p>\r\n\r\n<p>\r\n    Magento is an open-source platform and is trusted by thousands of owners and publishers.\r\n    The broad Magento community is quality-focused, flexible and securely encrypted.\r\n</p>\r\n\r\n<p>\r\n    No doubt, it is the most famous and beloved e-commerce solutions worldwide.\r\n</p>\r\n\r\n<h2>What Digitex Offer</h2>\r\n\r\n<p>\r\n    <strong>Magento Upgrade – </strong>\r\n    Magento 1 will not be supported anymore in 2020 for any e-commerce platform.\r\n    Magento 2 will replace it. It is a brand new architecture, database design,\r\n    coding structure that is richer and enhanced e-commerce platform.\r\n    By advancing up to date with the latest marketing norms, our expert Magento\r\n    developers can make all the necessary changes seamlessly.\r\n</p>\r\n\r\n<p>\r\n    <strong>E-Commerce Support – </strong>\r\n    We are always ready to support your e-commerce powered by Magento.\r\n    From maximising your know-how to a proper understanding of investments\r\n    in Magento – we will always be there for you to grow your business online.\r\n</p>\r\n\r\n<p>\r\n    <strong>Migration To Magento – </strong>\r\n    Magento is the most scalable and robust e-commerce platform that is ready\r\n    to compete for any challenge successfully in future. Our specialists\r\n    migrate your data to the new platform securely and safely, without any\r\n    data loss and business interruption.\r\n</p>\r\n\r\n<p>\r\n    <strong>Managed Services – </strong>\r\n    Magento gives updates about security patch and bug fixes frequently.\r\n    Whenever any update comes, we make sure your business stays as usual\r\n    for your running online store.\r\n</p>\r\n\r\n<p>\r\n    <strong>E-Commerce Store – </strong>\r\n    It doesn’t matter if your industry, buying criteria or product range\r\n    is complex – Magento is the all in one solution to all your vision of\r\n    selling products or services online.\r\n</p>\r\n\r\n<p>\r\n    <strong>Module Integrations – </strong>\r\n    Our expert developers integrate Magento extensions, modules and plugins\r\n    without disturbing your regular business operations online.\r\n</p>\r\n\r\n<h3>Why Digitex Technologies For Magento Development Services</h3>\r\n\r\n<ul>\r\n    <li>You get direct contact with Magento and its technical support services</li>\r\n    <li>We are an official Magento <a href=\"https://www.digitextechnologies.com/services/ecommerce-solutions/\">e-commerce business solution</a> partner</li>\r\n    <li>Trained, skilled and certified developers, designers and managers</li>\r\n    <li>Staying up to date and advanced with the latest Magento skills and knowledge is our forte</li>\r\n    <li>You will get early access to the newly developed Magento software</li>\r\n    <li>24/7 flexible customer support services</li>\r\n</ul>', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dark', 0, 'active', 1, 1, 1, 0, 0, 0, '2026-01-15 06:38:20', '2026-01-15 06:38:20'),
(5, 1, 'Laravel Web Development', 'laravel-web-development', 'A Leading Laravel Web Development Agency in London, UK', NULL, 'Digitex Technologies is a UK based digital agency. We have expertise in providing all in one Laravel solutions for your business. Our Laravel\r\ndevelopment package is affordable for businesses and all other agencies.', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We Are Offering For Your Bespoke Laravel Development', 'dark', 0, 'active', 1, 1, 1, 0, 0, 0, '2026-01-15 07:45:47', '2026-01-16 00:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `service_blurb_contents`
--

DROP TABLE IF EXISTS `service_blurb_contents`;
CREATE TABLE IF NOT EXISTS `service_blurb_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `type` enum('icon','image') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'icon',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_blurb_contents_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_blurb_contents`
--

INSERT INTO `service_blurb_contents` (`id`, `service_id`, `type`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(7, 2, 'icon', 'fab fa-wordpress-simple', 'WordPress Coding Compliance', 'Digitex abides by all the coding standards set by WordPress for all WordPress developments.', '2026-01-15 06:28:44', '2026-01-15 06:28:44'),
(8, 2, 'icon', 'fas fa-headset', 'Dedicated Team For WordPress Development', 'Our experienced WordPress development team holds the top rank of latest market trends and complicated development practices.', '2026-01-15 06:28:44', '2026-01-15 06:28:44'),
(9, 2, 'icon', 'fab fa-wordpress-simple', 'Full Service WordPress Development', 'Designing, Development and Maintenance, we offer all in one full fledge WordPress development services.', '2026-01-15 06:28:44', '2026-01-15 06:28:44'),
(10, 2, 'icon', 'fas fa-clipboard-check', 'Result-Driven Process', 'We offer A to Z WordPress development solutions for long-term aim and beneficial results for your business.', '2026-01-15 06:28:44', '2026-01-15 06:28:44'),
(11, 2, 'icon', 'fas fa-laptop', 'Responsive Design', 'Our WordPress development services will be ideal for your business to showcase content on the web, mobile and all hybrid devices.', '2026-01-15 06:28:44', '2026-01-15 06:28:44'),
(12, 2, 'icon', 'fas fa-headphones', 'Continual Of SupportContinual Of SupportContinual Of SupportContinual Of SupportContinual Of SupportContinual Of Support', 'Once you become our client, you will always be our client. Digitex Technologies will always stay by your side with continued support even after your project gets launched.', '2026-01-15 06:28:44', '2026-01-15 06:28:44'),
(25, 5, 'icon', 'fab fa-php', 'Laravel PHP Development', 'Hire our expert Laravel developers for your project of any size. We consistently strive for the best PHP services.', '2026-01-15 08:06:13', '2026-01-16 00:28:38'),
(26, 5, 'icon', 'fas fa-laptop', 'Responsive Design', 'Make your Laravel look extraordinary for web, mobile, hybrid devices and every platform.', '2026-01-15 08:06:13', '2026-01-15 08:06:13'),
(27, 5, 'icon', 'fas fa-chalkboard-teacher', 'API Development & Integratio', 'Our developers can create a bespoke API for you to reveal data from your system for multipurpose use.', '2026-01-15 08:06:13', '2026-01-15 08:06:13'),
(28, 5, 'icon', 'fab fa-wpforms', 'Booking Platforms', 'Our vast experience in complex booking plan of action is bespoke and presently powered with holidays.', '2026-01-15 08:06:13', '2026-01-15 08:06:13'),
(29, 5, 'icon', 'fas fa-laptop-code', 'CMS & Bespoke Systems', 'Writing our own Laravel CMS and developing complex bespoke CMS set up are our forte.', '2026-01-15 08:06:13', '2026-01-15 08:06:13'),
(30, 5, 'icon', 'fas fa-user', 'Training & Consultation', 'We deliver our expertise for all web-based business, consultation available. We are up for personal PHP and Laravel', '2026-01-15 08:06:13', '2026-01-15 08:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `service_boxes_contents`
--

DROP TABLE IF EXISTS `service_boxes_contents`;
CREATE TABLE IF NOT EXISTS `service_boxes_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_boxes_contents_service_id_foreign` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_column_contents`
--

DROP TABLE IF EXISTS `service_column_contents`;
CREATE TABLE IF NOT EXISTS `service_column_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_column_contents_service_id_foreign` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_faqs`
--

DROP TABLE IF EXISTS `service_faqs`;
CREATE TABLE IF NOT EXISTS `service_faqs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority_order` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_faqs_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_faqs`
--

INSERT INTO `service_faqs` (`id`, `service_id`, `question`, `answer`, `priority_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is the typical timeline for website development?', 'The timeline for website development can vary depending on the complexity and scope of the project. Building a simple website generally takes around four to six weeks, while more complex sites can take anywhere from 8 to 12 weeks or longer. We work closely with you and keep you informed about the timeline and the progress at each step.', 0, 'active', '2026-01-15 05:05:57', '2026-01-15 05:05:57'),
(2, 1, 'Do you provide ongoing support after the website launch?', 'Yes, we can provide maintenance and support packages tailored to your requirements. This includes regular updates, security checks, backups and troubleshooting assistance. Our goal is to ensure your website remains functional, secure and up-to-date long after it goes live.', 0, 'active', '2026-01-15 05:06:16', '2026-01-15 05:06:16'),
(3, 1, 'Can I update my website content myself?', 'Absolutely! We design websites with user-friendly content management systems (CMS) that allow you to make updates easily without technical assistance.', 0, 'active', '2026-01-15 05:06:46', '2026-01-15 05:06:46'),
(4, 1, 'What platforms do you specialise in?', 'Our team specialises in several popular web development platforms including WordPress, Shopify, Magento, and custom PHP/Laravel solutions.', 0, 'active', '2026-01-15 05:07:00', '2026-01-15 05:07:00'),
(5, 1, 'Will my website be mobile-friendly?', 'Yes! All our websites are designed with responsive layouts that ensure they look great on all devices, including smartphones and tablets.', 0, 'active', '2026-01-15 05:07:15', '2026-01-15 05:07:15'),
(6, 1, 'Can you help with SEO for my website?', 'Yes! We offer comprehensive SEO services designed to improve your website’s visibility on search engines like Google through keyword research and optimisation strategies.', 0, 'active', '2026-01-15 05:07:34', '2026-01-15 05:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `service_locations`
--

DROP TABLE IF EXISTS `service_locations`;
CREATE TABLE IF NOT EXISTS `service_locations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `description_below_text` longtext COLLATE utf8mb4_unicode_ci,
  `layout` enum('layout_1','layout_2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'layout_1',
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `layout_2_tab_style` enum('old','modern') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'modern',
  `priority_order` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_locations_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_locations`
--

INSERT INTO `service_locations` (`id`, `name`, `slug`, `title`, `service_id`, `description_below_text`, `layout`, `heading`, `description`, `layout_2_tab_style`, `priority_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Manchester', 'manchester', 'Web Development Agency in Manchester', 1, 'Get a stunning & user-friendly website with our services for Web Development in Manchester!', 'layout_2', 'Our offerings for Manchester businesses', 'Our web development agency in Manchester can help Manchester businesses develop a website that caters to their business needs. With our web solutions you can build a unique identity for your brand and attract customers that are looking for products and services online. We use advanced tools to develop a website that offers a seamless user experience and comes with robust security feature too.&nbsp;<br><b>We use the following platforms for web development:\r\n</b>', 'old', 0, 'active', '2026-01-15 05:17:16', '2026-01-15 05:37:05'),
(2, 'Birmingham', 'birmingham', 'Web Design Company in Birmingham - We Build Stunning Websites That Drive Growth', 1, 'Trust Digitex Technologies, a leading Web Design company in Birmingham, for a website that drives success, irrespective of the competition!', 'layout_2', 'How We Help Businesses In Birmingham', 'We help Birmingham businesses by offering bespoke web development services. Our team of web designers in Birmingham have extensive experience, which allow them to design and develop a website that is right for each business model and has the ability to drive conversion.&nbsp;<br><b>We can help Birmingham businesses with the following:\r\n</b>', 'old', 0, 'active', '2026-01-15 05:24:19', '2026-01-15 05:41:45'),
(3, 'Essex', 'essex', 'Top Agency for Web Development in Essex', 1, 'Get Innovative Web Solutions at Digitex Technologies. We specialise in web development in Essex and help you build a website that is optimised for success!', 'layout_2', 'Web Development Services We Offer in Essex', 'We offer bespoke services for web design &amp; development in Essex. By using our extensive experience in website building and utilising advanced tools, we can build a website for any kind of business. Here’s how:', 'modern', 0, 'active', '2026-01-15 05:41:31', '2026-01-15 05:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `service_location_contents`
--

DROP TABLE IF EXISTS `service_location_contents`;
CREATE TABLE IF NOT EXISTS `service_location_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_location_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image_position` enum('left','right') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_location_contents_service_location_id_foreign` (`service_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_location_contents`
--

INSERT INTO `service_location_contents` (`id`, `service_location_id`, `image`, `video`, `heading`, `description`, `image_position`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'storage/service/location/video/VID_6968c5b4f1000.mp4', 'Understand the Web Development landscape in Manchester', 'There are so many diverse businesses in Manchester, each requiring a unique web solution to accommodate their specific needs. At Digitex Technologies, a leading web development agency in Manchester, we have an experienced team of web developers who offer bespoke services tailored to your needs. Contact us today for more information on how we can create a website that makes your business a success!', 'left', '2026-01-15 05:17:16', '2026-01-15 05:41:59'),
(2, 1, 'storage/service/location/images/IMG_6968c5b4f3ac0.png', NULL, 'Why businesses choose Digitex Technologies as the best Web Development Agency in Manchester', 'Here at <a href=\"https://www.digitextechnologies.com/\">Digitex Technologies</a>, we are known for our web development due to our dedication to customer satisfaction. Our team specialises in working alongside each and every client to ensure their website will be as close to their vision as possible. If you do not have a vision, no problem, we have a creative team that step in to help! The websites we build feature user friendly interfaces and offer intuitive navigation. When choosing our web development agency in Manchester, you are guaranteed to end up with a top-end online presence for your brand.', 'right', '2026-01-15 05:17:17', '2026-01-15 05:41:59'),
(3, 2, NULL, 'storage/service/location/video/VID_6968c862a2be5.mp4', 'Web Design Company from Birmingham: Crafting Websites That Convert', 'Your website serves as the face of your brand and businesses in Birmingham all need to have good websites! They need to be visually appealing, user friendly and optimised for mobile devices in order to attract more visitors and convert them into paying customers.<br><br>\r\nHere at <a href=\"https://www.digitextechnologies.com/\" target=\"_blank\">Digitex Technologies</a>, we consider ourselves to be masters of web design and development. No matter if you are a start up or an established company, our web design company in Birmingham can help you with a website design that is tailored to your vision. <a href=\"https://www.digitextechnologies.com/contact-us/\">Contact </a>our web design company today to turn that vision into reality!', 'left', '2026-01-15 05:28:42', '2026-01-15 05:41:45'),
(4, 2, 'storage/service/location/images/IMG_6968c862a57d9.png', NULL, 'Why Choose Us Among Web Design Companies in Birmingham?', 'Businesses choose our web design company in Birmingham due to our reputation (we think).  We have helped many businesses in the area design and build different types of websites that align with their unique business needs, and and we complement our web design with <a href=\"https://www.digitextechnologies.com/birmingham/digital-marketing-agency/\">digital marketing services</a> to enhance online visibility. Our team uses advanced tools for building websites that feature a user friendly interface and are optimised for all devices. Our engaging websites stunning designs and seamless navigation help you to convert visitors into paying customers, thus improving your bottom line.', 'right', '2026-01-15 05:28:42', '2026-01-15 05:41:45'),
(5, 3, 'storage/service/location/images/IMG_6968cb63f2d80.png', NULL, 'Web Development Landscape in Essex', '<p>A functional website is essential for building an online presence and \r\nfor capturing the vast customer base that looks for products and \r\nservices online. Here at Digitex Technologies, a trusted <span style=\"text-decoration: underline;\"><a href=\"https://www.digitextechnologies.com/essex/digital-marketing-agency/\">marketing agency Essex</a></span>,\r\n we have an expert team of web developers in Essex who specialise in \r\nbuilding user-friendly websites that are optimised for various devices. \r\nNo matter if you are starting out a new business in Essex or want to \r\nrevamp your old website with a new design or new features, our web \r\ndevelopment Essex team is here to help you succeed.</p>', 'left', '2026-01-15 05:41:32', '2026-01-15 05:41:32'),
(6, 3, 'storage/service/location/images/IMG_6968cb640108a.png', NULL, 'Reasons Businesses Choose Us for Web Development in Essex', '<p>Essex Businesses choose us for our ability to build visually stunning \r\nwebsites with intuitive navigation, fast loading speeds, advanced \r\nfeatures and safe payment gateways. With our expert website design \r\nservices in Essex, we use various popular website building platforms to \r\ndesign and build your dream business website that is tailored to the \r\nunique needs of your business. From <span style=\"text-decoration: underline;\"><a href=\"https://www.digitextechnologies.com/services/ecommerce-seo/\">e-commerce websites</a> </span>to service based websites, you can hire Digitex Technologies for any kind of web development project in Essex.</p>', 'right', '2026-01-15 05:41:32', '2026-01-15 05:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `service_location_faqs`
--

DROP TABLE IF EXISTS `service_location_faqs`;
CREATE TABLE IF NOT EXISTS `service_location_faqs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_location_id` bigint UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority_order` int NOT NULL DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_location_faqs_service_location_id_foreign` (`service_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_location_faqs`
--

INSERT INTO `service_location_faqs` (`id`, `service_location_id`, `question`, `answer`, `priority_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is web development?', 'Web development refers to the process of creating websites and web applications. It includes web designing, coding and taking care of other aspects in order to ensure that you get a website that is user-friendly, fast loading and aligns with your business goals.', 0, 'active', '2026-01-15 05:18:13', '2026-01-15 05:18:13'),
(2, 1, 'Why is having a website important for my business?', 'Having a website is currently very important for a business in Manchester or anywhere else for that matter. People today are more likely to search for products and services they need online and in order for them to find your brand, you need a solid online presence. A website can help you achieve that and thus improve your sales.', 0, 'active', '2026-01-15 05:18:34', '2026-01-15 05:18:34'),
(3, 1, 'How long does it take to build a website?', 'The time it will take to build a website can vary based on the complexity of the project and client’s needs. Typically, a website can take anywhere from a few weeks to several months to complete, including design, development and testing phases. For websites with complex functionalities, it will take longer. Get in touch with us at <a href=\"mailto:social@digitextechnologies.com\" target=\"_blank\">social@digitextechnologies.com</a> and let us know your requirements to get a more accurate idea.', 0, 'active', '2026-01-15 05:18:58', '2026-01-15 05:18:58'),
(4, 1, 'What platforms do you use for web development?', 'Here at Digitex Technologies, a leading <a href=\"https://www.digitextechnologies.com/manchester/digital-marketing-agency/\" target=\"_blank\">digital marketing agency in Manchester</a>, we work with various platforms, including WordPress, Shopify, Magento, and custom PHP/Laravel solutions. We assess your needs to recommend the most suitable option for your project.', 0, 'active', '2026-01-15 05:19:42', '2026-01-15 05:19:42'),
(5, 1, 'Do you provide ongoing support after the website launch?', 'Yes, we offer ongoing support and maintenance services to ensure your website remains functional and up-to-date. Our web maintenance service includes regular updates, security checks, and troubleshooting as needed.', 0, 'active', '2026-01-15 05:19:57', '2026-01-15 05:19:57'),
(6, 1, 'Can you help with SEO during the web development process?', 'Absolutely! Our web development service can include SEO best practices to enhance your site’s visibility on search engines. We implement SEO strategies that align with your business’s objectives from the outset.', 0, 'active', '2026-01-15 05:20:16', '2026-01-15 05:20:16'),
(7, 1, 'What if I already have an existing website?', 'If you already have a website, we can refresh or redesign it to improve its aesthetics, functionality and performance using our knowledge of web development in Manchester. Our team will work closely with you to identify areas for enhancement in your website that will help it rank on search engines while maintaining your brand identity.', 0, 'active', '2026-01-15 05:20:44', '2026-01-15 05:20:44'),
(8, 2, 'What services does Digitex Technologies offer in Birmingham?', 'Here at Digitex Technologies, we specialise in a range of services including web development, mobile app development, SEO, <a href=\"https://www.digitextechnologies.com/services/ppc-agency/\">PPC</a>, <a href=\"https://www.digitextechnologies.com/services/email-marketing-agency/\">email marketing</a>, software development, CRM development and more. Get in touch with us today to learn more.', 0, 'active', '2026-01-15 05:30:03', '2026-01-15 05:30:03'),
(9, 2, 'Why should I choose Digitex Technologies for web development?', 'We are well known in Birmingham for our commitment to quality and customer satisfaction. We use advanced tools and technologies to create user-friendly websites that enhance user experience and drive conversions, making us a leading choice among website design companies in Birmingham.', 0, 'active', '2026-01-15 05:30:18', '2026-01-15 05:30:18'),
(10, 2, 'Can you help with e-commerce website development?', 'Absolutely! We build robust <a href=\"https://www.digitextechnologies.com/services/ecommerce-solutions/\">e-commerce</a> platforms using WordPress, Shopify or Magento to attract visitors and facilitate smooth transactions. Our solutions include essential security features and customisable options to fit your business model.', 0, 'active', '2026-01-15 05:30:41', '2026-01-15 05:30:41'),
(11, 2, 'How does the web development process work at Digitex?', 'Our process includes an initial consultation to understand your needs, followed by research and design mockups. Once approved, our developers build the site, ensuring you receive a demo for last minute feedback and changes- before final delivery.', 0, 'active', '2026-01-15 05:31:07', '2026-01-15 05:31:07'),
(12, 2, 'Are your websites mobile-friendly?', 'Yes, all websites that we develop are responsive and optimised for mobile devices. This ensures that your site provides a seamless experience across all platforms, which is crucial for engaging users effectively.', 0, 'active', '2026-01-15 05:31:39', '2026-01-15 05:31:39'),
(13, 2, 'What industries do you serve?', 'We have extensive experience working with various industries, including retail, healthcare, finance, education, and more. Our diverse portfolio demonstrates our ability to adapt our services to meet the unique requirements of different sectors.', 0, 'active', '2026-01-15 05:32:08', '2026-01-15 05:32:08'),
(14, 2, 'Do you provide ongoing support after the website launch?', 'Yes, we offer ongoing maintenance and support services to ensure your website remains updated and functional. Our <a href=\"https://www.digitextechnologies.com/team/\">team </a>is available to assist you with any issues or enhancements that might be needed post-launch.', 0, 'active', '2026-01-15 05:33:19', '2026-01-15 05:33:19'),
(15, 2, 'How can I get started with Digitex Technologies?', 'Getting started with us is easy! All you have to do is visit our website and fill in our contact form or call us to schedule a consultation. We’ll discuss your project requirements and outline how we can help bring your vision to life.', 0, 'active', '2026-01-15 05:33:53', '2026-01-15 05:33:53'),
(16, 3, 'How important is responsive design for Essex-based websites?', 'Having a mobile responsive design is crucial for any website as it ensures a seamless user experience across all devices. With over half of global web traffic coming from mobile devices, a responsive site adapts to various screen sizes, enhancing accessibility and engagement. This adaptability not only improves user experience but also positively impacts search engine optimisation (SEO), as Google prioritises mobile-friendly sites in its rankings.', 0, 'active', '2026-01-15 05:42:31', '2026-01-15 05:42:31'),
(17, 3, 'What are the best web hosting options for Essex businesses?', '<p>For businesses in Essex or \r\nanywhere for that matter, selecting the right web hosting option is \r\nvital. Here are some common available options:</p><ul><li><strong>Shared Hosting:</strong> Shared hosting offers a cost-effective solution for small businesses with limited traffic.</li><li><strong>VPS Hosting:</strong> This hosting platform offers more resources and control, suitable for growing businesses.</li><li><strong>Dedicated Hosting:</strong> This kind of hosting is ideal for larger enterprises requiring high performance and security.</li><li><strong>Cloud Hosting:</strong> Cloud hosting provides scalability and flexibility that can accommodate fluctuating traffic demands.</li></ul>', 0, 'active', '2026-01-15 05:43:26', '2026-01-15 05:43:26'),
(18, 3, 'Do you specialise in responsive design for mobile devices?', 'Yes, we specialise in creating responsive designs tailored specifically for mobile devices. Our approach ensures that websites function optimally on smartphones and tablets, enhancing user experience and engagement', 0, 'active', '2026-01-15 05:43:40', '2026-01-15 05:43:40'),
(19, 3, 'What is your pricing structure for development and maintenance?', 'Our pricing structure for web development in Essex is transparent and competitive. We offer customised packages based on the specific needs of each project, including initial development costs and ongoing maintenance fees. This allows you to choose a plan that aligns with your budget and requirements.', 0, 'active', '2026-01-15 05:43:53', '2026-01-15 05:43:53'),
(20, 3, 'What level of ongoing support can you provide after project completion?', 'After project completion, we can offer comprehensive ongoing support, including regular updates, troubleshooting and performance monitoring. Our team is committed to ensuring that your website remains functional and up-to-date, providing peace of mind as your business grows.', 0, 'active', '2026-01-15 05:44:10', '2026-01-15 05:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `service_location_icon_boxes`
--

DROP TABLE IF EXISTS `service_location_icon_boxes`;
CREATE TABLE IF NOT EXISTS `service_location_icon_boxes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_location_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_location_icon_boxes_service_location_id_foreign` (`service_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_location_tab_contents`
--

DROP TABLE IF EXISTS `service_location_tab_contents`;
CREATE TABLE IF NOT EXISTS `service_location_tab_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_location_id` bigint UNSIGNED NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `linked_service` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_location_tab_contents_service_location_id_foreign` (`service_location_id`),
  KEY `service_location_tab_contents_linked_service_foreign` (`linked_service`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_location_tab_contents`
--

INSERT INTO `service_location_tab_contents` (`id`, `service_location_id`, `short_name`, `title`, `image`, `description`, `linked_service`, `created_at`, `updated_at`) VALUES
(1, 1, 'Wordpress', NULL, NULL, 'Using WordPress, we can develop user-friendly and visually stunning websites. WordPress websites come with plenty of customisation options, which allows us to create a website that reflects your brand’s values and showcase your brand’s offerings. These websites are easy to control and easy to optimise for SEO.', NULL, '2026-01-15 05:17:17', '2026-01-15 05:17:17'),
(2, 1, 'Shopify', NULL, NULL, 'We can also develop Shopify based websites for e-commerce businesses in Manchester. These websites offer amazing shopping experiences to users, along with safe payment features. We can integrate advanced marketing tools with Shopify websites as per your needs.', NULL, '2026-01-15 05:17:17', '2026-01-15 05:17:17'),
(3, 1, 'Magento', NULL, NULL, 'Our Magento services for web development in Manchester are best for e-commerce businesses that need a scalable solution. These websites offer flexibility, responsive layouts, advanced product search and filtering, along with a range of features like user friendly navigation, easy integration with third party services and more.', NULL, '2026-01-15 05:17:17', '2026-01-15 05:17:17'),
(4, 1, 'Custom PHP/Laravel', NULL, NULL, 'Our team also uses custom PHP/Laravel when you need a company to begin building a customised website for your business. These websites are high-performance and come with robust security features &amp; strong backend functionality. Laravel websites are the best choice for e-commerce businesses, educational platforms as well as SaaS platforms.', NULL, '2026-01-15 05:17:17', '2026-01-15 05:17:17'),
(5, 2, 'Worldpress', NULL, NULL, '<p>We can build bespoke WordPress websites for businesses that value user \r\nfriendliness, and performance. These websites are generally easy to \r\ncustomise and provide easy media and content management. WordPress \r\nwebsites are easy to optimise for <span style=\"text-decoration: underline;\"><a href=\"https://www.digitextechnologies.com/services/seo-agency/\">SEO</a></span> and help you create a unique image for your brand.</p>', NULL, '2026-01-15 05:38:16', '2026-01-15 05:38:16'),
(6, 2, 'Shopify', NULL, NULL, '<p>We can also build Shopify websites for <span style=\"text-decoration: underline;\"><a href=\"https://www.digitextechnologies.com/services/ecommerce-seo/\">e-commerce</a></span>\r\n businesses to help them attract more visitors and drive conversion. \r\nShopify websites come with effective security features and offer a user \r\nfriendly browsing experience that e-commerce businesses can benefit \r\nfrom. We can also add advanced features with these websites using the \r\nnumerous apps available on Shopify App Store. Likewise, we can offer \r\ncustom designs by using Shopify Liquid code, allowing us to venture \r\noutside of the standardised Shopify themes available!</p>', NULL, '2026-01-15 05:38:16', '2026-01-15 05:38:16'),
(7, 2, 'Magento', NULL, NULL, '<p>We can also develop scalable Magento based websites for large e-commerce\r\n businesses. These websites come with multi-store functionality and \r\nrobust security features and offer advanced customisation. Magento \r\nwebsites can enhance your online visibility, which makes them a great \r\nchoice for companies interested in digital marketing.</p>', NULL, '2026-01-15 05:38:16', '2026-01-15 05:38:16'),
(8, 2, 'Custom PHP/Laravel', NULL, NULL, '<p>For custom web applications we use Laravel, a popular PHP framework. The\r\n Laravel web applications are scalable and offer protection against SQL \r\ninjection and cross site request forgery. They are suitable for large \r\nscale e-commerce businesses due to their ability to support complex \r\nfunctionality.</p>', NULL, '2026-01-15 05:38:16', '2026-01-15 05:38:16'),
(9, 3, 'Wordpress', NULL, NULL, 'Using WordPress, we can build a versatile CMS that supports \r\ncustomisation, user friendliness and easy media &amp; content \r\nmanagement. WordPress websites come with advanced built-in tools and \r\nallow using plugins for various purposes. This kind of website can be <a href=\"https://www.digitextechnologies.com/essex/seo-agency/\"><span style=\"text-decoration: underline;\">SEO</span></a> optimised easily and helps you create a unique image for your brand.', NULL, '2026-01-15 05:41:32', '2026-01-15 05:41:32'),
(10, 3, 'Shopify', NULL, NULL, '<p>Our <span style=\"text-decoration: underline;\"><a href=\"https://www.digitextechnologies.com/services/shopify-development-agency/\">Shopify website development</a></span>\r\n services help e-commerce businesses create visually appealing, \r\nhigh-converting Shopify stores designed to attract customers and boost \r\nsales. These websites feature a user-friendly setup, robust security \r\nmeasures and support a smooth shopping experience. We can also integrate\r\n advanced features with these websites through the apps available on \r\nShopify app store and through custom Shopify Liquid coding/CSS code for \r\ndesign purposes.</p>', NULL, '2026-01-15 05:41:32', '2026-01-15 05:41:32'),
(11, 3, 'Magento', NULL, NULL, '<p>This is another platform we use for building e-commerce websites. \r\nMagento websites come with superior features that support larger \r\nbusinesses. They offer advanced customisation, scalability, multi-store \r\nfunctionality and more. These websites are also great for SEO purposes \r\ndue to their ability to enhance visibility on search engines, thus \r\naiding you in your marketing efforts.</p>', NULL, '2026-01-15 05:41:32', '2026-01-15 05:41:32'),
(12, 3, 'Custom PHP/Laravel', NULL, NULL, '<p>For large scale projects, we use Laravel, which is a popular PHP \r\nframework that allows us to build custom web applications. Using this \r\nplatform, we can develop web solutions that are scalable and have first \r\nclass security features against cross site request forgery and SQL \r\ninjection. These websites can support complex functionality, suitable \r\nfor large-scale e-commerce applications.</p>', NULL, '2026-01-15 05:41:32', '2026-01-15 05:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `service_multiple_sections`
--

DROP TABLE IF EXISTS `service_multiple_sections`;
CREATE TABLE IF NOT EXISTS `service_multiple_sections` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_multiple_sections_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_multiple_sections`
--

INSERT INTO `service_multiple_sections` (`id`, `service_id`, `heading`, `content`, `created_at`, `updated_at`) VALUES
(3, 1, 'Build your dream website with us!', 'Your website offers the first glimpse into your business, but if it doesn’t give potential customers a reason to stay quickly, they won’t. Attention spans are declining, so catching a customer’s eye quickly is vital. However, building an aesthetically pleasing, functional website is time-consuming and labour-intensive. This is where Digitex Technologies can help.<br><br>\r\n\r\nOur web designers have over 15 years of experience building unique websites for our clients, regardless of industry or company size. Combining your vision with our technical and creative expertise, we can ensure that your online presence accurately portrays your brand, helping you achieve your business objectives.', '2026-01-15 06:31:50', '2026-01-15 06:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `service_multisection_contents`
--

DROP TABLE IF EXISTS `service_multisection_contents`;
CREATE TABLE IF NOT EXISTS `service_multisection_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_multisection_contents_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_multisection_contents`
--

INSERT INTO `service_multisection_contents` (`id`, `service_id`, `heading`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 5, 'Proficient & Experienced Laravel Developers', 'Digitex Technologies is a UK based digital agency. We have expertise in providing all in one Laravel solutions for your business. Our Laravel development package is affordable for businesses and all other agencies.\r\n\r\nOur experienced Laravel PHP developers are available and ready to work for projects of any size.', NULL, '2026-01-15 07:45:47', '2026-01-15 07:45:47'),
(2, 5, 'Laravel Development At Digitex Technologies', 'We are a team of skilled, experienced, and acknowledged Laravel developers from the UK. Our award-winning team has built unlimited numbers of sites and systems using the most popular PHP framework. As a top-tier Laravel development agency, our dedicated Laravel development team has the ability to deliver any size projects at an exceptional hourly rate. From developing simple websites to building complex bespoke to vacation booking platforms and all CMS services - we are game for everything.', NULL, '2026-01-15 07:45:47', '2026-01-15 07:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `service_our_benifits`
--

DROP TABLE IF EXISTS `service_our_benifits`;
CREATE TABLE IF NOT EXISTS `service_our_benifits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_our_benifits_service_id_foreign` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_page_linked_services`
--

DROP TABLE IF EXISTS `service_page_linked_services`;
CREATE TABLE IF NOT EXISTS `service_page_linked_services` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linked_with` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_page_linked_services_service_id_foreign` (`service_id`),
  KEY `service_page_linked_services_linked_with_foreign` (`linked_with`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_page_linked_services`
--

INSERT INTO `service_page_linked_services` (`id`, `service_id`, `title`, `linked_with`, `created_at`, `updated_at`) VALUES
(1, 1, 'Website Development', 1, '2026-01-15 06:31:50', '2026-01-15 06:31:50'),
(2, 1, 'Website Design', 1, '2026-01-15 06:31:50', '2026-01-15 06:31:50'),
(3, 1, 'UX/UI Design', 1, '2026-01-15 06:31:50', '2026-01-15 06:31:50'),
(4, 1, 'Logo Design', 1, '2026-01-15 06:31:50', '2026-01-15 06:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `service_steps_contents`
--

DROP TABLE IF EXISTS `service_steps_contents`;
CREATE TABLE IF NOT EXISTS `service_steps_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_steps_contents_service_id_foreign` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_technologies`
--

DROP TABLE IF EXISTS `service_technologies`;
CREATE TABLE IF NOT EXISTS `service_technologies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_technologies_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_technologies`
--

INSERT INTO `service_technologies` (`id`, `service_id`, `name`, `heading`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Wordpress', 'Bespoke WordPress solutions that boosts your online presence!', 'We can build stunning WordPress websites for those who prioritise flexibility, scalability & performance. These websites can help you create a unique online presence for your brand that resonates with your target audience. With our WordPress websites you can also enjoy more control and effortless content management.', 'storage/service/images/IMG_6968bb795613f.png', '2026-01-15 04:33:37', '2026-01-15 04:33:37'),
(2, 1, 'Shopify', 'Launch your dream store in just days!', 'We can help you set up a functional eCommerce store effortlessly with our Shopify web development service. Shopify platforms help you become successful even in the competitive online market as they provide a smooth shopping experience that not only attracts customers but also drives sales.', 'storage/service/images/IMG_6968bb7957948.png', '2026-01-15 04:33:37', '2026-01-15 04:33:37'),
(3, 1, 'Magento', 'Enjoy a scalable website with our robust Magento solutions!', 'For eCommerce businesses, we also offer tailored Magento web development services. Using this platform, our web development company can build you an online store that can grow with your business, providing the scalability and advanced features needed to meet your specific requirements and exceed customer expectations.', 'storage/service/images/IMG_6968bb7959070.png', '2026-01-15 04:33:37', '2026-01-15 04:33:37'),
(4, 1, 'Custom PHP/Laravel', 'Get tailored solutions that fit your business like a glove!', 'We also use Custom PHP/Laravel for bespoke websites that need an extra layer of functionality and/or security. PHP/ Laravel models give you enhanced security, performance, and scalability, ensuring your website is not just functional but also a strategic asset for your business\'s growth.', 'storage/service/images/IMG_6968bb795a63a.png', '2026-01-15 04:33:37', '2026-01-15 04:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `service_what_we_offers`
--

DROP TABLE IF EXISTS `service_what_we_offers`;
CREATE TABLE IF NOT EXISTS `service_what_we_offers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_what_we_offers_service_id_foreign` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_why_choose_us_contents`
--

DROP TABLE IF EXISTS `service_why_choose_us_contents`;
CREATE TABLE IF NOT EXISTS `service_why_choose_us_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_why_choose_us_contents_service_id_foreign` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_why_opt_contents`
--

DROP TABLE IF EXISTS `service_why_opt_contents`;
CREATE TABLE IF NOT EXISTS `service_why_opt_contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` bigint UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `service_why_opt_contents_service_id_foreign` (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_why_opt_contents`
--

INSERT INTO `service_why_opt_contents` (`id`, `service_id`, `content`, `created_at`, `updated_at`) VALUES
(11, 1, 'User friendly', '2026-01-15 06:31:50', '2026-01-15 06:31:50'),
(12, 1, 'High loading speeds', '2026-01-15 06:31:50', '2026-01-15 06:31:50'),
(13, 1, 'Visually stunning interfaces', '2026-01-15 06:31:50', '2026-01-15 06:31:50'),
(14, 1, 'Competitive advantage', '2026-01-15 06:31:50', '2026-01-15 06:31:50'),
(15, 1, 'Intuitive navigation', '2026-01-15 06:31:50', '2026-01-15 06:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_script` text COLLATE utf8mb4_unicode_ci,
  `body_script` text COLLATE utf8mb4_unicode_ci,
  `footer_script` text COLLATE utf8mb4_unicode_ci,
  `type` enum('blog') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('pending','active','blocked') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `image`, `email`, `password`, `type`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'Admin', NULL, 'testing.web012@yopmail.com', '$2y$12$XM6vAjoLgiG5oW7uZk9fp.sIE2h3SKLDlpqQT2xk5DMHhnjLhxUD6', 'admin', 'active', 'xLzPNqQlEma7NeRk7vUKwQFEvaGSxUycsYOid9DmBpycQdWofLCzNuPNPOV8', '2026-01-14 08:57:38', '2026-01-14 08:57:38');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `case_study_challenges`
--
ALTER TABLE `case_study_challenges`
  ADD CONSTRAINT `case_study_challenges_case_study_id_foreign` FOREIGN KEY (`case_study_id`) REFERENCES `case_studies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `case_study_credits`
--
ALTER TABLE `case_study_credits`
  ADD CONSTRAINT `case_study_credits_case_study_id_foreign` FOREIGN KEY (`case_study_id`) REFERENCES `case_studies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `case_study_results`
--
ALTER TABLE `case_study_results`
  ADD CONSTRAINT `case_study_results_case_study_id_foreign` FOREIGN KEY (`case_study_id`) REFERENCES `case_studies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `case_study_screens`
--
ALTER TABLE `case_study_screens`
  ADD CONSTRAINT `case_study_screens_case_study_id_foreign` FOREIGN KEY (`case_study_id`) REFERENCES `case_studies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `case_study_sections`
--
ALTER TABLE `case_study_sections`
  ADD CONSTRAINT `case_study_sections_case_study_id_foreign` FOREIGN KEY (`case_study_id`) REFERENCES `case_studies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `case_study_strategies`
--
ALTER TABLE `case_study_strategies`
  ADD CONSTRAINT `case_study_strategies_case_study_id_foreign` FOREIGN KEY (`case_study_id`) REFERENCES `case_studies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_cms_contents`
--
ALTER TABLE `page_cms_contents`
  ADD CONSTRAINT `page_cms_contents_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `portfolio_challenges`
--
ALTER TABLE `portfolio_challenges`
  ADD CONSTRAINT `portfolio_challenges_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `portfolio_credits`
--
ALTER TABLE `portfolio_credits`
  ADD CONSTRAINT `portfolio_credits_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `portfolio_results`
--
ALTER TABLE `portfolio_results`
  ADD CONSTRAINT `portfolio_results_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `portfolio_screens`
--
ALTER TABLE `portfolio_screens`
  ADD CONSTRAINT `portfolio_screens_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `portfolio_sections`
--
ALTER TABLE `portfolio_sections`
  ADD CONSTRAINT `portfolio_sections_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `portfolio_strategies`
--
ALTER TABLE `portfolio_strategies`
  ADD CONSTRAINT `portfolio_strategies_portfolio_id_foreign` FOREIGN KEY (`portfolio_id`) REFERENCES `portfolios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `posts` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD CONSTRAINT `post_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `services` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Constraints for table `service_blurb_contents`
--
ALTER TABLE `service_blurb_contents`
  ADD CONSTRAINT `service_blurb_contents_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_boxes_contents`
--
ALTER TABLE `service_boxes_contents`
  ADD CONSTRAINT `service_boxes_contents_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_column_contents`
--
ALTER TABLE `service_column_contents`
  ADD CONSTRAINT `service_column_contents_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_faqs`
--
ALTER TABLE `service_faqs`
  ADD CONSTRAINT `service_faqs_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_locations`
--
ALTER TABLE `service_locations`
  ADD CONSTRAINT `service_locations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_location_contents`
--
ALTER TABLE `service_location_contents`
  ADD CONSTRAINT `service_location_contents_service_location_id_foreign` FOREIGN KEY (`service_location_id`) REFERENCES `service_locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_location_faqs`
--
ALTER TABLE `service_location_faqs`
  ADD CONSTRAINT `service_location_faqs_service_location_id_foreign` FOREIGN KEY (`service_location_id`) REFERENCES `service_locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_location_icon_boxes`
--
ALTER TABLE `service_location_icon_boxes`
  ADD CONSTRAINT `service_location_icon_boxes_service_location_id_foreign` FOREIGN KEY (`service_location_id`) REFERENCES `service_locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_location_tab_contents`
--
ALTER TABLE `service_location_tab_contents`
  ADD CONSTRAINT `service_location_tab_contents_linked_service_foreign` FOREIGN KEY (`linked_service`) REFERENCES `services` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `service_location_tab_contents_service_location_id_foreign` FOREIGN KEY (`service_location_id`) REFERENCES `service_locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_multiple_sections`
--
ALTER TABLE `service_multiple_sections`
  ADD CONSTRAINT `service_multiple_sections_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_multisection_contents`
--
ALTER TABLE `service_multisection_contents`
  ADD CONSTRAINT `service_multisection_contents_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_our_benifits`
--
ALTER TABLE `service_our_benifits`
  ADD CONSTRAINT `service_our_benifits_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_page_linked_services`
--
ALTER TABLE `service_page_linked_services`
  ADD CONSTRAINT `service_page_linked_services_linked_with_foreign` FOREIGN KEY (`linked_with`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_page_linked_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_steps_contents`
--
ALTER TABLE `service_steps_contents`
  ADD CONSTRAINT `service_steps_contents_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_technologies`
--
ALTER TABLE `service_technologies`
  ADD CONSTRAINT `service_technologies_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_what_we_offers`
--
ALTER TABLE `service_what_we_offers`
  ADD CONSTRAINT `service_what_we_offers_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_why_choose_us_contents`
--
ALTER TABLE `service_why_choose_us_contents`
  ADD CONSTRAINT `service_why_choose_us_contents_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `service_why_opt_contents`
--
ALTER TABLE `service_why_opt_contents`
  ADD CONSTRAINT `service_why_opt_contents_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
