/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 26/04/2023 15:28:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '帐号',
  `pwd` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '管理员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'admin', '2021-04-23 16:53:57');
INSERT INTO `admins` VALUES (2, 'admin2', 'admin2', '2023-04-26 12:21:22');
INSERT INTO `admins` VALUES (6, 'admin8', 'admin8', '2023-04-26 15:23:54');

-- ----------------------------
-- Table structure for difangmeishi
-- ----------------------------
DROP TABLE IF EXISTS `difangmeishi`;
CREATE TABLE `difangmeishi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `meishibianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '美食编号',
  `mingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名称',
  `fujinjingdian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '附近景点',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `tupian` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `jiage` decimal(18, 2) NOT NULL COMMENT '价格',
  `meishijianjie` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '美食简介',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `difangmeishi_fenlei_index`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地方美食' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of difangmeishi
-- ----------------------------
INSERT INTO `difangmeishi` VALUES (1, '2104231633490', '特色美食', '城隍庙', 1, 'upload/ecdbe61eb19bda4fdc0a9cd5480b7ba5.jpg,upload/c5b97b78b7c72016a662e5256a2fbf43.jpg', 30.00, '美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介美食简介', '2021-04-23 19:13:02');
INSERT INTO `difangmeishi` VALUES (2, '2104231635533', '特色美食222', '颐和园', 1, 'upload/1a96cc46fc36e0574dd4d58e5ff0e49f.jpg,upload/a713441c33216cb674023d50a3522912.jpg', 60.00, '美食简介美食简介美食简介美食简介美食简介美食简介美食简介', '2021-04-23 19:03:48');
INSERT INTO `difangmeishi` VALUES (3, '2104231636571', '红烧系列', '颐和园', 4, 'upload/41520be8ca77f734cd480b45c4a34156.jpg,upload/9b68e8c49f68e2bfeb3e32770ca993b6.jpg', 60.00, '很好吃', '2021-04-23 18:54:04');
INSERT INTO `difangmeishi` VALUES (4, '2104231637402', '美味中餐', '颐和园', 2, 'upload/87604a91f88d948d0cf72bc7a0e891b1.jpg,upload/4817bbb9e832bc9de797cf383f7530d5.jpg,upload/9df4be4fa5027745f22192f1561d794a.jpg', 100.00, '非常nice', '2021-04-23 18:42:26');
INSERT INTO `difangmeishi` VALUES (5, '042318042749', '东坡肉', '世界之窗', 3, 'upload/20210423/e015220e700da8f8d7a49f93277088d0.jpg', 120.00, '非常好吃', '2021-04-23 18:05:26');

-- ----------------------------
-- Table structure for diqu
-- ----------------------------
DROP TABLE IF EXISTS `diqu`;
CREATE TABLE `diqu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `diqumingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地区名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '地区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diqu
-- ----------------------------
INSERT INTO `diqu` VALUES (1, '本地', '2021-04-23 18:24:34');
INSERT INTO `diqu` VALUES (2, '境内', '2021-04-23 18:33:52');
INSERT INTO `diqu` VALUES (6, '境外', '2021-04-23 18:12:25');
INSERT INTO `diqu` VALUES (11, '沿海', '2023-04-26 15:24:23');

