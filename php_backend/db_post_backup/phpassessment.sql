-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2023 at 08:47 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpassessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `urlToImage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `source_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articles_category_id_foreign` (`category_id`),
  KEY `articles_source_id_foreign` (`source_id`)
) ENGINE=MyISAM AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `urlToImage`, `url`, `author`, `category_id`, `source_id`, `created_at`, `updated_at`) VALUES
(1, 'How Will Joe Biden Be Remembered in 50 Years?', 'He could be seen as the savior of the free world or as the man who came up short.', '31stephens1-tmwg-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/opinion/joe-biden-future-savior.html', 'Bret Stephens', 1, 1, '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(2, 'Air Force Says Proposed Chinese-Owned Mill in North Dakota Is ‘Significant Threat’', 'A proposal for a corn mill, which had been welcomed as an economic development success, reflects just how much things have changed with Chinese investment proposals in the U.S.', '31nat-china-mill-lgmh-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/us/corn-mill-fufeng-china-north-dakota.html', 'Mitch Smith', 2, 2, '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(3, 'U.S. Charges Four in Connection With the Assassination of Haiti’s President', 'The decision to charge the men, considered to be ringleaders in the assassination plot, in the United States is an indication of the chronic dysfunction of the Haitian justice system.', '31dc-haiti-photo1-fblc-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/us/politics/charges-haiti-moise-assassination.html', 'Chris Cameron', 3, 2, '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(4, 'Creator of Divisive King Monument Builds Sculpture for Super Bowl', 'The steel sculpture by Hank Willis Thomas features a football and will be displayed outside State Farm Stadium on Feb. 12.', '31superbowl-sculpture-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/arts/super-bowl-sculpture-hank-willis-thomas.html', 'Kalia Richardson', 4, 3, '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(5, 'DeSantis Takes On the Education Establishment, and Builds His Brand', 'A proposal by Gov. Ron DeSantis of Florida to overhaul higher education would mandate courses in Western civilization, eliminate diversity programs and reduce the protections of tenure.', '31NAT-NEW-COLLEGE-ALT-B-02-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/us/governor-desantis-higher-education-chris-rufo.html', 'Stephanie Saul, Patricia Mazzei and Trip Gabriel', 2, 2, '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(6, 'Dissecting Elon Musk’s Tweets: Memes, Rants, Private Parts and an Echo Chamber', 'As he fights for free speech online and promotes his companies, the new owner of Twitter spends a lot of time replying to his fans.', 'elon-musk-tweets-promo-articleLarge.jpg', 'https://www.nytimes.com/interactive/2023/01/31/technology/elon-musk-tweets.html', 'Sheera Frenkel, Martín González Gómez and Ella Koeze', 5, 4, '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(7, 'Seeing a Prize, Russia Inundates a Ukraine City With Troops', 'The battle in the eastern Ukraine city of Bakhmut is growing in importance, as both sides pour forces into the battle.', '31ukraine-ledeall-vgmf-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/world/europe/russia-ukraine-war-bakhmut.html', 'Matthew Mpoke Bigg and Thomas Gibbons-Neff', 6, 5, '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(8, 'Memphis Officers Had Been Reprimanded After Using Force', 'Four officers charged in Tyre Nichols’s death had been disciplined previously, including two who had failed to report using force during arrests.', '31nat-scorpions-cases-sub-bmwp-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/us/memphis-officers-disciplined-tyre-nichols.html', 'Mike Baker and Matthew Rosenberg', 2, 2, '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(9, '2 Monkeys Taken From Dallas Zoo Are Found at an Empty Home', 'The emperor tamarin monkeys were reported missing on Monday, the latest bizarre incident at the zoo this month. After getting a tip, the police found them on Tuesday in a closet at a home 15 miles away.', '31xp-monkeys-tcvp-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/us/dallas-zoo-monkeys-found.html', 'Livia Albeck-Ripka', 7, 2, '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(10, 'Republicans Assail Vaccine and Mandates With Misleading Claims', 'The House debated for hours on Tuesday before voting for measures that would end a public health emergency and a vaccine mandate for some health care workers.', '31dc-factcheck-photo-wvhf-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/us/politics/republicans-covid-vaccine-mandate-fact-check.html', 'Linda Qiu', 3, 2, '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(11, 'Quotation of the Day: The Queen of Everest Trains at a Whole Foods', 'Quotation of the Day for Wednesday, February 1, 2023.', '31dc-factcheck-photo-wvhf-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/pageoneplus/quotation-of-the-day-the-queen-of-everest-trains-at-a-whole-foods.html', '', 8, 6, '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(12, 'Corrections: Feb. 1, 2023', 'Corrections that appeared in print on Tuesday, Feb. 1, 2023.', '31dc-factcheck-photo-wvhf-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/pageoneplus/corrections-feb-1-2023.html', '', 9, 6, '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(13, 'Administration Expected to Endorse Limited Drilling in Alaska Project', 'An environmental review expected soon would effectively signal that the Willow project proceed, according to people familiar with the report.', '00cli-willow1-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/climate/willow-alaska-oil-drilling.html', 'Lisa Friedman', 10, 7, '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(14, 'Coach Who Posed as a High School Player in Virginia Causes Season’s Forfeit', 'The Portsmouth Public Schools received a report last week that an assistant coach had played in a girls’ junior varsity basketball game on Jan. 21. The team decided not to go forward with the season.', '31xp-coach-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/us/girls-basketball-virginia-coach.html', 'Eduardo Medina', 7, 2, '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(15, 'Aspiring Rapper and 2 Friends Disappeared After Canceled Detroit Show', 'Missing persons and homicide units in Michigan are investigating what happened to the three men, who haven’t been heard from since Jan. 21.', '31xp-rappers-articleLarge-v2.jpg', 'https://www.nytimes.com/2023/01/31/us/missing-rappers-detroit.html', 'April Rubin', 7, 2, '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(16, 'Not Flummoxed', 'Get sucked in by Dan Caprera’s puzzle.', '01wordplay-comet-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/crosswords/daily-puzzle-2023-02-01.html', 'Rachel Fabi', 11, 8, '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(17, 'Trump’s Fund-Raising in First Weeks of ’24 Race Is Relatively Weak', 'After announcing presidential runs, Mitt Romney, Hillary Clinton and Jeb Bush all raised more per day in their out-of-the-gates fund-raising periods.', '31trump-finance-zqct-articleLarge.jpg', 'https://www.nytimes.com/2023/01/31/us/politics/trump-fundraising-2024-campaign.html', 'Michael C. Bender and Maggie Haberman', 12, 2, '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(18, 'As Parisians March to Fight Pension Changes, Shopkeepers Nod and Agree', 'Angry protests over a plan to raise France’s retirement age pile uncertainty on small businesses, but most are siding with the demonstrators.', '01france-smallbiz-01-fzwl-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/france-pension-protests-shopkeepers.html', 'Liz Alderman', 5, 9, '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(19, 'Your Wednesday Briefing', 'Europe’s economic recovery.', '01ambriefing-europe-nl-europe-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/briefing/europe-economy-israel-russia-ukraine.html', 'Natasha Frost', 13, 10, '2023-03-29 08:32:16', '2023-03-29 08:32:16'),
(20, 'Will the Gateway Tunnel Finally Become Reality?', 'President Biden came to town to commit $292 million to the long-delayed project, but that doesn’t mean it will really happen.', '01nytoday-biden-tunnel-hmjp-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/nyregion/will-the-gateway-tunnel-finally-become-reality.html', 'James Barron', 14, 11, '2023-03-29 08:32:16', '2023-03-29 08:32:16'),
(21, 'Word of the Day: covet', 'This word has appeared in 61 articles on NYTimes.com in the past year. Can you use it in a sentence?', 'WOTD-kowtow-16-articleLarge.png', 'https://www.nytimes.com/2023/02/01/learning/word-of-the-day-covet.html', 'The Learning Network', 15, 12, '2023-03-29 08:32:16', '2023-03-29 08:32:16'),
(22, 'The College Application Process', 'Are you applying to college right now? What has your experience been like? What matters most in choosing the right college, in your opinion?', '24focusgroup-articleLarge.png', 'https://www.nytimes.com/2023/02/01/learning/the-college-application-process.html', 'The Learning Network', 15, 12, '2023-03-29 08:32:16', '2023-03-29 08:32:16'),
(23, 'Spelling Bee Forum', 'Feeling stuck on today’s puzzle? We can help.', '01bee-forum-wed-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/crosswords/spelling-bee-forum.html', 'New York Times Games', 11, 8, '2023-03-29 08:32:17', '2023-03-29 08:32:17'),
(24, 'The Next Retirement Communities Won’t Be Just for Seniors', 'New developments that integrate senior housing into age-diverse apartment buildings offer a more affordable alternative to isolated suburban retirement communities.', '00db-seniorhousing-articleLarge.png', 'https://www.nytimes.com/2023/02/01/business/dealbook/senior-retirement-communities.html', 'Patrick Sisson', 5, 9, '2023-03-29 08:32:17', '2023-03-29 08:32:17'),
(25, 'To Prevent Cancer, More Women Should Consider Removing Fallopian Tubes, Experts Say', 'A top research group is urging even women without genetic risks to have their fallopian tubes removed under certain circumstances.', '01ovarian-cancer-lmjb-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/health/ovarian-cancer-fallopian-tubes.html', 'Roni Caryn Rabin', 16, 13, '2023-03-29 08:32:17', '2023-03-29 08:32:17'),
(26, 'As Officers Beat Tyre Nichols, a Crime-Fighting Camera Watched Over Them', 'A SkyCop camera in Memphis provided overhead footage that was instrumental in shaping the public’s understanding of what unfolded.', '31nat-memphis-camera-promo-vfzb-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/skycop-camera-tyre-nichols-memphis.html', 'Rick Rojas and Jesus Jiménez', 2, 2, '2023-03-29 08:32:17', '2023-03-29 08:32:17'),
(27, 'What Exxon and Chevron Are Doing With Those Big Profits', 'Economic and military uncertainty clouds the outlook for Exxon, Chevron and other energy companies, whose bonanza from high prices is already fading.', '31oil-profits-01-mcql-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/energy-environment/exxon-chevron-oil-gas-profit.html', 'Clifford Krauss', 5, 9, '2023-03-29 08:32:18', '2023-03-29 08:32:18'),
(28, 'Jimmy Kimmel Puts Mike Lindell Inside a Claw Machine', 'The MyPillow founder and election denier wanted to appear on “Jimmy Kimmel Live” again, but the host had one condition.', '01latenight-articleLarge-v2.png', 'https://www.nytimes.com/2023/02/01/arts/television/jimmy-kimmel-mike-lindell-claw-machine.html', 'Trish Bendix', 4, 3, '2023-03-29 08:32:18', '2023-03-29 08:32:18'),
(29, 'Pope, in Congo, Urges an End to the Country’s Cycle of Violence', 'Francis began the second day of his visit to Africa with a direct appeal to the warring groups in the Democratic Republic of Congo to put down their weapons and forgive one another.', '01pope-congo-01-kqlg-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/africa/pope-francis-africa-congo.html', 'Jason Horowitz and Abdi Latif Dahir', 6, 5, '2023-03-29 08:32:18', '2023-03-29 08:32:18'),
(30, 'This Guide Can Help You Save Money and Fight Climate Change', 'Whether you are renovating your home, upgrading appliances or buying an electric car, this guide can help you take advantage of savings from the Inflation Reduction Act.', '00cli-guide-promo-articleLarge.jpg', 'https://www.nytimes.com/interactive/2023/climate/tax-breaks-inflation-reduction-act.html', 'Nadja Popovich and Elena Shao', 10, 7, '2023-03-29 08:32:18', '2023-03-29 08:32:18'),
(31, '$1.9 Million Homes in Arizona, Florida and Massachusetts', 'A Spanish-style house in Phoenix, a Craftsman bungalow in Tampa and a 1916 Colonial Revival home in Lexington.', '01WYG-PHOENIX-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/realestate/home-prices-arizona-florida-massachusetts.html', 'Angela Serratore', 17, 14, '2023-03-29 08:32:19', '2023-03-29 08:32:19'),
(32, 'Stocks Keep Climbing as Wall St. and Fed Diverge', 'Recent stock gains have been driven by hope that a rate-raising cycle may be over. The Fed keeps telling investors that it’s not.', '01stocks-promo-articleLarge.png', 'https://www.nytimes.com/2023/02/01/business/stock-market-federal-reserve.html', 'Joe', 5, 9, '2023-03-29 08:32:19', '2023-03-29 08:32:19'),
(33, 'The Problem With Taking TikTok Away From Americans', 'A national ban on TikTok would not solve America’s data privacy problems.', '01gerstell-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/tiktok-ban-china.html', 'Glenn S. Gerstell', 1, 1, '2023-03-29 08:32:19', '2023-03-29 08:32:19'),
(34, 'What to Watch at the Fed’s First Meeting of 2023', 'The central bank is expected to lift interest rates and offer signals about what might come next.', '01dc-fedpreview1-sub-lvpf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/economy/federal-reserve-interest-rates.html', 'Jeanna Smialek', 5, 9, '2023-03-29 08:32:19', '2023-03-29 08:32:19'),
(35, 'Biden and McCarthy Discuss Debt Limit as Financial Crisis Looms', 'The meeting, which did not appear to yield a breakthrough, highlighted the differences between the White House and the Republicans who now control the House.', '01dc-debt-tzwp-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/biden-mccarthy-debt-limit.html', 'Jim Tankersley, Catie Edmondson and Zolan Kanno-Youngs', 3, 2, '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(36, 'Be Open to Spiritual Experience. Also, Be Really Careful.', 'The reasonability and risks of metaphysical experimentation.', '01douthat1-jqtv-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/american-religion-spirituality.html', 'Ross Douthat', 1, 1, '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(37, 'It’s as if Nothing Ever Happened Here in China', 'China left its vulnerable people to fend for themselves in a deadly Covid outbreak. ', '01Meng-mwvp-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/china-covid-holiday-new-year.html', 'Lucy Meng', 1, 1, '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(38, 'The Unlikely New TikTok Influencers: Old-School Watch Dealers', 'Their rapid-fire haggling in Manhattan’s diamond district teases the fantasy of making a market, rather than just being subject to it.', '05mag-screenland-articleLarge-v2.jpg', 'https://www.nytimes.com/2023/02/01/magazine/tiktok-watch-dealers.html', 'Jasper Craven', 18, 15, '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(39, 'How to Stop Ruminating', 'Stuck in a mental loop of worries and problems that seem to have no end? Here’s what you can do.', '05mag-screenland-articleLarge-v2.jpg', 'https://www.nytimes.com/2023/02/01/well/mind/stop-rumination-worry.html', 'Hannah Seo', 19, 16, '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(40, 'Memphis Gathers in Grief at Tyre Nichols’s Funeral', 'His death after he was beaten by the police inspired anger and sorrow across the country. His family remembers him as a “beautiful soul.”', '01tyre-nichols-funeral-sharpton-topart-cjzg-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/tyre-nichols-funeral-memphis.html', 'Rick Rojas', 2, 2, '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(41, 'Hochul’s $227 Billion Budget Plan Targets New York City’s Urgent Needs', 'Gov. Kathy Hochul’s budget proposal included a multiyear plan to help bail out the city’s ailing subway system and address the migrant crisis.', 'new-hochul-01-jhmc-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/nyregion/hochul-budget-taxes-bail.html', 'Luis Ferré-Sadurní', 14, 11, '2023-03-29 08:32:21', '2023-03-29 08:32:21'),
(42, 'Space and Astronomy in February: What to Expect', 'The shortest month of 2023 will have plenty of highlights in orbit and beyond.', '01sci-spacecalendar-february-preview2-gwqt-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/science/space-astronomy-february.html', 'Michael Roston', 16, 17, '2023-03-29 08:32:21', '2023-03-29 08:32:21'),
(43, 'Five Minutes That Will Make You Love 21st-Century Jazz', 'We’ve done a lot of listening back. So where is jazz today? Writers and musicians including Sonny Rollins, Melanie Charles and Terri Lyne Carrington share their favorites from this millennium.', '01fiveminutes-21st-century-cover-articleLarge.png', 'https://www.nytimes.com/2023/02/01/arts/music/21st-century-jazz-music.html', 'Giovanni Russonello', 4, 3, '2023-03-29 08:32:21', '2023-03-29 08:32:21'),
(44, 'Motorcycle Rides, Beach Breezes and the Shrimp I’ll Never Forget', 'Reader, I don’t even remember his name. But I can still taste the buttery garlic shrimp we shared by the roadside — a modern classic in Hawaii if there ever was one.', '05mag-eat-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/magazine/butter-garlic-shrimp-hawaii-recipe.html', 'Ligaya Mishan', 18, 15, '2023-03-29 08:32:21', '2023-03-29 08:32:21'),
(45, 'Salman Rushdie’s Miracle City', 'His new novel is about a kingdom that is founded on pluralism but fails to live up to its ideals.', '05Rushdie-COVER-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/books/review/salman-rushdie-victory-city.html', 'Michael Gorra', 20, 18, '2023-03-29 08:32:22', '2023-03-29 08:32:22'),
(46, 'Bias and Human Error Played Parts in F.B.I.’s Jan. 6 Failure, Documents Suggest', 'The F.B.I. appeared to be blinded by a lack of imagination, a narrow focus on “lone wolf” offenders and a misguided belief that the threat from the far left was as great as that from the far right, new congressional documents show.', '31dc-fbi-hjwl-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/trump-jan-6-fbi.html', 'Adam Goldman and Alan Feuer', 3, 2, '2023-03-29 08:32:22', '2023-03-29 08:32:22'),
(47, 'What to Know About Menopause and Hormone Therapy', 'There has long been an effective, F.D.A.-approved treatment for some menopausal symptoms, but too few women have a clear picture of its risks and benefits.', '05mag-menopause-takeaway-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/magazine/hormone-therapy-women-menopause.html', 'The New York Times', 18, 15, '2023-03-29 08:32:22', '2023-03-29 08:32:22'),
(48, 'How Much Longer Can ‘Vote Blue No Matter Who!’ Last?', '“It’s important not to overstate the damage that some perceive liberalism as having done to the Democrats’ electoral fortunes,” one scholar says.', '01edsall-1-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/democratic-party-coalition.html', 'Thomas B. Edsall', 1, 1, '2023-03-29 08:32:22', '2023-03-29 08:32:22'),
(49, 'Women Have Been Misled About Menopause', 'Hot flashes, sleeplessness, pain during sex: For some of menopause’s worst symptoms, there’s an established treatment. Why aren’t more women offered it?', '05mag-menopause-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/magazine/menopause-hot-flashes-hormone-therapy.html', 'Susan Dominus', 18, 15, '2023-03-29 08:32:23', '2023-03-29 08:32:23'),
(50, 'She Lost Her Childhood Home Over Taxes. Then It Erupted in Flames.', 'For years, Eve Morawski waged an epic battle against real estate investors who bought her tax debt and ultimately seized her Maplewood, N.J., home.', '00nj-arson_1-qhwb-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/nyregion/nj-maplewood-home-arson.html', 'Tracey Tully', 21, 11, '2023-03-29 08:32:23', '2023-03-29 08:32:23'),
(51, 'Oscar Isaac, Rachel Brosnahan and the Draw of a Neglected Hansberry Play', 'The first major New York revival of “The Sign in Sidney Brustein’s Window,” Lorraine Hansberry’s 1964 Broadway play, comes to BAM this month. What took so long?', '05brustein-05-bhvc-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/theater/oscar-isaac-rachel-brosnahan-sign-in-sidney-brusteins-window.html', 'Alexis Soloski', 22, 19, '2023-03-29 08:32:23', '2023-03-29 08:32:23'),
(52, 'Vaccine Makers Kept $1.4 Billion in Prepayments for Canceled Covid Shots for the World’s Poor', 'Separately, Johnson & Johnson is demanding additional payment for unwanted shots, confidential documents show.', '00vaccines-fees-01-qjml-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/health/covid-vaccines-covax-gavi-prepayments.html', 'Stephanie Nolen and Rebecca Robbins', 16, 13, '2023-03-29 08:32:23', '2023-03-29 08:32:23'),
(53, 'They Call Her the Godmother of Southern Seeds for a Reason', 'For a quarter of a century, Ira Wallace has nurtured seeds and gardeners: ‘When you say her name in our community, all this love comes up.’', 'oakImage-1675105214931-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/realestate/ira-wallace-seed-exchange-south.html', 'Margaret Roach', 17, 14, '2023-03-29 08:32:24', '2023-03-29 08:32:24'),
(54, 'Living In ... Bridgeport, Conn.', 'This Fairfield County city is working to shed its ‘rundown’ image, although progress is happening slowly: “The city’s turning itself around.”', '01LIVING-BRIDGEPORT-articleLarge.jpg', 'https://www.nytimes.com/slideshow/2023/02/01/realestate/living-in-bridgeport-conn.html', '', 23, 14, '2023-03-29 08:32:24', '2023-03-29 08:32:24'),
(55, 'Bridgeport, Conn.: ‘A Diamond in the Rough’ Reinventing Itself', 'This Fairfield County city is working to shed its ‘rundown’ image, although progress is happening slowly: “The city’s turning itself around.”', '01LIVING-BRIDGEPORT-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/realestate/bridgeport-connecticut-homes.html', 'C. J. Hughes', 17, 14, '2023-03-29 08:32:24', '2023-03-29 08:32:24'),
(56, '13 New Books Coming in February', 'A salty historical romp, two deep dives into the entertainment industry, a handful of memoirs and Salman Rushdie’s much-anticipated new novel, “Victory City.”', '26FEBBOOKS-1-articleLarge.png', 'https://www.nytimes.com/2023/02/01/books/february-books.html', 'Joumana Khatib', 24, 18, '2023-03-29 08:32:25', '2023-03-29 08:32:25'),
(57, 'Asia Is Loosening Rules on Masks. Here’s Why People Still Wear Them.', 'Many other countries dropped pandemic mask requirements months ago. But in places like South Korea, which got rid of its rule this week, masks remain common.', '00asia-masks-01-twgf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/asia/covid-masks-asia.html', 'John Yoon and Hikari Hida', 6, 5, '2023-03-29 08:32:25', '2023-03-29 08:32:25'),
(58, 'The State of the U.S. Economy in 4 Numbers', 'A look at key figures and what they reveal about the current economic situation.', '00asia-masks-01-twgf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/podcasts/the-daily/us-economy-inflation-layoffs-housing-market.html', 'Michael Barbaro, Asthaa Chaturvedi, Mary Wilson, Lisa Chow, John Ketchum, Dan Powell, Marion Lozano, Elisheba Ittoop and Chris Wood', 25, 20, '2023-03-29 08:32:25', '2023-03-29 08:32:25'),
(59, 'Seeking a Needle in a Haystack, Australians Find Lost Radioactive Device in Six Days', 'The authorities had feared it would take weeks to scour hundreds of miles of an Australian desert for the pea-sized device.', '01oz-capsule1-tfvw-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/asia/australia-radioactive-capsule.html', 'Yan Zhuang', 6, 5, '2023-03-29 08:32:25', '2023-03-29 08:32:25'),
(60, 'Eurozone Inflation Slows Sharply as Energy Costs Continue to Ease', 'Prices rose at an annual rate of 8.5 percent last month, down from 9.2 percent in December, but signs of persistent cost increases remain.', '01eu-inflation-promo-lcbf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/eurozone-inflation.html', 'Liz Alderman', 5, 9, '2023-03-29 08:32:25', '2023-03-29 08:32:25'),
(61, 'Three Young Girls Went Into the Woods. Two Came Out.', 'Kate Alice Marshall’s new novel, “What Lies in the Woods,” is elevated by unexpected plot twists, deep psychological perspicacity, and an endlessly interesting dance between past and present.', '05THRILLERS-articleLarge-v2.jpg', 'https://www.nytimes.com/2023/02/01/books/review/new-thrillers.html', 'Sarah Lyall', 20, 18, '2023-03-29 08:32:26', '2023-03-29 08:32:26'),
(62, 'Policing the Wrong Way', 'Memphis’s Scorpion is the latest special police unit to come under scrutiny.', '01themorning-lead-kjwv-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/briefing/memphis-scorpion-unit-tyre-nichols-death.html', 'German Lopez', 13, 10, '2023-03-29 08:32:26', '2023-03-29 08:32:26'),
(63, 'Student Vocabulary Challenge: Invent a Word', 'Come up with your own addition to the English language. Suggest a new word by Feb. 28, and it could become our April Fools’ Word of the Day.', 'FebVocabChallengeLN-articleLarge.png', 'https://www.nytimes.com/2023/02/01/learning/student-vocabulary-challenge-invent-a-word.html', 'The Learning Network', 15, 12, '2023-03-29 08:32:26', '2023-03-29 08:32:26'),
(64, 'Our 10th Annual 15-Second Vocabulary Video Challenge', 'We invite students to create a short video that defines or teaches any of the words in our Word of the Day collection. Contest dates: Feb. 15-March 15, 2023.', '00alchemycoverln-articleLarge.png', 'https://www.nytimes.com/2023/02/01/learning/our-10th-annual-15-second-vocabulary-video-challenge.html', 'The Learning Network', 15, 12, '2023-03-29 08:32:26', '2023-03-29 08:32:26'),
(65, 'Willie Nelson, Missy Elliott and Sheryl Crow Nominated for Rock Hall', 'Cyndi Lauper, Joy Division, George Michael and the White Stripes are also among the first-time nominees up for induction this year.', '01rock-hall-hvcm-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/music/rock-and-roll-hall-of-fame-nominees.html', 'Julia Jacobs', 4, 3, '2023-03-29 08:32:27', '2023-03-29 08:32:27'),
(66, 'Wall Street Has a Lot Riding on the Fed’s Rate Decision', 'Stocks and bonds are on an impressive run so far this year, driven by hopes the Federal Reserve will slow down, or even pause, its interest rate increases.', '01DB-powell-hwbk-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/dealbook/markets-fed-rates-stocks-bonds.html', 'Andrew Ross Sorkin, Ravi Mattu, Bernhard Warner, Sarah Kessler, Michael J. de la Merced, Lauren Hirsch and Ephrat Livni', 5, 9, '2023-03-29 08:32:27', '2023-03-29 08:32:27'),
(67, 'India’s Right Wing Tried to Scuttle a Film. Fans Helped It Break Records.', '“Pathaan” demonstrated the crosscutting appeal of the Bollywood titan Shah Rukh Khan, who re-emerged on the big screen after a difficult personal period.', '01india-movie-01-ltkv-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/asia/pathaan-shah-rukh-khan.html', 'Mujib Mashal', 6, 5, '2023-03-29 08:32:27', '2023-03-29 08:32:27'),
(68, 'Tom Brady Says He’s Retiring, for Good This Time', 'Brady, whose career spanned 23 seasons and seven Super Bowl wins, announced his retirement in a social media post.', '01nfl-brady-vgqf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/football/tom-brady-retires.html', 'Emmanuel Morgan', 26, 21, '2023-03-29 08:32:27', '2023-03-29 08:32:27'),
(69, 'How Can I Possibly Trust My Daughter After She Betrayed Me?', 'In the course of offering financial advice, a mother shared a personal story about her marriage with her adult daughter, who later forwarded the entire exchange to her father.', 'socialqs-2021-artwork-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/style/family-betrayal-trust.html', 'Philip Galanes', 27, 22, '2023-03-29 08:32:28', '2023-03-29 08:32:28'),
(70, 'A New Video Series Explores Criminal Justice From the Inside Out', '“Inside Story,” produced by the Marshall Project and Vice News, reports on crime and punishment from the perspective of former prisoners.', '05insidestory1-vlmh-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/television/inside-story.html', 'Kalia Richardson', 22, 3, '2023-03-29 08:32:28', '2023-03-29 08:32:28'),
(71, 'More Than 500,000 Acres of Public Land in California Are Inaccessible to the Public', 'Until recently, the existence of these lands was largely unknown.', '00elk-mountain-lede-alt-1-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/public-land-california.html', 'Soumya Karlamangla', 2, 2, '2023-03-29 08:32:28', '2023-03-29 08:32:28'),
(72, 'A.I. Bots Can’t Report This Column. But They Can Improve It.', 'ChatGPT isn’t the only writing assistant that has emerged to replace editors. We tested it alongside two others to assess their strengths and weaknesses.', '01techfix-gpt-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/technology/personaltech/chatgpt-ai-bots-editing.html', 'Brian X. Chen', 5, 4, '2023-03-29 08:32:28', '2023-03-29 08:32:28'),
(73, 'The College Board Strips Down Its A.P. Curriculum for African American Studies', 'The official course looks different from a previous draft: No more critical race theory, and the study of contemporary topics — like Black Lives Matter — is optional.', '01NAT-COLLEGEBOARD-HFO-qtkh-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/college-board-advanced-placement-african-american-studies.html', 'Anemona Hartocollis and Eliza Fawcett', 2, 2, '2023-03-29 08:32:29', '2023-03-29 08:32:29'),
(74, 'Celebrating Black History With The New York Times', 'Recent and archival articles, essays, photographs, videos, infographics, writing prompts, lesson plans and more.', '25specialprojects-BHM-timeline-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/learning/lesson-plans/black-history-month.html', 'The Learning Network', 15, 12, '2023-03-29 08:32:29', '2023-03-29 08:32:29'),
(75, 'Saudi Sponsorship Catches Women’s World Cup Hosts by Surprise', 'Officials from Australia and New Zealand were blindsided by reports that FIFA would make Saudi Arabia’s tourism authority a partner for the tournament.', '01worldcup-saudi-fpwj-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/soccer/saudi-arabia-womens-world-cup.html', 'Natasha Frost', 26, 21, '2023-03-29 08:32:29', '2023-03-29 08:32:29'),
(76, 'With a Complete Effort, LeBron James Closes In on Scoring Record', 'A triple-double in an overtime win emphasized that James, who is on the verge of passing Kareem Abdul-Jabbar’s career points total, is nowhere near done.', '01nba-lebron-keepingscore-1-htwv-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/basketball/lebron-james-record-lakers-knicks.html', 'Victor Mather', 26, 21, '2023-03-29 08:32:29', '2023-03-29 08:32:29'),
(77, 'Beyoncé Announces Renaissance World Tour', 'The star’s first solo tour since 2016 will start May 10 in Stockholm.', '01beyonce-item-lmcz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/music/beyonce-renaissance-tour.html', 'Joe Coscarelli', 4, 3, '2023-03-29 08:32:30', '2023-03-29 08:32:30'),
(78, 'Leslie Odom Jr. Plans Return to Broadway in ‘Purlie Victorious’', 'Kenny Leon will direct the revival of Ossie Davis’s 1961 play, which is expected to run this summer at an unspecified Broadway theater.', '01purlie-hkwf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/theater/leslie-odom-jr-purlie-victorious-broadway.html', 'Michael Paulson', 4, 19, '2023-03-29 08:32:30', '2023-03-29 08:32:30'),
(79, 'Tired: Organized Fridges. Wired: Shoe Boxes in the Kitchen.', 'Julia Fox, Marie Kondo and a momfluencing vibe shift.', '01grose-newsletter-images-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/tiktok-julia-fox.html', 'Jessica Grose', 1, 1, '2023-03-29 08:32:30', '2023-03-29 08:32:30'),
(80, 'What Are You Doing to Take Care of Your Health?', 'What good habits for your mental and physical well-being do you practice now? What goals do you have? What tips can you offer other teens?', 'WNT-TRAMPOLINING1-articleLarge.png', 'https://www.nytimes.com/2023/02/01/learning/what-are-you-doing-to-take-care-of-your-health.html', 'Katherine Schulten', 15, 12, '2023-03-29 08:32:30', '2023-03-29 08:32:30'),
(81, 'She Went Viral Mocking Trump. Now Sarah Cooper Is Taking on a New Role.', 'She is making her professional stage debut in the Off Broadway drama “The Wanderers,” and fulfilling a childhood dream. “It’s transformative,” she said.', '31COOPER1alt-kwvm-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/theater/sarah-cooper-the-wanderers.html', 'Michael Paulson', 4, 19, '2023-03-29 08:32:31', '2023-03-29 08:32:31'),
(82, '​​​​F.B.I. Search of Biden Beach House Finds No Classified Documents', 'The search, like at least two others conducted at locations associated with President Biden, was undertaken with the cooperation of the president and his legal team.', '01dc-bidendocs-zpfl-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/fbi-biden-rehoboth.html', 'Glenn Thrush, Michael D. Shear and Maggie Haberman', 3, 2, '2023-03-29 08:32:31', '2023-03-29 08:32:31'),
(83, 'Allan A. Ryan, Dogged Pursuer of Nazi Collaborators, Dies at 77', 'As the director of the U.S. Office of Special Investigations, he identified and prosecuted dozens of former camp guards and other henchmen.', '27ryan1-gjfz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/allan-a-ryan-dead.html', 'Clay Risen', 28, 2, '2023-03-29 08:32:31', '2023-03-29 08:32:31'),
(84, 'U.S. Survey Shows an Uptick in Job Openings, and Not in Layoffs', 'The Labor Department found a rise in the number of posted jobs per worker in December, despite the Fed’s efforts to cool the labor market.', '01econ-jolts-jbvz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/economy/labor-jolts-report-layoffs.html', 'Lydia DePillis', 5, 9, '2023-03-29 08:32:31', '2023-03-29 08:32:31'),
(85, 'Tate Modern’s Viewing Platform Is a Nuisance, Top U.K. Court Says', 'For years, tourists could look from the top of London’s most popular art museum into the apartments opposite. Soon, they may be permanently stopped from doing so.', 'tate-modern-bcvg-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/design/tate-modern-apartments-supreme-court.html', 'Alex Marshall', 4, 3, '2023-03-29 08:32:32', '2023-03-29 08:32:32'),
(86, 'The Miracle of Crispy Cheese', 'Thoughts on frico and Ali Slagle’s recipe for cauliflower with Parmesan.', 'as-roasted-cauliflower-with-parmesan1-mbvg-articleLarge-v2.jpg', 'https://www.nytimes.com/2023/02/01/dining/the-miracle-of-crispy-cheese.html', 'Melissa Clark', 29, 23, '2023-03-29 08:32:32', '2023-03-29 08:32:32'),
(87, 'Is It Safe to Travel to Mexico? Here’s What You Need to Know.', 'A spate of incidents, including protests among taxi drivers in Cancún and a stray bullet at an airport in Culiacán, has tourists asking the question.', '03travel-mexico-violence-01-bvzh-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/travel/mexico-travel-safe.html', 'Elisabeth Malkin', 30, 24, '2023-03-29 08:32:32', '2023-03-29 08:32:32'),
(88, 'What the End of the Covid Public Health Emergency Could Mean for You', 'The emergency expires in May, complicating access to tests and treatment in the U.S.', 'WELL-PANDEMIC-EMERGENCY-END1-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/well/live/covid-public-health-emergency.html', 'Dani Blum', 19, 16, '2023-03-29 08:32:32', '2023-03-29 08:32:32'),
(89, 'Meet the Women Trying to Avoid a Spending Train Wreck in Congress', 'For the first time, the leaders of the House and Senate Appropriations Committees are all women, as is the top White House budget official. Can they avert a fiscal disaster? They’re determined to try.', '00dc-spending-01-fmpl-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/congress-spending-bills-appropriations-committees.html', 'Emily Cochrane', 3, 2, '2023-03-29 08:32:33', '2023-03-29 08:32:33'),
(90, 'The Fed Raises Rates a Quarter Point and Signals More Ahead', 'America’s central bank has shifted into a new phase, raising rates more slowly as inflation shows signs of moderating.', 'fed-rate-promo-articleLarge-v3.png', 'https://www.nytimes.com/2023/02/01/business/federal-reserve-interest-rates.html', 'Jeanna Smialek and Isabella Simonetti', 5, 9, '2023-03-29 08:32:33', '2023-03-29 08:32:33'),
(91, 'A Modern Take on the Hudson River School Tradition', 'In his first show at Gagosian, opening Thursday, the painter Cy Gavin explores the land that has both empowered and inspired him.', '01gavin1-zqfw-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/dance/cy-gavin-gagosian.html', 'Robin Pogrebin', 4, 3, '2023-03-29 08:32:33', '2023-03-29 08:32:33'),
(92, 'Tom Brady: Answering the Questions You Didn’t Know You Had', 'All about Super Bowls, crypto, deflated footballs and Gisele Bündchen. And 23 seasons piling up the stats.', '01brady-factsWEB1-fzjm-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/football/tom-brady-retired-career.html', 'Victor Mather', 26, 21, '2023-03-29 08:32:33', '2023-03-29 08:32:33'),
(93, 'What Fed Rate Increases Mean for Mortgages, Credit Cards and More', 'Savers will benefit and borrowers can expect to pay more on credit cards, student loans and other forms of debt.', '01fed-live-blog-consumer1-pmzc-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/fed-rates-mortgages-credit-cards.html', 'Tara Siegel Bernard', 5, 9, '2023-03-29 08:32:34', '2023-03-29 08:32:34'),
(94, 'GoodRx Leaked User Health Data to Facebook and Google, F.T.C. Says', 'The popular drug discount app deceptively shared details on users’ illnesses and medicines with ad firms, regulators said in a legal complaint.', '01ftc-goodrx-01-wfzh-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/goodrx-user-data-facebook-google.html', 'Natasha Singer', 5, 9, '2023-03-29 08:32:34', '2023-03-29 08:32:34'),
(95, 'Self-Driving Car Services Want to Expand in San Francisco Despite Recent Hiccups', 'Waymo and Cruise hope to widen their projects to more of the city. But local officials are increasingly concerned about breakdowns causing congestion.', '00selfdriving-stall-01-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/technology/self-driving-taxi-san-francisco.html', 'Cade Metz', 5, 4, '2023-03-29 08:32:35', '2023-03-29 08:32:35'),
(96, 'Biden Clears the Way for Alaska Oil Project', 'The administration issued an analysis that indicates a scaled-back version of the Willow project could go forward. Opponents call the drilling plan a “carbon bomb.”', '01cli-willowdrilling-01-zptm-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/climate/alaska-willow-oil-drilling-biden.html', 'Lisa Friedman', 10, 7, '2023-03-29 08:32:36', '2023-03-29 08:32:36'),
(97, '‘Lemons’ Review: A Fun Thought Exercise, Without Deep Thoughts', 'On London’s West End, Aidan Turner and Jenna Coleman star in a lightly dystopian comedy that succeeds as a portrait of a troubled couple, but falls short as political satire.', '01lemons-review1-zhbk-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/theater/lemons-lemons-lemons-lemons-lemons-review-aidan-turner.html', 'Houman Barekat', 4, 19, '2023-03-29 08:32:37', '2023-03-29 08:32:37'),
(98, 'Small and Scrappy Is the Way for London’s Galleries After Brexit', 'The city’s art market is shrinking and some major players have left. But young dealerships presenting work by emerging artists are springing up in their place.', '01london-galleries-01-vfpg-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/design/london-galleries-brexit.html', 'Scott Reyburn', 4, 3, '2023-03-29 08:32:38', '2023-03-29 08:32:38'),
(99, 'Adani, Embattled Indian Company, Scraps $2.5 Billion Share Sale', 'The cancellation of the offering is a blow to the company and its billionaire owner, Gautam Adani.', '01adani-sale-gkzf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/adani-enterprises-share-sale.html', 'Bernhard Warner', 5, 9, '2023-03-29 08:32:39', '2023-03-29 08:32:39'),
(100, 'Judge Is Said to Let Meta’s Virtual Reality Deal Move Forward', 'The ruling is a defeat for the Federal Trade Commission, which used a rare antitrust argument to try to block Meta’s acquisition of a small start-up.', '00meta-suit-hfo-02-hmwj-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/technology/meta-within-deal-ftc.html', 'David McCabe and Sheera Frenkel', 5, 4, '2023-03-29 08:32:40', '2023-03-29 08:32:40'),
(101, 'Review: Dvorak’s ‘Poetic Tone Pictures’ Makes Its Carnegie Debut', 'The pianist Leif Ove Andsnes brought Dvorak’s sprawling 1889 rarity to New York with committed playing and interpretive wisdom.', '01andsnes-review-jfmh-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/music/leif-ove-andsnes-carnegie-hall-review.html', 'Joshua Barone', 4, 3, '2023-03-29 08:32:42', '2023-03-29 08:32:42'),
(102, 'Breanna Stewart Will Sign With Liberty, Joining Fellow M.V.P. Jonquel Jones', 'Stewart, a two-time W.N.B.A. and four-time N.C.A.A. champion, had been outspoken about player travel leading up to the free-agent signing period.', '01wnba-stewart-kwmj-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/basketball/breanna-stewart-liberty-wnba.html', 'David Waldstein', 26, 21, '2023-03-29 08:32:42', '2023-03-29 08:32:42'),
(103, 'Transit Employee Killed in Shooting at D.C. Metro Station', 'The employee was killed while trying to protect a customer from a gunman who had confronted people on a bus and then in a Metro station, officials said. Three others were injured.', '01dc-shooting_3-wkbl-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/dc-metro-shooting.html', 'Mark Walker', 3, 2, '2023-03-29 08:32:44', '2023-03-29 08:32:44'),
(104, 'As Energy Costs Bite, Museums Rethink a Conservation Credo', 'Tight climate controls have become the norm to protect artworks and artifacts. But as heating and electricity prices soar, Europe’s museums administrators are wondering whether the rules need to be so strict.', '31museum-energy-01-tbkz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/design/museums-energy-climate-control.html', 'Alex Marshall', 4, 3, '2023-03-29 08:32:45', '2023-03-29 08:32:45'),
(105, 'Eagles’ Josh Sills Indicted on Rape and Kidnapping Charges', 'Joshua Sills, 25, was indicted in Ohio in the rape of a woman in December 2019, prosecutors announced on Wednesday.', '01xp-sills01-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/football/philly-eagles-josh-sills-rape.html', 'Johnny Diaz', 7, 21, '2023-03-29 08:32:46', '2023-03-29 08:32:46'),
(106, 'Art Gallery Shows to See in February', 'Looking for new art in New York this weekend?‌ ‌ ‌Start in Chelsea for Nicole Eisenman’s retrospective and Ayanna Dozier’s solo show. And don’t miss Dave Schubert’s photographs.', '22galleries4-hjmc-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/design/new-york-art-galleries-february.html', 'Holland Cotter, Blake Gopnik, Jillian Steinhauer, Travis Diehl, Max Lakin, Arthur Lubow, John Vincler, Will Heinrich and Martha Schwendener', 24, 3, '2023-03-29 08:32:47', '2023-03-29 08:32:47'),
(107, 'The Controversy Over ‘American Dirt’', 'Readers discuss criticisms of Jeanine Cummins’s novel about a woman trying to flee Mexico. Also: Marjorie Taylor Greene’s antisemitic comments; Chinese child-rearing.', '26Paul-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/letters/jeanine-cummins-american-dirt.html', '', 31, 1, '2023-03-29 08:32:48', '2023-03-29 08:32:48'),
(108, 'Gawker, the Irreverent Gossip Site, Will Be Shuttered Again', 'Bustle Digital Group, which publishes Gawker, said it would shut down the recently revived site after “a surprisingly difficult” start to the year.', '01bdg-cgkz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/business/media/bdg-gawker-shuttering.html', 'Katie Robertson', 5, 9, '2023-03-29 08:32:49', '2023-03-29 08:32:49'),
(109, 'Al Sharpton again stands at the pulpit after a death involving the police.', 'The Rev. Al Sharpton has delivered remarks at other prominent funerals of Black victims of police violence, including of George Floyd, whose 2020 death in Minneapolis sparked national protests.', '01tyre-nichols-funeral-sharpton-topart-cjzg-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/al-sharpton-tyre-nichols-funeral.html', 'Eliza Fawcett', 2, 2, '2023-03-29 08:32:50', '2023-03-29 08:32:50'),
(110, 'Kerry Condon: ‘I Don’t Think Anything Has Ever Come Easy to Me’', 'An ardent animal lover, the supporting actress Oscar nominee for “The Banshees of Inisherin” channeled grief from her dog’s death into her performance.', '01PROJECTIONIST-KERRYCONDON-09-wbkl-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/movies/kerry-condon-banshees-of-inisherin.html', 'Kyle Buchanan', 4, 25, '2023-03-29 08:32:51', '2023-03-29 08:32:51'),
(111, 'Biden Calls for Limits on Ticket Fees for Concerts and Sporting Events', 'The president made the proposal at a meeting of his competition council, roughly a week after lawmakers scrutinized Ticketmaster.', '01TICKETMASTER-jvgh-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/concert-ticket-fees-biden.html', 'Matt Stevens', 24, 3, '2023-03-29 08:32:52', '2023-03-29 08:32:52'),
(112, 'Bon Voyage, Boeing 747. You Really Did Change Everything.', 'How the “Queen of the Skies” transformed air travel and our global community.', '02verhovek2-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/last-boeing-747-queen-of-the-skies.html', 'Sam Howe Verhovek', 1, 1, '2023-03-29 08:32:53', '2023-03-29 08:32:53'),
(113, 'The Dying Practice of Time and a Half', 'Employers inflate employee titles to dodge an important worker protection.', '01coy-image-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/worker-overtime-protection-pay.html', 'Peter Coy', 1, 1, '2023-03-29 08:32:54', '2023-03-29 08:32:54'),
(114, 'What’s in Our Queue? An Elena Ferrante Adaptation and More', 'I\'m an editor in the Book Review. Here are five things I\'ve been watching and reading.', '05QUEUE-KHATIB-01-mqht-articleLarge.jpg', 'https://www.nytimes.com/interactive/2023/02/01/arts/editors-recommendations-lying-life.html', 'Joumana Khatib', 32, 3, '2023-03-29 08:32:55', '2023-03-29 08:32:55'),
(115, 'Tanglewood’s Summer Season Blends Familiar and New', 'The Boston Symphony Orchestra, grappling with leadership turnover, hopes to attract audiences with a program of classics and contemporary fare.', '01tanglewood-mvhz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/arts/music/tanglewood-summer-2023.html', 'Javier C. Hernández', 24, 3, '2023-03-29 08:32:57', '2023-03-29 08:32:57'),
(116, 'Nonbinary Broadway Performer Opts Out of Gendered Tony Awards', 'Justin David Sullivan of “& Juliet” decided to abstain from consideration and urged awards shows to “expand their reach.”', '01tonys-nonbinary-vlbp-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/theater/tonys-justin-david-sullivan-and-juliet.html', 'Michael Paulson', 24, 19, '2023-03-29 08:32:58', '2023-03-29 08:32:58'),
(117, 'Tom Brady’s Retirement Is the Best Thing for Football', 'Give Brady his due but let Patrick Mahomes and all of the other young, exciting quarterbacks take it from here.', '01streeter-sot-brady-01-zkjf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/football/tom-brady-retires-mahomes.html', 'Kurt Streeter', 26, 21, '2023-03-29 08:32:59', '2023-03-29 08:32:59'),
(118, 'Ben Crump has represented the families of Tyre Nichols, George Floyd, Breonna Taylor and more.', 'The killing of Trayvon Martin, an unarmed Black teenager who was fatally shot by a neighborhood watch volunteer in a suburb of Orlando, Fla., catapulted Mr. Crump into the spotlight.', '27tyre-nichols-death-crump-02-tvkj-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/ben-crump-tyre-nichols-george-floyd-breonna-taylor.html', 'Remy Tumin', 2, 2, '2023-03-29 08:33:00', '2023-03-29 08:33:00'),
(119, 'An ailing Navalny describes a prison move that will extend his isolation.', '“Even maniacs and serial killers serving life sentences have the right to receive a visit, but I don’t,” the Russian opposition leader wrote on Twitter.', '01ukraine-briefing-navalny-promo-vtfz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/europe/navalny-russia-prison.html', 'Anushka Patil', 6, 5, '2023-03-29 08:33:01', '2023-03-29 08:33:01'),
(120, 'Ukraine Fears New Offensive Is Underway as Russia Masses Troops', 'Russia is massing hundreds of thousands of troops and stepping up its bombardment, perhaps signaling the biggest assault since the start of the war. “I think it has started,” Ukraine’s leader says.', '01ukraine-offensive-1-pbmh-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/europe/ukraine-russia-offensive.html', 'Marc Santora and Michael Schwirtz', 6, 5, '2023-03-29 08:33:02', '2023-03-29 08:33:02'),
(121, 'OpenAI to Offer New Version of ChatGPT for a $20 Monthly Fee', 'The San Francisco artificial intelligence lab has seen overwhelming interest in its chatbot since it was released in November.', '01chatgptplus-pic-gpkq-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/technology/openai-chatgpt-plus-subscription.html', 'Cade Metz', 5, 4, '2023-03-29 08:33:03', '2023-03-29 08:33:03'),
(122, 'Israel’s Government Is Trying to Turn the Film Industry Into a Propaganda Arm', 'Documentary films have long been a way of holding the Israeli government to task. Some elected officials don’t want that to continue.', '01sheizaf1-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/israel-government-film-propaganda.html', 'Noam Sheizaf', 1, 1, '2023-03-29 08:33:04', '2023-03-29 08:33:04');
INSERT INTO `articles` (`id`, `title`, `body`, `urlToImage`, `url`, `author`, `category_id`, `source_id`, `created_at`, `updated_at`) VALUES
(123, 'At Tyre Nichols’s Funeral, Vice President Kamala Harris Calls on Congress to Act', '“You have been extraordinary in terms of your strength, your courage and your grace,” she said to his mother and stepfather.', '01tyre-nichols-funeral-harris-tpgw-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/kamala-harris-tyre-nichols-funeral.html', 'Jacey Fortin', 2, 2, '2023-03-29 08:33:05', '2023-03-29 08:33:05'),
(124, 'Why Do Bears Rub Against Trees? Scientists Offer New Explanation.', 'Experiments suggested that when bears rub against tree bark, they may be trying to do more than scratch an itch or mark territory.', '01tb-bearticks1-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/science/bears-trees-ticks.html', 'Rebecca Dzombak', 16, 17, '2023-03-30 05:17:02', '2023-03-30 05:17:02'),
(125, '5 Cozy Hotels Where Winter Is a Treat', 'From a luxurious cabin in the Catskills to a Victorian-era inn in the Scottish Highlands, here are a few places where you can curl up and watch the snow fall.', '01tb-bearticks1-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/travel/cozy-winter-hotels.html', 'Stephanie Rosenbloom', 30, 24, '2023-03-30 05:17:02', '2023-03-30 05:17:02'),
(126, 'How a Faked-Evidence Case Against an Ex-N.Y.P.D. Detective Crumbled', 'The prosecutor in charge repeatedly failed to turn over information to defense attorneys, infuriating a judge, who called the delayed handoff “outrageous.”', '01franco-vgpc-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/nyregion/franco-bragg-nypd-faked-evidence-case.html', 'Jonah E. Bromwich and Maria Cramer', 14, 11, '2023-03-30 05:17:03', '2023-03-30 05:17:03'),
(127, 'Why Iran’s Missile Program Alarms Its Rivals', 'A drone attack on a military facility in central Iran, said to be the work of Israel’s intelligence agency, focused renewed attention on Tehran’s advancing missile capabilities.', '01iran-missile-explainer-01-pmgb-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/middleeast/iran-missile-program-israel.html', 'Cora Engelbrecht', 6, 5, '2023-03-30 05:17:04', '2023-03-30 05:17:04'),
(128, 'A Couple Danced in Tehran’s Streets. Now They Are in Prison.', 'Iranian authorities sentenced a young couple to five years in prison after they posted a video of themselves dancing in the streets at the height of the country’s protests.', '01iran-couple-1-hcpw-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/middleeast/iran-couple-dancing-prison.html', 'Cora Engelbrecht', 6, 5, '2023-03-30 05:17:06', '2023-03-30 05:17:06'),
(129, 'Meta Posts $4.2 Billion Restructuring Charge', 'The company, which is in the midst of shifting to become a metaverse business, also forecast revenue would beat Wall Street predictions.', '01meta-01-cjqt-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/technology/meta-restructuring-charge.html', 'Mike Isaac', 5, 4, '2023-03-30 05:17:07', '2023-03-30 05:17:07'),
(130, 'Your Thursday Briefing: Rising Militancy in Pakistan', 'Also, Adani Enterprises pulls its offering and soldiers die on both sides in Bakhmut.', '02ambriefing-asia-nl-PAKISTAN-01-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/briefing/pakistan-peshawar-bombing-adani-asia.html', 'Amelia Nierenberg', 13, 10, '2023-03-30 05:17:08', '2023-03-30 05:17:08'),
(131, 'Federal Reserve Announces Quarter-Point Interest Rate Increase', 'Jerome H. Powell, the Federal Reserve chair, said more rate increases were likely even as economic data showed inflation had eased.', '01fed-rate-hp-bpmq-articleLarge.jpg', 'https://www.nytimes.com/video/business/economy/100000008751694/powell-fed-interest-rates.html', 'The New York Times', 33, 9, '2023-03-30 05:17:09', '2023-03-30 05:17:09'),
(132, 'Has the Russian Offensive Begun?', 'Ukraine is bracing for a major escalation in the Donbas.', '01russia-ukraine-briefing-NL-1-lwmv-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/briefing/russia-ukraine-war-trade.html', 'Carole Landry', 13, 10, '2023-03-30 05:17:10', '2023-03-30 05:17:10'),
(133, 'A major police reform bill is back in the spotlight.', 'The George Floyd Justice in Policing Act, which targeted racial bias and use of force, stalled in Congress during President Biden’s first year in office.', '01tyre-nichols-funeral-george-floyd-act-01-bfgw-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/george-floyd-act-tyre-nichols.html', 'Remy Tumin', 2, 2, '2023-03-30 05:17:11', '2023-03-30 05:17:11'),
(134, 'Hard Drinking and Murky Finances: How an American Veterans Group Imploded in Ukraine', 'The Mozart Group was training Ukrainian soldiers and evacuating frontline residents until the money ran out. Its collapse sheds light on the stresses faced by such groups.', '01ukraine-mozart-group-01-phzf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/europe/american-veterans-ukraine-mozart.html', 'Jeffrey Gettleman', 6, 5, '2023-03-30 05:17:12', '2023-03-30 05:17:12'),
(135, 'Amritpal Singh: Rumours swirl in hunt for fugitive Indian preacher - BBC', 'Rumours are circulating about the whereabouts of a controversial self-styled Indian preacher, more than 10 days after he went on the run.\r\nA massive operation is under way to find Amritpal Singh, who… [+5649 chars]', '_128800322_gettyimages-1247416049-594x594.jpg', 'https://www.bbc.com/news/world-asia-india-65108291', 'https://www.facebook.com/bbcnews', 34, 26, '2023-03-30 05:28:37', '2023-03-30 05:28:37'),
(136, 'Heartbroken Nashville community grapples with school shooting as police uncover more details about the shooter - CNN', 'Editors Note: This story contains graphic descriptions of violence.\r\nAs a heartbroken Nashville community grapples with the mass shooting that claimed the lives of three 9-year-old children and three… [+7991 chars]', '230328220028-20-nashville-school-shooting-0327.jpg', 'https://www.cnn.com/2023/03/29/us/covenant-school-shooting-nashville-tennessee-wednesday/index.html', 'Nouran Salahieh', 34, 27, '2023-03-30 05:28:38', '2023-03-30 05:28:38'),
(137, 'Marjorie Taylor Greene restricted on Twitter after Nashville shooting - USA TODAY', 'WASHINGTONAnother day, another social media restriction for Rep. Marjorie Taylor Greene. \r\nThe Georgia Republican\'s congressional account was restricted Tuesday after she repeatedly posted an image w… [+1986 chars]', 'ef8de3eb-43b8-488c-ac2e-f4cddb23c391-AFP_AFP_33C32G9.jpg', 'https://www.usatoday.com/story/news/politics/2023/03/29/marjorie-taylor-greene-restricted-twitter-nashville-shooting/11559961002/', 'Candy Woodall', 34, 28, '2023-03-30 05:28:39', '2023-03-30 05:28:39'),
(138, 'At least 40 dead in Mexico migrant centre fire as rights groups blame overcrowding - The Guardian', 'Rights groups have blamed poor conditions and overcrowding for a fire that killed at least 40 migrants from Central and South America at a migrant detention centre in Ciudad Juárez, a Mexican city on… [+5292 chars]', '5000.jpg', 'https://www.theguardian.com/world/2023/mar/29/mexico-migrant-facility-fire-deaths-ciudad-juarez', 'Tom Phillips', 34, 29, '2023-03-30 05:28:40', '2023-03-30 05:28:40'),
(139, 'Ukraine live briefing: Zelensky says Bakhmut loss would let Russia push for unfavorable deal - The Washington Post', 'Ukrainian President Volodymyr Zelensky said Ukrainian forces must hang onto the front-line city of Bakhmut. A loss there, he said, would provide Russias leader with greater leverage to negotiate a pe… [+6830 chars]', 'imrs.php', 'https://www.washingtonpost.com/world/2023/03/29/russia-ukraine-war-news/', 'Annabelle Timsit, Rachel Pannett', 34, 30, '2023-03-30 05:28:52', '2023-03-30 05:28:52'),
(140, 'China threatens to take \'resolute countermeasures\' over meeting between Taiwan\'s Tsai, House Speaker McCarthy - Fox News', 'China has threatened to retaliate against the United States and Taiwan over a planned meeting between Taiwanese President Tsai Ing-wen and House Speaker Kevin McCarthy.\r\nBeijing has repeatedly allege… [+2803 chars]', 'GettyImages-1249835876.jpg', 'https://www.foxnews.com/world/china-threatens-take-resolute-countermeasures-meeting-between-taiwans-tsai-house-speaker-mccarthy', 'Lawrence Richard', 34, 31, '2023-03-30 05:28:52', '2023-03-30 05:28:52'),
(141, 'WHO experts revise Covid-19 vaccine advice, say healthy kids and teens low risk - CNN', 'The World Health Organizations vaccine experts have revised their global Covid-19 vaccination recommendations, and healthy kids and teenagers considered low priority may not need to get a shot. \r\nThe… [+3009 chars]', '230323050028-01-covid-shot-stock.jpg', 'https://www.cnn.com/2023/03/29/health/who-updates-covid-vaccine-recommendations-intl-hnk/index.html', 'Carma Hassan, Helen Regan', 34, 27, '2023-03-30 05:28:53', '2023-03-30 05:28:53'),
(142, 'European markets head for a broadly higher open, but doubts linger over banking sector - CNBC', 'European stock markets were higher on Wednesday, as investor doubts over the health of the banking sector continued to wane.\r\nThe pan-European Stoxx 600 index was up 0.9% in early afternoon trade, wi… [+1945 chars]', '107111800-1661935577906-GettyImages-1241892086.jpg', 'https://www.cnbc.com/2023/03/29/european-markets-live-updates-stocks-news-data-and-earnings.html', 'Jenni Reid, Holly Ellyatt', 34, 32, '2023-03-30 05:28:55', '2023-03-30 05:28:55'),
(143, 'Bronny James highlights from 2023 McDonald\'s All-American Game - ESPN', NULL, 'maxresdefault.jpg', 'https://www.youtube.com/watch?v=m835CZ8wVGc', NULL, 34, 33, '2023-03-30 05:28:56', '2023-03-30 05:28:56'),
(144, 'Asian stocks rally as banking anxiety eases; Alibaba surges - Yahoo Finance', 'By Amanda Cooper\r\nLONDON (Reuters) - Global shares rose on Wednesday, as investors took heart from a greater degree of stability in the banking sector, but the sense of optimism wasn\'t robust enough … [+4296 chars]', '640791df11179b23572d19e6a776a4a4', 'https://finance.yahoo.com/news/asian-stocks-rally-banking-anxiety-023030473.html', 'Amanda Cooper', 34, 34, '2023-03-30 05:28:58', '2023-03-30 05:28:58'),
(145, 'Carjacker dies after jumping from California police car during pursuit - New York Post ', 'A California man who carjacked a police cruiser died after he jumped out the vehicle during a high-speed pursuit on Tuesday, cops said. \r\nThe man, whose identity has not yet been released, bailed out… [+1144 chars]', 'NYPICHPDPICT000008919059.jpg', 'https://nypost.com/2023/03/28/man-dies-after-bailing-from-moving-police-car-during-pursuit/', 'Katherine Donlevy', 34, 35, '2023-03-30 05:29:00', '2023-03-30 05:29:00'),
(146, 'Roger Goodell defends Thursday Night Football flex proposal, NFL owners postpone vote - The Athletic', 'NFL Commissioner Roger Goodell addressed a possible vote that would allow flexible scheduling for Thursday Night Football in Weeks 14 through  17. Heres what you need to know:\r\n<ul><li>The vote is in… [+3653 chars]', 'USATSI_19987764-1024x683.jpg', 'https://theathletic.com/4359196/2023/03/28/roger-goodell-thursday-night-football/', 'The Athletic Staff, Mike Jones', 34, 36, '2023-03-30 05:29:01', '2023-03-30 05:29:01'),
(147, 'Gwyneth Paltrow’s Daughter Said Actress in ‘State of Shock’ After Ski Crash - Rolling Stone', 'In the second week of the Gwyneth Paltrow ski saga, the court heard excerpts from statements given by the actress’ children, Apple and Moses Martin. \r\nDepositions given by Apple and Moses were read b… [+3107 chars]', 'Gwyneth-Paltrow.jpg', 'https://www.rollingstone.com/tv-movies/tv-movie-news/gwyneth-paltrow-daughter-apple-testifies-ski-crash-trial-1234705236/', 'Charisma Madarang', 34, 37, '2023-03-30 05:29:04', '2023-03-30 05:29:04'),
(148, '\'Something has to change\': Reese Witherspoon to make pro-gun control legislation donations - WZTV', NULL, 'b9347976-d6ef-4ea3-812b-641a09beb094-large16x9_80d7a5effd4e4539bf756452e16bd6b2large16x9_78454dcff80a4247aad317b4423bbc15AP21214560664457.jpg', 'https://fox17.com/news/local/nashville-middle-tennessee-google-inews-facebook-twitter-tiktok-something-has-to-change-reese-witherspoon-makes-donations-for-gun-control-legislation', 'Kat Gerasimenko', 34, 38, '2023-03-30 05:29:07', '2023-03-30 05:29:07'),
(149, 'Woody Johnson \'anxious\' for Aaron Rodgers trade, but optimistic in Jets\' plan - New York Post ', 'PHOENIX Jets owner Woody Johnson said hes anxious to get a trade done for Packers quarterback Aaron Rodgers, but trusts the plan the team has in place.\r\nI think were anxious, Johnson said Tuesday at … [+3727 chars]', 'newspress-collage-26339021-1680047774701.jpg', 'https://nypost.com/2023/03/28/jets-woody-johnson-anxious-for-aaron-rodgers-trade-to-happen/', 'Brian Costello', 34, 35, '2023-03-30 05:29:08', '2023-03-30 05:29:08'),
(150, 'Ben Gvir reportedly set to detail plan for billion-shekel, 1,800-man national guard - The Times of Israel', 'National Security Minister Itamar Ben Gvir plans to detail elements of his proposal to create a new security force, which may include a billion-shekel budget and nearly 2,000 officers, a source close… [+4681 chars]', '000_337Z6QF-e1674853115784-1024x640.jpg', 'https://www.timesofisrael.com/ben-gvir-reportedly-set-to-detail-plan-for-billion-shekel-1800-man-national-guard/', NULL, 34, 39, '2023-03-30 05:29:09', '2023-03-30 05:29:09'),
(151, 'Dominion wants Fox hosts, including Tucker Carlson and Sean Hannity, to testify - CNN', 'Your browser isnt supported anymore. Update it to get the best YouTube experience and our latest features. Learn more\r\nRemind me later', '', 'https://www.youtube.com/watch?v=8Pjpv8XcyTw', NULL, 34, 33, '2023-03-30 05:34:36', '2023-03-30 05:34:36'),
(152, 'Philly tap water still safe to drink and ‘will not be impacted’ by chemical spill, city says - WHYY', 'City officials say Philadelphia residents’ drinking water is safe and will not be impacted by the chemical spill that occurred Friday on a tributary of the Delaware River.\r\nIt’s safe, it’s contaminan… [+1861 chars]', 'kenney-water-safe.jpg', 'https://whyy.org/articles/philadelphia-water-contamination-threat-over/', NULL, 34, 40, '2023-03-30 05:34:38', '2023-03-30 05:34:38'),
(153, 'Five planets aligning in the sky this week - CBS News', NULL, 'maxresdefault.jpg', 'https://www.youtube.com/watch?v=HLXb2Ll3PX8', NULL, 34, 33, '2023-03-30 05:34:39', '2023-03-30 05:34:39'),
(154, 'Light-bending gravity reveals one of the biggest black holes ever found - Phys.org', 'A team of astronomers has discovered one of the biggest black holes ever found, taking advantage of a phenomenon called gravitational lensing.\r\nThe team, led by Durham University, UK, used gravitatio… [+4064 chars]', 'light-bending-gravity.jpg', 'https://phys.org/news/2023-03-light-bending-gravity-reveals-biggest-black.html', 'Science X', 34, 41, '2023-03-30 05:34:41', '2023-03-30 05:34:41'),
(155, 'Supreme Court considers $6bn deal that shields Sacklers - BBC.com', 'By Brandon DrenonBBC News, Washington\r\nThe US Supreme Court has heard fiery arguments over a bankruptcy deal for Purdue Pharma, which may shield the Sackler family from future lawsuits. \r\nIn 2022 the… [+7348 chars]', '_131922934_27c0789c368df4d84f4329c6af3290ff6eeb106f.jpg', 'https://www.bbc.com/news/world-us-canada-67618641', NULL, 34, 26, '2023-12-06 03:22:26', '2023-12-06 03:22:26'),
(156, 'House explodes as police in Arlington, Virginia, try to execute search warrant, police say - CBS News', 'A house exploded in Arlington, Virginia, as police were attempting to execute a search warrant, authorities said Monday.\r\nPolice were sent to the home around 4:45 p.m. after receiving a report about … [+2241 chars]', 'arlington-house-explosion.png', 'https://www.cbsnews.com/news/house-explosion-arlington-virginia-flare/', 'Jordan Freiman', 34, 42, '2023-12-06 03:22:28', '2023-12-06 03:22:28'),
(157, 'Shohei Ohtani, Blue Jays believed to have met Monday at team’s Florida complex - The Athletic', 'NASHVILLE, Tenn. In the clearest sign yet of the Blue Jays interest in Shohei Ohtani, club officials are believed to have met Monday with the Japanese superstar at the teams spring-training complex i… [+4076 chars]', 'USATSI_20841218-scaled.jpg', 'https://theathletic.com/5113061/2023/12/05/blue-jays-shohei-ohtani-meeting/', 'Ken Rosenthal', 34, 36, '2023-12-06 03:22:30', '2023-12-06 03:22:30'),
(158, 'Fox News\' Brit Hume Gives Republicans Damning Reality Check About Trump 2024 - Yahoo News', 'Fox News analyst Brit Hume downplayed the threat Donald Trump poses to democracy and at the same time warned Republicans about what nominating the former president would really mean for the party. \r\n… [+3895 chars]', '656ea7b8230000c971ea6d98.jpeg', 'https://www.huffpost.com/entry/brit-hume-trump-2024-fox-news_n_656e9b49e4b0dcfcc9813629', 'Ed Mazza', 34, 43, '2023-12-06 03:22:54', '2023-12-06 03:22:54'),
(159, 'Jake Browning Bengals beat Jaguars but Trevor Lawrence injured - ESPN', 'JACKSONVILLE, Fla. -- The Jacksonville Jaguars fell to the Cincinnati Bengals 34-31 on \"Monday Night Football\" in a game that saw quarterback Trevor Lawrence leave in the fourth quarter with a right … [+5226 chars]', 'i', 'https://www.espn.com/nfl/story/_/id/39044690/bengals-jaguars-monday-night-football-jake-browning-trevor-lawrence', 'Ben Baby, Michael DiRocco', 34, 44, '2023-12-06 03:22:56', '2023-12-06 03:22:56'),
(160, 'Oil prices little changed amid OPEC+ cut doubts, Mid-East tension - Reuters', 'Beijing, Dec 5 (Reuters) - Oil prices held steady on Tuesday amid uncertainty over voluntary output cuts by the OPEC+ group of producers, tensions in the Middle East and weak economic data from the U… [+1847 chars]', 'MWBP3RIWX5MTVMQQ6WASJSAXC4.jpg', 'https://www.reuters.com/business/energy/oil-prices-steady-amid-opec-cut-doubts-mid-east-tension-2023-12-05/', 'Reuters', 34, 45, '2023-12-06 03:22:58', '2023-12-06 03:22:58'),
(161, 'Former Miss America Runner-Up Shares Her Addiction Struggles - E! NEWS', 'A former beauty queen is getting candid about her journey to sobriety. \r\nCullen Johnson Hill, who was first runner-up in the Miss America1995 pageant, gave an unfiltered look at \"what addiction looks… [+912 chars]', 'cr_1200x1200-231204191101-Screenshot_2023-12-04_at_6.59.35_PM.png', 'https://www.eonline.com/news/1390867/former-miss-america-runner-up-cullen-johnson-hill-shares-her-addiction-struggles-after-jail-time', 'Lindsay Weinberg', 34, 46, '2023-12-06 03:23:02', '2023-12-06 03:23:02'),
(162, 'India returns Chandrayaan-3 propulsion module to Earth orbit - SpaceNews', 'WASHINGTON The spacecraft that transported the Chandrayaan-3 lander to the moon has returned to Earth orbit, a demonstration of technologies to support a future Indian lunar sample return mission.\r\nT… [+3943 chars]', 'cyyan3-propmodule.jpg', 'https://spacenews.com/india-returns-chandrayaan-3-propulsion-module-to-earth-orbit/', 'Jeff Foust', 34, 47, '2023-12-06 03:23:03', '2023-12-06 03:23:03'),
(163, 'Israel orders evacuations as it widens offensive, but Palestinians are running out of places to go - The Associated Press', 'KHAN YOUNIS, Gaza Strip (AP) Israeli warplanes heavily bombarded an area around Khan Younis in southern Gaza on Monday as the military ordered mass evacuations from the town in the face of a widening… [+10026 chars]', '90', 'https://apnews.com/article/israel-hamas-war-news-12-04-2023-ece85568ce36cb2315f26b10adda30fa', 'NAJIB JOBAIN, SAMY MAGDY, JACK JEFFERY', 34, 48, '2023-12-06 03:23:05', '2023-12-06 03:23:05'),
(164, 'Sen. Rick Scott demands answers over FSU snubbing as anger builds over college football pick - POLITICO', 'Even former President Donald Trump weighed in, posting on Truth Social that FSU was treated very badly by the committee and then added really bad lobbying effort. Lets blame DeSanctimonious. DeSantis… [+4120 chars]', 'acc-championship-football-48449.jpg', 'https://www.politico.com/news/2023/12/04/fsu-snubbed-college-football-pick-00129917', NULL, 34, 49, '2023-12-06 03:23:07', '2023-12-06 03:23:07'),
(165, 'Proposed merger of Alaska and Hawaiian airlines a promising fit that should improve air travel for residents of each state, observers say - Anchorage Daily News', 'Alaska Airlines and Hawaiian Airlines plan to combine operations. (Larry MacDougal via AP on left, Bill Roth / ADN on right) \r\nResidents of Hawaii and Alaska, two states with close ties despite their… [+8071 chars]', 'V6MMYIO6TBHORIIJIRFMP64MNY.jpg', 'https://www.adn.com/business-economy/2023/12/04/proposed-merger-of-alaska-and-hawaiian-airlines-a-promising-fit-that-should-improve-air-travel-for-residents-of-each-state-observers-say/', 'Alex DeMarban', 34, 50, '2023-12-06 03:23:09', '2023-12-06 03:23:09'),
(166, 'Suspected serial killer appears in L.A. court - KTLA 5', NULL, 'maxresdefault.jpg', 'https://www.youtube.com/watch?v=Wazk3C0GnY0', NULL, 34, 33, '2023-12-06 03:23:10', '2023-12-06 03:23:10'),
(167, 'NCAA transfer portal 2024: Live updates, college football transfer tracker, news powered by 247Sports - CBS Sports', 'The NCAA transfer portal cycle for the 2024 college football season has officially opened. The portal has fully cranked into gear with the FBS transfer window beginning Dec. 4 and ending Jan. 2, 2024… [+1267 chars]', 'dante-moore-ucla-bruins-usatsi.jpg', 'https://www.cbssports.com/college-football/news/ncaa-transfer-portal-2024-live-updates-college-football-transfer-tracker-news-powered-by-247sports/live/', 'Dean Straka', 34, 51, '2023-12-06 03:23:12', '2023-12-06 03:23:12'),
(168, 'Outbreaks of Pneumonia Are Now Affecting Children in Multiple Countries - ScienceAlert', 'You may have heard reports about outbreaks of pneumonia affecting children in the Netherlands, Denmark and parts of the US and China, which are higher than usual for this time of year.\r\nParents are k… [+4659 chars]', 'MysteryChildIllnessFlaringDuringCovid19_1024.jpg', 'https://www.sciencealert.com/outbreaks-of-pneumonia-are-now-affecting-children-in-multiple-countries', 'The Conversation', 34, 52, '2023-12-06 03:23:13', '2023-12-06 03:23:13'),
(169, 'Former US ambassador accused of acting as covert agent for Cuba - Al Jazeera English', 'The United States Department of Justice (DOJ) has charged a former US ambassador to Bolivia for allegedly working with Cuban intelligence services as an undercover agent for several decades.\r\nIn cour… [+3103 chars]', 'AP23337858956701-1701706845.jpg', 'https://www.aljazeera.com/news/2023/12/4/former-us-ambassador-accused-of-acting-as-covert-agent-for-cuba', 'Al Jazeera', 34, 53, '2023-12-06 03:23:14', '2023-12-06 03:23:14'),
(170, 'New Mexico veterinarian warns dog owners about mysterious illness spreading nationwide - KOB 4', 'ALBUQUERQUE, N.M. A mysterious and potentially deadly illness continues to infect dogs nationwide, so New Mexico’s top veterinarian is warning dog owners what to look out for.\r\nThe disease reportedly… [+1812 chars]', 'MYSTERIOUS-DOG-ILLNESS.jpg', 'https://www.kob.com/new-mexico/new-mexico-veterinarian-warns-dog-owners-about-mysterious-illness-spreading-nationwide/', 'Christina Rodriguez', 34, 54, '2023-12-06 03:23:16', '2023-12-06 03:23:16'),
(171, '4 Republicans qualify for fourth 2024 presidential debate - CNN', 'Four candidates have qualified for the fourth GOP presidential primary debate taking place Wednesday night in Alabama, the Republican National Committee and debate broadcaster NewsNation announced Mo… [+2669 chars]', 'ap23313052076005.jpg', 'https://www.cnn.com/2023/12/04/politics/fourth-gop-debate-candidates/index.html', 'Daniel Strauss', 34, 27, '2023-12-06 03:23:17', '2023-12-06 03:23:17'),
(172, 'Stock Market Today: Dow, S&P Live Updates for December 5 - Bloomberg', 'Asian stocks slid as traders dialed back bets that the Federal Reserve will aggressively cut rates next year and as an extended selloff in China hurt sentiment. The dollar held gains.\r\nAn index of th… [+224 chars]', '1200x799.jpg', 'https://www.bloomberg.com/news/articles/2023-12-04/stock-market-today-dow-s-p-live-updates', 'Chiranjivi Chakraborty, Richard Henderson', 34, 55, '2023-12-06 03:23:18', '2023-12-06 03:23:18'),
(173, 'Zelensky will brief senators Tuesday ahead of key vote on military aid - The Hill', NULL, '', 'https://thehill.com/homenews/senate/4342075-zelensky-will-brief-senators-tuesday-ahead-of-key-vote-on-military-aid/', 'The Hill', 34, 56, '2023-12-06 03:23:18', '2023-12-06 03:23:18'),
(174, 'Britain announces stricter visa measures to reduce net migration - Reuters UK', 'LONDON, Dec 4 (Reuters) - Britain announced plans to slash the number of migrants arriving by legal routes on Monday, raising the minimum salary they must earn in a skilled job by a third, amid press… [+3778 chars]', '7QP4DYLUHBONJB32N7TCJ73JAM.jpg', 'https://www.reuters.com/world/uk/uk-pm-sunak-committed-bringing-net-migration-down-significantly-spokesman-2023-12-04/', 'Alistair Smout, Muvija M', 34, 45, '2023-12-06 03:23:18', '2023-12-06 03:23:18'),
(175, 'Lawmakers Call for Inquiry Into Durham’s Review of Russia Investigation', 'The Democrats asked the Justice Department’s inspector general to scrutinize whether John H. Durham and William P. Barr “violated any laws, D.O.J. rules or practices, or canons of legal ethics.”', '01dc-durham_1-kgcp-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/durham-barr-russia-investigation.html', 'Charlie Savage', 3, 2, '2023-12-06 03:24:15', '2023-12-06 03:24:15'),
(176, 'Tom Brady Retires: The Revised Edition', 'Tom Brady retired again. So we took last year’s article and made a few small edits.', 'brady-lasttime-promo-articleLarge.jpg', 'https://www.nytimes.com/interactive/2023/02/01/sports/football/brady-first-retirement.html', 'Ben Shpigel', 26, 21, '2023-12-06 03:24:17', '2023-12-06 03:24:17'),
(177, 'Tom Brady’s Last Season Didn’t Go as Planned. Was It Worth It?', 'He thrilled his fans by announcing that he would come out of retirement to play one more season in 2022, but things soon went sour, on and off the field.', '01brady-assess-glpb-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/football/tom-brady-last-season-tampa-bay.html', 'Kris Rhim', 26, 21, '2023-12-06 03:24:18', '2023-12-06 03:24:18'),
(178, 'Your Wednesday Evening Briefing', 'Here’s what you need to know at the end of the day.', '01evening-briefing-nl-fed-phqg-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/briefing/fed-interest-rate-increase-tyre-nichols-memphis.html', 'Matthew Cullen and Daniel E. Slotnik', 13, 10, '2023-12-06 03:24:20', '2023-12-06 03:24:20'),
(179, '‘80 for Brady’ Review: Remember These Titans', 'This stubbornly charming romp starring Lily Tomlin, Jane Fonda, Sally Field and Rita Moreno is inspired by the story of a real group of female friends with a love for Tom Brady and the New England Patriots.', 'eighty-1-tmbz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/movies/80-for-brady-review-tom-brady.html', 'Amy Nicholson', 24, 25, '2023-12-06 03:24:21', '2023-12-06 03:24:21'),
(180, 'Eager to Challenge Trump, Republicans Aren’t So Eager to Be the First', 'Nikki Haley is expected to join the 2024 race this month, but other G.O.P. contenders are taking a wait-and-see approach. Some anti-Trump Republicans worry that too much dithering could be costly.', '01pol-gop-field-lfvm-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/trump-republicans-2024-nikki-haley.html', 'Maggie Haberman, Michael C. Bender and Reid J. Epstein', 12, 2, '2023-12-06 03:24:23', '2023-12-06 03:24:23'),
(181, 'Bobby Beathard, Mastermind of N.F.L. Dynasties, Dies at 86', 'Using unconventional tactics, he built powerhouse teams in Washington and Miami and helped mold teams in Kansas City, Atlanta and San Diego, his hometown.', '01Beathard1-vckm-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/football/bobby-beathard-dead.html', 'Ken Belson', 28, 21, '2023-12-06 03:24:25', '2023-12-06 03:24:25'),
(182, 'What ‘No’ on F-16 Fighter Jets Might Mean for Ukraine', 'If the usual script plays out, the Biden administration’s reluctance to provide the planes could be temporary, officials say.', '01DC-Ukraine-Jets_1-gpkm-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/ukraine-f16-russia.html', 'Helene Cooper and Eric Schmitt', 3, 2, '2023-12-06 03:24:26', '2023-12-06 03:24:26'),
(183, 'John Adams, Who Banged His Drum Loudly in Cleveland, Dies at 71', 'He pounded away from the bleachers to cheer on the Indians (now the Guardians) and inspire his fellow baseball fans at more than 3,700 home games.', '01Adams1-kqwj-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/sports/baseball/john-adams-dead.html', 'Richard Sandomir', 28, 21, '2023-12-06 03:24:27', '2023-12-06 03:24:27'),
(184, 'Assessing Political Spin in the Debt Ceiling Fight', 'Republicans have wrongly suggested that President Biden and his party are solely responsible for the situation, while Democrats have overstated former President Donald J. Trump’s role.', '00dc-factcheck_1-zwfq-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/debt-ceiling-fact-check.html', 'Linda Qiu', 3, 2, '2023-12-06 03:24:29', '2023-12-06 03:24:29'),
(185, 'Inclusive or Alienating? The Language Wars Go On', 'New vocabulary is supposed to be supportive. But terms like “bodies with vaginas” just antagonize voters and empower the right.', '01kristof-image-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/inclusive-language-vocabulary.html', 'Nicholas Kristof', 1, 1, '2023-12-06 03:24:30', '2023-12-06 03:24:30'),
(186, 'Oregon Man Wanted in Torture of Woman Killed 2 People, Police Say', 'Benjamin Obadiah Foster, who had eluded the authorities for a week, fatally shot himself on Tuesday night during a standoff with the police in Grants Pass, Ore., officials said.', '01xp-oregon-killer-capture-qzmk-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/oregon-torture-dating-apps-arrest.html', 'Eduardo Medina and Livia Albeck-Ripka', 7, 2, '2023-12-06 03:24:31', '2023-12-06 03:24:31'),
(187, 'New York Man Admits Threatening to Harm Rep. Marjorie Taylor Greene', 'Joseph Morelli pleaded guilty to leaving menacing phone messages at the Georgia Republican’s congressional office.', '01greene-threats-cglq-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/nyregion/marjorie-taylor-greene-threats.html', 'Ed Shanahan', 14, 11, '2023-12-06 03:24:32', '2023-12-06 03:24:32'),
(188, 'U.S. Prosecutors Detail Plot to Kill Haitian President', 'Four suspects charged in connection with the 2021 assassination of President Jovenel Moïse made their first appearance in U.S. federal court in Miami.', '01dc-haiti-pgjz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/haiti-assassination-court.html', 'John Pacenti and Chris Cameron', 3, 2, '2023-12-06 03:24:33', '2023-12-06 03:24:33'),
(189, 'Corrections: Feb. 2, 2023', 'Corrections that appeared in print on Thursday, Feb. 2, 2023.', '01dc-haiti-pgjz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/pageoneplus/corrections-feb-2-2023.html', '', 9, 6, '2023-12-06 03:24:33', '2023-12-06 03:24:33'),
(190, 'Man Is Charged With Firebombing a New Jersey Synagogue', 'The violence rattled congregants at Temple Ner Tamid in Bloomfield, N.J. An employee had discovered broken glass and gasoline near the door on Sunday.', '29xp-temple-01-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/nyregion/new-jersey-synagogue-attack-arrest.html', 'Tracey Tully', 14, 11, '2023-12-06 03:24:35', '2023-12-06 03:24:35'),
(191, 'This Is a Moral Crime', 'Grieving loved ones in public isn’t normal, yet families do it valiantly.', '01blow3-jtmf-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/opinion/tyre-nichols-funeral-grief.html', 'Charles M. Blow', 1, 1, '2023-12-06 03:24:36', '2023-12-06 03:24:36'),
(192, 'Bear Hugs and Dad Jokes: Ron Klain’s Tearful Goodbye', 'The outgoing chief of staff thanked President Biden and his staff, and held up what he said was his favorite souvenir: a rock.', '01dc-klain-qmvk-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/politics/ron-klain-farewell.html', 'Zolan Kanno-Youngs', 3, 2, '2023-12-06 03:24:37', '2023-12-06 03:24:37'),
(193, 'In This Nigerian Market, Young Women Find a Place of Their Own', 'The members of the female and L.G.B.T.Q. skateboarding collective Dencity have carved out a space of freedom, safety and community in Lagos.', '00HOME-THRIFT1-articleLarge-v5.jpg', 'https://www.nytimes.com/interactive/2023/02/01/style/lagos-nigeria-women.html', 'Stephen Tayo and Charlie Brinkhurst-Cuff', 35, 22, '2023-12-06 03:24:39', '2023-12-06 03:24:39'),
(194, 'Inside the College Board’s Revised African American Studies Curriculum', 'A guide to some changes in the curriculum, and how the new course differs from standard treatments of Black history in American high schools.', '01NAT-AP-EXPLAINER-01-gvkc-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/us/ap-african-american-studies-course.html', 'Dana Goldstein', 2, 2, '2023-12-06 03:24:40', '2023-12-06 03:24:40'),
(195, 'Start to Scream or Shout', 'Elise Corbin shows us things we may not have seen before.', '02wordplay-screaming-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/crosswords/daily-puzzle-2023-02-02.html', 'Deb Amlen', 11, 8, '2023-12-06 03:24:41', '2023-12-06 03:24:41'),
(196, 'Quotation of the Day: Under Pressure, Board Revises A.P. African American Course', 'Quotation of the Day for Thursday, February 2, 2023.', '02wordplay-screaming-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/pageoneplus/quotation-of-the-day-under-pressure-board-revises-ap-african-american-course.html', '', 8, 6, '2023-12-06 03:24:41', '2023-12-06 03:24:41'),
(197, 'U.S. to Boost Military Role in the Philippines in Push to Counter China', 'Washington and Manila announced a plan to give the American military access to four new locations in the Southeast Asian country, a growing strategic partner in the region.', '02wordplay-screaming-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/asia/philippines-united-states-military-bases.html', 'Sui-Lee Wee', 6, 5, '2023-12-06 03:24:41', '2023-12-06 03:24:41'),
(198, 'China and the U.S. Are Wooing Indonesia, and Beijing Has the Edge', 'The resource-laden nation of nearly 300 million is a big prize in the strategic battle between the United States and China for influence in Asia.', '00china-indonesia-01-kqph-articleLarge.jpg', 'https://www.nytimes.com/2023/02/01/world/asia/indonesia-china-united-states.html', 'Jane Perlez, Eric Schmitt and Sui-Lee Wee', 6, 5, '2023-12-06 03:24:43', '2023-12-06 03:24:43'),
(199, 'Russian Diesel Is Europe’s New Embargo Target', 'The coming ban on Russian exports of refined oil products could strain energy markets and crimp Russia’s output.', '02europe-diesel-01-flkg-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/business/russia-diesel-ban.html', 'Stanley Reed', 5, 9, '2023-12-06 03:24:44', '2023-12-06 03:24:44'),
(200, 'Even Madison Square Garden Needs a Permit in New York', 'The Garden might face some obstacles in its quest for a permanent permit to replace its expiring 10-year one.', '02nytoday-msg-tzcp-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/nyregion/madison-square-garden-permit.html', 'James Barron', 14, 11, '2023-12-06 03:24:45', '2023-12-06 03:24:45'),
(201, 'Your Thursday Briefing', 'The start of a new Russian offensive.', '02am-briefing-europe-ukraine-offensive--articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/briefing/ukraine-corruption-russia-coronavirus.html', 'Natasha Frost', 13, 10, '2023-12-06 03:24:47', '2023-12-06 03:24:47'),
(202, 'Go See What Happened to My City, Then You’ll Know How I Am', 'Homs was the capital of the Syrian revolution. Now it is a footnote, but not to me.', '00azzouz-image-gvpz-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/opinion/syria-homs-war.html', 'Ammar Azzouz', 1, 1, '2023-12-06 03:24:48', '2023-12-06 03:24:48'),
(203, 'Australia Won’t Put King Charles on Its 5-Dollar Bill', 'The bill had long featured Queen Elizabeth II, but officials said the bank note would be redesigned to focus on Indigenous history. That has rekindled the debate about republicanism in Australia.', '02OZ-BANKNOTE1-bhgm-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/world/australia/australia-king-charles-5-dollar-bill.html', 'Natasha Frost', 6, 5, '2023-12-06 03:24:50', '2023-12-06 03:24:50'),
(204, 'Word of the Day: ravenous', 'This word has appeared in 45 articles on NYTimes.com in the past year. Can you use it in a sentence?', 'WOTD--02-articleLarge.png', 'https://www.nytimes.com/2023/02/02/learning/word-of-the-day-ravenous.html', 'The Learning Network', 15, 12, '2023-12-06 03:24:51', '2023-12-06 03:24:51'),
(205, 'Bank of England Raises Rates to 4%, Its 10th Straight Increase', 'The bank raised rates half a point to the highest level since 2008, but softened its tone on future increases.', '02boe-lphv-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/business/bank-of-england-interest-rates.html', 'Eshe Nelson', 5, 9, '2023-12-06 03:24:52', '2023-12-06 03:24:52'),
(206, 'Jimmy Fallon Jokes That President Biden’s Document Drama Is a ‘Humblebrag’', '“First, they searched near Biden’s Corvette, now they’re searching his beach house,” Fallon said.', '02latenight-articleLarge.png', 'https://www.nytimes.com/2023/02/02/arts/television/jimmy-fallon-biden-documents.html', 'Trish Bendix', 4, 3, '2023-12-06 03:24:54', '2023-12-06 03:24:54'),
(207, 'Cheering', 'What do you think this image is saying?', '30philly-success-01-bhgl-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/learning/cheering.html', 'The Learning Network', 15, 12, '2023-12-06 03:24:55', '2023-12-06 03:24:55'),
(208, 'A Film Critic Who Embraces His Role as a Guide', 'Rescuing movie viewers from endless browsing — and introducing them to hidden gems — is satisfying to a Times critic.', '02a2_ITT-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/insider/a-film-critic-who-embraces-his-role-as-a-guide.html', 'Jason Bailey', 8, 57, '2023-12-06 03:24:57', '2023-12-06 03:24:57'),
(209, 'After Jacinda Ardern, Politics Will Never Look the Same', 'For once, a politician who wasn’t afraid of fashion.', '01JACIDA-STYLE-01-wpzg-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/style/jacinda-ardern-leadership-style.html', 'Vanessa Friedman', 27, 22, '2023-12-06 03:24:58', '2023-12-06 03:24:58'),
(210, 'A U.S. Ambassador Finds Himself on Hostile Ground in Hungary', 'David Pressman, a gay human rights lawyer, has been accused by pro-government media in Hungary of undermining traditional values, violating diplomatic conventions and meddling in the judiciary.', '00hungary-ambassador-cbkt-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/world/europe/us-ambassador-hungary-david-pressman.html', 'Andrew Higgins', 6, 5, '2023-12-06 03:25:00', '2023-12-06 03:25:00'),
(211, 'A Primer on U.S.-Philippine Military Ties', 'The United States and the Philippines have announced a plan to broaden American military access. The alliance is complicated by colonial history and rising tensions over Taiwan.', '02xp-philippines-explainer-austin-twpb-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/world/asia/us-philippines-military.html', 'Mike Ives', 7, 5, '2023-12-06 03:25:01', '2023-12-06 03:25:01'),
(212, 'Top E.U. officials arrive in Kyiv for a summit with Zelensky.', 'The European Union’s top officials arrived in Ukraine on Thursday before a summit with President Volodymyr Zelensky to discuss issues including Ukraine’s reconstruction and its candidacy for membership in the bloc.', '02ukraine-briefing-eu-delegation-tbzv-articleLarge.jpg', 'https://www.nytimes.com/2023/02/02/world/europe/eu-summit-zelensky-ukraine.html', 'Erin Mendell', 6, 5, '2023-12-06 03:25:02', '2023-12-06 03:25:02'),
(213, '36 Hours in Bangkok', 'A secret garden, a bicycle ride across city and paddy farms, and a world-class cocktail scene in Thailand’s capital.', '02hours-bangkok-icon-siam-02-jhzq-articleLarge.jpg', 'https://www.nytimes.com/interactive/2023/02/02/travel/things-to-do-bangkok.html', 'Finn-Olaf Jones', 30, 24, '2023-12-06 03:25:03', '2023-12-06 03:25:03'),
(214, 'How to Forge Shells for Ukraine\'s Artillery', 'At factories in Pennsylvania and Iowa, steel shells are formed in 2,000-degree furnaces and filled with explosives — offering Kyiv a lifeline of ammunition.', '02dc-ammunition-still-promo-zjbf-articleLarge.jpg', 'https://www.nytimes.com/interactive/2023/02/02/us/dc-ammunition.html', 'John Ismay, Natalie Keyssar, Lyndon French, Marisa Schwartz Taylor and Rebecca Lieberman', 36, 2, '2023-12-06 03:25:05', '2023-12-06 03:25:05'),
(215, 'Biden Cancels Space Command Move to Alabama Amid Tuberville Feud', 'The Pentagon said the decision was because of military readiness, but it comes as the Republican senator from Alabama has held up military promotions to protest an abortion access policy.', '31dc-space-hfpc-articleLarge.jpg', 'https://www.nytimes.com/2023/07/31/us/biden-space-force-alabama-colorado.html', 'Karoun Demirjian', 3, 2, '2023-12-06 03:31:53', '2023-12-06 03:31:53'),
(216, 'Paul Reubens Was More Than Pee-wee. Here are 8 Great Performances.', 'He played dozens of memorable roles on big and small screens throughout his career. We’ve rounded up what to watch and where to watch it.', '31reubens-best-wfzh-articleLarge.jpg', 'https://www.nytimes.com/2023/07/31/arts/television/paul-reuben-pee-wee-herman-movies-tv-shows.html', 'Elisabeth Vincentelli', 4, 3, '2023-12-06 03:31:54', '2023-12-06 03:31:54'),
(217, 'Crunch Muscles, for Short', 'Kathryn Ladner branches out.', 'oakImage-1690478934309-articleLarge.jpg', 'https://www.nytimes.com/2023/07/31/crosswords/daily-puzzle-2023-08-01.html', 'Sam Corbin', 11, 8, '2023-12-06 03:31:56', '2023-12-06 03:31:56'),
(218, 'After Paying Lawyers, Trump’s PAC Is Nearly Broke', 'The scramble to cover legal bills for former President Donald J. Trump and his associates has prompted what appears to be the largest refund in federal campaign finance history.', '31pol-Trump-Money-wtql-articleLarge-v2.jpg', 'https://www.nytimes.com/2023/07/31/us/politics/trump-pac-filing.html', 'Maggie Haberman, Shane Goldmacher and Jonathan Swan', 12, 2, '2023-12-06 03:31:57', '2023-12-06 03:31:57'),
(219, 'Tuesday Briefing', 'The details of Ukraine’s drone strikes.', '01ambriefing-europe-nl-drone-articleLarge-v3.jpg', 'https://www.nytimes.com/2023/07/31/briefing/ukraine-strikes-trump-myanmar.html', 'Natasha Frost', 13, 10, '2023-12-06 03:31:58', '2023-12-06 03:31:58'),
(220, 'Move Over, Men: Women Were Hunters, Too', 'Anthropologists are finding that women in modern foraging societies have played a major role in catching game.', '00sci-huntress-02-hjwt-articleLarge-v2.jpg', 'https://www.nytimes.com/2023/08/01/science/anthropology-women-hunting.html', 'Katrina Miller', 16, 17, '2023-12-06 03:31:59', '2023-12-06 03:31:59'),
(221, 'Putin’s Crackdown Leaves Transgender Russians Bracing for Worse', 'A new law underscores how Vladimir V. Putin is increasingly using the war in Ukraine as justification for greater restrictions on L.G.B.T.Q. life, portraying it as a consequence of deviant Western values.', '01russia-lgbt-zpqc-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/world/europe/russia-transgender-ban.html', 'Neil MacFarquhar and Georgy Birger', 6, 5, '2023-12-06 03:32:00', '2023-12-06 03:32:00'),
(222, 'Quotation of the Day: Scientists Revive Two Roundworms That Were Encased in Siberian Permafrost for 46,000 Years', 'Quotation of the Day for Tuesday, August 1, 2023.', '01russia-lgbt-zpqc-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/pageoneplus/quotation-of-the-day-scientists-revive-two-roundworms-that-were-encased-in-siberian-permafrost-for-46000-years.html', '', 8, 6, '2023-12-06 03:32:00', '2023-12-06 03:32:00'),
(223, 'Corrections: Aug. 1, 2023', 'Corrections that appeared in print on Tuesday, Aug. 1, 2023.', '01russia-lgbt-zpqc-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/pageoneplus/corrections-aug-1-2023.html', '', 9, 6, '2023-12-06 03:32:00', '2023-12-06 03:32:00'),
(224, 'Topline Results: July 2023 Times/Siena Poll of Registered Voters', 'Responses from a survey of 1,329 registered voters nationwide, including an oversample of 818 registered Republican voters, conducted July 23-27, 2023', '01russia-lgbt-zpqc-articleLarge.jpg', 'https://www.nytimes.com/interactive/2023/08/01/us/elections/times-siena-poll-registered-voters-toplines.html', '', 36, 2, '2023-12-06 03:32:00', '2023-12-06 03:32:00'),
(225, 'Cross-Tabs: July 2023 Times/Siena Poll of the 2024 Race and National Issues', 'President Biden and former President Donald J. Trump are tied in a 2024 rematch among all registered voters, according to a poll conducted by The New York Times and Siena College from July 23 to 27, 2023.', '01russia-lgbt-zpqc-articleLarge.jpg', 'https://www.nytimes.com/interactive/2023/08/01/us/elections/times-siena-poll-registered-voters-crosstabs.html', '', 36, 2, '2023-12-06 03:32:00', '2023-12-06 03:32:00'),
(226, 'After Investigation and Complaints, Twitter Removes ‘X’ on Headquarters', 'Residents near the company’s location in downtown San Francisco complained of “intense” flashing lights and feared for their safety.', '31xp-logo-lcfv-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/us/twitter-x-logo-sf-headquarters.html', 'Lauren McCarthy', 7, 2, '2023-12-06 03:32:01', '2023-12-06 03:32:01'),
(227, 'The Covid Test Company That Got Into the Migrant Business', 'DocGo, which was awarded a $432 million contract by New York City, moved migrants upstate. Some complained about how they were treated.', '01nytoday-mbfp-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/nyregion/the-covid-test-company-that-got-into-the-migrant-business.html', 'James Barron', 14, 11, '2023-12-06 03:32:02', '2023-12-06 03:32:02'),
(228, 'Tropical Cyclone Kills 2 in Southern Japan', 'Typhoon Khanun was hovering near Okinawa Prefecture days after an earlier tropical cyclone, Doksuri, brought death and destruction to China and the Philippines.', 'undefined-promo-1690906984765-articleLarge-v670.jpg', 'https://www.nytimes.com/2023/08/01/world/asia/typhoon-khanun-japan-china-doksuri.html', 'Mike Ives, Hikari Hida and Amy Chang Chien', 7, 5, '2023-12-06 03:32:04', '2023-12-06 03:32:04'),
(229, 'Aung San Suu Kyi’s Prison Sentence Reduced in Myanmar', 'The civilian leader, who was ousted in a coup in 2021, had six years cut from a 33-year prison sentence and five of her 19 convictions overturned, state television said.', '01myanmar-qbwv-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/world/asia/aung-san-suu-kyi-pardon-myanmar.html', 'Sui-Lee Wee', 6, 5, '2023-12-06 03:32:05', '2023-12-06 03:32:05'),
(230, 'Today’s Wordle Review', 'Our columnist reviews the day’s puzzle. Warning: Contains spoilers!', '01wordle-review-art-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/crosswords/wordle-review-answer-773.html', 'Elie Levine', 11, 8, '2023-12-06 03:32:06', '2023-12-06 03:32:06'),
(231, 'Can the Race Really Be That Close? Yes, Biden and Trump Are Tied.', 'A Times/Siena poll suggests a slight Biden edge among voters who don’t like either candidate.', 'g-0-promo-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/upshot/biden-trump-poll-2024.html', 'Nate Cohn', 37, 58, '2023-12-06 03:32:07', '2023-12-06 03:32:07'),
(232, 'Suspect in Gilgo Beach Killings Hears Catalog of Evidence Against Him', 'Suffolk County’s district attorney personally appeared at a brief session for the man accused of murder in three cases and named as the prime suspect in a fourth.', '01gilgo-court-01-gqlt-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/nyregion/gilgo-beach-murders-suspect-court.html', 'Chelsia Rose Marcius', 14, 11, '2023-12-06 03:32:08', '2023-12-06 03:32:08'),
(233, 'A Senator’s New Wife and Her Old Friends Draw Prosecutors’ Attention', 'Unlike her husband, Nadine Menendez has lived a mainly private life. Investigators appear focused on the possibility that she or the senator received undisclosed gifts.', 'menendez-wife-hmzv-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/nyregion/nadine-menendez-federal-investigation.html', 'Tracey Tully', 14, 11, '2023-12-06 03:32:09', '2023-12-06 03:32:09'),
(234, 'More Republicans Say Trump Committed Crimes. But They Still Support Him.', 'The share of Republicans saying the former president has committed “serious federal crimes” has grown modestly, according to a new poll from The New York Times and Siena College.', '2023-07-27-july-polls-trump-crimes-articleLarge-v4.png', 'https://www.nytimes.com/2023/08/01/us/politics/trump-republicans-poll-crimes.html', 'Ruth Igielnik and Maggie Haberman', 12, 2, '2023-12-06 03:32:11', '2023-12-06 03:32:11'),
(235, 'Biden Shores Up Democratic Support, but Faces Tight Race Against Trump', 'A New York Times/Siena College poll found that President Biden is on stronger footing than he was a year ago — but he is neck-and-neck in a possible rematch against Donald Trump.', '2023-07-27-july-polls-biden-articleLarge-v7.png', 'https://www.nytimes.com/2023/08/01/us/politics/biden-trump-poll.html', 'Reid J. Epstein, Ruth Igielnik and Camille Baker', 12, 2, '2023-12-06 03:32:11', '2023-12-06 03:32:11'),
(236, 'New Voices Dominate Booker Prize Nominations', 'Four of the 13 books that will compete for the prestigious literary award are debuts, in a longlist that the judges said was “defined by its freshness.”', '08booker-longlist-1-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/booker-prize-longlist.html', 'Alex Marshall', 4, 18, '2023-12-06 03:32:13', '2023-12-06 03:32:13'),
(237, '‘Barbenheimer’ Isn’t Funny in Nuclear-Scarred Japan', 'The Japanese subsidiary of Warner Bros. criticized what it called insensitive promotion of “Barbie” by the company’s headquarters.', '01Japan-Barbenheimer1-tzvq-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/world/asia/japan-barbenheimer.html', 'Ben Dooley and Hisako Ueno', 6, 5, '2023-12-06 03:32:14', '2023-12-06 03:32:14');
INSERT INTO `articles` (`id`, `title`, `body`, `urlToImage`, `url`, `author`, `category_id`, `source_id`, `created_at`, `updated_at`) VALUES
(238, 'They Know What They Did. They’d Like You to Know Who They’ve Become.', 'These men have spent their entire adult lives in prison. How much punishment is enough?', 'op-angola-thumb-articleLarge.png', 'https://www.nytimes.com/video/opinion/100000008913839/louisiana-angola-prison.html', 'Marcus Kondkar, Calvin Duncan and Alexander Stockton', 33, 1, '2023-12-06 03:32:16', '2023-12-06 03:32:16'),
(239, 'How Martin Wolf Understands This Global Economic Moment', 'The economic journalist on the “shifts,” “shocks” and “fragilities” shaping this global economic moment.', '01eks-wolf-image-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/opinion/ezra-klein-podcast-martin-wolf.html', '‘The Ezra Klein Show\'', 1, 1, '2023-12-06 03:32:17', '2023-12-06 03:32:17'),
(240, 'Being Underestimated Was Her Secret Weapon', 'In “Flirting With Danger,” Janet Wallach tells the story of Marguerite Harrison, who traded a life of privilege to become America’s first international female spy.', '01Wallach-review-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/janet-wallach-flirting-with-danger.html', 'Chloe Malle', 20, 18, '2023-12-06 03:32:18', '2023-12-06 03:32:18'),
(241, '‘Family Lore’ Is a Tender Tale of Sisterhood, With a Magical Twist', 'In Elizabeth Acevedo’s new novel, a family grapples with life and grief after their sister, who can predict death, decides to host a wake for herself.', '01Acevedo-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/family-lore-elizabeth-acevedo.html', 'Rebecca Carroll', 20, 18, '2023-12-06 03:32:19', '2023-12-06 03:32:19'),
(242, 'A Uyghur’s Lament for a Persecuted People', 'In his memoir, “Waiting to Be Arrested at Night,” the poet Tahir Hamut Izgil evokes the fear and danger of daily life for a Chinese ethnic minority that has been the target of a brutal crackdown.', '01tahir-hamut-izgil-author-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/waiting-to-be-arrested-at-night-tahir-hamut-izgil.html', 'Barbara Demick', 13, 18, '2023-12-06 03:32:20', '2023-12-06 03:32:20'),
(243, 'The Arrogance of Samuel Alito', 'In theory, there is no branch in the American constitutional system that exists above or beyond the reach of the others.', '01Bouie-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/opinion/samuel-alito-ethics-supreme-court.html', 'Jamelle Bouie', 1, 1, '2023-12-06 03:32:21', '2023-12-06 03:32:21'),
(244, 'How You Should Change Your Workout Once You Hit 40', 'Making a few tweaks to your fitness habits — and mind-set — as you hit middle age can set you up for long-term mobility with less pain.', '01WORKOUTS-AFTER-401-mqlf-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/well/move/workout-fitness-over-40.html', 'Danielle Friedman', 19, 16, '2023-12-06 03:32:22', '2023-12-06 03:32:22'),
(245, 'Is It Justice or a Journey Into Hell, or Both?', 'In Kyle Dillon Hertz’s novel, “The Lookback Window,” a victim of child sexual abuse questions what healing looks like when a law gives him the chance to press charges against his assailants.', '01Hertz-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/the-lookback-window-kyle-dillon-hertz.html', 'Charlie Lee', 20, 18, '2023-12-06 03:32:22', '2023-12-06 03:32:22'),
(246, 'Edan Lepucki’s Third Novel Makes the ‘Cult of Motherhood’ Literal', 'In “Time’s Mouth,” a time traveler forms a cult for pregnant women in the woods of Northern California.', '01LEPUCKI-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/edan-lepucki-times-mouth.html', 'Cree LeFavour', 20, 18, '2023-12-06 03:32:23', '2023-12-06 03:32:23'),
(247, 'Talking About Love in the Afternoon, Morning, Evening and Night', 'Reading Claude Anet’s provocative 1920 novel “Ariane: A Russian Girl,” the reader may yearn for a little less conversation.', '01ANET-REVIEW-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/ariane-claude-anet.html', 'Gemma Sieff', 20, 18, '2023-12-06 03:32:24', '2023-12-06 03:32:24'),
(248, 'A Poet Captures the Terror of Life in an Authoritarian State', 'A memoir by Tahir Hamut Izgil, a Uyghur intellectual who escaped China, explores the corrosive effect of repression and surveillance on his community.', '01uyghur-memoir-1-lgpt-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/uyghur-memoir-tahir-izgil.html', 'Tiffany May', 4, 18, '2023-12-06 03:32:25', '2023-12-06 03:32:25'),
(249, 'Saving Lives at the Grand Canyon, One Salty Snack at a Time', 'In a summer of deadly heat for hikers in the Southwest, rangers at Grand Canyon National Park use a pioneering approach of aggressive messaging and outreach to prevent disaster on the trails.', 'oakImage-1690824204408-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/travel/grand-canyon-heat-search-rescue.html', 'Rowan Moore Gerety', 30, 24, '2023-12-06 03:32:27', '2023-12-06 03:32:27'),
(250, 'I Gave Up and Went on a Trip With Several Thousand of My Closest Friends', 'What the resurgence of the cruise industry says about Americans’ desperate need to have fun right now.', '01dyer-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/opinion/cruise-travel-covid.html', 'Ezra Dyer', 1, 1, '2023-12-06 03:32:28', '2023-12-06 03:32:28'),
(251, 'I’ve Listened to This Breakup Song a Million Times', 'Why does it feel so good to cry this hard?', '06mag-LOR-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/magazine/lady-wray-breakup-song.html', 'Brontez Purnell', 18, 15, '2023-12-06 03:32:29', '2023-12-06 03:32:29'),
(252, 'Consider This Before You Judge Commander (or Any Other Dog)', 'We are holding dogs to standards they cannot possibly understand.', '01horowitz-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/opinion/commander-biden-dog-biting-german-shepherd.html', 'Alexandra Horowitz', 1, 1, '2023-12-06 03:32:30', '2023-12-06 03:32:30'),
(253, 'In ‘My Name Is Iris,’ a Mother Learns the Limits of Protectiveness', 'Brando Skyhorse’s novel is the subtly dystopian story of a Mexican American woman who realizes that America has become less welcoming to people like her.', '01SKYHORSE-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/my-name-is-iris-brando-skyhorse.html', 'Erika L. Sánchez', 20, 18, '2023-12-06 03:32:32', '2023-12-06 03:32:32'),
(254, 'Planning to Visit Barcelona or Dubrovnik? It’s Going to Cost You.', 'Driven by the climate crisis, the post-pandemic surge in visitors and a growing interest in making tourism work for local communities, European cities are finding new ways to tax visitors.', '00tourism-taxes-cgwm-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/travel/europe-tourism-taxes.html', 'Paige McClanahan', 5, 24, '2023-12-06 03:32:33', '2023-12-06 03:32:33'),
(255, 'Richard E. Grant Fights Grief With ‘A Pocketful of Happiness’', 'The Oscar-nominated actor’s new memoir is at once a Hollywood air kiss and a moving tribute to a happy marriage that ended too soon.', '01grant-tbvl-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/richard-e-grant-a-pocketful-of-happiness.html', 'Amy Bloom', 20, 18, '2023-12-06 03:32:34', '2023-12-06 03:32:34'),
(256, 'The Sorcerer of Costumes', 'Many eras coexist inside the studio of the Emmy-winning costume designer Donna Zakowska.', '24ZAKOWSKA-01-flmp-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/style/maisel-costume-designer.html', 'Rhonda Garelick', 27, 22, '2023-12-06 03:32:35', '2023-12-06 03:32:35'),
(257, 'Is There a Right Way to Talk About Black Culture?', 'In the essay collection “Dark Days,” Roger Reeves tries to sidestep mainstream arguments to engage deeply with the way people actually live and think.', '01REEVES-REVIEW-COMBO-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/dark-days-roger-reeves.html', 'Ismail Muhammad', 20, 18, '2023-12-06 03:32:36', '2023-12-06 03:32:36'),
(258, 'People Get Scared and Buy a Gun. Here’s What Happens Next.', 'Fear of crime is a self-fulfilling prophecy.', '01gross-image-articleLarge-v2.jpg', 'https://www.nytimes.com/2023/08/01/opinion/fear-crime-rates.html', 'Neil Gross', 1, 1, '2023-12-06 03:32:38', '2023-12-06 03:32:38'),
(259, 'Is Menopause Changing My Hair?', 'Shifting hormones can make hair go haywire. Experts say there are ways to manage it.', 'ASKWELL-MENOPAUSE-HAIR1-wpfl-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/well/live/menopause-hair-loss.html', 'Alisha Haridasani Gupta', 19, 16, '2023-12-06 03:32:39', '2023-12-06 03:32:39'),
(260, 'The Sea Captain Who Ran From Abraham Lincoln', 'In “Shipwrecked,” the historian Jonathan W. White tells the story of an outlaw mariner who worked for the Confederacy and against the Klan.', '01white-zhkc-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/books/review/shipwrecked-jonathan-w-white.html', 'Dorothy Wickenden', 20, 18, '2023-12-06 03:32:40', '2023-12-06 03:32:40'),
(261, 'Solar Supply Chain Grows More Opaque Amid Human Rights Concerns', 'The global industry is cutting some ties to China, but its exposure to forced labor remains high and companies are less transparent, a new report found.', '01dc-chinasolar-mpqk-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/business/economy/solar-xinjiang-china-report.html', 'Ana Swanson and Ivan Penn', 5, 9, '2023-12-06 03:32:41', '2023-12-06 03:32:41'),
(262, 'At the Roosevelt Library, an Unflinching Look at Race', 'A new exhibition at the Franklin D. Roosevelt Presidential Library explores the president’s “mixed” record on civil rights — and the charged debate over racism in the New Deal.', '01FDR-museum6-qpbw-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/arts/fdr-library.html', 'Jennifer Schuessler', 4, 3, '2023-12-06 03:32:42', '2023-12-06 03:32:42'),
(263, 'A School Bus Crosses U.S., Linking Families of Mass Shooting Victims', 'As mass shootings multiply, relatives of the dead find support in “the worst club imaginable.” One child’s parents are on a road trip to connect them.', '00nat-shooting-roadtour-02-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/us/mass-shooting-bus-tour-oliver.html', 'Mike Baker', 2, 2, '2023-12-06 03:32:43', '2023-12-06 03:32:43'),
(264, 'Christian Nationalists Can’t Wait for This School in Oklahoma to Open', 'A religious public charter school would be an affront to taxpayers everywhere.', '01laser-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/opinion/religion-schools-constitution-oklahoma.html', 'Rachel Laser', 1, 1, '2023-12-06 03:32:45', '2023-12-06 03:32:45'),
(265, 'A Craigslist for Guns, With No Background Checks', 'A federal gun law passed last year gave the Biden administration a powerful new tool to increase background checks on “private” firearms sales. Will the administration use it?', '00nat-guns-private-01-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/us/gun-laws-private-sales-background-checks-armslist.html', 'Serge F. Kovaleski and Glenn Thrush', 2, 2, '2023-12-06 03:32:46', '2023-12-06 03:32:46'),
(266, 'Mexico’s ‘Monster’ Trucks Show Cartels Taking Drug War to Next Level', 'Taking the monster truck concept to deadly new realms, cartels are modifying pickups with gun turrets, steel armoring and battering rams.', '00mexico-monster-trucks-01-ptlf-articleLarge.jpg', 'https://www.nytimes.com/2023/08/01/world/americas/mexico-cartels-trucks.html', 'Simon Romero and Emiliano Rodríguez Mega', 6, 5, '2023-12-06 03:32:47', '2023-12-06 03:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'OpEd', '2023-03-29 08:32:11', '2023-03-29 08:32:11'),
(2, 'National', '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(3, 'Washington', '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(4, 'Culture', '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(5, 'Business', '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(6, 'Foreign', '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(7, 'Express', '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(8, 'Summary', '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(9, 'Corrections', '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(10, 'Climate', '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(11, 'Games', '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(12, 'Politics', '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(13, 'NYTNow', '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(14, 'Metro', '2023-03-29 08:32:16', '2023-03-29 08:32:16'),
(15, 'Learning', '2023-03-29 08:32:16', '2023-03-29 08:32:16'),
(16, 'Science', '2023-03-29 08:32:17', '2023-03-29 08:32:17'),
(17, 'RealEstate', '2023-03-29 08:32:18', '2023-03-29 08:32:18'),
(18, 'Magazine', '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(19, 'Well', '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(20, 'BookReview', '2023-03-29 08:32:22', '2023-03-29 08:32:22'),
(21, 'Metropolitan', '2023-03-29 08:32:23', '2023-03-29 08:32:23'),
(22, 'Arts&Leisure', '2023-03-29 08:32:23', '2023-03-29 08:32:23'),
(23, 'Real Estate', '2023-03-29 08:32:24', '2023-03-29 08:32:24'),
(24, 'Weekend', '2023-03-29 08:32:24', '2023-03-29 08:32:24'),
(25, 'Podcasts', '2023-03-29 08:32:25', '2023-03-29 08:32:25'),
(26, 'Sports', '2023-03-29 08:32:27', '2023-03-29 08:32:27'),
(27, 'Styles', '2023-03-29 08:32:27', '2023-03-29 08:32:27'),
(28, 'Obits', '2023-03-29 08:32:31', '2023-03-29 08:32:31'),
(29, 'Dining', '2023-03-29 08:32:32', '2023-03-29 08:32:32'),
(30, 'Travel', '2023-03-29 08:32:32', '2023-03-29 08:32:32'),
(31, 'Letters', '2023-03-29 08:32:47', '2023-03-29 08:32:47'),
(32, 'Arts', '2023-03-29 08:32:54', '2023-03-29 08:32:54'),
(33, '', '2023-03-30 05:17:08', '2023-03-30 05:17:08'),
(34, 'uncategorized', '2023-03-30 05:28:36', '2023-03-30 05:28:36'),
(35, 'Style', '2023-12-06 03:24:37', '2023-12-06 03:24:37'),
(36, 'U.S.', '2023-12-06 03:25:03', '2023-12-06 03:25:03'),
(37, 'Upshot', '2023-12-06 03:32:06', '2023-12-06 03:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fav_author`
--

