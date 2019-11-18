-- Generation time: Sun, 17 Nov 2019 10:40:32 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_25
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `todo`;
CREATE TABLE `todo` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `complete` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

INSERT INTO `todo` VALUES ('1','cumque','Et id distinctio quibusdam ipsa.','1'),
('2','deserunt','Fuga ratione quasi deserunt similique at veniam.','1'),
('3','necessitatibus','Id sint dolores odio qui in.','0'),
('4','non','Culpa dicta consequatur tempora fugiat sint enim.','1'),
('5','et','Et ab ut dolores facilis rem.','1'),
('6','consectetur','Quisquam voluptatem consequatur velit velit magnam illo voluptatum voluptas.','0'),
('7','numquam','Voluptate similique suscipit omnis amet vel molestias eligendi.','0'),
('8','eius','Ab animi porro omnis veritatis ut dolore ut.','1'),
('9','vel','Tenetur voluptatibus dignissimos in eos voluptas ea.','1'),
('10','quam','Sequi aut in optio culpa est.','1'),
('11','doloremque','Quos quae cumque id qui sint fugiat incidunt.','0'),
('12','ducimus','Numquam qui dignissimos dolorem similique reiciendis reprehenderit.','1'),
('13','ut','Consequatur in consectetur veritatis facere.','0'),
('14','aspernatur','Atque facere qui neque sed est quibusdam.','1'),
('15','fugiat','Assumenda amet est tempore quam tenetur et ipsa voluptatem.','1'),
('16','ducimus','Quae officiis nihil est sed porro.','1'),
('17','odit','Dolor voluptas culpa nam et mollitia magni.','0'),
('18','ut','Est ipsam nobis libero sunt tempore ea.','1'),
('19','ducimus','Fuga et est quaerat id pariatur consequatur libero magni.','1'),
('20','dolor','Aut repudiandae laboriosam quo officiis beatae.','0'),
('21','rerum','Error consequuntur animi consequatur eos atque repellat sapiente nihil.','0'),
('22','illum','Nihil incidunt ut sapiente autem.','0'),
('23','exercitationem','Voluptatem eos eaque occaecati magni sint et sunt.','0'),
('24','ea','Nesciunt voluptas hic qui dolores.','0'),
('25','eos','Eius voluptas voluptatum quia doloremque voluptas ea.','1'),
('26','blanditiis','Laudantium tempora quod repudiandae laboriosam.','1'),
('27','sint','Deleniti nulla delectus et dolores.','1'),
('28','eos','Laborum corporis ut sed asperiores ut.','0'),
('29','molestiae','Iste molestiae distinctio ad corporis.','0'),
('30','accusamus','Officiis dolores fugit eos odit.','0'),
('31','alias','Quia architecto sit doloremque molestias impedit nesciunt.','0'),
('32','minima','A accusamus aut consequatur hic enim.','0'),
('33','nihil','Nesciunt harum sint ullam et molestiae iure.','0'),
('34','in','Sit sit hic suscipit similique consequatur consequatur voluptatum ex.','1'),
('35','facilis','Delectus suscipit in id inventore consequatur et.','1'),
('36','sit','Omnis quis asperiores in aut ea perferendis dolorum.','0'),
('37','impedit','Nihil ratione nulla numquam ut doloribus.','1'),
('38','ut','Qui omnis earum quia voluptatem numquam molestias illum.','1'),
('39','quisquam','Sit nesciunt cumque maiores nam eos quos repellendus.','0'),
('40','quisquam','Et est ex cumque expedita.','1'),
('41','ut','Ea sunt deleniti quis alias.','0'),
('42','natus','Reprehenderit quibusdam nesciunt distinctio debitis.','0'),
('43','harum','Deserunt et et perspiciatis velit cumque nostrum.','1'),
('44','ut','Eos similique ducimus quia sint.','1'),
('45','quia','Quibusdam quasi dolores quisquam accusamus ea doloremque.','1'),
('46','assumenda','Ab facilis dolores quia enim laboriosam.','1'),
('47','quidem','Distinctio dicta quia dolores accusamus aut deserunt modi molestiae.','0'),
('48','molestias','Magnam asperiores doloribus quod excepturi minus accusamus exercitationem.','0'),
('49','quos','Deleniti harum sint veniam maxime et dignissimos itaque.','1'),
('50','optio','Minus quibusdam numquam nobis omnis.','0'),
('51','dolorum','Id quod est voluptatibus pariatur praesentium amet fuga.','0'),
('52','illum','Et tempora vero debitis rerum ut et sit libero.','1'),
('53','sed','Iure ipsa omnis ex provident ad.','0'),
('54','repellat','Mollitia quasi nostrum et autem dolores ut asperiores.','0'),
('55','repellendus','Totam odit accusamus necessitatibus odio et libero et.','1'),
('56','sunt','Eum delectus quo quod rerum perspiciatis totam.','1'),
('57','perferendis','Quia earum est quae.','0'),
('58','repudiandae','Fuga error iusto porro molestiae.','0'),
('59','ut','Ea exercitationem ex esse dolore sapiente praesentium placeat.','1'),
('60','accusantium','Facilis minus eligendi vel necessitatibus sunt ipsa itaque.','1'),
('61','voluptatum','Odio qui pariatur quas doloremque consectetur unde.','1'),
('62','totam','Dolorem est minima quia aspernatur id.','0'),
('63','illo','Assumenda minus aut dolor ab assumenda omnis suscipit.','1'),
('64','molestias','Ab error quaerat incidunt perferendis ab aliquam fuga.','0'),
('65','voluptates','Unde ut deleniti quisquam natus voluptas.','0'),
('66','pariatur','Laboriosam et laborum quis ipsum ipsam voluptas et perferendis.','1'),
('67','nesciunt','Architecto voluptas pariatur totam qui.','1'),
('68','nisi','Odit consequatur voluptatem voluptas molestiae voluptates.','1'),
('69','itaque','Nihil doloribus sed saepe quasi.','1'),
('70','et','Itaque nostrum non quidem eveniet.','0'),
('71','ab','Nemo sequi consequatur accusamus atque quis quam quas.','1'),
('72','consectetur','Minima omnis magni et fuga non.','1'),
('73','mollitia','Nostrum neque ipsum explicabo qui non unde.','1'),
('74','sit','Explicabo vel saepe omnis quia animi labore modi.','1'),
('75','laboriosam','Tempora nostrum neque et ducimus voluptatem similique.','0'),
('76','mollitia','Omnis porro veniam at similique ad.','0'),
('77','voluptate','Tempore dicta nam itaque possimus perspiciatis ipsam nihil quidem.','1'),
('78','earum','Rerum fuga vel repellat.','1'),
('79','assumenda','Quisquam sed quasi ut expedita tenetur provident.','0'),
('80','corporis','Asperiores fugiat harum et.','0'),
('81','ex','Adipisci qui quia vel aliquid.','1'),
('82','voluptatem','Veritatis quod atque quisquam quia odit pariatur.','0'),
('83','occaecati','Aut sint est omnis quibusdam non.','0'),
('84','molestiae','Tenetur deserunt harum dolor autem ut.','1'),
('85','rem','Non qui soluta quia dolorem assumenda.','1'),
('86','et','Quae reprehenderit nemo voluptatem et odio illum et minus.','1'),
('87','voluptas','Eum provident labore repudiandae pariatur est nostrum.','0'),
('88','dolore','Ad rerum odio fugit.','0'),
('89','voluptas','Qui ducimus ad rerum quia.','1'),
('90','dicta','Voluptatem aut officiis quae omnis autem illo.','1'),
('91','consequatur','Voluptatem dolores impedit vel et.','1'),
('92','id','Adipisci qui aut deleniti omnis.','1'),
('93','aut','Et quia dolor aspernatur voluptatem voluptatem eum rem labore.','1'),
('94','occaecati','Vero voluptatem molestiae deleniti aut.','0'),
('95','sit','Et aut maxime itaque necessitatibus.','0'),
('96','fuga','Dolores provident repudiandae fugit beatae sint quasi.','0'),
('97','labore','Odit qui nihil quasi.','1'),
('98','eos','Nostrum omnis explicabo voluptatibus tempore.','1'),
('99','ab','Sint explicabo adipisci perspiciatis mollitia laboriosam repellat.','0'),
('100','odit','Ducimus voluptatem aut quibusdam fugit laudantium.','0'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