-- ----------------------------
-- Table structure for jingdianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jingdianxinxi`;
CREATE TABLE `jingdianxinxi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `jingdianbianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '景点编号',
  `jingdianmingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '景点名称',
  `suoshudiqu` int UNSIGNED NOT NULL COMMENT '所属地区',
  `tupian` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `kaifangshijian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '开放时间',
  `fujinmeishi` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '附近美食',
  `dizhi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址',
  `piaojia` decimal(18, 2) NOT NULL COMMENT '票价',
  `liulanliang` int NOT NULL COMMENT '浏览量',
  `miaoshu` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '描述',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jingdianxinxi_suoshudiqu_index`(`suoshudiqu` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '景点信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jingdianxinxi
-- ----------------------------
INSERT INTO `jingdianxinxi` VALUES (1, '2101091137481', '漓江山水', 2, 'upload/e8882dc0dcd1eff6b1bf4b8198c944fc.png,upload/d506cc960ccd3d9aaf88146ed10d5f53.png,upload/c46cc0ff88af3292cc864dc46df1fa61.png', '全天开放', '红烧系列,美味中餐', '广西桂林', 100.00, 3, '<p>桂林漓江风景区游览胜地繁多，在短期内只能bai择其主要景点进行游览，其中一江（漓江）、两洞（芦笛岩、七星岩）、三山（独秀峰、伏波山、叠彩山）具有代表性，它们基本上是桂林山水的精华所在。旅行社组织的桂林两日游，一般是第一天游独秀峰、叠彩山、伏波山、七星岩和芦笛岩；第二天起由漓江去阳朔。 [编辑本段]独秀峰 　　在桂林市区王城内。它平地拔起,孤峰独秀，人们常用&ldquo;南天一柱&rdquo;来形容它的挺拔。由于它在朝霞和夕阳辉，犹如巨人披上紫袍，腰系金带，故又名紫金山。从西麓拾级而上，登306级石阶即可到达峰顶，在此俯瞰，桂林数十里奇山秀水一览无余。故游览桂林的游客，一般先游览独秀峰，鸟瞰一下桂林全貌。独秀峰山麓还有读书岩（岩即洞）、月牙池等景点。读书岩相传为南北朝文学家颜延之读书处。 [编辑本段]叠彩山 　　 叠彩山 在桂林市北部，面临漓江，远望如匹匹彩缎相叠，故名。相传过去山上多桂树，所以亦名桂山。又因山麓有奇特的风洞，人们称它为风洞山。叠彩山是市内风景荟萃之地，包括越山，四望山、明月峰和仙鹤峰。上山，一路古木参天，山色秀丽、与园林建筑叠彩亭、于越亭、秀山书院、仰止堂等相融成趣。顶峰拿云亭是观景的好去处，古人赞美这里是&ldquo;江山会景处&rdquo;。山上石刻很多，太极阁的摩崖造像和石刻，艺术价值很高。 [编辑本段]伏波山 　　 伏波山 在桂林东北伏波门外，东枕漓江，孤峰挺秀，风景迷人，有&ldquo;伏波胜景&rdquo;之称，由遇阻回澜之势。伏波山主要名胜有唐代摩崖石刻、还珠洞、试剑石等。东麓的还珠洞分上下两层，互相连通，上洞曲折高朗，壁上多唐代造像。下洞临水伏波，明朗开阔，洞中有试剑石。试剑石乃是天然的钟乳石，它与地面间有一间隙，仿佛被剑砍过一样,故名之。试剑石旁有石凳，石桌，石前有伏波潭，潭水如镜，游人在此欣赏景别有一番乐趣。</p>', '2021-04-23 17:50:49');
INSERT INTO `jingdianxinxi` VALUES (2, '2101091142120', '西双版纳', 2, 'upload/053a867d9fc255ccc192844987aee542.png,upload/50a521e09e3009741329113dd9c765f7.png,upload/73c46ea394ac0184a3181f77851e4b65.png', '全天开放', '特色美食,红烧系列', '云南xx路', 100.00, 11, '<p>西双版纳傣族自治州，是云南省<span class=\"smnwth2cmuo\">下辖</span>的一个自治州、地级行政区，位于中华人民共和国云南省最南端，地处北纬约21&deg;10&rsquo;，东经99&deg;55&rsquo;至101&deg;50&rsquo;之间，属北回归线以南的热带湿润区，东西面与江城县、普洱市相连；西北面与澜沧县为邻，东南部、南部和西南部分别与老挝、缅甸山水相连，邻近泰国和越南，边界线长达966.3公里，约等于云南省边境线总长的1/4，面积19582.45平方公里。</p>\n<p>西双版纳有中国唯一的热带雨林自然保护区，是国家级生态示范区、国家级风景名胜区、联合国生物多样性保护圈成员，植物种类占全国的1/6，动物种类占全国的1/4，森林覆盖率80.8%，是中国第二大天然橡胶生产基地，大叶种茶的原生地、普洱茶的故乡，建有1个5A级景区，9个4A级景区，西双版纳以神奇的热带雨林自然景观和少数民族风情而闻名于世，是中国的热点旅游城市之一。</p>\n<p><a class=\"ikqb_img_alink\" title=\"点击查看大图\" href=\"https://iknow-pic.cdn.bcebos.com/bd3eb13533fa828bbce220c7f31f4134960a5ad4\" target=\"_blank\" rel=\"noopener\"><img class=\"ikqb_img\" src=\"./upload/1619170054083.png\" /></a></p>', '2021-04-23 18:02:30');
INSERT INTO `jingdianxinxi` VALUES (3, '2101091147333', '世界之窗', 1, 'upload/af939873e6383d3ac5263a56338dd746.png,upload/57677818acbfddc07ed2483713cac2f7.png,upload/7526b5302d5410b9b992b61a1b6cfe55.png', '全天开发', '美味中餐,红烧系列', '广东深圳', 100.00, 0, '<p>世界之窗位于深圳湾畔，以弘扬世界文化为宗旨，把世zhi界奇观、历史遗迹、古今zhuan名胜、民间歌舞表演汇集一园，营造了一个精彩美妙的世界。世界之窗景区按五大洲划分，与世界广场、世界雕塑园、巴黎之春购物街、侏罗纪天地共同构成千姿万态、美妙绝仑、让人惊叹的人造主题公园。公园中的各个景点，都按不同比例自由仿建，精巧别致，维妙维肖。世界之窗的一个个景点都是一首首凝固的交响诗，那些异彩纷呈的民俗表演则是一幅幅活泼生动的风情画。<br />景区按世界地域结构和游览活动shu容分为世界广场、亚洲区、大洋州区、欧洲区、非洲区、美洲区、现代科技娱乐区、世界雕塑园、国际街九大景区，内建有118个景点。</p>', '2021-04-23 17:42:17');
INSERT INTO `jingdianxinxi` VALUES (4, '2101091151440', '颐和园', 6, 'upload/1357db17a09de5c07a218a036ac28345.png,upload/508325a5f7c0c4a4ddb91048647752a2.png,upload/5f33344eef6ef2a23ddeb22689b46e1f.png', '全天开放', '美味中餐,红烧系列', '北京', 100.00, 10, '<p>颐和园是我国清朝时期修建的皇家bai园林，在北京西郊修建，以杭州西湖为借鉴，修建的一座具有江南风范的皇家行宫。在我国古代，皇室是最高权力的象征，所有的能人巧匠都为他们服务着，所以皇家修建的园林建筑可以作为古代建筑的代表之作，颐和园就是一个很好地例子。<br />颐和园的修筑和破坏历史：&ldquo;乾隆十五年，乾隆皇帝为孝敬其母崇庆皇太后动用448万两白银在这里改建为清漪园，形成了从现清华园到香山长达二十公里的皇家园林区。咸丰十年，清漪园被英法联军焚毁。光绪十四年重建，改称颐和园，作消夏游乐地。光绪二十六年，颐和园又遭&ldquo;八国联军&rdquo;的破坏，珍宝被劫掠一空。清朝灭亡后，颐和园在军阀混战和国民党统治时期，又遭破坏。&rdquo;&mdash;&mdash;引自百度百科。所以，颐和园经历了风风雨雨，不断地破坏和修筑，最终保存下来，才是我们今天看到的样子。<br />颐和园是现世保存最完整的皇家行宫，被人们比喻为&ldquo;皇家园林博物馆。&rdquo;颐和园的面积很大，景点也相当丰富，为了让皇室的人们体会到购物的乐趣，修建了苏州街，由宫里的太监宫女们假扮商人卖货。为了庆祝，万寿山就是皇帝皇后举行庆典的地方；排云殿，长廊，宝云阁。等等，大小景点数十个之多。<br />颐和园是我国的5A级景区，重点文物保护对象，其历史意义，文化价值都不能以金钱衡量。</p>', '2021-04-23 17:22:58');
INSERT INTO `jingdianxinxi` VALUES (5, '2101091420274', '城隍庙', 9, 'upload/20210423/2dfe1dcdcffa2d3d8f85e09a72377713.jpg,upload/20210423/6f0878067ac841a495685f4b861f8b27.jpg', '全天开放', '红烧系列,特色美食222', '上海浦东', 100.00, 0, '<p>大大大大啥的12而我当时</p>', '2021-04-23 17:31:38');
INSERT INTO `jingdianxinxi` VALUES (6, '042318034459', '云南大理', 11, 'upload/20210423/0b15e86bf1966bf1bbe6dba61f69680b.jpg,upload/20210423/890026261fcc3153f41eb694f5aba718.jpg,upload/20210423/bfed354b8c9e3f21c664dc3ce98c7a00.jpg', '8.00-18.00', '美味中餐,红烧系列', 'Xx\'x\'x\'x\'x\'xxxxxxx 地址', 120.00, 5, '<p>描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述描述</p>', '2021-04-23 18:04:11');

-- ----------------------------
-- Table structure for liuyanban
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系电话',
  `liuyanneirong` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `liuyanren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言人',
  `huifuneirong` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '回复内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '留言板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES (1, '大大', '13245678910', '留言内容', '111', '收到', '2021-04-23 17:58:45');