DROP TABLE IF EXISTS `fav_author`;
CREATE TABLE IF NOT EXISTS `fav_author` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fav_author_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fav_author`
--

INSERT INTO `fav_author` (`id`, `author`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Joe', 11, '2023-03-31 09:50:18', '2023-03-31 09:50:18'),
(3, 'Patrick Sisson', 11, '2023-03-31 09:52:07', '2023-03-31 09:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `fav_categories`
--

DROP TABLE IF EXISTS `fav_categories`;
CREATE TABLE IF NOT EXISTS `fav_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fav_categories_category_id_foreign` (`category_id`),
  KEY `fav_categories_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fav_categories`
--

INSERT INTO `fav_categories` (`id`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, '2023-03-30 07:28:43', '2023-03-30 07:28:43'),
(4, 3, 1, '2023-03-30 07:37:31', '2023-03-30 07:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `fav_sources`
--

DROP TABLE IF EXISTS `fav_sources`;
CREATE TABLE IF NOT EXISTS `fav_sources` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `source_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fav_sources_source_id_foreign` (`source_id`),
  KEY `fav_sources_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_03_28_105401_create_categories_table', 3),
(12, '2023_03_28_105526_create_sources_table', 4),
(21, '2023_03_30_091637_create_fav_author_table', 8),
(19, '2023_03_30_092006_create_fav_categories_table', 7),
(17, '2023_03_28_105219_create_articles_table', 5),
(20, '2023_03_30_092014_create_fav_sources_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6af5025664b0a35851619289cacce121f0e979ce3d037db64ff0670d68c9f3432962087ccb23a8d4', 3, 1, NULL, '[]', 0, '2023-03-28 03:17:14', '2023-03-28 03:17:14', '2024-03-28 08:17:14'),
('74c25c4d24c9240bb65de84ce7a3a55470e5c29937a43dfbc64e46f920723b882b1c05715491a75c', 4, 1, 'Token', '[]', 0, '2023-03-28 03:29:39', '2023-03-28 03:29:39', '2024-03-28 08:29:39'),
('dafcc1f4bd493b5e92a75b4bdcad23fea87dcf918e08a41e40d37adb7d68172e3a211b49feca856b', 5, 3, 'Token', '[]', 0, '2023-03-28 03:31:54', '2023-03-28 03:31:54', '2024-03-28 08:31:54'),
('6f9f7cd4ef671d45a7b21d9e9580bb9b869eb2b1ec989b83044af74de803c24b3662b0558b9ccb40', 6, 3, 'Token', '[]', 0, '2023-03-28 03:38:45', '2023-03-28 03:38:45', '2024-03-28 08:38:45'),
('541ee518fc227160d65660ce7822cb4317d9591a0f2de5710774ec3b707e2508aa996f7dfc2d5437', 8, 3, 'Token', '[]', 0, '2023-03-28 03:40:22', '2023-03-28 03:40:22', '2024-03-28 08:40:22'),
('e32fdfddd26f57d40949a675e01921f5bfffc89491fffa55ce4eec81a1d9c22e2cfbee8d1ce38f7d', 9, 3, 'Token', '[]', 0, '2023-03-28 03:41:00', '2023-03-28 03:41:00', '2024-03-28 08:41:00'),
('db825629c9d4afe657f522ba7ed36dfa291d33376623d1b5dfb3960ff1c99832cbb3004eaefdb06a', 9, 3, 'Token', '[]', 0, '2023-03-28 03:47:34', '2023-03-28 03:47:34', '2024-03-28 08:47:34'),
('2311879970b9d241c4a078e8e6041e2835020c2e11e7ff7b3cb3621b69fb063250ba60eda7d0763b', 9, 3, 'Token', '[]', 0, '2023-03-28 03:48:12', '2023-03-28 03:48:12', '2024-03-28 08:48:12'),
('1a3b4b2f33a78b491e83ccaefd188efa6ed8c6295e042f7efe36582dee2f308aa15393ad85d20702', 9, 3, 'Token', '[]', 0, '2023-03-28 06:23:43', '2023-03-28 06:23:43', '2024-03-28 11:23:43'),
('0cb1c944fa70fa4c3bb4f09cbcbc85f9944b7b33e99023f5bde7844bd55c31a887616c5ff27a58bb', 1, 3, 'Token', '[]', 0, '2023-03-30 02:54:26', '2023-03-30 02:54:26', '2024-03-30 07:54:26'),
('c9d36575d483e035d1f54a066f09924f0ad9d11b07075d3482f51b882d1c5bdd68ff6067493c6c3f', 1, 3, 'Token', '[]', 0, '2023-03-30 02:55:16', '2023-03-30 02:55:16', '2024-03-30 07:55:16'),
('167c17f17510c4c2a87ef9e7a05350aec1a937db30b7bb3fe442cdd6338c9f5477211f9661a30ee6', 1, 3, 'Token', '[]', 0, '2023-03-30 07:11:00', '2023-03-30 07:11:00', '2024-03-30 12:11:00'),
('92da0e86850cab753b19e345a969a738ed763019290626bf98d5018bc0f6f4cedb2ebf46910c8b4e', 1, 3, 'Token', '[]', 0, '2023-03-31 05:47:08', '2023-03-31 05:47:08', '2024-03-31 10:47:08'),
('ff625a55f18824f0f3c6eea792841160c8e919f3cbf7ad4212e43ec8a56ab72a0ed8ef285fdcad37', 1, 3, 'Token', '[]', 0, '2023-03-31 06:37:28', '2023-03-31 06:37:28', '2024-03-31 11:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'H5Dcw419aKa05BSst9dngvPwvopaKbOAUshxvrCd', NULL, 'http://localhost', 1, 0, 0, '2023-03-28 02:37:20', '2023-03-28 02:37:20'),
(2, NULL, 'Laravel Password Grant Client', 'qLGtPMldvO05ksaWFYEQ4oXRxCcsJlxBR0kvumZC', 'users', 'http://localhost', 0, 1, 0, '2023-03-28 02:37:20', '2023-03-28 02:37:20'),
(3, NULL, 'Laravel Personal Access Client', '5Hsolfsn4iJN8JqGkfG3NLso1mVoFIX59P0OVEIY', NULL, 'http://localhost', 1, 0, 0, '2023-03-28 03:31:35', '2023-03-28 03:31:35'),
(4, NULL, 'Laravel Password Grant Client', '2hWWslqzZ0IUILel0LY7ym2VsxPCVUx6QVybPtFE', 'users', 'http://localhost', 0, 1, 0, '2023-03-28 03:31:36', '2023-03-28 03:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-03-28 02:37:20', '2023-03-28 02:37:20'),
(2, 3, '2023-03-28 03:31:35', '2023-03-28 03:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
CREATE TABLE IF NOT EXISTS `sources` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Opinion', '2023-03-29 08:32:11', '2023-03-29 08:32:11'),
(2, 'U.S.', '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(3, 'Arts', '2023-03-29 08:32:12', '2023-03-29 08:32:12'),
(4, 'Technology', '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(5, 'World', '2023-03-29 08:32:13', '2023-03-29 08:32:13'),
(6, 'Corrections', '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(7, 'Climate', '2023-03-29 08:32:14', '2023-03-29 08:32:14'),
(8, 'Crosswords & Games', '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(9, 'Business Day', '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(10, 'Briefing', '2023-03-29 08:32:15', '2023-03-29 08:32:15'),
(11, 'New York', '2023-03-29 08:32:16', '2023-03-29 08:32:16'),
(12, 'The Learning Network', '2023-03-29 08:32:16', '2023-03-29 08:32:16'),
(13, 'Health', '2023-03-29 08:32:17', '2023-03-29 08:32:17'),
(14, 'Real Estate', '2023-03-29 08:32:18', '2023-03-29 08:32:18'),
(15, 'Magazine', '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(16, 'Well', '2023-03-29 08:32:20', '2023-03-29 08:32:20'),
(17, 'Science', '2023-03-29 08:32:21', '2023-03-29 08:32:21'),
(18, 'Books', '2023-03-29 08:32:22', '2023-03-29 08:32:22'),
(19, 'Theater', '2023-03-29 08:32:23', '2023-03-29 08:32:23'),
(20, 'Podcasts', '2023-03-29 08:32:25', '2023-03-29 08:32:25'),
(21, 'Sports', '2023-03-29 08:32:27', '2023-03-29 08:32:27'),
(22, 'Style', '2023-03-29 08:32:27', '2023-03-29 08:32:27'),
(23, 'Food', '2023-03-29 08:32:32', '2023-03-29 08:32:32'),
(24, 'Travel', '2023-03-29 08:32:32', '2023-03-29 08:32:32'),
(25, 'Movies', '2023-03-29 08:32:50', '2023-03-29 08:32:50'),
(26, 'BBC News', '2023-03-30 05:28:36', '2023-03-30 05:28:36'),
(27, 'CNN', '2023-03-30 05:28:37', '2023-03-30 05:28:37'),
(28, 'USA Today', '2023-03-30 05:28:38', '2023-03-30 05:28:38'),
(29, 'The Guardian', '2023-03-30 05:28:39', '2023-03-30 05:28:39'),
(30, 'The Washington Post', '2023-03-30 05:28:40', '2023-03-30 05:28:40'),
(31, 'Fox News', '2023-03-30 05:28:52', '2023-03-30 05:28:52'),
(32, 'CNBC', '2023-03-30 05:28:53', '2023-03-30 05:28:53'),
(33, 'YouTube', '2023-03-30 05:28:55', '2023-03-30 05:28:55'),
(34, 'Yahoo Entertainment', '2023-03-30 05:28:56', '2023-03-30 05:28:56'),
(35, 'New York Post', '2023-03-30 05:28:58', '2023-03-30 05:28:58'),
(36, 'The Athletic', '2023-03-30 05:29:00', '2023-03-30 05:29:00'),
(37, 'Rolling Stone', '2023-03-30 05:29:01', '2023-03-30 05:29:01'),
(38, 'WZTV', '2023-03-30 05:29:04', '2023-03-30 05:29:04'),
(39, 'The Times of Israel', '2023-03-30 05:29:08', '2023-03-30 05:29:08'),
(40, 'WHYY', '2023-03-30 05:34:36', '2023-03-30 05:34:36'),
(41, 'Phys.Org', '2023-03-30 05:34:39', '2023-03-30 05:34:39'),
(42, 'CBS News', '2023-12-06 03:22:26', '2023-12-06 03:22:26'),
(43, 'HuffPost', '2023-12-06 03:22:30', '2023-12-06 03:22:30'),
(44, 'ESPN', '2023-12-06 03:22:54', '2023-12-06 03:22:54'),
(45, 'Reuters', '2023-12-06 03:22:56', '2023-12-06 03:22:56'),
(46, 'Eonline.com', '2023-12-06 03:22:58', '2023-12-06 03:22:58'),
(47, 'SpaceNews', '2023-12-06 03:23:02', '2023-12-06 03:23:02'),
(48, 'Associated Press', '2023-12-06 03:23:03', '2023-12-06 03:23:03'),
(49, 'Politico', '2023-12-06 03:23:05', '2023-12-06 03:23:05'),
(50, 'Anchorage Daily News', '2023-12-06 03:23:07', '2023-12-06 03:23:07'),
(51, 'CBS Sports', '2023-12-06 03:23:10', '2023-12-06 03:23:10'),
(52, 'ScienceAlert', '2023-12-06 03:23:12', '2023-12-06 03:23:12'),
(53, 'Al Jazeera English', '2023-12-06 03:23:13', '2023-12-06 03:23:13'),
(54, 'KOB', '2023-12-06 03:23:14', '2023-12-06 03:23:14'),
(55, 'Bloomberg', '2023-12-06 03:23:17', '2023-12-06 03:23:17'),
(56, 'The Hill', '2023-12-06 03:23:18', '2023-12-06 03:23:18'),
(57, 'Times Insider', '2023-12-06 03:24:55', '2023-12-06 03:24:55'),
(58, 'The Upshot', '2023-12-06 03:32:06', '2023-12-06 03:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sajid khan', 'sajidkhan@gmail.com', NULL, '$2y$10$zG4VFqenGWzoL1gRYGDGiOEceuxhYzrFEQRQJ/ii88YSwvtcmAnaK', NULL, '2023-03-30 02:54:25', '2023-03-30 02:54:25'),
(2, 'Musadiq khan', 'musadiqkhan@gmail.com', NULL, '$2y$10$.ldSvSZnIypQ3C689zxU8.WTqhHnxrow/1TY4mKDfuxROMdeiK0Lm', NULL, '2023-03-31 07:20:22', '2023-03-31 07:20:22'),
(3, 'Musadiq khan 1', 'musadiqkhan1@gmail.com', NULL, '$2y$10$LkKVNgTZzo/ZRODQTfmc2OfTj6rJi8B9k8bSgqBigeb9E7RDag8iq', NULL, '2023-03-31 07:22:34', '2023-03-31 07:22:34'),
(4, 'Musadiq khan 2', 'musadiqkhan2@gmail.com', NULL, '$2y$10$AB3b3FivnRI1ji0.w4ggi.avCunKkXRtA1.KGDsjrBrp3YGWmmpje', NULL, '2023-03-31 07:26:12', '2023-03-31 07:26:12'),
(5, 'Musadiq khan 4', 'musadiqkhan4@gmail.com', NULL, '$2y$10$/EnmX243HGnzlJBiJ6a/W.GUAM377IFXr7ONI7cR2zKkAmOZw/Y0e', NULL, '2023-03-31 07:28:28', '2023-03-31 07:28:28'),
(6, 'Musadiq khan 5', 'musadiqkhan5@gmail.com', NULL, '$2y$10$aCDbJ0s0xzKXlMTWBDO.o.4HjQviD1gudUcSSFayiOIUsnZhWQ00a', NULL, '2023-03-31 07:37:18', '2023-03-31 07:37:18'),
(7, 'Musadiq khan 3', 'musadiqkhan3@gmail.com', NULL, '$2y$10$VzhNv5gbLt5s1ZrhZnUnk.60bX2stTlqwECd2OQ4iklzf61jgsGdO', NULL, '2023-03-31 07:40:15', '2023-03-31 07:40:15'),
(8, 'Musadiq khan 33', 'musadiqkhan33@gmail.com', NULL, '$2y$10$8hPQqgvpR2C7HD8uzJELoe2qM2hm4PtwvX6bZk9NdbXffm9C0nMwW', NULL, '2023-03-31 07:44:07', '2023-03-31 07:44:07'),
(9, 'Musadiq khan 334', 'musadiqkhan334@gmail.com', NULL, '$2y$10$6PkRHFzJ5kPg8q/uYaLKvuNO8CN9ItJmFjCnJYPCkjnDuAOPr71Ba', NULL, '2023-03-31 07:44:34', '2023-03-31 07:44:34'),
(10, 'Musadiq khan 3324', 'musadiqkhan3234@gmail.com', NULL, '$2y$10$vv1ZvHzrQXO1OTL4yJNU5eDMX5erBTPo6Yqx5FH9DXRRqwx2acB82', NULL, '2023-03-31 07:45:05', '2023-03-31 07:45:05'),
(11, 'Musadiq khan fd', 'musadiqkhan32344@gmail.com', NULL, '$2y$10$gQv3CbuR475EwIROHs4zMOlMmU37SZe/QWSAMO4I.wS9LC3izSjrK', NULL, '2023-03-31 07:54:24', '2023-03-31 07:54:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
