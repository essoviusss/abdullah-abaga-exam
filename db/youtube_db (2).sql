-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 01, 2023 at 05:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(500) NOT NULL,
  `profile_picture` varchar(1000) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `channel_id`, `profile_picture`, `name`, `description`) VALUES
(1, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://yt3.ggpht.com/urNLBJGryDamao5r0jmlTg84mIBOoaeJd6XR67j4nuRd0iRvv5g-MUgaowsWKCs8V_t4KwST=s88-c-k-c0x00ffffff-no-rj', 'NBA', 'The NBA is the premier professional basketball league in the United States and Canada. The league is truly global, with games and programming in 215 countries and territories in 47 languages. The NBA consists of 30 teams. The NBA offers real time access to live regular season NBA games with a subscription to NBA LEAGUE PASS, available globally for TV, broadband, and mobile.  Real-time Stats, Scores, Highlights and more are available to fans on web and mobile with the NBA App. \n\nFor news, stories, highlights and more, go to our official website at https://app.link.nba.com/e/NBA_site\n');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(500) NOT NULL,
  `video_link` varchar(1000) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `channel_id`, `video_link`, `title`, `description`, `thumbnail`) VALUES
(1, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=KwxurH0dGmA', 'Kobe Gives Curry Respect After Draining Long Three', 'Stephen Curry frees himself for the long bomb on Kobe Bryant who gives his respect after. About the NBA: The NBA is the premier ...', 'https://i.ytimg.com/vi/KwxurH0dGmA/default.jpg'),
(2, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=F25ubXB00XM', 'Victor Wembanyama takes first subway ride to throw the first pitch at Yankee Stadium 🚉| #Shorts', '', 'https://i.ytimg.com/vi/F25ubXB00XM/default.jpg'),
(3, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=-wLWjHDeOwQ', 'Victor Wembanyama Gets Asked The Big Question 🤔| #Shorts', '', 'https://i.ytimg.com/vi/-wLWjHDeOwQ/default.jpg'),
(4, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=Vf9HFIDHPns', 'Jett Howard the son of NBA Legend Juwan Howard is headed to Orlando! 🙌| #Shorts', '', 'https://i.ytimg.com/vi/Vf9HFIDHPns/default.jpg'),
(5, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=djYSWh2mEjs', '“I’m a damn Spur!” - Victor Wembanyama overcome with emotion after being drafted number 1! | #Shorts', '', 'https://i.ytimg.com/vi/djYSWh2mEjs/default.jpg'),
(6, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=uwWiiy0Fb5g', '7’2” Victor Wembanyama throws the first pitch at the Yankees game | #Shorts', '', 'https://i.ytimg.com/vi/uwWiiy0Fb5g/default.jpg'),
(7, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=a91FF9bWKHE', 'Wemby is excited as for his former teammate Bilal Coulibaly was drafted 7th! 😧| #Shorts', '', 'https://i.ytimg.com/vi/a91FF9bWKHE/default.jpg'),
(8, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=AACf9C6pnFk', 'Victor Wembanyama is #NBADraft Ready! ✅| #Shorts', '', 'https://i.ytimg.com/vi/AACf9C6pnFk/default.jpg'),
(9, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=GoWa2-8VykU', 'The Wemby Crew. 🇫🇷🙌| #Shorts', '', 'https://i.ytimg.com/vi/GoWa2-8VykU/default.jpg'),
(10, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=g57T-2I_5V4', 'Ladies &amp; Gentleman Presenting The Class of 2023! #NBADraft 🙌| #Shorts', '', 'https://i.ytimg.com/vi/g57T-2I_5V4/default.jpg'),
(11, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=kUcWXi8gFBs', 'Victor Wembanyama keeps it real! 😂🌮| #Shorts', '', 'https://i.ytimg.com/vi/kUcWXi8gFBs/default.jpg'),
(12, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=D5ho8lg3eDY', 'National Champion &amp; now a Lottery Pick! Jordan Hawkins is headed to New Orleans! 🥹| #Shorts', '', 'https://i.ytimg.com/vi/D5ho8lg3eDY/default.jpg'),
(13, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=4uDKhPRjIu8', 'Jayson Tatum Pulled Up To #NYvsNY 👀 | #Shorts', '', 'https://i.ytimg.com/vi/4uDKhPRjIu8/default.jpg'),
(14, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=uOdm1AlIElM', 'Proud Mom of the Thompson Twins at the #NBADraft! 💕| #Shorts', '', 'https://i.ytimg.com/vi/uOdm1AlIElM/default.jpg'),
(15, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=8PZDjqLJhTo', 'Inside the Spurs War Room while drafting Wemby! 👏 | #Shorts', '', 'https://i.ytimg.com/vi/8PZDjqLJhTo/default.jpg'),
(16, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=K-zkVkn_VtY', 'Amen Thompson is headed to Houston! 🚀| #Shorts', '', 'https://i.ytimg.com/vi/K-zkVkn_VtY/default.jpg'),
(17, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=R8DqrHs2YgM', 'Gradey Dick channeling his inner Dorthy for the #NBADraft presented by State Farm! 😎| #Shorts', '', 'https://i.ytimg.com/vi/R8DqrHs2YgM/default.jpg'),
(18, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=wG29Il-RdUs', 'Another PRICELESS Wemby moment! 🥹🤝| #Shorts', '', 'https://i.ytimg.com/vi/wG29Il-RdUs/default.jpg'),
(19, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=2kxStuzQgJg', 'Jordan Poole&#39;s Best Half-Court Buzzer Beaters', 'After Jordan Poole\'s epic half-court buzzer beater in game 2, here are the best Poole buzzer beaters. Stay up-to-date on news, ...', 'https://i.ytimg.com/vi/2kxStuzQgJg/default.jpg'),
(20, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=jrQrWfyk44s', 'Ausar Thompson Goes #5 Overall In The 2023 #NBADraft', 'The Detroit Pistons select Ausar Thompson with the #5 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/jrQrWfyk44s/default.jpg'),
(21, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=2ffj1zQeS0w', 'The draftees have arrived for their big night! 🙌Let us know your favorite Draft fit? 👀| #Shorts', '', 'https://i.ytimg.com/vi/2ffj1zQeS0w/default.jpg'),
(22, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=80S-vj4iQzc', 'Gradey is looking forward to link with Drake in the 6! 🦉| #Shorts', '', 'https://i.ytimg.com/vi/80S-vj4iQzc/default.jpg'),
(23, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=c0rYPWWV08c', 'Wemby receives a call from coach Pop! 📲| #Shorts', '', 'https://i.ytimg.com/vi/c0rYPWWV08c/default.jpg'),
(24, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=8soOlgFOc0Q', 'Ausar Thompson is headed to Detroit! The Thompson twins go back-2-back! 🤝| #Shorts', '', 'https://i.ytimg.com/vi/8soOlgFOc0Q/default.jpg'),
(25, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=awLQ_A33H9Y', 'The FULL 2023 NBA #ATTSlamDunk Contest! 👀 | 2023 #NBAAllStar', 'Mac McClung has won the 2023 AT&T Slam Dunk Contest with a multiple perfect score performance. #StateFarmSaturday Never ...', 'https://i.ytimg.com/vi/awLQ_A33H9Y/default.jpg'),
(26, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=qA2e7Pbjhcs', 'Kevin Love RIDICULOUS 34 Point Quarter l 11.23.16', 'Check out Kevin Love go off for a ridiculous 34 points in the 1st quarter against Portland! About the NBA: The NBA is the premier ...', 'https://i.ytimg.com/vi/qA2e7Pbjhcs/default.jpg'),
(27, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=NTN2gD9LJnU', 'LeBron James and Dwyane Wade’s Top 25 Plays As Teammates', 'Ahead of tonight\'s Cavaliers-Heat matchup on TNT, enjoy LeBron James and Dwyane Wade\'s best plays while teammates with ...', 'https://i.ytimg.com/vi/NTN2gD9LJnU/default.jpg'),
(28, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=ue1NT3QhuVU', 'Top 10 Dunks of The Decade', 'Before the teens come to a close, The Starters count down the Top 10 Dunks of the Decade so far. Watch The Starters daily at ...', 'https://i.ytimg.com/vi/ue1NT3QhuVU/default.jpg'),
(29, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=pvBjpnVLIQo', 'Victor Wembanyama Drops MONSTER DOUBLE-DOUBLE - 36 PTS &amp; 11 REB 👀', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/pvBjpnVLIQo/default.jpg'),
(30, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=JKajbTxAk5I', '#6 WARRIORS at #3 KINGS | FULL GAME 7 HIGHLIGHTS | April 30, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/JKajbTxAk5I/default.jpg'),
(31, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=ybOi639tb7U', 'Derrick Rose&#39;s UNREAL Top 30 Plays!', 'To celebrate Derrick Rose\'s 30th birthday, check out his top 30 plays from his career! #DerrickRose #DRose #NBA Subscribe to ...', 'https://i.ytimg.com/vi/ybOi639tb7U/default.jpg'),
(32, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=lRi3PYVHHkY', 'WILD OVERTIME ENDING Bucks at Warriors | March 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/lRi3PYVHHkY/default.jpg'),
(33, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=KGLFK0I6-mk', 'Michael Jordan vs Kobe Bryant: Duel of Icons', 'As Kobe Bryant is on the verge of passing Michael Jordan for third all-time on the NBA scoring list, take a look back at highlights of ...', 'https://i.ytimg.com/vi/KGLFK0I6-mk/default.jpg'),
(34, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=Hrj9mUzcsTQ', 'Kenneth Lofton, Jr. Scores CAREER-HIGH 42 POINTS! | April 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Hrj9mUzcsTQ/default.jpg'),
(35, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=Q-fdOHSMk_Y', '#2 GRIZZLIES at #7 LAKERS | FULL GAME 6 HIGHLIGHTS | April 28, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Q-fdOHSMk_Y/default.jpg'),
(36, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=SDdnQz17RDs', 'BEST Dunk Of NBA All Star Weekend? Who Had The Best Slam?', 'Who had the best dunk of the 2016 NBA All Star weekend in Toronto? Here are the dunks in order of appearance: 1) Jordan ...', 'https://i.ytimg.com/vi/SDdnQz17RDs/default.jpg'),
(37, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=1hoa5G2Dy6U', 'Stephen Curry Drops 34 PTS To Secure 4th NBA Championship 🏆 | #NBAFinals', 'Led by Stephen Curry\'s 34 PTS, 7 REB and 7 AST, the Golden State Warriors defeated the Boston Celtics in Game 6, 103-90.', 'https://i.ytimg.com/vi/1hoa5G2Dy6U/default.jpg'),
(38, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=EvS0sr2eEnk', 'Final 4:32 WILD ENDING Warriors vs Celtics - Game 4 NBA Finals 🔥', 'Led by Stephen Curry\'s 43 PTS (7-14 3pt FG), 10 REB and 4 AST, the Golden State Warriors defeated the Boston Celtics in Game ...', 'https://i.ytimg.com/vi/EvS0sr2eEnk/default.jpg'),
(39, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=me18tDB8CA0', 'Austin Reaves Scores CAREER-HIGH 35 Points In Lakers W! | March 19, 2023', 'Led by Austin Reaves\' career-high 35 points (9-14 FG), along with 6 rebounds and 6 assists, the Los Angeles Lakers defeat the ...', 'https://i.ytimg.com/vi/me18tDB8CA0/default.jpg'),
(40, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=eoWpU1VtXV4', 'LeBron James Drops 46 Points - CAREER-HIGH 9 3PM 👑 | January 24, 2023', 'LeBron James becomes the 1st player in NBA history to make 9 3-pt. FGs in a game at age 35 or older. Despite LeBron James 46 ...', 'https://i.ytimg.com/vi/eoWpU1VtXV4/default.jpg'),
(41, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=XBoVDIvOrfI', 'Dennis Rodman&#39;s Lockdown Defensive Performances!', 'Relive the BEST lockdown defensive performances from Dennis Rodman over his career! Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/XBoVDIvOrfI/default.jpg'),
(42, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=niv0M887THk', '🚨 Kyrie CAREER-HIGH &amp; FRANCHISE-RECORD 60 PTS! 🚨', 'Stream More Live Games With NBA LEAGUE PASS: https://app.link.nba.com/e/subscribe_now Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/niv0M887THk/default.jpg'),
(43, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=hiPv0MPRfcw', 'Final 2:46 WILD ENDING #3 76ERS vs #2 CELTICS - Game 1! | May 1, 2023', 'Led by James Harden\'s Playoff career-high tying 45 points, the Philadelphia 76ers defeated the Boston Celtics in Game 1, ...', 'https://i.ytimg.com/vi/hiPv0MPRfcw/default.jpg'),
(44, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=S0Ch4VMhRH4', 'LAKERS at ROCKETS | FULL GAME HIGHLIGHTS | April 2, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/S0Ch4VMhRH4/default.jpg'),
(45, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=sL8jjviszm8', 'James Harden Ties PLAYOFF CAREER-HIGH 45 Points In 76ers Game 1 W! | May 1, 2023', 'Led by James Harden\'s Playoff career-high tying 45 points, the Philadelphia 76ers defeated the Boston Celtics in Game 1, ...', 'https://i.ytimg.com/vi/sL8jjviszm8/default.jpg'),
(46, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=ZNJ5MZnVpt0', 'WARRIORS at CLIPPERS | FULL GAME HIGHLIGHTS | March 15, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ZNJ5MZnVpt0/default.jpg'),
(47, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=TVjgcQry3Xs', 'Andrew Wiggins Shows Out In Game 5!', 'Stay up-to-date on news, live scores and stats with the NBA App:https://app.link.nba.com/-App22 Led by Andrew Wiggins\' 26 PTS ...', 'https://i.ytimg.com/vi/TVjgcQry3Xs/default.jpg'),
(48, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=p6o3YK0azCQ', '#7 LAKERS at #6 WARRIORS | FULL GAME 1 HIGHLIGHTS | May 2, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/p6o3YK0azCQ/default.jpg'),
(49, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=XPuIiZfVNns', 'Final 2:19 WILD ENDING Warriors vs Grizzlies Game 1 🔥🔥', 'DOWNLOAD THE NBA APP HERE: https://app.link.nba.com/App22 Subscribe to the NBA: https://on.nba.com/2JX5gSN.', 'https://i.ytimg.com/vi/XPuIiZfVNns/default.jpg'),
(50, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=P2RVD7-ReFU', 'NBA&#39;s Top 10 Plays Of The Night | May 9, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/P2RVD7-ReFU/default.jpg'),
(51, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=q5yYzqvRVPI', 'Final 2:40 WILD CHRISTMAS ENDING Cavaliers vs Warriors 2016', 'Stream More Live Games With NBA LEAGUE PASS: https://app.link.nba.com/e/subscribe_now Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/q5yYzqvRVPI/default.jpg'),
(52, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=dVk7VMF4-eQ', 'WILD ALL-STAR ENDING Team LeBron vs Team Durant 🔥🔥 | 2022 NBA All-Star', 'Stream More Live Games With NBA LEAGUE PASS: https://app.link.nba.com/e/subscribe_now Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/dVk7VMF4-eQ/default.jpg'),
(53, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=ju40vYNp0Uc', '#7 LAKERS at #1 NUGGETS | FULL GAME 1 HIGHLIGHTS | May 16, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/ju40vYNp0Uc/default.jpg'),
(54, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=B-5StlRZInc', 'WARRIORS at CELTICS | FULL GAME 4 NBA FINALS HIGHLIGHTS | June 10, 2022', 'Stay up-to-date on news, live scores and stats with the NBA App:https://app.link.nba.com/app22 Led by Stephen Curry\'s 43 PTS ...', 'https://i.ytimg.com/vi/B-5StlRZInc/default.jpg'),
(55, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=G2Vdw9flATQ', '#3 76ERS at #2 CELTICS | FULL GAME 1 HIGHLIGHTS | May 1, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/G2Vdw9flATQ/default.jpg'),
(56, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=SDu6pXsCCVY', '#2 GRIZZLIES at #7 LAKERS | FULL GAME 3 HIGHLIGHTS | April 22, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/SDu6pXsCCVY/default.jpg'),
(57, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=HJJEfn0-idU', '#6 WARRIORS at #7 LAKERS | FULL GAME 6 HIGHLIGHTS | May 12, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/HJJEfn0-idU/default.jpg'),
(58, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=2Q-qkpuqY-4', 'TEAM DURANT vs TEAM LEBRON | FULL GAME HIGHLIGHTS | 2022 NBA ALL-STAR', 'LeBron James knocked down a fadeaway jumper to lift #TeamLeBron over #TeamDurant, 163-160. Stephen Curry recorded a ...', 'https://i.ytimg.com/vi/2Q-qkpuqY-4/default.jpg'),
(59, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=9EOC_596j_M', 'Final 2:56 WILD ENDING #7 Lakers vs #6 Warriors - Game 1! | May 2, 2023', 'Led by Anthony Davis\'s 30 points and 23 rebounds, the No. 7 seed Los Angeles Lakers defeat the No. 6 seed Golden State ...', 'https://i.ytimg.com/vi/9EOC_596j_M/default.jpg'),
(60, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=ePlBMqxinxA', 'Rajon Rondo&#39;s 35 BEST Career Plays!', 'To celebrate Rajon Rondo\'s 35th Birthday, back at his 35 BEST plays of his career so far! #NBABDay Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/ePlBMqxinxA/default.jpg'),
(61, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=Ycppm8f3Qto', 'Final 1:47 WILD ENDING Clippers vs Thunder Game 5, 2014 Playoffs🔥🔥', 'The Thunder storm back from down 7 with 49.2 left to win 105-104 and take a 3-2 series lead in the West Semis, Game 5 on ...', 'https://i.ytimg.com/vi/Ycppm8f3Qto/default.jpg'),
(62, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=1Dv63K05MzQ', 'Kyrie&#39;s TOP 30 Career Plays 🏀👏', 'In honor of Kyrie Irving\'s 30th birthday today, take a look at his top 30 career plays! Stream More Live Games With NBA LEAGUE ...', 'https://i.ytimg.com/vi/1Dv63K05MzQ/default.jpg'),
(63, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=5zPf3Ydui9k', 'Final 1:21 WILD OT ENDING Lakers vs Mavericks 🔥🔥', 'Stream More Live Games With NBA LEAGUE PASS: https://app.link.nba.com/e/subscribe_now Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/5zPf3Ydui9k/default.jpg'),
(64, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=lCE_7j5quOY', 'Warriors vs Cavaliers: Game 5 NBA Finals - 06.13.16 Full Highlights', 'The Cleveland Cavaliers defeated the Golden State Warriors 112-97 in Game 5 of The Finals and now trail the series 3-2.', 'https://i.ytimg.com/vi/lCE_7j5quOY/default.jpg'),
(65, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=Bl_RqlpICgs', 'Jason Williams&#39; 45 BEST PLAYS | #NBABDay 🎂', 'Celebrate Jason Williams\' 45th #NBABDay with a compilation of the crafty point guard\'s flashy passes, ridiculous circus shots and ...', 'https://i.ytimg.com/vi/Bl_RqlpICgs/default.jpg'),
(66, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=XWDUBelP1LE', '&quot;Game 6 Klay&quot; Comes Up Clutch 🔥🔥', 'Stay up-to-date on news, live scores and stats with the NBA App:https://app.link.nba.com/-App22 After closing the game on a 23-7 ...', 'https://i.ytimg.com/vi/XWDUBelP1LE/default.jpg'),
(67, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=fdASjnBzTwI', 'Klay Thompson 2nd Highest Career Scoring Night | January 2, 2023', 'Klay Thompson recorded a season-high 54 points (10-21 3pt FG), while Kevon Looney added 14 points and a season-high 20 ...', 'https://i.ytimg.com/vi/fdASjnBzTwI/default.jpg'),
(68, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=OVgyTgi2nGs', 'TEAM WORLD vs TEAM USA | 2023 Nike Hoop Summit | Full Game Highlights | April 8, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/OVgyTgi2nGs/default.jpg'),
(69, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=P3kqTyBJaQY', 'Final 5:47 WILD ENDING Warriors vs Thunder WCF 2016 🚨🔥', 'On this date in 2016 the Warriors make a 4th quarter comeback led by Klay Thompson\'s historic performance to force a game 7 in ...', 'https://i.ytimg.com/vi/P3kqTyBJaQY/default.jpg'),
(70, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=ImjCGALaUdw', 'Warriors BEST &quot;Jaw-Dropping Moments&quot; Of 2022 #NBAPlayoffs', 'With their “Strength in Numbers” mantra on display throughout the Playoffs, the Warriors got contributions from throughout the ...', 'https://i.ytimg.com/vi/ImjCGALaUdw/default.jpg'),
(71, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=bissN6MzK1I', '#8 HEAT at #5 KNICKS | FULL GAME 1 HIGHLIGHTS | April 30, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/bissN6MzK1I/default.jpg'),
(72, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=YeeDMFF9WUk', 'James Harden&#39;s Best Plays Of The Decade', 'Check out the best plays of the decade from James Harden! Tune into ABC and ESPN on Christmas Day. 5:00pm/et: HOU/GSW, ...', 'https://i.ytimg.com/vi/YeeDMFF9WUk/default.jpg'),
(73, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=20uAYozx_5U', 'Relive Final 2:41 WILD ENDING Lakers vs Thunder 2010 Playoffs 🔥🚨', 'On April 30, 2010 Pau Gasol hit the game-winning putback to lead the Lakers to a win over the young OKC Thunder in Game 6 of ...', 'https://i.ytimg.com/vi/20uAYozx_5U/default.jpg'),
(74, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=VVfbgJ_K4Qc', 'No. 1 Pick Paolo Banchero SHINES In NBA Debut - 27 PTS, 9 REB &amp; 5 AST  🔥', 'Paolo Banchero, the No. 1 overall pick in the 2022 NBA Draft out of Duke University, recorded 27 points, 9 rebounds, 5 assists ...', 'https://i.ytimg.com/vi/VVfbgJ_K4Qc/default.jpg'),
(75, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=r_liBadmQtQ', 'LeBron James Forces G7 With HISTORIC Performance', 'LeBron James\' 46 points tonight was a career high in an elimination game. James now has 13 career playoff games with at least ...', 'https://i.ytimg.com/vi/r_liBadmQtQ/default.jpg'),
(76, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=cb-lSDN3_-c', 'LAKERS at PELICANS | FULL GAME HIGHLIGHTS | March 14, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/cb-lSDN3_-c/default.jpg'),
(77, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=Yy6OD7_Fv0c', 'Warriors vs Cavaliers: Game 6 NBA Finals - 06.16.16 Full Highlights', 'The Cleveland Cavaliers defeated the Golden State Warriors 115-101 in Game 6 of The Finals to tie the series 3-3. LeBron James ...', 'https://i.ytimg.com/vi/Yy6OD7_Fv0c/default.jpg'),
(78, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=cMTfKlGAIXk', '#4 SUNS at #5 CLIPPERS | FULL GAME 3 HIGHLIGHTS | April 20, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/cMTfKlGAIXk/default.jpg'),
(79, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=Mxv5h-RZWVs', 'Warriors vs Cavaliers: Game 7 NBA Finals - 06.19.16 Full Highlights', 'The Cleveland Cavaliers defeated the Golden State Warriors 93-89 in Game 7 of The Finals to win the series 4-3. Cleveland\'s ...', 'https://i.ytimg.com/vi/Mxv5h-RZWVs/default.jpg'),
(80, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=o5Y0NY_nV68', '#3 WARRIORS at #2 GRIZZLIES | FULL GAME HIGHLIGHTS | May 1, 2022', 'Ja Morant missed the game-winning layup attempt as time expired for the Grizzlies as they fell to the Warriors in Game 1, 117-116.', 'https://i.ytimg.com/vi/o5Y0NY_nV68/default.jpg'),
(81, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=VDFrLb_hOvQ', '#1 NUGGETS at #7 LAKERS | FULL GAME 3 HIGHLIGHTS | May 20, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/VDFrLb_hOvQ/default.jpg'),
(82, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=eIuALbaowOk', 'Jordan Poole Drops New Playoff Career-High 31 PTS 🔥', 'Jordan Poole Drops New Playoff Career-High 31 PTS, 9 AST & 8 REB, Game 1 vs Grizzlies! DOWNLOAD THE NBA APP HERE: ...', 'https://i.ytimg.com/vi/eIuALbaowOk/default.jpg'),
(83, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=MEUmE-XKKrA', 'Warriors Championship Defense | 2022 NBA Finals', 'Check out some of the Champions\' top defensive plays from this postseason! Stay up-to-date on news, live scores and stats with ...', 'https://i.ytimg.com/vi/MEUmE-XKKrA/default.jpg'),
(84, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=ku6VBh4TMh0', '#4 MAVERICKS at #1 SUNS | FULL GAME HIGHLIGHTS | May 15, 2022', 'Stay up-to-date on news, live scores and stats with the NBA App: https://app.link.nba.com/App_22 Led by Luka Doncic\'s 35 PTS ...', 'https://i.ytimg.com/vi/ku6VBh4TMh0/default.jpg'),
(85, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=J-vFkVWkCFo', 'Stephen Curry &amp; Jordan Poole Combine For 63 PTS In Game 2!', 'Led by Stephen Curry\'s 34 PTS, the Golden State Warriors defeated the Denver Nuggets in Game 2, 126-106. Jordan Poole ...', 'https://i.ytimg.com/vi/J-vFkVWkCFo/default.jpg'),
(86, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=Xxgd0GJuPaE', 'KINGS at MAVERICKS | FULL GAME HIGHLIGHTS | April 5, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/Xxgd0GJuPaE/default.jpg'),
(87, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=V1DVfhiB8j4', 'Final 29.4 WILD ENDING Bucks vs Nets 🔥🔥', 'Stream More Live Games With NBA LEAGUE PASS: https://app.link.nba.com/e/subscribe_now Subscribe to the NBA: ...', 'https://i.ytimg.com/vi/V1DVfhiB8j4/default.jpg'),
(88, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=h1v8PwuBI5A', '#TeamLeBron vs. #TeamDurant | FULL GAME HIGHLIGHTS | 2021 #NBAAllStar', 'TeamLeBron vs. #TeamDurant | FULL GAME HIGHLIGHTS | March 7, 2021 Team LeBron defeated Team Durant, 170-150.', 'https://i.ytimg.com/vi/h1v8PwuBI5A/default.jpg'),
(89, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=b6hr_hqZ-ME', 'Relive Final 3:09 Heat vs Bulls 2011 Eastern Conference Finals 🔥🚨', 'Led by Dwyane Wade and LeBron James, the Miami Heat mounted this incredible late comeback to head to the 2011 Finals.', 'https://i.ytimg.com/vi/b6hr_hqZ-ME/default.jpg'),
(90, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=5MPSFthKI-I', 'Victor Wembanyama Goes #1 Overall In The 2023 #NBADraft', 'The San Antonio Spurs select Victor Wembanyama with the #1 pick in the 2023 #NBADraft presented by State Farm! Never miss a ...', 'https://i.ytimg.com/vi/5MPSFthKI-I/default.jpg'),
(91, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=aTTuaHvdSQU', '#4 SUNS at #5 CLIPPERS | FULL GAME 4 HIGHLIGHTS | April 22, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/aTTuaHvdSQU/default.jpg'),
(92, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=1hDZoz3EwCY', 'Steph&#39;s Top Plays Of The 2022 NBA Playoffs 🏆', 'Stay up-to-date on news, live scores and stats with the NBA App:https://app.link.nba.com/-App22.', 'https://i.ytimg.com/vi/1hDZoz3EwCY/default.jpg'),
(93, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=wYtgiAYG0Ig', 'Final 3:02 WILD PLAYOFF ENDING Bucks vs Celtics 👀🍿', 'DOWNLOAD THE NBA APP HERE: https://app.link.nba.com/App22 Subscribe to the NBA: https://on.nba.com/2JX5gSN Led by ...', 'https://i.ytimg.com/vi/wYtgiAYG0Ig/default.jpg'),
(94, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=3v7A-o0XMn0', 'Final 3:29 WILD ENDING Warriors vs Cavaliers 2017 NBA Finals - Game 3  👀🔥', 'Final 3:29 WILD ENDING Warriors vs Cavaliers Game 3 Of The 2017 ECF! Stay up-to-date on news, live scores & stats with the ...', 'https://i.ytimg.com/vi/3v7A-o0XMn0/default.jpg'),
(95, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=mm3zGvpfwmg', '#3 76ERS at #2 CELTICS | FULL GAME 2 HIGHLIGHTS | May 3, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/mm3zGvpfwmg/default.jpg'),
(96, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=we7EEIUrjus', '#MtnDew3PT​ Contest Full Highlights | 2021 #NBAAllStar', 'Check out the best of the 2021 #MtnDew3PT​ Contest! Subscribe to the NBA: https://on.nba.com/2JX5gSN Full Game Highlights ...', 'https://i.ytimg.com/vi/we7EEIUrjus/default.jpg'),
(97, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=pm1Qjx4LVG0', 'Steph Curry&#39;s Best Career 3-Pointers Of The NBA Finals', 'Steph Curry\'s best 3-Pointers from every NBA Finals appearance of his career! Stay up-to-date on news, live scores and stats with ...', 'https://i.ytimg.com/vi/pm1Qjx4LVG0/default.jpg'),
(98, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=QU3f0FZNsak', 'No. 2 Pick Chet Holmgren Impresses In Summer League Debut!', 'Chet Holmgren, the No. 2 overall pick in the 2022 NBA Draft out of Gonzaga, recorded 23 PTS, 7 REB, 4 AST & 6 BLK as the ...', 'https://i.ytimg.com/vi/QU3f0FZNsak/default.jpg'),
(99, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=99PlQKVDjqQ', 'Final 3:42 WILD ENDING To Game 5 , Nuggets vs Warriors 🤯', 'DOWNLOAD THE NBA APP HERE: https://app.link.nba.com/App22 Subscribe to the NBA: https://on.nba.com/2JX5gSN.', 'https://i.ytimg.com/vi/99PlQKVDjqQ/default.jpg'),
(100, 'UCWJ2lWNubArHWmf3FIHbfcQ', 'https://www.youtube.com/watch?v=oTufGVSzbKk', '#1 NUGGETS at #4 SUNS | FULL GAME 6 HIGHLIGHTS | May 11, 2023', 'Never miss a moment with the latest news, trending stories and highlights to bring you closer to your favorite players and teams.', 'https://i.ytimg.com/vi/oTufGVSzbKk/default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