INSERT INTO `liuyanban` VALUES (2, 'xx小小', '12345678910', '留言内容', '333', 'sd收到', '2021-04-23 18:10:36');
INSERT INTO `liuyanban` VALUES (3, 'sdsd', '112121', '21212', '111', '', '2023-04-25 20:40:54');

-- ----------------------------
-- Table structure for lunbotu
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '连接地址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES (1, '1', 'upload/20210423/0131ae58ab00a2a801219c77732cc0.jpg', '#', '2021-04-23 17:10:22');
INSERT INTO `lunbotu` VALUES (2, '2', 'upload/20210423/01479f5cc1114da80121416880ee14.jpg', '#', '2021-04-23 17:10:32');

-- ----------------------------
-- Table structure for lvyouxianlu
-- ----------------------------
DROP TABLE IF EXISTS `lvyouxianlu`;
CREATE TABLE `lvyouxianlu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `xianlubianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路编号',
  `xianlumingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路名称',
  `tupian` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `chufadi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出发地',
  `tujingdi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '途经地',
  `zhongdian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '终点',
  `jiage` decimal(18, 2) NOT NULL COMMENT '价格',
  `liulanliang` int NOT NULL COMMENT '浏览量',
  `xianlutese` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路特色',
  `xianlujianjie` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路简介',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '旅游线路' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lvyouxianlu
-- ----------------------------
INSERT INTO `lvyouxianlu` VALUES (1, '042317345975', '北京-上海', 'upload/20210423/fbbbb2749ab6a7e3041929e0ee5f7d3f.jpg', '北京', '安徽', '上海', 1200.00, 1, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>这么多景点，距离又远，时间不多的话，怎么兼顾?</p>', '2021-04-23 17:37:51');
INSERT INTO `lvyouxianlu` VALUES (2, '042317383995', '广东-北京', 'upload/20210423/e86090d146dcf5b8bdde8da73ecadfee.jpg', '广东', '安徽', '北京', 1200.00, 4, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>选了我喜欢的，很省钱，而且省心</p>', '2021-04-23 17:39:19');
INSERT INTO `lvyouxianlu` VALUES (3, '042317396310', '云南-海南', 'upload/20210423/39d4980fd46469f5ed6eb7d171e20f0a.jpg', '云南', '广西', '海南', 1200.00, 2, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>休息好后可自行打卡市区网红景点宽窄巷子</p>', '2021-04-23 17:40:35');
INSERT INTO `lvyouxianlu` VALUES (4, '042317404470', '广东-新疆', 'upload/20210423/807dd73523d1beedfc22d64e25a71932.jpg', '广东', '湖南', '新疆', 3000.00, 6, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>行程自由，设计合理，轻松自在</p>', '2021-04-23 17:41:38');
INSERT INTO `lvyouxianlu` VALUES (5, '042318054243', '浙江-四川', 'upload/20210423/43f77b5cb8eedb7449e48e8bbe533784.jpg,upload/20210423/be659c46e1321f96c3721b94bf73ec6c.jpg', '安徽', '浙江，四川', '四川', 1200.00, 1, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>在当地口碑非常好，真心把游客当朋友看待</p>', '2021-04-23 18:06:31');
INSERT INTO `lvyouxianlu` VALUES (6, '042318054243', '上海-天津', 'upload/20210423/0868d75db8de7420b99e4e2d9eaad704.jpg', '安徽', '浙江，四川', '天津', 1200.00, 1, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>地形复杂，天气变化多，一定携带足够衣物</p>', '2021-04-23 18:06:31');
INSERT INTO `lvyouxianlu` VALUES (7, '042318054243', '苏州-九寨沟', 'upload/20210423/db0c4aca1c1e4da356f5226d6ffbaef7.jpg', '安徽', '浙江，四川', '九寨沟', 1200.00, 1, '<p>线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色线路特色</p>', '<p>一定要爱护景区的环境，游玩时配合工作人员的安排</p>', '2021-04-23 18:06:31');
INSERT INTO `lvyouxianlu` VALUES (8, '042318054243', '宁波-广东', 'upload/20210423/d2ef25d8f45d597d49b00e5cff0b7dbb.jpg', '安徽', '浙江，四川', '广东', 2200.00, 1, '<p>卡拉就是看监控</p>', '<p>带好雨具和防晒物品，记得补充水分，多吃蔬果</p>', '2021-04-23 18:06:31');

-- ----------------------------
-- Table structure for meishifenlei
-- ----------------------------
DROP TABLE IF EXISTS `meishifenlei`;
CREATE TABLE `meishifenlei`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '美食分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meishifenlei
-- ----------------------------
INSERT INTO `meishifenlei` VALUES (1, '川菜', '2021-04-23 19:54:22');
INSERT INTO `meishifenlei` VALUES (2, '粤菜', '2021-04-23 19:45:53');
INSERT INTO `meishifenlei` VALUES (3, '西餐', '2021-04-23 19:37:14');
INSERT INTO `meishifenlei` VALUES (4, '中餐', '2021-04-23 19:24:08');

-- ----------------------------
-- Table structure for shoucangjilu
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏用户',
  `xwid` int UNSIGNED NOT NULL COMMENT '对应模块id',
  `biao` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏得模块',
  `biaoti` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '显示的标题',
  `url` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏URL',
  `ziduan` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '对应模块字段',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES (1, 'admin', 4, 'jingdianxinxi', '颐和园', 'http://192.168.0.38:8080/', 'jingdianmingcheng', '2021-04-23 17:43:13');
INSERT INTO `shoucangjilu` VALUES (2, '111', 2, 'lvyouxianlu', '广东-北京', 'http://192.168.0.38:8080/', 'xianlumingcheng', '2021-04-23 17:53:05');
INSERT INTO `shoucangjilu` VALUES (3, '333', 4, 'lvyouxianlu', '广东-新疆', 'http://192.168.0.38:8080/', 'xianlumingcheng', '2021-04-23 18:10:47');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `token` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '唯一值',
  `session` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '保存得数据',
  `cx` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录权限',
  `login` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录模块',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '登录用户',
  `valueid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户id',
  `token_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '前端登录凭证' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('4P226RLG8T9TTLKN6SV0OIXSOCF6MBCB', '{\"touxiang\":\"upload/20210423/8a930381-fb95-4b17-a9f8-e626ef6dfb3e.png\",\"mima\":\"zhangsan\",\"xingbie\":\"女\",\"login\":\"用户\",\"xingming\":\"zhangsan\",\"yonghuming\":\"zhangsan\",\"shouji\":\"11212121212\",\"cx\":\"用户\",\"addtime\":\"2023-04-26 12:22:26\",\"id\":3,\"shenfenzheng\":\"444444444444443\",\"youxiang\":\"1212121@qq.com\",\"username\":\"zhangsan\"}', '用户', '用户', 'zhangsan', '3', '2023-05-06 15:26:14');
INSERT INTO `token` VALUES ('7C5EB9ZMLG59PU91IHPG80A4OLWG5A8U', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 14:58:57');
INSERT INTO `token` VALUES ('7LNH1WD1IYNWAG66TICGUIYXHLPZWEYS', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-05 21:42:25');
INSERT INTO `token` VALUES ('919SHXOV1FZD3GG8PVXWHQQ4CDLHBXOZ', '{\"touxiang\":\"upload/20210423/8a930381-fb95-4b17-a9f8-e626ef6dfb3e.png\",\"mima\":\"zhangsan\",\"xingbie\":\"男\",\"login\":\"用户\",\"xingming\":\"zhangsan\",\"yonghuming\":\"zhangsan\",\"shouji\":\"11212121212\",\"cx\":\"用户\",\"addtime\":\"2023-04-26 12:22:26\",\"id\":3,\"shenfenzheng\":\"444444444444443\",\"youxiang\":\"1212121@qq.com\",\"username\":\"zhangsan\"}', '用户', '用户', 'zhangsan', '3', '2023-05-06 15:02:14');
INSERT INTO `token` VALUES ('9GEWB8X9WGM4X562BDH5PDCH0COGT8R4', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 15:10:23');
INSERT INTO `token` VALUES ('9T97VEVVHIGO2NEENB4ITM1YU14891HG', '{\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 12:37:23');
INSERT INTO `token` VALUES ('BOG9G62GR2K0CDU9BERBFR3CLBIMMBGS', '{\"touxiang\":\"upload/20210423/8a930381-fb95-4b17-a9f8-e626ef6dfb3e.png\",\"mima\":\"zhangsan\",\"xingbie\":\"女\",\"login\":\"用户\",\"xingming\":\"zhangsan\",\"yonghuming\":\"zhangsan2\",\"shouji\":\"11212121212\",\"cx\":\"用户\",\"addtime\":\"2023-04-26 12:22:26\",\"id\":3,\"shenfenzheng\":\"444444444444443\",\"youxiang\":\"1212121@qq.com\",\"username\":\"zhangsan2\"}', '用户', '用户', 'zhangsan2', '3', '2023-05-06 15:09:55');
INSERT INTO `token` VALUES ('D5AWUPZXD49B4F0NZFZ3I25TXSI54Q63', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 12:47:11');
INSERT INTO `token` VALUES ('DK0X6K28UG35R79PLNG9Z0CDFS7GCUU5', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 12:41:54');
INSERT INTO `token` VALUES ('DRAMEUDT9PV9IP0QIMDAV60XM1WPXUQC', '{\"touxiang\":\"upload/20210423/f0617774-faba-4377-8efa-8946d00ad807.png\",\"mima\":\"111\",\"xingbie\":\"男\",\"login\":\"用户\",\"xingming\":\"大大\",\"yonghuming\":\"111\",\"shouji\":\"13245678910\",\"cx\":\"用户\",\"addtime\":\"2021-04-23 17:52:05\",\"id\":1,\"shenfenzheng\":\"123456789123456\",\"youxiang\":\"15641@qq.com\",\"username\":\"111\"}', '用户', '用户', '111', '1', '2023-05-05 20:40:32');
INSERT INTO `token` VALUES ('GRUA90XEIZF8NI7R8IP0WHL6POZSH5AK', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 15:22:52');
INSERT INTO `token` VALUES ('NMD1CMOKYGXCWZG2DV19SOW4HT8DCM37', '{\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-05 20:37:34');
INSERT INTO `token` VALUES ('O3CG6EE1LKGU60VGK5ULCH6WBOA5B3RD', '{\"touxiang\":\"upload/20210423/8a930381-fb95-4b17-a9f8-e626ef6dfb3e.png\",\"mima\":\"zhangsan\",\"xingbie\":\"女\",\"login\":\"用户\",\"xingming\":\"zhangsan\",\"yonghuming\":\"zhangsan\",\"shouji\":\"11212121212\",\"cx\":\"用户\",\"addtime\":\"2023-04-26 12:22:26\",\"id\":3,\"shenfenzheng\":\"444444444444443\",\"youxiang\":\"1212121@qq.com\",\"username\":\"zhangsan\"}', '用户', '用户', 'zhangsan', '3', '2023-05-06 15:13:25');
INSERT INTO `token` VALUES ('RWTBPXN0GSVZP61E5MG7V85SGVTRHRD5', '{\"touxiang\":\"upload/20210423/f0617774-faba-4377-8efa-8946d00ad807.png\",\"mima\":\"111\",\"xingbie\":\"男\",\"login\":\"用户\",\"xingming\":\"大大\",\"yonghuming\":\"111\",\"shouji\":\"13245678910\",\"cx\":\"用户\",\"addtime\":\"2021-04-23 17:52:05\",\"id\":1,\"shenfenzheng\":\"123456789123456\",\"youxiang\":\"15641@qq.com\",\"username\":\"111\"}', '用户', '用户', '111', '1', '2023-05-06 12:52:06');
INSERT INTO `token` VALUES ('WODMG8FEBD6TZQ3OG1701R70VEN4QXG3', '{\"cx\":\"管理员\",\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"login\":\"管理员\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 15:05:44');
INSERT INTO `token` VALUES ('XLX1PL6QXHPYMQV2TGQS3LMZNQKQG7TL', '{\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 15:05:18');
INSERT INTO `token` VALUES ('ZD34IZ3DEURWT7HCHROVS1MSONRCEXHW', '{\"addtime\":\"2021-04-23 16:53:57\",\"id\":1,\"pwd\":\"admin\",\"username\":\"admin\"}', '管理员', '管理员', 'admin', '1', '2023-05-06 11:29:04');

-- ----------------------------
-- Table structure for xinwenfenlei
-- ----------------------------
DROP TABLE IF EXISTS `xinwenfenlei`;
CREATE TABLE `xinwenfenlei`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '分类名称',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '新闻分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xinwenfenlei
-- ----------------------------
INSERT INTO `xinwenfenlei` VALUES (1, '站内新闻', '2021-04-23 17:05:48');
INSERT INTO `xinwenfenlei` VALUES (2, '行业资讯', '2021-04-23 17:14:37');

-- ----------------------------
-- Table structure for xinwenxinxi
-- ----------------------------
DROP TABLE IF EXISTS `xinwenxinxi`;
CREATE TABLE `xinwenxinxi`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `fenlei` int UNSIGNED NOT NULL COMMENT '分类',
  `tupian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
  `tianjiaren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '添加人',
  `dianjilv` int NOT NULL COMMENT '点击率',
  `neirong` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xinwenxinxi_fenlei_index`(`fenlei` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '新闻信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xinwenxinxi
-- ----------------------------
INSERT INTO `xinwenxinxi` VALUES (1, '2021年4月22日 渭南文化旅游资讯微报（组图）', 1, 'upload/20210423/cdad67a0196936abc1316779d59888b0.jpg', 'admin', 1, '<p class=\"f_center\">　　<img src=\"./upload/1619171070888.png\" /></p>\n<p>　　华山云海日出如仙境。</p>\n<p>　　陕西网讯（记者 唐双燕 实习记者 王香林）阳春四月，草长莺飞；杏花烟雨，柳岸长堤。近日，渭南市2部戏曲作品参加中国秦腔优秀剧目展演，《张富清1948》,秦腔折子戏《赵五娘吃糠》入选；华山云海日出如仙境，令人陶醉，美不胜收。</p>\n<p>　　渭南市文旅局开展提升公共文化服务能力直播培训 渭南市2部戏曲作品参加中国秦腔优秀剧目展演</p>\n<p>　　【渭南市文旅局开展提升公共文化服务能力直播培训】近期，渭南市文旅局组织全市公共文化单位、镇（街道）文化站和基层文化工作人员500余人，参加了&ldquo;全省公共文化服务体系建设高质量发展专题&rdquo;两期线上直播培训。此次培训内容丰富，实用性强，不仅开阔了视野，提高了认识，也为渭南市基层文化单位&ldquo;十四五&rdquo;公共文化发展提供思路，指明方向。</p>\n<p>　　【渭南市2部戏曲作品参加中国秦腔优秀剧目展演】由文化和旅游部、陕西省人民政府共同主办的2021年中国秦腔优秀剧目展演将于5月15日至29日在陕西举办。渭南市推荐的秦腔现代戏《张富清1948》,秦腔折子戏《赵五娘吃糠》入选并参加展演。该活动三年举办一次，今年为首届，活动汇集西北五省秦腔优秀剧目，旨在传承和弘扬秦腔艺术，推出秦腔新人新作，提高秦腔社会影响，不断满足人民群众精神文化生活需要。</p>\n<p>　　韩城市推出精品&ldquo;红色旅游&rdquo;线路 临渭区文化馆开展党史学习教育</p>\n<p>　　【韩城市推出精品&ldquo;红色旅游&rdquo;线路】韩城的红色记忆是稳固而鲜明的，在这里，不仅有八路军东渡黄河出师抗日纪念园、东英村廉政教育示范基地，还有韩城第一个党支部旧址&mdash;&mdash;范家庄党支部等，这些遗迹渗透和传唱着深埋于韩城热土上艰苦奋斗的革命精神，无私奉献、砥砺奋进的坚毅品格以及英勇抗战的家国情怀。在中国共产党成立100周年之际，随着党史教育学习的热潮掀起和&ldquo;黄河号&rdquo;旅游专列的即将开行，&ldquo;红色旅游&rdquo;将成为人们出行的首选。</p>\n<p>　　【临渭区文化馆开展党史学习教育】4月22日，临渭区文化馆全体党员干部赴渭华起义纪念馆开展&ldquo;传承经色基因，筑牢理想信念&rdquo;党史学习教育。通过此次教育实践，使大家思想得到洗礼，党性修养得到升华，理想信念更加坚定。激励大家在今后的工作、生活中，继承和发扬好革命先辈信念坚定、无私奉献的初心和担当，树牢&ldquo;四个意识&rdquo;，坚定&ldquo;四个自信&rdquo;，不忘初心、牢记使命，努力为临渭区群众文化事业奉献自己的光和热。</p>\n<p>　　澄城县图书馆组织开展&ldquo;华彩渭南 流动图书进校园&rdquo;世界读书日活动 合阳县博物馆扎实推进党史学习教育</p>\n<p>　　【澄城县图书馆组织开展&ldquo;华彩渭南 流动图书进校园&rdquo;世界读书日活动】4月21日，为了迎接世界读书日的到来，澄城县图书馆特组织了流动图书车，开展&ldquo;华彩渭南 流动图书进校园&rdquo;活动走进城关五小。本次活动受到了学校师生的热烈欢迎，学生们兴致勃勃参观图书车，认真仔细开展了阅读活动。通过流动图书系列服务，相信学生的阅读兴趣会进一步提升，城市文化品质得到加强，也为图书馆高质量发展及书香澄城建设作出贡献。</p>\n<p>　　【合阳县博物馆扎实推进党史学习教育近日，合阳县博物馆围绕&ldquo;学史明理、学史增信、学史崇德、学史力行&rdquo;的要求，立足实际，创新方式方法，精心组织，在全馆上下掀起了党史学习教育热潮。通过此次学习教育，广大党员干部更加坚定了理想信念，不忘初心，砥砺前行，从知史爱党，知史爱国中践行初心使命，真正把学习党史焕发出的热情和成效转化成做好本职工作的措施和动力，在学思践悟中锚定新时代文博工作航向，勇于担当，善于作为，以奋发的干劲迎接建党100周年！</p>\n<p>　　【华山云海日出如仙境】4月22日，西岳华山雨过天晴，迎来难得一见的云海日出景观。一时间，云海、山峰与光芒四射的太阳齐头并进，构成一副美妙绝伦的景象，令人陶醉，美不胜收。</p>\n<p class=\"f_center\">　　<img src=\"./upload/1619171071012.png\" /></p>\n<p>　　渭南市文旅局开展提升公共文化服务能力直播培训。</p>\n<p class=\"f_center\">　　<img src=\"./upload/1619171071072.png\" /></p>\n<p>　　《张富清1948》。</p>\n<p class=\"f_center\">　　<img src=\"./upload/1619171071135.png\" /></p>\n<p>　　韩城市精品&ldquo;红色旅游&rdquo;线路。</p>\n<p class=\"f_center\">　　</p>', '2021-04-23 17:44:31');
INSERT INTO `xinwenxinxi` VALUES (2, '五一假期', 1, 'upload/20210423/05694ee6dd64c6d94de5d21d228b99ae.jpg', 'admin', 2, '<p>sdsd1w11w1212</p>', '2021-04-23 17:45:21');
INSERT INTO `xinwenxinxi` VALUES (3, '三亚旅游推广局推荐重庆市民“错峰出行” 暑假去三亚2222', 2, 'upload/20210423/de95b88624d984e286d1f458e9a7f5c6.jpg', 'admin', 3, '<p>华龙网-新重庆客户端4月23日10时35分讯（记者 舒婷） &ldquo;三亚有多欢迎重庆人？三亚市旅游推广局副局长。&rdquo;4月22日下午，在重庆举行的&ldquo;2021年&lsquo;三亚新青年奇趣岛&rsquo;海南航空旅游主题航班及落地营销推介活动&rdquo;上，三亚市旅游推广局副局长俞婷婷用正宗重庆话介绍自己和三亚，瞬间拉近与大家的距离。据悉，此次推介活动户外展示于4月23&mdash;25日，在解放碑举行3天，届时，市民可到现场与了解三亚游购优惠信息、与美人鱼合影、观看三亚风情表演。</p>\n<figure class=\"imgComment_figure\"><img title=\"三亚市旅游推广局副局长俞婷婷致辞\" src=\"./upload/1619171167716.png\" alt=\"图一：三亚市旅游推广局副局长俞婷婷致辞\" data-target=\"835102651443318784\" data-origin=\"./upload/1619171167848.png\" />\n<figcaption class=\"imgComment_content\">三亚市旅游推广局副局长俞婷婷致辞。受访者供图 华龙网发</figcaption>\n</figure>\n<p><strong>&ldquo;错峰旅游，淡季不淡&rdquo;</strong></p>\n<p>据三亚市旅游推广局介绍，三亚正在持续不断的塑造全新品牌形象，打破固有旅游淡旺季概念，比如目前正在持续进行中的2021海南国际潜水节、五一期间即将举行的和热门游戏联合举办大型赛事，以及全新的水上运动项目，向目标客源地传达&ldquo;错峰旅游，淡季不淡&rdquo;的目的地认知。</p>\n<figure class=\"imgComment_figure\"><img title=\"重庆日报报业集团总裁向泽映。\" src=\"./upload/1619171168163.png\" alt=\"图二：重庆日报报业集团总裁向泽映\" data-target=\"835102789310091264\" data-origin=\"./upload/1619171168197.png\" />\n<figcaption class=\"imgComment_content\">重庆日报报业集团总裁向泽映。受访者供图 华龙网发</figcaption>\n</figure>\n<p>据介绍，三亚传统淡季是每年4月到9月，也就是暑期期间，这段时间，不仅酒店房费只有旺季几分之一，与旺季相比，旅游体验还会更好。</p>\n<figure class=\"imgComment_figure\"><img title=\"&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场。\" src=\"./upload/1619171168392.png\" alt=\"图三：&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场 \" data-target=\"835102915302789120\" data-origin=\"./upload/1619171168410.png\" />\n<figcaption class=\"imgComment_content\">&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场。受访者供图 华龙网发</figcaption>\n</figure>\n<p>三亚夏天最高温度35度，三亚人民没有享受过高温假。三亚的夜生活也非常丰富，这得益于三亚人的生活习惯，晚上11点出门，坐在海边吹着凉快的海风，吃着夜宵，是很舒服的事情。三亚旅游推广局介绍，近几年，三亚打造了不夜城，晚上夜景、美食都非常不错。</p>\n<figure class=\"imgComment_figure\"><img title=\"&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场\" src=\"./upload/1619171168766.png\" alt=\"图四：&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场\" data-target=\"835103110526668800\" data-origin=\"./upload/1619171168800.png\" />\n<figcaption class=\"imgComment_content\">&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场。受访者供图 华龙网发</figcaption>\n</figure>\n<p><strong>重庆妹子去三亚比男生多</strong></p>\n<p>根据航旅数据显示，去三亚的重庆女生比男生多，重庆妹子特别爱美，很多去三亚免税店购物。目前，三亚有四家免税店，免税店之间的竞争，消费者成了最大获益者。</p>\n<figure class=\"imgComment_figure\"><img title=\"&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场   \" src=\"./upload/1619171168956.png\" alt=\"图五：&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场   \" data-target=\"835103224385245184\" data-origin=\"./upload/1619171168984.png\" />\n<figcaption class=\"imgComment_content\">&ldquo;三亚新青年奇趣岛&rdquo;推介活动现场。受访者供图 华龙网发</figcaption>\n</figure>\n<p>怎么购物更划算，购物体验更好呢？三亚旅游推广局建议，不想排队，可以在免税店APP上下单，下单后可享积分，先买高单价的商品，积分后，用积分去换取低单价的商品，比如化妆品之类的。三亚免税店购物，目前比香港更加便宜，而且还兼顾了海岛游。</p>\n<figure class=\"imgComment_figure\"><img title=\"涉旅企业代表合影 \" src=\"./upload/1619171169242.png\" alt=\"图六：涉旅企业代表合影 \" data-target=\"835103296640520192\" data-origin=\"./upload/1619171169273.png\" />\n<figcaption class=\"imgComment_content\">涉旅企业代表合影 。受访者供图 华龙网发</figcaption>\n</figure>\n<p><strong>数十商家争相洽谈 三亚热门线路成抢手资源</strong></p>\n<p>三亚旅游推广局此次带来了众多三亚旅游资源，如海南航空、中出服免税店、三亚海棠湾天房洲际酒店、海南鸿洲海洋旅游公司+蜈支洲岛、红色娘子军演艺主题公园，这些在国内炙手可热的旅游资源。</p>\n<p>通过推广局的详细介绍，与会人士了解了三亚打造的新经典、新线路、新玩儿法。在接下来的&ldquo;圆桌会&rdquo;中，受邀的数十家旅游相关单位，与三亚涉旅商家进行了热烈的谈论和洽谈。</p>\n<figure class=\"imgComment_figure\"><img title=\"涉旅企业代表合影\" src=\"./upload/1619171169516.png\" alt=\"图七：涉旅企业代表合影\" data-target=\"835103353397841920\" data-origin=\"./upload/1619171169569.png\" />\n<figcaption class=\"imgComment_content\">涉旅企业代表合影。受访者供图 华龙网发</figcaption>\n</figure>\n<p>&ldquo;旅游推广局的领导直接来推介洽谈，我们公司抓住这个好机会，直接和三亚涉旅企业对接上。马上就是五一节了，三亚旅游推广局这样的推荐，让我们打开了思路，了解了产品，还对接上了三亚的企业，五一节和今年暑假我们要在三亚专线上大做文章了。&rdquo;浪漫假期扬子江国旅总经理罗女士说。参会的重庆旅行社负责人纷纷表示，这样的旅游推介会办得生动活泼，有趣精彩，让人印象深刻，特别是三亚市旅游推广局带领众多三亚涉旅企业和大家面对面聊，大家对做好三亚旅游线路更有信心和底气了。</p>', '2021-04-23 17:46:09');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '性别',
  `shouji` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '手机',
  `youxiang` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '身份证',
  `touxiang` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '头像',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, '111', '111', '大大', '男', '13245678910', '15641@qq.com', '123456789123456', 'upload/20210423/f0617774-faba-4377-8efa-8946d00ad807.png', '2021-04-23 17:52:05');
INSERT INTO `yonghu` VALUES (2, '333', '333', '小小', '女', '13245679810', '15641@qq.com', '132456789415610', 'upload/20210423/98afc8f3-fc03-408b-ba29-d14bb85d57c8.png', '2021-04-23 18:10:07');
INSERT INTO `yonghu` VALUES (3, 'zhangsan', 'zhangsan', 'zhangsan', '女', '18370869843', '1212121@qq.com', '444444444444443', 'upload/20210423/8a930381-fb95-4b17-a9f8-e626ef6dfb3e.png', '2023-04-26 12:22:26');

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '网站名称',
  `wangzhi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '网址',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '友情链接' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES (1, '百度', 'http://www.baidu.com', '2021-04-23 16:43:58');
INSERT INTO `youqinglianjie` VALUES (2, '谷歌', 'http://www.google.cn', '2021-04-23 16:43:58');
INSERT INTO `youqinglianjie` VALUES (3, '新浪', 'http://www.sina.com', '2021-04-23 16:43:58');
INSERT INTO `youqinglianjie` VALUES (4, 'QQ', 'http://www.qq.com', '2021-04-23 16:43:58');
INSERT INTO `youqinglianjie` VALUES (5, '网易', 'http://www.163.com', '2021-04-23 16:43:58');

-- ----------------------------
-- Table structure for yuding
-- ----------------------------
DROP TABLE IF EXISTS `yuding`;
CREATE TABLE `yuding`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `lvyouxianluid` int UNSIGNED NOT NULL COMMENT '旅游线路id',
  `xianlubianhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路编号',
  `xianlumingcheng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '线路名称',
  `chufadi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '出发地',
  `tujingdi` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '途经地',
  `zhongdian` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '终点',
  `jiage` decimal(18, 2) NOT NULL COMMENT '价格',
  `dingdanhao` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单号',
  `yudingshijian` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '预订时间',
  `yudingrenxingming` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '预订人姓名',
  `lianxifangshi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '联系方式',
  `zhuangtai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  `beizhu` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '备注',
  `yudingren` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '预订人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `iszf` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '否' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `yuding_lvyouxianluid_index`(`lvyouxianluid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '预定' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yuding
-- ----------------------------
INSERT INTO `yuding` VALUES (1, 2, '042317383995', '广东-北京', '广东', '安徽', '北京', 1200.00, '042317536352', '2021-04-23 17:53:14', '小小', '13245678910', '预定成功', '备注备注', '111', '2021-04-23 17:53:26', '是');
INSERT INTO `yuding` VALUES (2, 4, '042317404470', '广东-新疆', '广东', '湖南', '新疆', 3000.00, '042318101743', '2021-04-23 18:10:53', '小小', '12345679810', '预定成功', '备注备注备注备注', '333', '2021-04-23 18:11:01', '是');
INSERT INTO `yuding` VALUES (3, 3, '042317396310', '云南-海南', '云南', '广西', '海南', 1200.00, '042520393359', '2023-04-28 00:00:00', 'dd', '12121212', '待支付', '12121', 'admin', '2023-04-25 20:39:27', '否');

SET FOREIGN_KEY_CHECKS = 1;
