/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : community_ health

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 27/05/2022 16:15:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appoint
-- ----------------------------
DROP TABLE IF EXISTS `appoint`;
CREATE TABLE `appoint`  (
  `a_id` int(0) NOT NULL AUTO_INCREMENT,
  `a_user_id` int(0) NOT NULL,
  `a_time` datetime(6) NOT NULL,
  `b_time` datetime(6) NOT NULL,
  `a_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cno` int(0) NOT NULL,
  `doctor` int(0) NOT NULL,
  PRIMARY KEY (`a_id`) USING BTREE,
  INDEX `用户`(`a_user_id`) USING BTREE,
  INDEX `医生`(`doctor`) USING BTREE,
  CONSTRAINT `医生` FOREIGN KEY (`doctor`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `用户` FOREIGN KEY (`a_user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of appoint
-- ----------------------------
INSERT INTO `appoint` VALUES (156, 33, '2022-05-03 14:41:00.000000', '2022-05-03 15:00:00.000000', '待处理', 1, 23);
INSERT INTO `appoint` VALUES (158, 33, '2022-05-03 14:44:00.000000', '2022-05-07 15:10:00.000000', '待处理', 1, 28);
INSERT INTO `appoint` VALUES (159, 33, '2022-05-03 14:44:00.000000', '2022-05-08 08:00:00.000000', '待处理', 1, 29);
INSERT INTO `appoint` VALUES (175, 30, '2022-05-12 22:55:00.000000', '2022-05-17 08:00:00.000000', '取消', 1, 29);
INSERT INTO `appoint` VALUES (176, 30, '2022-05-13 20:40:00.000000', '2022-05-19 08:00:00.000000', '取消', 1, 23);
INSERT INTO `appoint` VALUES (177, 30, '2022-05-14 00:58:00.000000', '2022-05-14 08:00:00.000000', '取消', 1, 23);
INSERT INTO `appoint` VALUES (178, 30, '2022-05-14 13:49:00.000000', '2022-05-14 14:00:00.000000', '取消', 2, 23);
INSERT INTO `appoint` VALUES (179, 30, '2022-05-14 13:50:00.000000', '2022-05-16 08:30:00.000000', '待处理', 1, 29);
INSERT INTO `appoint` VALUES (180, 30, '2022-05-14 13:50:00.000000', '2022-05-14 14:00:00.000000', '完成', 3, 23);
INSERT INTO `appoint` VALUES (181, 30, '2022-05-27 14:56:00.000000', '2022-05-27 15:00:00.000000', '待处理', 1, 23);

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_time` datetime(6) NULL DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` bigint(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 240 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES (2, '新知新觉：永葆“赶考”的清醒和坚定', '新闻', '<p>1949年3月23日，党中央从西柏坡动身前往北京时，毛泽东同志说：“今天是进京赶考的日子。”70多年的实践充分证明，我们党在这场历史性考试中取得了优异成绩。同时，我们党也清醒地认识到，这场考试还在继续。2013年7月，习近平总书记在西柏坡调研指导时指出：“党面临的‘赶考’远未结束”。2019年9月，习近平总书记在视察北京香山革命纪念地时强调：“始终保持奋发有为的进取精神，永葆党的先进性和纯洁性，以‘赶考’的清醒和坚定答好新时代的答卷。”走好新时代的长征路，需要我们始终保持“赶考”的清醒和坚定，始终牢记、努力践行中国共产党人的初心和使命。</p><p>初心和使命确保中国共产党人永葆“赶考”的清醒和坚定。中国共产党人的初心和使命，就是为中国人民谋幸福，为中华民族谋复兴。中国共产党一经成立，就义无反顾地肩负起实现中华民族伟大复兴的历史使命，把人民对美好生活的向往作为自己的奋斗目标。中国共产党人深知，为中国人民谋幸福、为中华民族谋复兴是伟大而艰巨的事业，不可能轻轻松松完成。我们党牢记初心和使命，在取得一个又一个胜利后仍然保持谦虚谨慎、不骄不躁、艰苦奋斗，仍然保持永不懈怠的精神状态和一往无前的奋斗姿态，永葆“赶考”的清醒和坚定。正因为牢记初心和使命，在新中国成立前夕，毛泽东同志提出了著名的“赶考”命题；正因为牢记初心和使命，在新中国成立70周年之际，习近平总书记再次要求以“赶考”的清醒和坚定答好新时代的答卷。初心和使命是激励中国共产党人不断前进的根本动力，正是初心和使命所确立的高远理想和坚定信念，使中国共产党人面对胜利时不会骄傲和懈怠，永葆“赶考”的清醒和坚定。</p>', 'list-banner.png', '2022-03-03 04:39:00.000000', '吴世康', NULL);
INSERT INTO `articles` VALUES (6, '夏季老年人饮食健康科普', '新闻', '老年人胃肠黏膜已经发生退行性变化，各种酶及胃酸的分泌量都有所降低，如果经常食用偏冷的食物，会使胃黏膜血管收缩加剧，进一步降低胃液分泌量，从而导致食欲下降以及消化不良。另外在低温状态下，会使老年人心脏冠状动脉发生痉挛，导致心肌缺血缺氧，诱发心率不齐和心绞痛。其实，夏天老人热食也许更凉快。喝热茶。夏季想要降热，不要只是喝冷饮，适当的热饮饮食也是解暑的关键。冷饮只能暂时解暑，不能持久解热、解渴，喝热茶却可刺激毛细血管普遍舒张，体温反而会明显降低，同时还有暖胃解渴的功效。吃热食。这里的热食有两方面意思，一是食物在老年人胃肠黏膜已经发生退行性变化，各种酶及胃酸的分泌量都有所降低，如果经常食用偏冷的食物，会使胃黏膜血管收缩加剧，进一步降低胃液分泌量，从而导致食欲下降以及消化不良。另外在低温状态下，会使老年人心脏冠状动脉发生痉挛，导致心肌缺血缺氧，诱发心率不齐和心绞痛。其实，夏天老人热食也许更凉快。喝热茶。夏季想要降热，不要只是喝冷饮，适当的热饮饮食也是解暑的关键。冷饮只能暂时解暑，不能持久解热、解渴，喝热茶却可刺激毛细血管普遍舒张，体温反而会明显降低，同时还有暖胃解渴的功效。吃热食。这里的热食有两方面意思，一是食物在夏季最好经过加热，可起到消毒灭菌的作用，保护身体不受细菌侵袭。二是可吃些热性食材，如羊肉可温补气血，开胃祛寒，脾胃虚寒或夏天长期待在空调房的老人，适宜吃些羊肉或羊汤。炒菜时也可适当用些大葱、蒜、生姜等调味，可以增加身体排汗，防暑降温。', 'list-banner.png', '2022-03-03 04:39:00.000000', '刘长权', NULL);
INSERT INTO `articles` VALUES (7, '糖尿病患者应该注意哪些问题', '文章', '这是有关方面整理的糖尿病患者普遍关注的问题，也许对你也有帮助。\n1、跟医生约好的复查，特殊时期是否可以推迟呢？\n<br><br>\n目前医院是交叉感染的高危区域，如无特殊情况，患者应按照正常的疫情防控要求，减少在公共场所及人流密集场所活动，避免接触呼吸道感染患者。\n<br><br>\n如果血糖控制的一直比较平稳，建议患者在家等疫情结束后再前往医院进行复查。如果血糖不达标且波动较大，建议患者通过远程或线上问诊的方式，向医生反馈血糖监测的结果，并咨询医生是否有必要按期复查以及调整调整方案。\n<br><br>\n同时，体温、血压监测也非常重要。如果原来家里没有自备体温计、血压计和家用血糖仪，建议现在从网上订购。注意，按照公约，从今年开始，含汞医疗仪器比如传统体温计、台式血压计等都要被淘汰，所以一定要选购电子体温计和电子血压计。\n<br><br>\n2. 如果血糖检测结果不理想，该怎么办？是否需要第一时间去医院？通过线上问诊平台咨询医生是否可行？\n<br><br>\n目前正是疫情严峻的阶段，为了有效降低糖尿病患者新型冠状病毒感染及传播的风险，建议患者不要贸然前往医院，除非出现了糖尿病酮症酸中毒、高渗昏迷等急症。\n\n<br><br>\n\n首先，患者需要确认血糖监测结果不理想是否和饮食控制不佳、运动量减少、药物治疗不规范（比如自行停药、用药不足或者用药过量等）有关。如果和以上因素有关，那么建议患者先加强自我管理，尤其是生活方式的调整，另外如果没有特殊情况，不建议患者自行停药或擅自改变用药方案。\n<br><br>\n如果和以上因素无关，那么建议患者在前往医院之前，先通过线上问诊平台向内分泌科医生反馈，并咨询医生是否有必要前往医院进行进一步检查及诊疗。\n<br><br>\n3. 自行去药房购买降糖药时，并没有以往医生开的那个牌子的药物，可否选择同类药物替代？\n<br><br>\n如果血糖控制的一直很平稳，建议不要换药，也不要更换品牌。尽管仿制药和原研药在安全性、有效性及质量上相近，但由于仿制药厂家众多，很难说所有的仿制药和原研药完全一致，所以尽量选择原研药。那什么是原研药呢？比如说，格华止是二甲双胍的原研药。\n<br><br>\n如果药店没有医生以往开的相同牌子的药物，原则上可考虑选择同样化学成分的其他牌子的药物，一定要注意单片药的剂量与当前服用的药物剂量是否相同。在替换为其他厂家同样化学成分药品的过程中（特别是早期阶段），应密切注意血糖波动和药物不良反应的监测。\n<br><br>\n如果药店仅有同类的其他成分药物，甚至是其他类别的药物，考虑到疗效与安全性与正在服用的药物可能存在一定差异，建议在专业临床医生的指导下进行更换。\n<br><br>\n4. 在异地过年，本来配了7～14天的药量。但现在假期延期，交通管制回不去，该怎么办？\n<br><br>\n目前部分医院开通了线上复诊的功能，患者可通过线上问诊及处方的方式购买需要的药品。或者也可就近前往能满足需求的、门诊量较小的非疫情定点医院或社区医院，或有正规资质的药店凭医生处方开具足量、足疗程的药物。实在无法外出，也可凭借原有医生处方，在有正规资质的网上药店进行购药。\n<br><br>\n根据国家医保局通知，疫情期间实施“长处方”报销政策，对于高血压、糖尿病等慢性病患者，经医生评估可将处方用药量放宽至3个月，减少配药次数，保障患者的长期用药需求。\n<br><br>\n目前部分医院开通了线上复诊的功能，患者可通过线上问诊及处方的方式购买需要的药品；另外，部分连锁实体药店或大型电商也有药品线上零售平台，常规的降糖药一般都可在正规的互联网药品销售平台上凭电子处方定量购买，但要注意一定要选择在正规电商或线上零售平台，并认准正规厂家生产的药品，药品真伪信息可通过国家食品药品监督管理总局网站查询。\n<br><br>\n5. 疫情期间，我需要注射降糖药物，在注射前后该如何做好消毒处理工作呢？\n<br><br>\n根据《中国糖尿病药物注射技术指南（2016年版）》中关于糖尿病药物注射治疗“注射部位的检查和消毒”推荐：注射前，患者应检查注射部位，不可在皮下脂肪增生、炎症、水肿、溃疡或感染的部位注射。注射时，应保持注射部位的清洁。当注射部位不洁净或患者处于感染易于传播的环境（如医院或疗养院），注射前应消毒注射部位。\n<br><br>\n结合当前新型冠状病毒的流行情况和病毒主要的传播途径（呼吸道飞沫传播，亦可通过接触传播），以及新型冠状病毒感染的肺炎诊疗方案（试行第五版） 提到病毒对紫外线和热敏感，56°C 30 分钟、 乙醚、75%乙醇、含氯消毒剂、过氧乙酸和氯仿等脂溶剂均可有效灭活病毒等信息，建议患者在药物注射前后要注意做好消毒等防范措施。\n<br><br>\n首先，注射尽量选取在清洁、通风的环境中进行。注射前保持手卫生，用洗手液或肥皂，流水洗手，或者使用含酒精成分的免洗洗手液。可以用酒精纱布或酒精棉签擦拭注射笔的表面。选好注射部位后，用75％酒精消毒皮肤。注射笔用针头应一次性使用，注射完毕后，将用过的针头按医生的要求妥善处置并再次清洁双手。\n<br><br>\n6. 当前疫情下，该如何在家适当增加运动呢?\n<br><br>\n糖尿病患者的降糖药物方案是在饮食总量和运动量相对稳定的情况下制定的，所以运动量发生变化时血糖也会随着波动。对于平时从事正常社会活动和有规律运动的糖尿病患者，长期居家应适当进行室内运动以维持血糖稳定，总的运动量尽量跟之前的保持大概一致。\n<br><br>\n\n\n有氧运动时，运动有一个连贯性，血糖变化趋势是下降的，不会有大幅度变化或者暂时升高，《中国糖尿病运动指南》推荐室内有氧运动有跳舞、打太极拳、徒手体操、带哑铃及适当的健身器进行的四肢运动 ；也可在室内进行跑步机、固定自行车等活动；每周至少 3 次、每次不低于 20 分钟。同时注意运动的安全性和易行性，原则遵循由少至多、 由轻至重、由稀至繁、有周期性。不同的运动对血糖影响不同，因此运动前后应该加强血糖监测，搞清楚血糖的变化情况，及时做出调整。此外，多做家务也是一种运动。\n<br><br>\n7. 疫情期间，糖尿病患者吃保健品可否增加抵抗力，减少感染几率？\n<br><br>\n目前没有证据证明，药物对新冠肺炎有预防作用，保健品更是如此，也没有证据证明保健品能增强抵抗力。\n<br><br>\n保健品是保健食品的通俗说法。《保健（功能）食品通用标准》第3.1条将保健食品定义为：“保健（功能）食品是食品的一个种类，具有一般食品的共性，能调节人体的机能，适用于特定人群食用，但不以治疗疾病为目的。”\n<br><br>\n保健品不是药品，只能调节人体的机能，并没有临床治疗效果，无法替代药品的作用。\n<br><br>\n在服用保健品时，一定要仔细阅读说明书，注意其成分是否会影响到血糖，至于具体功效可能会因人而异。滥用保健品有害无益。\n<br><br>\n8. 糖尿病患者是否更易得新型冠状病毒感染的肺炎？\n<br><br>\n是的。根据权威医学杂志《柳叶刀》在1月29日发表的一篇文章，回顾性分析了武汉金银潭医院最早收治的99名感染新型冠状病毒肺炎患者的临床特征发现，此次的新型冠状病毒感染的肺炎，一半病例患有心脑血管、糖尿病等慢性疾病。\n<br><br>\n糖尿病与感染风险增加呈现相关性。糖尿病患者容易并发感染，并有可能引起或加重糖尿病。其中，肺部感染是危及糖尿病患者生命的重要原因之一。此外，糖尿病患者大多合并大血管及微血管并发症，糖尿病本身和并发症都会增加感染发生率和治疗复杂性。\n<br><br>\n但大家不必因此惊慌。糖尿病患者的首要策略是降血糖，饮食、运动、药物控制缺一不可。患者通过控制血糖持续达标、加强自身卫生习惯和保持身心舒畅，可有效预防感染的发生。\n<br><br>\n9. 糖尿病患者如果疑似是新冠状病毒肺炎，但目前症状比较轻微，该如何采取措施？\n<br><br>\n根据《新型冠状病毒感染的肺炎诊疗方案》（试行第四版），新型冠状病毒感染的肺炎患者目前已知症状以发热、乏力、干咳为主要表现。\n<br><br>\n感染性疾病往往会导致血糖的波动，所以及时监测血糖的波动也有助于评估肺炎病情的发生进展可能，同时积极利用互联网平台咨询专科医生，目前众多的网上诊室也开通了免费义诊的平台，专科医生也会利用工作中的碎片时间尽职尽责回答患者问题。\n<br><br>\n糖尿病患者出现发热、乏力、干咳等症状不一定是感染了冠状病毒。如症状轻微，可在家对症治疗并且密切观察，一旦症状加重应立即就医；如在发病前14天内曾到武汉及疫情高发地区旅行，或接触过来自上述地区的发热伴呼吸道症状的患者，或出现小范围的聚集发病，应到当地指定的医疗机构就诊、排查。\n<br><br>\n10. 糖尿病患者易感染，但因为神经病变，使一些疾病症状变得不典型。如果糖尿病患者感染了新型冠状病毒肺炎，是否会没有明显症状？\n<br><br>\n此次的新型冠状病毒起病隐匿、潜伏期长、老年人群和伴心脑血管等基础疾病的人群是新型冠状病毒易感的高危人群。感染新型冠状病毒的患者无论是否合并糖尿病，都可能出现感染的一般症状，包括发热、乏力、干咳并逐渐出现呼吸困难。\n<br><br>\n糖尿病患者由于长期高血糖状态，机体免疫力降低，是病毒感染的感染人群。因此，糖尿病患者在疫情期间应当注意有效控制血糖、清淡饮食、适当运动、避免到人群密集场所活动、做好自我隔离、室内多通风、出门戴口罩、勤洗手，并密切观察自身身体健康状况。\n<br><br>\n但是，切记此次新冠病毒特点是感染后症状的多样性且不典型，这就意味着无论有否糖尿病，均不可以症状判断是否感染新冠病毒。如有相关症状且持续不缓解，建议及时至医院就诊。', 'QQ截图20220426161134.jpg', '2022-03-04 04:32:00.000000', '吴世康', 15);
INSERT INTO `articles` VALUES (9, '思想纵横：疫情防控展示文化的强大力量', '新闻', '<p>中华文化源远流长、博大精深，为中华民族发展提供了强大精神动力。我国疫情防控阻击战取得重大战略成果，离不开中华优秀传统文化的支撑。习近平总书记指出，疫情防控斗争，“充分展示了中华优秀传统文化的强大力量”。疫情防控斗争的实践证明，中华优秀传统文化具有强大的生命力，是我们战胜各种风险挑战的强大精神支撑。</p><p>中华优秀传统文化注重家国情怀，这在疫情防控斗争中得到充分彰显。个人的家国情怀转化为实际行动，就是主动担当责任，如孔子所言“仁以为己任”，如顾炎武所说“天下兴亡，匹夫有责”，如林则徐所谓“苟利国家生死以，岂因祸福避趋之”。疫情防控激发了无数中国人勇敢拼搏的英雄主义精神，他们把个人生死置之度外，冲向最危险的地方，无私奉献、不怕牺牲。中华优秀传统文化所提倡的家国情怀，在这次抗疫斗争中表现为敢于担当、不怕牺牲、无私奉献，为爱国主义、集体主义、社会主义精神增添了时代光彩。</p><p>关爱生命是中华优秀传统文化倡导的道德规范和行为准则。《周易》有云：“天地之大德曰生”，把关爱生命看成天地之间伟大的道德。在疫情防控阻击战中，以习近平同志为核心的党中央明确要求各级党委和政府始终把人民群众生命安全和身体健康放在第一位，把提高收治率和治愈率、降低感染率和病亡率作为突出任务来抓。这是我国面对来势汹汹的疫情能够始终保持人心稳定、维护社会稳定的重要保证，也是我们党作为马克思主义执政党的使命担当。</p><p>自强不息是中华民族的精神基因。中华民族具有不畏艰险、迎难而上的巨大勇气，具有极强的自我修复和自力更生能力，呈现出变通达久的智慧和自强不息的活力。自强可以迸发强大的力量。在抗击疫情斗争中，中国人民怀着必胜的信心，全力以赴，顽强拼搏，彰显了中华民族坚韧不拔、自强不息的精神。</p><p>守望相助是中华民族历久弥新的文化传统。墨子倡导“兼相爱，交相利”，孟子主张“守望相助，疾病相扶持”，呼唤人与人之间、邻里之间相互扶持、互助互爱。这次抗疫斗争是一场史诗般的全民大动员，展现了中华民族的大团结。先贤倡导的守望相助、同舟共济、共克时艰的道德境界，由无数平凡中国人用汗水、鲜血甚至是生命赋予新的时代内涵，谱写了新篇章。</p>', 'list-banner.png', '2022-03-03 04:39:00.000000', '吴世康', NULL);
INSERT INTO `articles` VALUES (11, '防范疫情', '公告', '新冠疫情还没完全结束，要做好疫情防控常态化的工作准备，社区作为居住的地方，人流量比较大，安全防控工作更应该做好，小区物业要通知好各位居民做好安全防护，时刻注意疫情防控，别让病毒有机可乘。', 'bj.jpg', '2022-03-03 04:38:00.000000', '健康社区', NULL);
INSERT INTO `articles` VALUES (12, '疫情防控中“以人民为中心”思想的实践', '新闻', '<p>面对突如其来的新冠肺炎疫情，以习近平同志为核心的党中央迅速做出反应，打响了疫情防控的人民战争、总体战、阻击战。疫情同人民的生命和健康息息相关，关系着人民的根本利益，关系着社会的发展与稳定，疫情防控当属社会治理的重要内容。“以人民为中心”贯穿于中国社会各领域的治理实践之中。党中央对疫情的防控与治理充分展现了“中国之治”的人民价值立场，是“以人民为中心”思想的生动实践。</p><p><strong>以维护人民生命安全和身体健康为首位的防控要求</strong></p><p>在重大公共卫生突发事件面前，一个国家需要处理的事情较平常时期更为复杂，但是在这种特殊事件和情况面前，一个政党和政府的应急反应和首位要求最能凸显该政党和政府社会治理实践的价值立场和价值选择。</p><p>新冠病毒肺炎疫情发生之后，习近平总书记多次强调要“始终把人民群众生命安全和身体健康放在第一位”，在湖北省考察新冠肺炎疫情防控工作时指出“为保障人民生命安全和身体健康筑牢制度防线”“要组织动员更多党员、干部下沉一线、深入社区，及时解决人民群众实际困难”。这充分说明：疫情发生以来，习近平总书记的最大关切和最主要的关心是人民群众的生命安全和身体健康。</p><p>习近平总书记的最大关切同人民群众的最根本利益以及在疫情面前人民群众的最大关心是一致的、同位的。人的利益可以区分为根本利益和非根本利益，根本利益是关系人生命存在的利益，是关乎人生命存在的基本方面。很明显，生命安全和身体健康是人生命存在的基本前提，也是人生命创造财富和价值的重要基础。只有人的生命安全和身体健康得到保障，人的生命存在才能有保障；只有在生命安全和身体健康的条件下，人的生命才能够创造出更大的财富和价值。历来人们都十分珍惜和重视自己的生命安全和身体健康，因为二者是人的根本利益所在，在疫情这种特殊危险面前，人们会表现出对于生命和健康更为显著的担忧与关心。</p><p>党中央的疫情防控要求与最大关切和人民群众的根本利益与最大关心相一致、相契合，这种契合充分展现了中国疫情治理的基本价值立场——维护人民的根本利益，而维护人民根本利益是“以人民为中心”思想的体现。因此，此次中国疫情防控始终把人民群众生命安全和身体健康放在第一位，充分展现出了“以人民为中心”思想在疫情防控治理中的贯彻与落实</p>', 'list-banner.png', '2022-03-03 04:39:00.000000', '吴世康', NULL);
INSERT INTO `articles` VALUES (223, '同心战“疫”倡议书', '新闻', '老师们、同学们：\n<br><br>\n当前，全球正在经历新冠疫情第四波流行高峰。近期，我国本土聚集性疫情呈现出点多、面广、频发的特点，防控形势严峻复杂。学校党委坚决把防疫工作放在第一位，把广大师生员工的生命安全和身体健康放在第一位，全校上下迅速构筑起疫情防控“防火墙”。疫情之下，没有人能置身事外、独善其身，需要我们团结一心、共同抗疫。在此，向全校师生员工发出倡议：\n<br><br>\n一、做疫情防控的积极参与者\n<br><br>\n深入贯彻落实习近平总书记关于疫情防控工作的重要指示精神，坚决贯彻党中央各项决策部署和自治区党委工作要求，在柳州市、相关城区疫情防控指挥部的指导和学校党委的领导下，迅速把思想和行动统一到学校、属地和上级的部署上来，全力以赴应对好这场“大考”。\n<br><br>\n二、做自我健康的第一守护者\n<br><br>\n一米线、不扎堆、不聚集、不串寝、戴口罩、勤洗手、常消毒，非必要不网购，不点外卖。严格执行校园封闭管理要求，做好每日健康信息填报，异常情况及时报告。维护宿舍卫生清洁，不开空调，加强通风换气。自带餐具，错峰就餐，正确处理厨余垃圾。积极参与体育锻炼，增强身体素质。\n<br><br>\n三、做伟大抗疫精神的坚定践行者\n<br><br>\n进一步增强广西科大命运共同体意识，积极展现广西科大人的责任与担当，不折不扣、从严从紧落实疫情防控各项措施。广大师生员工尤其是共产党员要充分发挥先锋模范作用，辅导员、班主任、导师、任课教师和学生干部要关心关爱身边同学，以实际行动践行伟大抗疫精神。\n<br><br>\n四、做战“疫”必胜的忠实维护者\n<br><br>\n理性认识当前形势，及时关注权威部门发布的疫情信息，坚决做到不恐慌、不信谣、不传谣、不造谣。对错误言行敢于发声、坚决抵制，自觉遵守网络道德和法律法规。在遇到困难时，要及时沟通交流，理性表达合理诉求，客观反映问题并提出建设性意见。\n<br><br>\n未返校的同学们，学校的老师和同学们十分牵挂你们。请你们务必严格遵守当地疫情防控要求，合理规划时间，安心在线学习，养成健康生活方式，以饱满的精神状态等待学校返校通知。\n<br><br>\n老师们、同学们，病毒不肃、战斗不止，没有一个冬天不可逾越，没有一个春天不会来临。我们相信，在上级和属地疫情防控部门的大力支持、学校党委的坚强领导、全体师生员工的共同努力下，我们一定能够打赢这场疫情防控阻击战，以优异成绩迎接党的二十大胜利召开！\n<br><br>\n                     ----------------------------------------------------------------------                   社区疫情防控工作领导小组', '2022yiqingfangkong.jpg', '2022-03-05 10:02:00.000000', '吴世康', NULL);
INSERT INTO `articles` VALUES (234, '一起加油', '文章', '大家好我是花丘。\n关于爱好的话太多太多：唱歌跳舞，终极爱好就是喜欢一切快乐的人和事。今天想跟大家分享一下关于自己对于疾病的一些感悟。\n<br>\n<br>\n说起来我的药龄已经有6、7年了。从初中就开始吃各种中药各处就医，那时候头痛得无法入睡，因为没去看过精神心理科，所以一直没有被诊断。可能生病时间长了也习惯了，即使知道自己跟常人不一样，也没有很崩溃，好像习惯了疼痛的来临，习惯了失眠所以会早早关灯等待入睡，习惯头痛会养生喝红枣水五谷粥，不吃辣。自己每天按摩头部，觉得只要生活规律就会慢慢好起来。\n<br>\n<br>\n嗯……说到养生我是从大学开始的。因为觉得自己身体好差，不敢熬夜，不能像大家一样出去胡吃海塞，也不能肆无忌惮得玩得很嗨，好像觉得自己从未年轻过。但是有时候也会跟身体对抗。嗨会一直嗨到自己没力气，再回家睡觉。\n<br>\n<br>\n一直到疫情的爆发，我也跟着爆发了。在家莫名发脾气，大叫大喊，大哭大闹。于是觉得自己好像真的病了，头也痛的频繁了。我开始跟妈妈说我好像得了焦虑症。于是就诊之后，医生诊断是双相。我当时问：“什么是双相啊？”医生跟我说：“没关系，你就记住——活在当下，不要增加心理负担，乖乖吃药就好了。”但是我还是不听话，哈哈。\n<br>\n<br>\n回家之后，就开始研究起自己了。买书，学病理，其实很快就接受自己是双相的事实。与我而言，吃药能减轻我的疼痛已经太开心了。被折磨太多年之后对于生的渴望很强烈，不想落下一颗药。其实对于我来说，得了什么病并不重要，因为终于对症治疗了。对于我来说，得了双相就像得了高血压、糖尿病这种需要长期保养的一个病而已啦。\n\n\n<br>\n<br>\n\n总结一下：我在就诊前其实一开始入睡很困难，脑子特别燥。后来觉得必须要好好睡觉这样才有力气，慢慢学会与不舒服共处，疼或者不疼我都不在意。我只要到点睡觉就会平静下来不与它对抗，专注自己的呼吸很快就睡着了。\n<br>\n<br>\n要学会提前养生\n<br>\n<br>\n双相是一个挺消耗精力的疾病。强健的体魄更能经得住消耗。规律的作息，良好的饮食习惯，运动 。\n<br>\n<br>\n积极的心态\n不要忧虑未来，也不要后悔过去。珍惜当下的所有，就会快乐很多。\n\n<br>\n<br>\n伤心的时候就哭，但是哭一会就好了，擦干眼泪就去做让自己开心的事情。出现不好情绪的时候，就去察觉自己的呼吸，然后让自己慢下来。\n<br>\n<br>\n\n\n\n\n以前总想着离父母很远，要变得很棒很成功。\n<br>\n<br>\n后来，我放弃了。\n<br>\n<br>\n以前很爱学习，总争第一 。\n<br>\n<br>\n后来我也放弃了，第二也可以。嘻嘻。\n<br>\n<br>\n\n\n因为我真的好累，我稍微努力一点就会很累。\n<br>\n<br>\n所以，我开始积攒一些微小的期待和快乐。\n<br>\n<br>\n比如：坐下来好好跟妈妈聊聊天，去楼下买些水果吃，追一部新剧，去舞蹈室跳舞。后来发现真的好快乐啊！\n<br>\n<br>\n所以，你们也要对自己温柔一些哦。\n<br>\n<br>\n不要太累啦。', 'v2-6faea04f04fd004295d581e2c9320d7f_1440w.jpg', '2022-04-26 03:56:00.000000', 'test', 3);
INSERT INTO `articles` VALUES (235, '怀疑抑郁症或躁郁症？怎么诊断？', '文章', '\n我常常在网上看到，有人问自己是不是得了抑郁症和躁郁症，有的做了网上的量表显示抑郁了，应该怎么办？\n<br><br>说实话，现代人几乎人人都有压力有烦恼，都有情绪低落的时候，有时怀疑自己得了抑郁症也是很正常的，别怕，抑郁情绪容易，得抑郁症或躁郁症可不容易。那什么时候需要注意了呢？比如：发现自己很长一段时间情绪不对劲，疲惫失眠噩梦、胡思乱想、心情特别不好。或者忽然间变得活跃多话、极其自信、狂买东西。还有喘不过气、颈椎病，胃痛，皮肤的炎症、身体的疼痛感……这种小小的迹象，也许是你的情绪正在生病。<br><br>最重要的事情是：不要恐慌！不要在百度寻医问药！请去正规医院挂号就诊！精神卫生中心或者正规医院的精神科和心理科。十几块钱的挂号费，就能够请专业的医生给你一个初步的诊断。实在太值了！根据美国的《躁郁症治疗手册》。<br><br>医生在诊断时，会从以下几方面来判定。有问题欢迎给我留言，我都会回复的。诊断抑郁症有九个主要症状，至少要出现其中的五种症状，持续至少两周，而且其中一种症状为症状一或症状二。抑郁有九个主要的症状：<br><br>1. 根据自己的感觉或他人观察，整天大部分时间情绪抑郁。但是儿童和青少年可能有情绪易激怒的表现。<br><br>2. 对于每天的大部分活动兴趣明显减退。<br><br>3. 没有节食体重明显大幅下降（比如一个月内体重变化超过5%），或者食欲大增或食欲减退。儿童的话可能会有体重不达标的情况。<br><br>4. 几乎每天失眠或者睡眠过多。<br><br>5. 几乎每天身心焦躁不安或者身心活动迟缓。除了自我主观感觉焦躁不安或迟钝，别人也可观察到。<br><br>6. 几乎每天都疲惫不堪，精力耗尽。<br><br>7. 几乎每天都感觉自己毫无价值，罪恶感过重或过度自责。这有可能是妄想，不仅是自责或因病产生的内疚感。<br><br>8. 几乎每天思维活动减少，注意力降低，犹豫不决。<br><br>9. 反复产生死亡的想法，不仅是害怕死亡而是反复构想自杀计划，或者试图自杀。而诊断躁郁症除了看是否有抑郁症的症状，还要看有没有持续一段时间的躁狂症状。<br><br>说到躁狂，大部分人是比较陌生的。躁狂共有七个主要的症状：<br><br> 1， 自我膨胀或沾沾自喜。<br><br>2， 睡眠得很少但是精力旺盛，还持续很多天。<br><br>3， 比平时更健谈，或者一直滔滔不绝。<br><br>4， 思维奔逸，或主观感觉思维过快，其实就是脑子里各种念头不断出现，思维速度非常地快，语言表达都赶不上思维的速度，连自己都觉得自己脑子飞转；<br><br>5， 注意力不集中，太容易被微不足道或不相干的其他事情吸引。 <br><br>6， 目的性活动增多（工作、学习或性行为）或精神运动性激越增强。也就是指脑中反复思考一些没有目的的事情，思维内容无条理，大脑持续处于紧张状态。<br><br>7， 过度参与可能导致不良后果的消遣活动.<br><br>（如毫无节制的疯狂购物、性滥交或盲目投资）这些不是全都要满足，而是如果一段时间特别容易生气，同时情绪高涨，健谈，那必须最少出现其中的三种症状；如果仅仅是易怒，那必须同时伴有其中四种或四种以上的症状。通常呢，要多种症状同时出现，才有可能是抑郁症或躁郁症，但也不一定是精神类的疾病，某些药物副作用或其他疾病也会引起精神类疾病的表现。比如脑部的疾病、创伤以及其他的身体疾病。甚至酒精或毒品成瘾都有可能会有躁郁症的症状表现。<br><br>所以医生会做一系列的身体检查，比如心电图、验血等。<br><br>如果你还有一些符合其他疾病的身体症状的话，可能还会有相应的检查。不要觉得医生是为了骗你钱让你多做检查，做完这些检查，医生才能根据结果给你科学的诊断。除了身体检查之外，还有一对一的对谈，观察你的状态，然后做问卷，比如说抑郁量表，焦虑量表等。<br><br>检查项目全部完成后，医生会直接告诉你到底是抑郁症，躁郁症，焦虑症还是没有发展为病症只是一种情绪状态，针对结果医生还会给出治疗建议：<br><br>服药、住院或心理治疗等等。有一点要特别说明一下，由于躁郁症的抑郁症状和抑郁症几乎一模一样，所以非常容易被误诊为抑郁症，但是服用抑郁症的药物又可能会引发躁郁症患者的躁狂发作，所以服药之后如果情绪有大的起伏，需要及时去复诊。也有很多病友一直是胃病、头疼或其他的身体不舒服，很曲折才被确诊。<br><br>确诊也别害怕，我会在以后的节目里和大家分享躁郁症的治疗方法和康复经验。最后，是一个应用题，如果怀疑自己得了抑郁症或躁郁症应该怎么办？<br><br>如果朋友问你他担心自己抑郁或躁郁了，那你要给他什么建议？<br><br>听了这么多，你有答案了吗？<br><br>划一下重点，网上的问卷和诊断表都只是参考，必须去正规医院精神科或心理科就诊，找到病因，对症下药。<br><br>即使得病了，也有康复的希望。好了，今天的内容就到这里，我是莹莹。加油，我们和躁郁症一起好起来！', 'v2-9f7678338a23e97b3ea0c9c869d7bd7c_720w.jpeg', '2022-04-26 04:05:00.000000', '陈鹏', 2);
INSERT INTO `articles` VALUES (236, '没有任何理由不可以过自己喜欢的人生。', '文章', '《被讨厌的勇气》是2015年机械工业出版社出版的中译图书，作者是日本的岸见一郎和古贺史健。<br><br>作者以超越心理咨询的方式，进行心灵的对话，是一本自我成长和疗愈很有帮助的书。<br><br>该书讲述了如何能够在繁杂的日常琐碎和复杂的人际关系中用自己的双手去获得真正的幸福。书中哲人讲解的阿德勒思想拥有改变人一生的力量。剩下的就只有能否鼓起迈出一步的“勇气”。<br><br>“被讨厌的勇气”并不是要去吸引被讨厌的负向能量，而是，如果这是我生命想绽放出最美的光彩，那么，即使有被讨厌的可能，我都要用自己的双手双脚往那里走去。我只是记下了我比较认同的，理解的也不一定准确，希望大家自己去看看本书，一起学习运用。开头我先写一些记下的语录吧：没有任何理由不可以过自己喜欢的人生。<br><br>争取自由，自由就是被某些人讨厌。不畏惧被人讨厌而是勇往直前，不随波逐流而是激流勇进。比起别人如何看待自己，我更关心自己过得如何。<br><br>是否讨厌我，是别人的课题；不想被人讨厌是我的课题。重要的不是被给予什么，而是如何使用被给予的东西。人生的三大课题：工作、交友、爱，不要回避工作、交友、爱之类的人际关系。<br><br>一切烦恼都来自人际关系，一切快乐的根源也来自人际关系。以自我为中心的人——期待所有人都为他服务，自己却不付出行动。<br><br>活在害怕关系破裂的恐惧中，那是为了他人而活的一种不自由的生活方式。俯视般的语感让人不愉快。不是能力问题，是缺乏直面课题的“勇气”。人只有在能够感觉自己有价值的时候才可以获得勇气。<br><br>认为自己有价值，接纳自我，直面困难。<br><br>过多的自我意识，反而会束缚自己。自我接纳，如何利用被给予的东西。他者信赖，肯去相信他人。他者贡献，为共同体做贡献。对人而言，最大的不幸就是不喜欢自己。<br><br>人生很简单，并不是什么深刻的事情，认真过好每一个刹那，就没有什么必要令其过于深刻。人生最大的谎言就是不活在此时此刻。不必寻求他人的认可。我们并不是为了满足别人的期待而活着。<br><br>1，我们的不幸是谁造成的？阿德勒主张世界很简单，人生也很简单，人可以改变，人能获得幸福。并非“世界”本身复杂，完全是“你”把世界看得复杂。人并不是住在客观世界，而是住在自己营造的主观世界里。你眼中的世界复杂怪异，但是，如果你自身发生了变化，世界就恢复其简单姿态。问题不在于世界如何，而在于你自己。追到根源就是勇气的问题，你有勇气面对这个世界吗？你有勇气改变吗？<br><br>2，再怎么“找原因”，也没法改变一个人。再怎么“找原因”，也没法改变一个人：“原因论” 认为一切已经注定，无法改变，这会让我们止步不前。阿德勒提出了“目的论”，我们首先有一个目的，然后才去做出我们的选择。阿德勒否定心理创伤学说，他说：决定我们自身的不是过去的经历，而是我们自己赋予经历的意义。<br><br>3，愤怒都是捏造出来的。愤怒都是捏造出来的：你先是产生了要大发雷霆这个目的，你想通过愤怒来训斥别人，使别人认真听你的话，作为相应的手段，你便捏造了愤怒这种感情。你觉得讲道理太麻烦，所以想用更快捷的方式，使对方屈服。愤怒是达成目的的一种手段。<br><br>4，改变的第一步是理解。改变的第一步是理解。答案不是从别人那里得到，而是自己亲自找出来。你想变成别人吗？即使你再想变成Y，也不可能成为Y，你不是Y。你是“你”就可以了。如果你不能感到幸福，就必须改变，不断向前迈进。重要的不是被给予了什么，而是如何利用被给予的东西。德国诗人、哲学家歌德说过：“人类最大的罪是不快活”。<br><br>5，你的不幸皆是自己“选择”的。你的不幸皆是自己“选择”的：一味的执著于“我被给予了什么”，现实就会改变吗？我们不是可以更换的机械，我们要的是更新。在某个阶段你选择了对自己有好处的“不幸”。<br><br>6，人的生活方式可以改变。人的生活方式可以改变：生活方式是自己选择的结果。人无论在何时也无论处于何种环境中都可以改变。你之所以无法改变，是因为自己下了“不改变”的决心。不愿意改变——尽管有些不方便、不自由，但你还是感觉现在的生活方式更好，大概是你一直这样不做改变比较轻松吧。另一个方面，不知道新的自己会遇到什么问题，也不知道如何应对眼前的事情。未来难以预测，生活会充满不安，有可能更加痛苦、更加不幸的生活在等自己。却认为保持现状更加轻松、更安心。要想改变生活方式需要很大的“勇气”。你之所以不幸，只不过是缺乏“勇气”，缺乏“获得幸福的勇气”。<br><br>7，你的人生取决于“当下。你的人生取决于“当下”：要有“摈弃现在的生活方式”的决心。如果要改变对世界或自己的看法（生活方式）就必须改变与世界的沟通方式，甚至改变自己的行为方式。重新选择生活方式。决定自己人生的是“此时此刻”的你自己。<br><br>总结人生最大的谎言就是不活在此时此刻。不畏惧被人讨厌而是勇往直前，不随波逐流而是激流勇进。人生很简单，并不是什么深刻的事情，认真过好每一个刹那，就没有什么必要令其过于深刻。愿你我，都能认真过好每一个珍贵的当下。', 'v2-7e9ed71dd279a20fe8bdad07d457d053_720w.jpeg', '2022-04-26 04:10:00.000000', '吴世康', 1);
INSERT INTO `articles` VALUES (237, '关于我社区疫情防控期间社区内部分食品价格有关问题的通告', '公告', '近日，一些学生在互联网上反映我社区疫情防控期间社区内部分食品价格的问题。对此，社区高度重视，立即启动相关调查程序，组织社区代表就社区内相关食品价格开展市场调查，下一步将及时公布调查结果。如发现借疫情防控趁机涨价的行为，社区将予以坚决查处。\n<br>\n<br>\n自本轮疫情出现以来，社区坚决把社区人员的生命安全和身体健康放在第一位，在社区人民的共同努力下，迅速贯彻落实上级对社区疫情防控的工作要求，构筑起疫情防控“防火墙”。社区将进一步加强校内食品价格监管，对侵犯社区人员合法权益的行为“零容忍”，坚决维护社区和谐稳定。\n\n', '', '2022-04-26 04:31:00.000000', '吴世康', 0);
INSERT INTO `articles` VALUES (238, '严格执行常态化核酸检测措施', '公告', '社区因地制宜、合理布局“固定采样点”“便民采样点”和“流动采样点”，完善常态化核酸检测工作机制，落实“应检必检、愿检尽检”。', '', '2022-04-26 04:43:00.000000', '吴世康', 0);

-- ----------------------------
-- Table structure for electron
-- ----------------------------
DROP TABLE IF EXISTS `electron`;
CREATE TABLE `electron`  (
  `b_id` int(0) NOT NULL AUTO_INCREMENT,
  `b_user_id` int(0) NOT NULL,
  `diease_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '本机用药记录',
  `count_time` datetime(6) NULL DEFAULT NULL,
  `suggestion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sport` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`b_id`) USING BTREE,
  INDEX `关联用户编号id`(`b_user_id`) USING BTREE,
  CONSTRAINT `关联用户编号id` FOREIGN KEY (`b_user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of electron
-- ----------------------------
INSERT INTO `electron` VALUES (37, 33, '感冒', '一次小感冒而已', '四季感冒片,', '2022-05-02 10:48:00.000000', '四季感冒片:口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。 ', '需静养', '多吃蔬菜水果');
INSERT INTO `electron` VALUES (38, 30, '皮肤病', '感染了细菌', '益夫净脚气王喷剂,', '2022-05-02 10:49:00.000000', '益夫净脚气王喷剂:一天涂两次 ', '屈曲和伸展运动', '多吃肉蛋奶');
INSERT INTO `electron` VALUES (39, 27, '咳嗽', '轻微咳嗽', '桑菊感冒片,', '2022-05-02 10:52:00.000000', '桑菊感冒片:口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。 ', '屈曲和伸展运动', '多吃肉蛋奶');
INSERT INTO `electron` VALUES (41, 30, '皮肤', '皮肤病', '益夫净脚气王喷剂,', '2022-05-14 01:57:00.000000', '益夫净脚气王喷剂:一天涂两次 ', '有氧运动', '多吃肉蛋奶');

-- ----------------------------
-- Table structure for familydiease
-- ----------------------------
DROP TABLE IF EXISTS `familydiease`;
CREATE TABLE `familydiease`  (
  `fid` int(0) NOT NULL AUTO_INCREMENT,
  `f_user_id` int(0) NOT NULL,
  `diease_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `beifen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fid`) USING BTREE,
  INDEX `关联`(`f_user_id`) USING BTREE,
  CONSTRAINT `关联` FOREIGN KEY (`f_user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of familydiease
-- ----------------------------
INSERT INTO `familydiease` VALUES (9, 30, '糖尿病', '父辈');
INSERT INTO `familydiease` VALUES (10, 30, '糖尿病', '祖父辈');
INSERT INTO `familydiease` VALUES (11, 30, '1111', '父辈');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `food_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `calorie` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`food_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (52, '豆沙包', '吃豆沙包来美容养颜，这对我们皮肤健康是有很大帮助的，可刺激肠道，因此它有良好的利尿作用，能解酒、解毒，对心脏病和肾病、水肿有益。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/bean_bun.jpg', '0', '个', 144);
INSERT INTO `food` VALUES (53, '乌龙肉包', '气血双补调理', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/meat_bun.jpg', '0', '个', 140);
INSERT INTO `food` VALUES (54, '粗粮馒头', '杂粮中富含B族维生素、多种矿物质和丰富的膳食纤维，可以清肠排毒，滋润肌肤，保护心血管，促进消化，强健骨骼。杂粮还具有很强的饱腹感，对控制进食量、减肥瘦身大有益处。 ', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/bun.jpg', '0', '个', 112);
INSERT INTO `food` VALUES (55, '小米粥', '健脾养胃、促进消化、补血、安眠、明目。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/millet.jpeg', '0', '碗', 100);
INSERT INTO `food` VALUES (56, '糙米饭', '促进排毒排便，糙米富含膳食纤维，还有氨基酸，吃糙米可以补充膳食纤维，促进肾脏的排出，促进肠胃的消化，利于排便、排尿；', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/brown.jpg', '0', '碗', 120);
INSERT INTO `food` VALUES (57, '米饭', '1.补中益气，促进血液循环2.健脾养胃3.明目4.止烦5.止泻', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/rice.jpg', '0', '碗', 119);
INSERT INTO `food` VALUES (58, '南瓜粥', '南瓜粥含有丰富的维生素，矿物质，果胶及胡萝卜素等，其功效和作用表现在：一、南瓜粥有助于维持正常视觉，促进骨骼发育，南瓜粥里含有丰富的类胡萝卜素是维生素A的前体物质，所以对视觉有很好的保护作用', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/pumpkin_prg.jpeg', '0', '碗', 83);
INSERT INTO `food` VALUES (59, '全麦面包', '能够控制血糖升高的程度，有很好的预防糖尿病的作用，因为全麦面包当中含有丰富的膳食纤维，而膳食纤维能够延缓碳水化合物，就是糖分吸收的速度和程度，有很好的控制血糖升高、预防糖尿病发生的作用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/whole-wheat.jpeg', '0', '片', 142);
INSERT INTO `food` VALUES (60, '挂面', '1、预防心血管病。2、增强免疫力。3、防癌抗癌。4、预防骨质疏松。5、养胃。6、缓解痛经.', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/fine_dried.jpeg', '0', '份', 80);
INSERT INTO `food` VALUES (61, '玉米', '玉米里含有维生素A、E以及谷氨酸、膳食纤维等营养素，不但可以刺激肠肠道的蠕动，防止便秘，还可以促进胆固醇的代谢加速肠道内毒素的排出。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/corn.jpeg', '0', '根', 202);
INSERT INTO `food` VALUES (62, '马铃薯', '马铃薯性平，有和胃调中、健脾益气的功效，能够改善肠胃功能，对胃溃疡、十二指肠溃疡、慢性胆囊炎，痔疮引起的便秘具有一定的疗效，由于马铃薯的营养丰富，还有丰富的维生素及钙、钾等微量元素，易于消化吸收，老少皆宜', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/potato.jpeg', '0', '个', 100);
INSERT INTO `food` VALUES (63, '紫薯', '防止便秘，减肥，提高免疫力，延缓衰老，保护皮肤、肝脏。\n\n紫薯因为含有很多的膳食纤维，可以促进肠胃的蠕动和肠道消化，使淤积在肠道内的残渣，及时排出，所以可以防止便秘。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/solanum.jpg', '0', '小团', 50);
INSERT INTO `food` VALUES (64, '红薯', '红薯有补脾益会通便益气生津润肺滑肠，适宜于脾胃气虚营养不良产妇习惯性便秘，便秘慢性肝肾病癌症夜盲症等症状。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/main/sweet_potato.jpeg', '0', '个', 100);
INSERT INTO `food` VALUES (65, '瘦猪肉', '猪瘦肉能提供有机铁和半胱氨酸，可以有效改善缺铁性贫血的症状，具有补肾养血的作用。猪瘦肉有利于改善贫血、头晕、营养不良、肾虚等疾病。富含蛋白质，补充人体营养，具有补中益气、强身健体的功效。还富含维生素B，可促进皮肤细胞再生，改善皮肤健康，预防湿疹、口角炎、口腔溃疡、口炎和舌炎等皮肤黏膜疾病。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/lean_pork.jpeg', '1', '份 ', 100);
INSERT INTO `food` VALUES (66, '豆浆', '豆浆的营养丰富而且易于消化吸收，是一种理想饮品，但是没有熟透的豆浆对人体可能有害，可能对胃肠道产生刺激甚至是引起中毒症状，所以大家喝豆浆时一定要记得煮熟，另外某些药物可能会破坏豆浆中的营养成分，比如四环素、红霉素等抗生素药物，不建议与豆浆一起食用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/soybean_milk.jpeg', '1', '杯', 78);
INSERT INTO `food` VALUES (67, '鸭肝', '“补充铁元素、缓解视力疲劳、补气益阴。 鸭肝的功效：能够预防和治疗缺铁性贫血，因为鸭肝当中含有丰富的铁元素，并且是以容易吸收的亚铁的形式存在，进而通过补充铁元素，在预防和治疗缺铁性贫血方面的功效非常明显。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/duck_liver.jpg', '1', '份', 76);
INSERT INTO `food` VALUES (68, '鱿鱼圈', '1.可以防治贫血，2.可以预防带血综合症，可以降低血液中的胆固醇，对缓解疲劳和恢复视力有很大的功效。3.可以有效预防糖尿病，\n4.可以防辐射，因为鱿鱼圈里面含有的微量元素对抵抗病毒和防辐射有很大的功效和作用。5.可以预防喝酒对肝的不好，因为鱿鱼圈里面含有的物质对预防由于酒精肝引起的对肝脏功能的损害有很大的功效和作用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/squid_ring.jpg', '1', '份', 76);
INSERT INTO `food` VALUES (69, '豆腐丝', '豆腐丝作为大豆类制品的加工制品，富含优质蛋白，还有人体必需的八种氨基酸，营养价值较高。豆腐丝可以凉拌，也可以炒制，对高胆固醇血症的患者，可以用大豆类制品来代替蛋白质的补充，能够起到防止动脉粥样硬化、降低血浆胆固醇的作用。豆腐丝适用于所有的人群，尤其对于营养不良，对肉类制品和海鲜过敏的人，可以用豆制品来补充部分蛋白质。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/shredded.jpg', '1', '份', 90);
INSERT INTO `food` VALUES (70, '猪小排', '补肾养血，滋阴润燥；主治热病伤津、消渴羸瘦、肾虚体弱、产后血虚、燥咳、便秘、补虚、滋阴、润燥、滋肝阴，润肌肤，利二便和止消渴', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/pork_ribs.jpg', '1', '块', 37);
INSERT INTO `food` VALUES (71, '鱼肉', '鱼肉具有调节油脂分泌，保护皮肤免受紫外线伤害，利于皮肤胶原蛋白的保护，防止皮肤松弛，出现皱纹和下垂的功效。鱼肉中含有优质蛋白，硫胺素，核黄素，尼克酸，维生素D，钙，磷，铁，脂肪酸等营养成分，可降血压，降血脂，预防骨质疏松和小儿佝偻病，防癌，抗癌，抑制癌细胞生长和扩散的作用。增加心肌收缩能力，防止心脑血管疾病和冠状动脉硬化。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/fish.jpg', '1', '份', 75);
INSERT INTO `food` VALUES (72, '腐竹', '通过吃腐竹能够让肌肉的力量更加强壮，也有很强的增强免疫力的作用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/bean_rolls.jpeg', '1', '份', 100);
INSERT INTO `food` VALUES (73, '酸奶', '酸奶是牛奶经过乳酸菌发酵而成的，口感酸甜细滑，是膳食中蛋白质、钙、磷、维生素A、维生素D、维生素B2的重要供给来源之一，有滋润皮肤、生津止渴、补虚开胃、润肠通便、降血脂作用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/yogurt.jpg', '1', '碗', 180);
INSERT INTO `food` VALUES (74, '牛奶', '具有镇静安神、抑制肿瘤、促进大脑发育、益智的作用。牛奶的功效就是有镇静安神的作用，因为牛奶中含有一种可以抑制人体中枢神经的物质，这种物质叫做半胱氨酸，这种半胱氨酸可以达到镇静安神的效果', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/milk.jpeg', '1', '杯', 150);
INSERT INTO `food` VALUES (75, '去皮鸡腿', '鸡腿肉含量高，骨头少，消化率高，鸡腿肉质细嫩又不失嚼劲，滋味鲜美，营养丰富。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/skinless_chicken.jpg', '1', '个', 119);
INSERT INTO `food` VALUES (76, '瘦羊肉', '羊肉十分易被消化，富含蛋白质，而且脂肪和胆固醇的含量比较少，经常吃羊肉，可提高身体免疫力，增强身体素质，还能有效预防高血压，高血脂等症状。除此之外，羊肉还能增强胃中消化酶的功能，可以达到保护胃壁，帮助消化的作用。更重要的是，瘦羊肉是很好的保健品，对于老人来说，经常吃的话可强身健体。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/thin_mutton.jpg', '1', '份', 100);
INSERT INTO `food` VALUES (77, '虾仁', '保护心脏、通乳、补肾壮阳，健胃、强身健体。虾仁这种食材是一种海鲜类的食材，所以一些对海鲜过敏的人可能要慎吃，但是虾仁中含有非常丰富的营养价值，而正是由于虾仁中含有非常丰富的营养价值，所以虾仁也有非常高的功效与作用', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/shrimp.jpg', '1', '份', 100);
INSERT INTO `food` VALUES (78, '瘦牛肉', '瘦牛肉富含蛋白质，维生素和多种氨基酸，且脂肪含量很低。吃瘦牛肉对人体以下功效:1.提高人体免疫力及抗病能力，对多种真菌有抑制作用，预防感冒。2.补充失血，修复组织，适合手术后病人恢复及体虚者食用。3.脂肪含量低，增强饱腹感，控制热量摄入，塑身健体。4.补充维生素，促进蛋白质的新陈代谢，有助于紧张训练后身体的恢复。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/lean_beef.jpeg', '1', '份', 100);
INSERT INTO `food` VALUES (79, '豆腐干', '豆腐干主要是用大豆为主要原材料制作而成的一种营养食品，其中含有非常丰富的碳水化合物、脂肪、钙离子等成分，摄入身体之后，可以为机体代谢提供能量，并且能够增加骨骼的强度，改善缺铁性贫血导致的头晕、头痛等现象。这种豆腐干中含有一定的大豆异黄酮，摄入身体之内可以平衡体内的激素水平，起到促进新陈代谢、美白皮肤的作用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/dried_bean_curd.jpg', '1', '块', 35);
INSERT INTO `food` VALUES (80, '豆腐', '豆腐具有降低胆固醇，抗氧化，预防老年痴呆，加速新陈代谢的作用。豆腐中富含蛋白质，钙，维生素E及半胱氨酸等营养成分。豆腐中含有丰富的大豆蛋白，不含胆固醇，并有降低胆固醇，三酸甘油酯和低密度脂蛋白的功效，因此有助于预防心脑血管疾病。豆腐中的维生素E可帮助人体抗衰老，保持青春活力。但豆腐一次不宜食用过多，否则会影响到人体对铁的吸收，还能引起蛋白消化不良，出现腹胀，腹泻等不适。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/tofu.jpg', '1', '份', 100);
INSERT INTO `food` VALUES (81, '鸡胸肉', '鸡胸肉指鸡胸部里侧的肉。鸡胸肉是高蛋白、低热量、低碳水的食物，营养成分非常丰富，有维生素A、维生素C、维生素E等，还有蛋白质、钙、磷、铁等微量元素，能煎、炒、煮等，做法多样，肉质细嫩鲜美，是人类脂肪及磷脂的重要来源之一，也是不可或缺的肉类食品之一。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/breast.jpeg', '1', '份', 100);
INSERT INTO `food` VALUES (82, '鸡蛋', '鸡蛋含有丰富的蛋白质和卵磷脂，可以增强记忆力，保肝护肝，提高人体免疫力，延年益寿它含有很丰富的蛋白质，另外还有卵磷脂，鸡蛋可以增强我们的记忆力，对于儿童的生长发育是十分必须的。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/mmne/egg.jpeg', '1', '个', 62);
INSERT INTO `food` VALUES (84, '红提', '多吃红提对人体的身体健康有很大的好处，它含有丰富的维生素，果酸，矿物质等成分。多吃红提，有化痰止咳的效果，有利于局部炎症的治愈，它成分中的果酸可以促进消化液的分泌，可以促进消化，增强食欲。经常吃红提，也可以增强人体的抗氧化能力，达起到延缓衰老的作用，可以使皮肤变得红润，细腻，红提还有防癌抗癌的作用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/red_grape.png', '2', '份', 60);
INSERT INTO `food` VALUES (85, '南瓜', '南瓜性温、味甘、无毒，入脾、胃二经，能润肺益气、化痰排脓、驱虫解毒。解毒，南瓜含有维生素和果胶，果胶有很好的吸附性，能够粘结和消除体内细菌、毒素和其有害物质，比如重金属中的铅、汞，起到解毒的作用；', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/pumpkin.jpg', '2', '份', 25);
INSERT INTO `food` VALUES (86, '西红柿', '一、西红柿当中含有番茄素，有抑制细菌的作用，其中还含有苹果酸、柠檬酸和糖类，有帮助消化的功能；西红柿含有丰富的营养，又有多种功能，被称为神奇的菜中之果。\n\n二、生吃西红柿可帮助增加胃液酸度，帮助消化，调整胃肠功能。\n\n三、同时，西红柿中含有果酸，能够降低胆固醇的含量，延缓动脉粥样硬化的发生，对冠心病、脑梗塞均有一定的益处。\n\n四、西红柿当中还富含维生素A、维生素C、维生素B及胡萝卜素和钙、磷、钾等多种元素，西红柿还含有蛋白质、有机酸和纤维素。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/tomato.jpeg', '2', '个', 28);
INSERT INTO `food` VALUES (88, '球生菜', '球生菜具有减肥、镇痛催眠、祛寒利尿、抗病毒等功效，尿频和胃寒的人避免食用，可以生吃或炒制。它可以消除多余的脂肪，对于女性，这是一个很好的选择。它还具有降低胆固醇和辅助治疗神经衰弱的作用，球生菜中所含的维生素C也能有效缓解牙龈出血等效果。它还可以促进消化，增进食欲，驱寒利尿，促进血液循环，叶绿素中的铜钠盐具有抗癌变性，能有效预防癌症', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/butterhead.jpg', '2', '份', 26);
INSERT INTO `food` VALUES (89, '空心菜', '空心菜具有促进肠蠕动，通便解暑，促进创伤愈合，延年益寿，促进造血，解毒消炎等作用。空心菜具有促进肠蠕动，通便解暑的功效，空心菜中维生素B2的含量是比较可观的，食用空心菜能预防治疗由于维生素B2缺乏引起来的一些口角炎、舌炎等疾病。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/cabbage.jpg', '2', '份', 25);
INSERT INTO `food` VALUES (90, '芥蓝', '芥蓝富含维生素，尤其是服用其鲜品绞汁，对胃病有缓解作用。其所含的维生素C等营养成分有止痛生肌的功效，能促进胃、十二指肠溃疡愈合。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/cabbage_mustard.jpg', '2', '份', 25);
INSERT INTO `food` VALUES (91, '花菜', '花菜中含有的类黄酮非常多，可以防止感染，还可以清理血管，防止胆固醇氧化，减少心血管疾病的发生。花菜中含有大量的水分和膳食纤维，不仅可以促进胃肠道的蠕动，减少对其他食物中脂肪成分的吸收，还是低糖分和脂肪的食物，非常适合减肥人士食用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/cauliflower.jpeg', '2', '份', 25);
INSERT INTO `food` VALUES (92, '大白菜', '具有养胃生津、除烦解渴、利尿通便、清热解毒等功能，可补充营养、净化血液、疏通肠胃、预防疾病、促进新陈代谢加速，适合大众食用。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/celery_cabbage.jpeg', '2', '份', 25);
INSERT INTO `food` VALUES (93, '豆芽', '调整肠道微生态、提高免疫力。豆芽在生芽的过程当中就很神奇能够富含维生素，尤其是维生素C，抗坏血酸预防牙龈肿胀和牙龈出血方面的功效和作用就会比较明显一些。同时，维生素C对于我们体内生化代谢的调节都有积极的作用', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/bean_sprout.jpg', '2', '份', 25);
INSERT INTO `food` VALUES (94, '秋葵', '秋葵是一种富含营养的蔬菜，每个部分都含有半纤维素、纤维素和木质素，黄秋葵的嫩果中含有丰富的蛋白质、磷、铁、钾、钙、锌、锰等矿物质，以及由果胶与多糖等组成的黏性物质，营养价值堪比人参，在日韩被视为绿色人参，对人体有很大的好处。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/okra.jpeg', '2', '份', 25);
INSERT INTO `food` VALUES (95, '扁豆', '扁豆能够补气、健脾化湿，促进消化功能，此外还可以化湿消暑，利水，治疗中暑、水肿性疾病。扁豆它是我们的一个蔬菜，但是它也是我们的一味中药，扁豆属于能够补气，能够健脾胃的一类的中药，它能够健脾化湿', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/hyacinth_bean.jpg', '2', '份', 25);
INSERT INTO `food` VALUES (96, '豇豆', '健脾利湿、补肾涩精。 豇豆的第一个功效，能够为机体提供一定量的优质蛋白质，因为豇豆作为一种豆类，其中含有非常丰富的蛋白质，而且吸收率相对会比较高一些，进而在补充机体蛋白质方面的功效会非常的明显', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/cowpea.jpg', '2', '份', 25);
INSERT INTO `food` VALUES (97, '茄子', '清热解毒、利水消肿、辅助降低血脂。能够清热解毒，因为从中医食疗的角度上来讲，茄子性味甘、凉，对于热病伤身所导致的口渴、口干、热毒疮痈、皮肤溃疡的人，如果适当食用茄子，有很好的清热解毒的功效。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/eggplant.jpeg', '2', '份', 58);
INSERT INTO `food` VALUES (98, '菠菜', '预防和缓解便秘、促进肠道蠕动、滋阴养血。 菠菜的功效如下：可以预防和缓解便秘的发生，因为菠菜含有丰富的膳食纤维，能够有效促进肠道蠕动，在预防便秘方面的功效非常明显', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/spinach.jpg', '2', '份', 56);
INSERT INTO `food` VALUES (99, '牛油果', '牛油果的果肉质地细腻，味道鲜美，似乳酪，有核桃的香味。食用牛油果鲜果，的确能领略到独特的水果风味，而且还可获得丰富的营养，有很多的功效与作用，有“粮食水果”之称。1、保护肝脏，2、美容护肤3、缓解糖尿病症4、保护子宫健康5、预防癌症6、抗氧抗衰老，', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/avocado.jpg', '2', '份', 60);
INSERT INTO `food` VALUES (100, '丝瓜', '丝瓜有清热化痰、凉血解毒的作用，它是甘而凉的性味，归肺经、肝经、胃经，也归大肠经。丝瓜可以用于发热出现的烦躁口渴，也用于咳嗽、喘、痰多等病症，有化痰的功效。\n\n另外，丝瓜可以用于肠风下血，也就是便血，也可以用于痔疮导致的出血，可以治疗尿血，还可以治疗崩漏。该药物有凉血解毒的作用，可以用于痈疽肿毒、疮疡症的治疗。丝瓜也有通乳作用，可以治疗无名肿毒。丝瓜可以用于水肿的治疗，此药物没有祛斑功效。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/towel.jpg', '2', '份', 53);
INSERT INTO `food` VALUES (101, '生菜', '生菜是常见的一种蔬菜，有人将其称为消除多余脂肪的减肥菜。生菜味略微有点苦味，功效与作用如下：\n\n1、蔬菜主要作用是补充人体所需的各种维生素、矿物质，具有镇静催眠、降低胆固醇，辅助治疗神经衰弱的作用；\n\n2、富含膳食纤维较多，膳食纤维可以在肠道中吸收水分而膨胀，有促进胃肠蠕动、改善因为食物过于精细而造成的便秘；\n\n3、富含甘露醇这些有效成分，有利尿的作用和促进血液循环的作用；\n\n4、富含干扰素诱生剂，可以刺激人体产生干扰素。', 'https://healthycommunity.oss-cn-hangzhou.aliyuncs.com/img/vegetables/lettuce.jpeg', '2', '份', 28);

-- ----------------------------
-- Table structure for heathy_data
-- ----------------------------
DROP TABLE IF EXISTS `heathy_data`;
CREATE TABLE `heathy_data`  (
  `hid` int(0) NOT NULL AUTO_INCREMENT,
  `cf_user_id` int(0) NOT NULL,
  `height` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blodpres_relax` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oxygen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `spygmus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `temperature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BMI` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(6) NULL DEFAULT NULL,
  `blodpres_shrink` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blood` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weight` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`hid`) USING BTREE,
  INDEX `用户编号关联`(`cf_user_id`) USING BTREE,
  CONSTRAINT `用户编号关联` FOREIGN KEY (`cf_user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of heathy_data
-- ----------------------------
INSERT INTO `heathy_data` VALUES (1, 23, '178', '68', '95', '65', '37.8', '偏瘦,低烧', '17.7', '2022-03-14 09:56:00.000000', '132', 'A型', '56');
INSERT INTO `heathy_data` VALUES (3, 3, '157', '132', '95', '75', '36.6', '正常', '18.7', '2022-03-16 06:47:00.000000', '68', 'A型', '46');
INSERT INTO `heathy_data` VALUES (5, 27, '162', '65', '95', '12', '36.5', '正常', '19.8', '2022-04-07 12:59:00.000000', '56', 'A型', '52');
INSERT INTO `heathy_data` VALUES (6, 30, '172', '68', '94', '75', '36.5', '偏瘦', '17.6', '2022-04-16 01:56:00.000000', '132', 'A型', '52');

-- ----------------------------
-- Table structure for history_diease
-- ----------------------------
DROP TABLE IF EXISTS `history_diease`;
CREATE TABLE `history_diease`  (
  `j_id` int(0) NOT NULL AUTO_INCREMENT,
  `jw_user_id` int(0) NOT NULL,
  `diease_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flage` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `q_time` datetime(6) NULL DEFAULT NULL,
  `z_time` datetime(6) NULL DEFAULT NULL,
  `allergen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '过敏',
  `disabled_orno` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `disabled_con` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`j_id`) USING BTREE,
  INDEX `关联用编号`(`jw_user_id`) USING BTREE,
  CONSTRAINT `关联用编号` FOREIGN KEY (`jw_user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history_diease
-- ----------------------------
INSERT INTO `history_diease` VALUES (52, 33, '感冒', '否', '2022-05-02 10:48:00.000000', NULL, '', '无', '');
INSERT INTO `history_diease` VALUES (53, 30, '皮肤病', '是', '2022-05-02 10:49:00.000000', '2022-05-02 10:58:00.000000', '', '无', '');
INSERT INTO `history_diease` VALUES (54, 27, '咳嗽', '否', '2022-05-02 10:52:00.000000', NULL, '', '无', '');
INSERT INTO `history_diease` VALUES (56, 30, '皮肤', '是', '2022-05-14 01:57:00.000000', '2022-05-14 14:00:00.000000', '', '无', '');

-- ----------------------------
-- Table structure for life
-- ----------------------------
DROP TABLE IF EXISTS `life`;
CREATE TABLE `life`  (
  `l_id` int(0) NOT NULL AUTO_INCREMENT,
  `l_user_id` int(0) NOT NULL,
  `physical` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exercise` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dietary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sleep` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `smoking` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `drinking` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`l_id`) USING BTREE,
  INDEX `生活关联`(`l_user_id`) USING BTREE,
  CONSTRAINT `生活关联` FOREIGN KEY (`l_user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of life
-- ----------------------------
INSERT INTO `life` VALUES (59, 1, '每周6-8次', '20-40分钟', '正常', '6-7小时', '否', '否', '2022-04-22 09:45:00');
INSERT INTO `life` VALUES (60, 3, '每周3-5次', '40-60分钟', '偏甜', '八小时', '否', '是', '2022-04-22 09:46:00');
INSERT INTO `life` VALUES (61, 30, '每周>10次', '60分钟以上', '爱吃肉', '八小时以上', '否', '否', '2022-04-21 12:00:00');
INSERT INTO `life` VALUES (62, 33, '每周<3次', '10以下', '爱吃肉', '6小时以下', '否', '否', '2022-04-26 10:57:00');
INSERT INTO `life` VALUES (63, 27, '每周<3次', '10以下', '11111', '6小时以下', '是', '是', '2022-04-26 11:18:00');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `log_id` bigint(0) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `by_time` datetime(6) NOT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18852 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (16287, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-11 23:18:00.000000');
INSERT INTO `log` VALUES (16288, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-11 23:18:00.000000');
INSERT INTO `log` VALUES (16289, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16290, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16291, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16292, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16293, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16294, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16295, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16296, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16297, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16298, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16299, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16300, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16301, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16302, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16303, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16304, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16305, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16306, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16307, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16308, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16309, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16310, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16311, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16312, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16313, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16314, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16315, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16316, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16317, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16318, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16319, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16320, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16321, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16322, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16323, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16324, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16325, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16326, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16327, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16328, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16329, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16330, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16331, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16332, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16333, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16334, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16335, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16336, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16337, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16338, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16339, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16340, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-12 22:43:00.000000');
INSERT INTO `log` VALUES (16341, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16342, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16343, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16344, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16345, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16346, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16347, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16348, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16349, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16350, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16351, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 22:44:00.000000');
INSERT INTO `log` VALUES (16352, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:45:00.000000');
INSERT INTO `log` VALUES (16353, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:46:00.000000');
INSERT INTO `log` VALUES (16354, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16355, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16356, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16357, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16358, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16359, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16360, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16361, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16362, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16363, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16364, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16365, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16366, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16367, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16368, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16369, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16370, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16371, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16372, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16373, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16374, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16375, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16376, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16377, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16378, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16379, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16380, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16381, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16382, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16383, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16384, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16385, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:47:00.000000');
INSERT INTO `log` VALUES (16386, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16387, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16388, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16389, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16390, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16391, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16392, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16393, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16394, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16395, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16396, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16397, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16398, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16399, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16400, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16401, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16402, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16403, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16404, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16405, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16406, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16407, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:53:00.000000');
INSERT INTO `log` VALUES (16408, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:54:00.000000');
INSERT INTO `log` VALUES (16409, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16410, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16411, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16412, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16413, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16414, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16415, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16416, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16417, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16418, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16419, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16420, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16421, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16422, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16423, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16424, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16425, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16426, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16427, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16428, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16429, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16430, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16431, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16432, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16433, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16434, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16435, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16436, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16437, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16438, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16439, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16440, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16441, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16442, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16443, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16444, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16445, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 22:55:00.000000');
INSERT INTO `log` VALUES (16446, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16447, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16448, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16449, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16450, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16451, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16452, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16453, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16454, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16455, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16456, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16457, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16458, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16459, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16460, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16461, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16462, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16463, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16464, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16465, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16466, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16467, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16468, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16469, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16470, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16471, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16472, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16473, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16474, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16475, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16476, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:33:00.000000');
INSERT INTO `log` VALUES (16477, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16478, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16479, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16480, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16481, '127.0.0.1', 'GET', '冯临', '/user/detailsArticle', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16482, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16483, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16484, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16485, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16486, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16487, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16488, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16489, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-12 23:34:00.000000');
INSERT INTO `log` VALUES (16490, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:44:00.000000');
INSERT INTO `log` VALUES (16491, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:44:00.000000');
INSERT INTO `log` VALUES (16492, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:44:00.000000');
INSERT INTO `log` VALUES (16493, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:44:00.000000');
INSERT INTO `log` VALUES (16494, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:44:00.000000');
INSERT INTO `log` VALUES (16495, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-12 23:44:00.000000');
INSERT INTO `log` VALUES (16496, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16497, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16498, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16499, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16500, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16501, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16502, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16503, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16504, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16505, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16506, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16507, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16508, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16509, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16510, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16511, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16512, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16513, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16514, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16515, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16516, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16517, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16518, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16519, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16520, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16521, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16522, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16523, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16524, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16525, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16526, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16527, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16528, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16529, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16530, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16531, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16532, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:45:00.000000');
INSERT INTO `log` VALUES (16533, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16534, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16535, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16536, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16537, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16538, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16539, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16540, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16541, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16542, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16543, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16544, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16545, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16546, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16547, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16548, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 23:47:00.000000');
INSERT INTO `log` VALUES (16549, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16550, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16551, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16552, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16553, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16554, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16555, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16556, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16557, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16558, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16559, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16560, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16561, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16562, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16563, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16564, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16565, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16566, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16567, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16568, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16569, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16570, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16571, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16572, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16573, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16574, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16575, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16576, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16577, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16578, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16579, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16580, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16581, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16582, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16583, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16584, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:51:00.000000');
INSERT INTO `log` VALUES (16585, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16586, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16587, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16588, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16589, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16590, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16591, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16592, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16593, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16594, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16595, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16596, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16597, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16598, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16599, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16600, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16601, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16602, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16603, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16604, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16605, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 23:52:00.000000');
INSERT INTO `log` VALUES (16606, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16607, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16608, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16609, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16610, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16611, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16612, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16613, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16614, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16615, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16616, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16617, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16618, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16619, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16620, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16621, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16622, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16623, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16624, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16625, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16626, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16627, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16628, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16629, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16630, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16631, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16632, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16633, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16634, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16635, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16636, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16637, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16638, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16639, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16640, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16641, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16642, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16643, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16644, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-12 23:53:00.000000');
INSERT INTO `log` VALUES (16645, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16646, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16647, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16648, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16649, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16650, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16651, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16652, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16653, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16654, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16655, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16656, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16657, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16658, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16659, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16660, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16661, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16662, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16663, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16664, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16665, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16666, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16667, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16668, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16669, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16670, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16671, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16672, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16673, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16674, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16675, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16676, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16677, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16678, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16679, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16680, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16681, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16682, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16683, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16684, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16685, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16686, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16687, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16688, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-12 23:59:00.000000');
INSERT INTO `log` VALUES (16689, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16690, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16691, '127.0.0.1', 'POST', '冯临', '/user/UpdateUser', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16692, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16693, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16694, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16695, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16696, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16697, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16698, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16699, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16700, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16701, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16702, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16703, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16704, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16705, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16706, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16707, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16708, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16709, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16710, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16711, '127.0.0.1', 'POST', '冯临', '/user/updateStatusAppoint', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16712, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16713, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16714, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16715, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16716, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16717, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16718, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16719, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16720, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16721, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16722, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16723, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16724, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16725, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16726, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16727, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16728, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:39:00.000000');
INSERT INTO `log` VALUES (16729, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16730, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16731, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16732, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16733, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16734, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16735, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16736, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16737, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16738, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16739, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16740, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16741, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16742, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16743, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16744, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16745, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16746, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16747, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16748, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16749, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16750, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16751, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16752, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16753, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16754, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16755, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16756, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16757, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16758, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16759, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16760, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:40:00.000000');
INSERT INTO `log` VALUES (16761, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16762, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16763, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16764, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16765, '127.0.0.1', 'GET', '冯临', '/user/detailsArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16766, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16767, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16768, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16769, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:41:00.000000');
INSERT INTO `log` VALUES (16770, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:42:00.000000');
INSERT INTO `log` VALUES (16771, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:42:00.000000');
INSERT INTO `log` VALUES (16772, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:42:00.000000');
INSERT INTO `log` VALUES (16773, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 20:42:00.000000');
INSERT INTO `log` VALUES (16774, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 20:42:00.000000');
INSERT INTO `log` VALUES (16775, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 20:42:00.000000');
INSERT INTO `log` VALUES (16776, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-13 20:43:00.000000');
INSERT INTO `log` VALUES (16777, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-13 20:43:00.000000');
INSERT INTO `log` VALUES (16778, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-13 20:43:00.000000');
INSERT INTO `log` VALUES (16779, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-13 20:43:00.000000');
INSERT INTO `log` VALUES (16780, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-13 20:44:00.000000');
INSERT INTO `log` VALUES (16781, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 20:44:00.000000');
INSERT INTO `log` VALUES (16782, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-13 20:44:00.000000');
INSERT INTO `log` VALUES (16783, '127.0.0.1', 'GET', '王源', '/electron/findPeple', '2022-05-13 20:44:00.000000');
INSERT INTO `log` VALUES (16784, '127.0.0.1', 'POST', '王源', '/electron/saveOrUpdateElectron', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16785, '127.0.0.1', 'GET', '王源', '/electron/findPeple', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16786, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16787, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16788, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16789, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16790, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16791, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16792, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16793, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16794, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16795, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16796, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16797, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16798, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16799, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16800, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16801, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16802, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16803, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16804, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16805, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16806, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16807, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16808, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16809, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16810, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16811, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16812, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16813, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16814, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16815, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16816, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16817, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16818, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16819, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16820, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16821, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16822, '127.0.0.1', 'GET', '王源', '/familyDiease/findDiease', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16823, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-13 20:45:00.000000');
INSERT INTO `log` VALUES (16824, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16825, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16826, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16827, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16828, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16829, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16830, '127.0.0.1', 'GET', '吴世康', '/electron/queryElectron', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16831, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16832, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16833, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16834, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16835, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16836, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16837, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16838, '127.0.0.1', 'POST', '吴世康', '/store/saveUpdate', '2022-05-13 20:46:00.000000');
INSERT INTO `log` VALUES (16839, '127.0.0.1', 'GET', '吴世康', '/article/queryArticle', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16840, '127.0.0.1', 'GET', '吴世康', '/article/author', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16841, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16842, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16843, '127.0.0.1', 'GET', '吴世康', '/users/findUsers', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16844, '127.0.0.1', 'GET', '吴世康', '/users/findRoles', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16845, '127.0.0.1', 'GET', '吴世康', '/users/findUsers', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16846, '127.0.0.1', 'GET', '吴世康', '/users/findUsers', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16847, '127.0.0.1', 'GET', '吴世康', '/users/findUsers', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16848, '127.0.0.1', 'GET', '吴世康', '/users/findUsers', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16849, '127.0.0.1', 'GET', '吴世康', '/users/findUsers', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16850, '127.0.0.1', 'GET', '吴世康', '/roles/findRoles', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16851, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 20:47:00.000000');
INSERT INTO `log` VALUES (16852, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16853, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16854, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16855, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16856, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16857, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16858, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16859, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16860, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16861, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16862, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16863, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16864, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16865, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16866, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16867, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16868, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16869, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16870, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16871, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16872, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16873, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16874, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16875, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16876, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16877, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16878, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16879, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16880, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16881, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16882, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16883, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16884, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16885, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16886, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16887, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16888, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16889, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16890, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16891, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16892, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16893, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16894, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16895, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16896, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16897, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16898, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16899, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16900, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16901, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16902, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16903, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16904, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16905, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16906, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16907, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16908, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16909, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16910, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16911, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16912, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16913, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16914, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16915, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16916, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16917, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16918, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16919, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16920, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16921, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16922, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16923, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16924, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16925, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16926, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16927, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16928, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16929, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16930, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16931, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16932, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16933, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16934, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16935, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16936, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16937, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16938, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16939, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16940, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16941, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16942, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16943, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16944, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16945, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16946, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16947, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16948, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16949, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16950, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16951, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16952, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16953, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16954, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16955, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16956, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16957, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16958, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16959, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16960, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16961, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16962, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16963, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16964, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16965, '127.0.0.1', 'GET', '吴世康', '/roles/findRoles', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16966, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 20:48:00.000000');
INSERT INTO `log` VALUES (16967, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 20:49:00.000000');
INSERT INTO `log` VALUES (16968, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-13 20:49:00.000000');
INSERT INTO `log` VALUES (16969, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16970, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16971, '127.0.0.1', 'GET', '吴世康', '/electron/queryElectron', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16972, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16973, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16974, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16975, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16976, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16977, '127.0.0.1', 'GET', '吴世康', '/article/queryArticle', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16978, '127.0.0.1', 'GET', '吴世康', '/article/author', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16979, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16980, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16981, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16982, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16983, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16984, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16985, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16986, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16987, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16988, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16989, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16990, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16991, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16992, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16993, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16994, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16995, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16996, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16997, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16998, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (16999, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17000, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17001, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17002, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17003, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17004, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17005, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17006, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17007, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17008, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17009, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17010, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17011, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17012, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17013, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17014, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17015, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17016, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17017, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17018, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17019, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17020, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17021, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17022, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17023, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17024, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17025, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17026, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17027, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17028, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17029, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17030, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17031, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:54:00.000000');
INSERT INTO `log` VALUES (17074, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17075, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17076, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17077, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17078, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17079, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17080, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17081, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17082, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17083, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17084, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17085, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17086, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17087, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17088, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17089, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17090, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17091, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17092, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17093, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17094, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17095, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17096, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17097, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17098, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17099, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17100, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17101, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17102, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17103, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17104, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17105, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17106, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17107, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17108, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17109, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17110, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17111, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17112, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17113, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17114, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17115, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17116, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17117, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17118, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17119, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17120, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17121, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17122, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17123, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17124, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17125, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17126, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17127, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17128, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-13 20:55:00.000000');
INSERT INTO `log` VALUES (17287, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17288, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17289, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17290, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17291, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17292, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17293, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17294, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17295, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17296, '127.0.0.1', 'GET', '吴世康', '/article/queryArticle', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17297, '127.0.0.1', 'GET', '吴世康', '/article/author', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17298, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17299, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17300, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17301, '127.0.0.1', 'GET', '吴世康', '/electron/queryElectron', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17302, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-13 20:58:00.000000');
INSERT INTO `log` VALUES (17303, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17304, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17305, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17306, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17307, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17308, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17309, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17310, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17311, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17312, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17313, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17314, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17315, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17316, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17317, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17318, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17319, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17320, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17321, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17322, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17323, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17324, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17325, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17326, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17327, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17328, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17329, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17330, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17331, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17332, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17333, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17334, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17335, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17336, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17337, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17338, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17339, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17340, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17341, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17342, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17343, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17344, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17345, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17346, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17347, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17348, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17349, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17350, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17351, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17352, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17353, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17354, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17355, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17356, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17357, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17358, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 20:59:00.000000');
INSERT INTO `log` VALUES (17359, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 21:00:00.000000');
INSERT INTO `log` VALUES (17360, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 21:00:00.000000');
INSERT INTO `log` VALUES (17361, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 21:00:00.000000');
INSERT INTO `log` VALUES (17362, '127.0.0.1', 'GET', '吴世康', '/article/queryArticle', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17363, '127.0.0.1', 'GET', '吴世康', '/article/author', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17364, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17365, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17366, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17367, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17368, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17369, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17370, '127.0.0.1', 'GET', '127.0.0.1', '/medicine/download', '2022-05-13 23:41:00.000000');
INSERT INTO `log` VALUES (17371, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-13 23:42:00.000000');
INSERT INTO `log` VALUES (17372, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-13 23:42:00.000000');
INSERT INTO `log` VALUES (17373, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-13 23:42:00.000000');
INSERT INTO `log` VALUES (17374, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17375, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17376, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17377, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17378, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17379, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17380, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17381, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17382, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17383, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17384, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17385, '127.0.0.1', 'POST', '冯临', '/user/updateStatusAppoint', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17386, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17387, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17388, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17389, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17390, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17391, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17392, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17393, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17394, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17395, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17396, '127.0.0.1', 'POST', '冯临', '/user/updateStatusAppoint', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17397, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17398, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17399, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17400, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17401, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17402, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17403, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17404, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17405, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17406, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17407, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17408, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17409, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17410, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17411, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17412, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17413, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17414, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17415, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17416, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17417, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17418, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17419, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17420, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17421, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17422, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17423, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17424, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17425, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17426, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17427, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17428, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17429, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17430, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17431, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17432, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17433, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17434, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17435, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17436, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17437, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17438, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17439, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17440, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17441, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17442, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17443, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17444, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 23:43:00.000000');
INSERT INTO `log` VALUES (17445, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17446, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17447, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17448, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17449, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17450, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17451, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17452, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17453, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17454, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17455, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17456, '127.0.0.1', 'GET', '王源', '/nowDiease/deleteDiease', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17457, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17458, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17459, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17460, '127.0.0.1', 'GET', '王源', '/historyDiease/deleteDiease', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17461, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17462, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17463, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17464, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17465, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17466, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17467, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17468, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17469, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17470, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17471, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17472, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17473, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17474, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17475, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17476, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17477, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17478, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17479, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17480, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17481, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17482, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17483, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17484, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17485, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17486, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17487, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17488, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17489, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17490, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17491, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17492, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17493, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17494, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17495, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17496, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17497, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17498, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17499, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17500, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17501, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17502, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17503, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17504, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17505, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:44:00.000000');
INSERT INTO `log` VALUES (17506, '127.0.0.1', 'POST', '吴世康', '/store/saveUpdate', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17507, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17508, '127.0.0.1', 'POST', '吴世康', '/store/saveUpdate', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17509, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17510, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17511, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17512, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17513, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17514, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17515, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17516, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17517, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17518, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17519, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17520, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17521, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17522, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-13 23:45:00.000000');
INSERT INTO `log` VALUES (17523, '127.0.0.1', 'POST', '王源', '/sport/saveUpdateSport', '2022-05-13 23:46:00.000000');
INSERT INTO `log` VALUES (17524, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-13 23:46:00.000000');
INSERT INTO `log` VALUES (17525, '127.0.0.1', 'POST', '王源', '/sport/saveUpdateSport', '2022-05-13 23:46:00.000000');
INSERT INTO `log` VALUES (17526, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-13 23:46:00.000000');
INSERT INTO `log` VALUES (17527, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-13 23:46:00.000000');
INSERT INTO `log` VALUES (17528, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:46:00.000000');
INSERT INTO `log` VALUES (17529, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:46:00.000000');
INSERT INTO `log` VALUES (17530, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:46:00.000000');
INSERT INTO `log` VALUES (17531, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-13 23:48:00.000000');
INSERT INTO `log` VALUES (17532, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:48:00.000000');
INSERT INTO `log` VALUES (17533, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:48:00.000000');
INSERT INTO `log` VALUES (17534, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:48:00.000000');
INSERT INTO `log` VALUES (17535, '127.0.0.1', 'GET', '127.0.0.1', '/heathy/download', '2022-05-13 23:48:00.000000');
INSERT INTO `log` VALUES (17536, '127.0.0.1', 'GET', '127.0.0.1', '/heathy/download', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17537, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17538, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17539, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17540, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17541, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17542, '127.0.0.1', 'GET', '王源', '/familyDiease/findDiease', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17543, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17544, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:49:00.000000');
INSERT INTO `log` VALUES (17545, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:50:00.000000');
INSERT INTO `log` VALUES (17546, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-13 23:50:00.000000');
INSERT INTO `log` VALUES (17547, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17548, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17549, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17550, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17551, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17552, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17553, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17554, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17555, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17556, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17557, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17558, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17559, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17560, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17561, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17562, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17563, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:51:00.000000');
INSERT INTO `log` VALUES (17564, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:52:00.000000');
INSERT INTO `log` VALUES (17565, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-13 23:52:00.000000');
INSERT INTO `log` VALUES (17566, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:52:00.000000');
INSERT INTO `log` VALUES (17567, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-13 23:52:00.000000');
INSERT INTO `log` VALUES (17568, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:52:00.000000');
INSERT INTO `log` VALUES (17569, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:52:00.000000');
INSERT INTO `log` VALUES (17570, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17571, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17572, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17573, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17574, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17575, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17576, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17577, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17578, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17579, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17580, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17581, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17582, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17583, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17584, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17585, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17586, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17587, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17588, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17589, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17590, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17591, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17592, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17593, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17594, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17595, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17596, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17597, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17598, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17599, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:53:00.000000');
INSERT INTO `log` VALUES (17600, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17601, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17602, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17603, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17604, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17605, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17606, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17607, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17608, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17609, '127.0.0.1', 'GET', '王源', '/familyDiease/findDiease', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17610, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17611, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17612, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17613, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17614, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17615, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17616, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17617, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17618, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:54:00.000000');
INSERT INTO `log` VALUES (17619, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:55:00.000000');
INSERT INTO `log` VALUES (17620, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:55:00.000000');
INSERT INTO `log` VALUES (17621, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:55:00.000000');
INSERT INTO `log` VALUES (17622, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:55:00.000000');
INSERT INTO `log` VALUES (17623, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:57:00.000000');
INSERT INTO `log` VALUES (17624, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:57:00.000000');
INSERT INTO `log` VALUES (17625, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:57:00.000000');
INSERT INTO `log` VALUES (17626, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:57:00.000000');
INSERT INTO `log` VALUES (17627, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17628, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17629, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17630, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17631, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17632, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17633, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17634, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17635, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17636, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17637, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17638, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17639, '127.0.0.1', 'GET', '王源', '/familyDiease/findDiease', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17640, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17641, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17642, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17643, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17644, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17645, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17646, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:58:00.000000');
INSERT INTO `log` VALUES (17647, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17648, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17649, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17650, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17651, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17652, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17653, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17654, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17655, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17656, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17657, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17658, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17659, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17660, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17661, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-13 23:59:00.000000');
INSERT INTO `log` VALUES (17662, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-14 00:02:00.000000');
INSERT INTO `log` VALUES (17663, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-14 00:02:00.000000');
INSERT INTO `log` VALUES (17664, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-14 00:02:00.000000');
INSERT INTO `log` VALUES (17665, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:02:00.000000');
INSERT INTO `log` VALUES (17666, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:02:00.000000');
INSERT INTO `log` VALUES (17667, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:02:00.000000');
INSERT INTO `log` VALUES (17668, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:02:00.000000');
INSERT INTO `log` VALUES (17669, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:04:00.000000');
INSERT INTO `log` VALUES (17670, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:04:00.000000');
INSERT INTO `log` VALUES (17671, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:04:00.000000');
INSERT INTO `log` VALUES (17672, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:04:00.000000');
INSERT INTO `log` VALUES (17673, '127.0.0.1', 'GET', '127.0.0.1', '/heathy/download', '2022-05-14 00:04:00.000000');
INSERT INTO `log` VALUES (17674, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:05:00.000000');
INSERT INTO `log` VALUES (17675, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:05:00.000000');
INSERT INTO `log` VALUES (17676, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17677, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17678, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17679, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17680, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17681, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17682, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17683, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17684, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17685, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:06:00.000000');
INSERT INTO `log` VALUES (17686, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:07:00.000000');
INSERT INTO `log` VALUES (17687, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:07:00.000000');
INSERT INTO `log` VALUES (17688, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:10:00.000000');
INSERT INTO `log` VALUES (17689, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:10:00.000000');
INSERT INTO `log` VALUES (17690, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 00:11:00.000000');
INSERT INTO `log` VALUES (17691, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:11:00.000000');
INSERT INTO `log` VALUES (17692, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:11:00.000000');
INSERT INTO `log` VALUES (17693, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:11:00.000000');
INSERT INTO `log` VALUES (17694, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-14 00:11:00.000000');
INSERT INTO `log` VALUES (17695, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:11:00.000000');
INSERT INTO `log` VALUES (17696, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:11:00.000000');
INSERT INTO `log` VALUES (17697, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17698, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17699, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17700, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17701, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17702, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17703, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17704, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17705, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17706, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17707, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17708, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17709, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17710, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:14:00.000000');
INSERT INTO `log` VALUES (17711, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:15:00.000000');
INSERT INTO `log` VALUES (17712, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:15:00.000000');
INSERT INTO `log` VALUES (17713, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17714, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17715, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17716, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17717, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17718, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17719, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17720, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17721, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:16:00.000000');
INSERT INTO `log` VALUES (17722, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:17:00.000000');
INSERT INTO `log` VALUES (17723, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:17:00.000000');
INSERT INTO `log` VALUES (17724, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:17:00.000000');
INSERT INTO `log` VALUES (17725, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:17:00.000000');
INSERT INTO `log` VALUES (17726, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:17:00.000000');
INSERT INTO `log` VALUES (17727, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:17:00.000000');
INSERT INTO `log` VALUES (17728, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:18:00.000000');
INSERT INTO `log` VALUES (17729, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:18:00.000000');
INSERT INTO `log` VALUES (17730, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:18:00.000000');
INSERT INTO `log` VALUES (17731, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:21:00.000000');
INSERT INTO `log` VALUES (17732, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:21:00.000000');
INSERT INTO `log` VALUES (17733, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:21:00.000000');
INSERT INTO `log` VALUES (17734, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:21:00.000000');
INSERT INTO `log` VALUES (17735, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:21:00.000000');
INSERT INTO `log` VALUES (17736, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:25:00.000000');
INSERT INTO `log` VALUES (17737, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:25:00.000000');
INSERT INTO `log` VALUES (17738, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:31:00.000000');
INSERT INTO `log` VALUES (17739, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:31:00.000000');
INSERT INTO `log` VALUES (17740, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:31:00.000000');
INSERT INTO `log` VALUES (17741, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:31:00.000000');
INSERT INTO `log` VALUES (17742, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:31:00.000000');
INSERT INTO `log` VALUES (17743, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:31:00.000000');
INSERT INTO `log` VALUES (17744, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17745, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17746, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17747, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17748, '127.0.0.1', 'GET', '王源', '/heathy/deleteHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17749, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17750, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17751, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17752, '127.0.0.1', 'GET', '王源', '/heathy/deleteHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17753, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17754, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17755, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17756, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17757, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:32:00.000000');
INSERT INTO `log` VALUES (17758, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:34:00.000000');
INSERT INTO `log` VALUES (17759, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:34:00.000000');
INSERT INTO `log` VALUES (17760, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:34:00.000000');
INSERT INTO `log` VALUES (17761, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:34:00.000000');
INSERT INTO `log` VALUES (17762, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:34:00.000000');
INSERT INTO `log` VALUES (17763, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:34:00.000000');
INSERT INTO `log` VALUES (17764, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:35:00.000000');
INSERT INTO `log` VALUES (17765, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:35:00.000000');
INSERT INTO `log` VALUES (17766, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:35:00.000000');
INSERT INTO `log` VALUES (17767, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:35:00.000000');
INSERT INTO `log` VALUES (17768, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:35:00.000000');
INSERT INTO `log` VALUES (17769, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:35:00.000000');
INSERT INTO `log` VALUES (17770, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17771, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17772, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17773, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17774, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17775, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17776, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17777, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17778, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17779, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17780, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:36:00.000000');
INSERT INTO `log` VALUES (17781, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17782, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17783, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17784, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17785, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17786, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17787, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17788, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17789, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17790, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17791, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17792, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:38:00.000000');
INSERT INTO `log` VALUES (17793, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17794, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17795, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17796, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17797, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17798, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17799, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17800, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17801, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17802, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:39:00.000000');
INSERT INTO `log` VALUES (17803, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:40:00.000000');
INSERT INTO `log` VALUES (17804, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:40:00.000000');
INSERT INTO `log` VALUES (17805, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:40:00.000000');
INSERT INTO `log` VALUES (17806, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:40:00.000000');
INSERT INTO `log` VALUES (17807, '127.0.0.1', 'GET', '王源', '/heathy/deleteHeathy', '2022-05-14 00:40:00.000000');
INSERT INTO `log` VALUES (17808, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:40:00.000000');
INSERT INTO `log` VALUES (17809, '127.0.0.1', 'GET', '王源', '/heathy/deleteHeathy', '2022-05-14 00:40:00.000000');
INSERT INTO `log` VALUES (17810, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:40:00.000000');
INSERT INTO `log` VALUES (17811, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:41:00.000000');
INSERT INTO `log` VALUES (17812, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:41:00.000000');
INSERT INTO `log` VALUES (17813, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:41:00.000000');
INSERT INTO `log` VALUES (17814, '127.0.0.1', 'GET', '王源', '/heathy/deleteHeathy', '2022-05-14 00:41:00.000000');
INSERT INTO `log` VALUES (17815, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:41:00.000000');
INSERT INTO `log` VALUES (17816, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:41:00.000000');
INSERT INTO `log` VALUES (17817, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:41:00.000000');
INSERT INTO `log` VALUES (17818, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:41:00.000000');
INSERT INTO `log` VALUES (17819, '127.0.0.1', 'GET', '王源', '/heathy/deleteHeathy', '2022-05-14 00:42:00.000000');
INSERT INTO `log` VALUES (17820, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:42:00.000000');
INSERT INTO `log` VALUES (17821, '127.0.0.1', 'POST', '127.0.0.1', '/heathy/upload', '2022-05-14 00:43:00.000000');
INSERT INTO `log` VALUES (17822, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:43:00.000000');
INSERT INTO `log` VALUES (17823, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:43:00.000000');
INSERT INTO `log` VALUES (17824, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:43:00.000000');
INSERT INTO `log` VALUES (17825, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:43:00.000000');
INSERT INTO `log` VALUES (17826, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:45:00.000000');
INSERT INTO `log` VALUES (17827, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:45:00.000000');
INSERT INTO `log` VALUES (17828, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:45:00.000000');
INSERT INTO `log` VALUES (17829, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:45:00.000000');
INSERT INTO `log` VALUES (17830, '127.0.0.1', 'GET', '127.0.0.1', '/life/download', '2022-05-14 00:46:00.000000');
INSERT INTO `log` VALUES (17831, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17832, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17833, '127.0.0.1', 'GET', '王源', '/heathy/deleteHeathy', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17834, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17835, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17836, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17837, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17838, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17839, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17840, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17841, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17842, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17843, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17844, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17845, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17846, '127.0.0.1', 'GET', '王源', '/familyDiease/findDiease', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17847, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17848, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17849, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17850, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17851, '127.0.0.1', 'GET', '127.0.0.1', '/nowDiease/download', '2022-05-14 00:47:00.000000');
INSERT INTO `log` VALUES (17852, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:48:00.000000');
INSERT INTO `log` VALUES (17853, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 00:48:00.000000');
INSERT INTO `log` VALUES (17854, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:48:00.000000');
INSERT INTO `log` VALUES (17855, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 00:48:00.000000');
INSERT INTO `log` VALUES (17856, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-14 00:50:00.000000');
INSERT INTO `log` VALUES (17857, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:50:00.000000');
INSERT INTO `log` VALUES (17858, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:50:00.000000');
INSERT INTO `log` VALUES (17859, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:50:00.000000');
INSERT INTO `log` VALUES (17860, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:50:00.000000');
INSERT INTO `log` VALUES (17861, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:50:00.000000');
INSERT INTO `log` VALUES (17862, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:50:00.000000');
INSERT INTO `log` VALUES (17863, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17864, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17865, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17866, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17867, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17868, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17869, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17870, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17871, '127.0.0.1', 'GET', '王源', '/familyDiease/findDiease', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17872, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17873, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17874, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17875, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17876, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:51:00.000000');
INSERT INTO `log` VALUES (17877, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17878, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17879, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17880, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17881, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17882, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17883, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17884, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17885, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:52:00.000000');
INSERT INTO `log` VALUES (17886, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17887, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17888, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17889, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17890, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17891, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17892, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17893, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17894, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17895, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17896, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17897, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17898, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17899, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17900, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17901, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17902, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17903, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17904, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:53:00.000000');
INSERT INTO `log` VALUES (17905, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17906, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17907, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17908, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17909, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17910, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17911, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17912, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17913, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17914, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17915, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17916, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 00:55:00.000000');
INSERT INTO `log` VALUES (17917, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17918, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17919, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17920, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17921, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17922, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17923, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17924, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17925, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17926, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17927, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17928, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17929, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17930, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17931, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17932, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17933, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17934, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17935, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17936, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17937, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17938, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17939, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17940, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17941, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17942, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17943, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17944, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17945, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17946, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17947, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17948, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17949, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17950, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17951, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17952, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17953, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 00:57:00.000000');
INSERT INTO `log` VALUES (17954, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17955, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17956, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17957, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17958, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17959, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17960, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17961, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17962, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17963, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17964, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17965, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17966, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17967, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17968, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17969, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17970, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17971, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17972, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17973, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17974, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17975, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17976, '127.0.0.1', 'POST', '冯临', '/user/updateStatusAppoint', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17977, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17978, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17979, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17980, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17981, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17982, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17983, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17984, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17985, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17986, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17987, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17988, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17989, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17990, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17991, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17992, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17993, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17994, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17995, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17996, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17997, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17998, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (17999, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18000, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18001, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18002, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18003, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18004, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18005, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18006, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18007, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18008, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18009, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18010, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18011, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18012, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18013, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18014, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18015, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18016, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18017, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18018, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18019, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18020, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 00:58:00.000000');
INSERT INTO `log` VALUES (18021, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 08:05:00.000000');
INSERT INTO `log` VALUES (18022, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 08:05:00.000000');
INSERT INTO `log` VALUES (18023, '127.0.0.1', 'POST', '冯临', '/user/UpdateUser', '2022-05-14 08:08:00.000000');
INSERT INTO `log` VALUES (18024, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 08:08:00.000000');
INSERT INTO `log` VALUES (18025, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 13:47:00.000000');
INSERT INTO `log` VALUES (18026, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 13:47:00.000000');
INSERT INTO `log` VALUES (18027, '127.0.0.1', 'POST', '冯临', '/user/UpdateUser', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18028, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18029, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18030, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18031, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18032, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18033, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18034, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18035, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18036, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18037, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18038, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18039, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18040, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18041, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18042, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18043, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18044, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18045, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18046, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18047, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18048, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18049, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18050, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18051, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18052, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18053, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18054, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18055, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18056, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18057, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18058, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 13:49:00.000000');
INSERT INTO `log` VALUES (18059, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18060, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18061, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18062, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18063, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18064, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18065, '127.0.0.1', 'POST', '冯临', '/user/updateStatusAppoint', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18066, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18067, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18068, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18069, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18070, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18071, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18072, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18073, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18074, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18075, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18076, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18077, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18078, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18079, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18080, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18081, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18082, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18083, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18084, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18085, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18086, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18087, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18088, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18089, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18090, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18091, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18092, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18093, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18094, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18095, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18096, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18097, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18098, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18099, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18100, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18101, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18102, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18103, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18104, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18105, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18106, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18107, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18108, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:50:00.000000');
INSERT INTO `log` VALUES (18109, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18110, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18111, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18112, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18113, '127.0.0.1', 'GET', '冯临', '/user/detailsArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18114, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18115, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18116, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18117, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18118, '127.0.0.1', 'POST', '127.0.0.1', '/images/upload', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18119, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18120, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18121, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18122, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18123, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 13:52:00.000000');
INSERT INTO `log` VALUES (18124, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 13:53:00.000000');
INSERT INTO `log` VALUES (18125, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 13:53:00.000000');
INSERT INTO `log` VALUES (18126, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 13:53:00.000000');
INSERT INTO `log` VALUES (18127, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 13:54:00.000000');
INSERT INTO `log` VALUES (18128, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-14 13:54:00.000000');
INSERT INTO `log` VALUES (18129, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-14 13:54:00.000000');
INSERT INTO `log` VALUES (18130, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-14 13:54:00.000000');
INSERT INTO `log` VALUES (18131, '127.0.0.1', 'POST', '冯临', '/user/saveFamily', '2022-05-14 13:55:00.000000');
INSERT INTO `log` VALUES (18132, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-14 13:55:00.000000');
INSERT INTO `log` VALUES (18133, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-14 13:55:00.000000');
INSERT INTO `log` VALUES (18134, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:55:00.000000');
INSERT INTO `log` VALUES (18135, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-14 13:55:00.000000');
INSERT INTO `log` VALUES (18136, '127.0.0.1', 'GET', '王源', '/electron/findPeple', '2022-05-14 13:55:00.000000');
INSERT INTO `log` VALUES (18137, '127.0.0.1', 'POST', '王源', '/electron/saveOrUpdateElectron', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18138, '127.0.0.1', 'GET', '王源', '/electron/findPeple', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18139, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18140, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18141, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18142, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18143, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18144, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18145, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18146, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18147, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18148, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18149, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18150, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18151, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18152, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18153, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18154, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18155, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18156, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18157, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18158, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18159, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18160, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18161, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18162, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18163, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18164, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18165, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18166, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-14 13:57:00.000000');
INSERT INTO `log` VALUES (18167, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:58:00.000000');
INSERT INTO `log` VALUES (18168, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-14 13:58:00.000000');
INSERT INTO `log` VALUES (18169, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:58:00.000000');
INSERT INTO `log` VALUES (18170, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 13:58:00.000000');
INSERT INTO `log` VALUES (18171, '127.0.0.1', 'POST', '王源', '/heathy/saveOrUpdateHeathy', '2022-05-14 13:58:00.000000');
INSERT INTO `log` VALUES (18172, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-14 13:58:00.000000');
INSERT INTO `log` VALUES (18173, '127.0.0.1', 'GET', '127.0.0.1', '/heathy/download', '2022-05-14 13:58:00.000000');
INSERT INTO `log` VALUES (18174, '127.0.0.1', 'GET', '127.0.0.1', '/heathy/download', '2022-05-14 13:58:00.000000');
INSERT INTO `log` VALUES (18175, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18176, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18177, '127.0.0.1', 'POST', '王源', '/life/saveOrUpdateLife', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18178, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18179, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18180, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18181, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18182, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18183, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-14 13:59:00.000000');
INSERT INTO `log` VALUES (18184, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18185, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18186, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18187, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18188, '127.0.0.1', 'GET', '王源', '/nowDiease/deleteDiease', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18189, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18190, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18191, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18192, '127.0.0.1', 'GET', '王源', '/familyDiease/findDiease', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18193, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18194, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18195, '127.0.0.1', 'POST', '王源', '/sport/saveUpdateSport', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18196, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18197, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18198, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18199, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 14:00:00.000000');
INSERT INTO `log` VALUES (18200, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18201, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18202, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18203, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18204, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18205, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18206, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18207, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18208, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18209, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18210, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18211, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18212, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18213, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18214, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18215, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18216, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18217, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18218, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18219, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18220, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18221, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18222, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18223, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18224, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18225, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18226, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18227, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18228, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18229, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18230, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18231, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18232, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18233, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18234, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18235, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18236, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18237, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18238, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18239, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18240, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18241, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18242, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18243, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18244, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18245, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18246, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18247, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18248, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18249, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18250, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18251, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18252, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18253, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18254, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18255, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18256, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18257, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18258, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18259, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18260, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18261, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18262, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18263, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18264, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18265, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18266, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18267, '127.0.0.1', 'POST', '127.0.0.1', '/images/upload', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18268, '127.0.0.1', 'POST', '王源', '/foods/saveUpdateFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18269, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18270, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18271, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18272, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18273, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18274, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18275, '127.0.0.1', 'GET', '吴世康', '/electron/queryElectron', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18276, '127.0.0.1', 'GET', '吴世康', '/electron/queryElectron', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18277, '127.0.0.1', 'GET', '吴世康', '/electron/queryElectron', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18278, '127.0.0.1', 'GET', '吴世康', '/electron/queryElectron', '2022-05-14 14:01:00.000000');
INSERT INTO `log` VALUES (18279, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18280, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18281, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18282, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18283, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18284, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18285, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18286, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18287, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18288, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18289, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18290, '127.0.0.1', 'POST', '吴世康', '/store/saveUpdate', '2022-05-14 14:02:00.000000');
INSERT INTO `log` VALUES (18291, '127.0.0.1', 'GET', '吴世康', '/article/queryArticle', '2022-05-14 14:03:00.000000');
INSERT INTO `log` VALUES (18292, '127.0.0.1', 'GET', '吴世康', '/article/author', '2022-05-14 14:03:00.000000');
INSERT INTO `log` VALUES (18293, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-14 14:03:00.000000');
INSERT INTO `log` VALUES (18294, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-14 14:03:00.000000');
INSERT INTO `log` VALUES (18295, '127.0.0.1', 'GET', '吴世康', '/users/findUsers', '2022-05-14 14:03:00.000000');
INSERT INTO `log` VALUES (18296, '127.0.0.1', 'GET', '吴世康', '/users/findRoles', '2022-05-14 14:03:00.000000');
INSERT INTO `log` VALUES (18297, '127.0.0.1', 'GET', '吴世康', '/roles/findRoles', '2022-05-14 14:03:00.000000');
INSERT INTO `log` VALUES (18298, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18299, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18300, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18301, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18302, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18303, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18304, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18305, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18306, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18307, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18308, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18309, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18310, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18311, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:39:00.000000');
INSERT INTO `log` VALUES (18312, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-14 14:40:00.000000');
INSERT INTO `log` VALUES (18313, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-14 14:40:00.000000');
INSERT INTO `log` VALUES (18314, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-14 15:16:00.000000');
INSERT INTO `log` VALUES (18315, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18316, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18317, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18318, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18319, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18320, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18321, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18322, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18323, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18324, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18325, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18326, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18327, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18328, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18329, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18330, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18331, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18332, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18333, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18334, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18335, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18336, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18337, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18338, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18339, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18340, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18341, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18342, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18343, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18344, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18345, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18346, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18347, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18348, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18349, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18350, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18351, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18352, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18353, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18354, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18355, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18356, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18357, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18358, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18359, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18360, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18361, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-26 10:28:00.000000');
INSERT INTO `log` VALUES (18362, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-26 10:29:00.000000');
INSERT INTO `log` VALUES (18363, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18364, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18365, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18366, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18367, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18368, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18369, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18370, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18371, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18372, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18373, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18374, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18375, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18376, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18377, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18378, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18379, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18380, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18381, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18382, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18383, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18384, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18385, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18386, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18387, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18388, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18389, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18390, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18391, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18392, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18393, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18394, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18395, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18396, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18397, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18398, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18399, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18400, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18401, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18402, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18403, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18404, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18405, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:08:00.000000');
INSERT INTO `log` VALUES (18406, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18407, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18408, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18409, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18410, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18411, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18412, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18413, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18414, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18415, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18416, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18417, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18418, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18419, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18420, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18421, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18422, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18423, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18424, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18425, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18426, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18427, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18428, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18429, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18430, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18431, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18432, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18433, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18434, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18435, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18436, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18437, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18438, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18439, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18440, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18441, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18442, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18443, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18444, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18445, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18446, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18447, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18448, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18449, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18450, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18451, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18452, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18453, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18454, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18455, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18456, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18457, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18458, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18459, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18460, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:09:00.000000');
INSERT INTO `log` VALUES (18461, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:16:00.000000');
INSERT INTO `log` VALUES (18462, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:46:00.000000');
INSERT INTO `log` VALUES (18463, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18464, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18465, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18466, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18467, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18468, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18469, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18470, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18471, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18472, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18473, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18474, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18475, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18476, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18477, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18478, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18479, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18480, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18481, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18482, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18483, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18484, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18485, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18486, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18487, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18488, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18489, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18490, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18491, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18492, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18493, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18494, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18495, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18496, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-27 10:47:00.000000');
INSERT INTO `log` VALUES (18497, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18498, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18499, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18500, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18501, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18502, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18503, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18504, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18505, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18506, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18507, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18508, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18509, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18510, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:48:00.000000');
INSERT INTO `log` VALUES (18511, '127.0.0.1', 'POST', '冯临', '/user/UpdateUser', '2022-05-27 10:59:00.000000');
INSERT INTO `log` VALUES (18512, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 10:59:00.000000');
INSERT INTO `log` VALUES (18513, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18514, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18515, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18516, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18517, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18518, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18519, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18520, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18521, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18522, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18523, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18524, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18525, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18526, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18527, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18528, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18529, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18530, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18531, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18532, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18533, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18534, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18535, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18536, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18537, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18538, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18539, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18540, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18541, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18542, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18543, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18544, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18545, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18546, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18547, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18548, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18549, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18550, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:00:00.000000');
INSERT INTO `log` VALUES (18551, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18552, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18553, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18554, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18555, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18556, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18557, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18558, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18559, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18560, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18561, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18562, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18563, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18564, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18565, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18566, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18567, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18568, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18569, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18570, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18571, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18572, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18573, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18574, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18575, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18576, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18577, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18578, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18579, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18580, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-27 11:01:00.000000');
INSERT INTO `log` VALUES (18581, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-27 11:02:00.000000');
INSERT INTO `log` VALUES (18582, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-27 11:02:00.000000');
INSERT INTO `log` VALUES (18583, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-27 11:02:00.000000');
INSERT INTO `log` VALUES (18584, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-27 11:02:00.000000');
INSERT INTO `log` VALUES (18585, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-27 11:02:00.000000');
INSERT INTO `log` VALUES (18586, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:02:00.000000');
INSERT INTO `log` VALUES (18587, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:02:00.000000');
INSERT INTO `log` VALUES (18588, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:02:00.000000');
INSERT INTO `log` VALUES (18589, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18590, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18591, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18592, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18593, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18594, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18595, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18596, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18597, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18598, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18599, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18600, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18601, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18602, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18603, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18604, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18605, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18606, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18607, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18608, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18609, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18610, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18611, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18612, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18613, '127.0.0.1', 'GET', '冯临', '/user/queryArticle', '2022-05-27 11:08:00.000000');
INSERT INTO `log` VALUES (18614, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-27 11:13:00.000000');
INSERT INTO `log` VALUES (18615, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-27 11:13:00.000000');
INSERT INTO `log` VALUES (18616, '127.0.0.1', 'GET', '王源', '/user/queryArticle', '2022-05-27 11:13:00.000000');
INSERT INTO `log` VALUES (18617, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18618, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18619, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18620, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18621, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18622, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18623, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18624, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18625, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18626, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18627, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18628, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18629, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18630, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18631, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18632, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18633, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18634, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18635, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18636, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18637, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18638, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18639, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18640, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18641, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18642, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18643, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18644, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18645, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18646, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18647, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18648, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18649, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18650, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18651, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18652, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:14:00.000000');
INSERT INTO `log` VALUES (18653, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18654, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18655, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18656, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18657, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18658, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18659, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18660, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18661, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18662, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18663, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18664, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18665, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18666, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18667, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18668, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18669, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18670, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18671, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18672, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18673, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18674, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 11:16:00.000000');
INSERT INTO `log` VALUES (18675, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 11:27:00.000000');
INSERT INTO `log` VALUES (18676, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18677, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18678, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18679, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18680, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18681, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18682, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18683, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18684, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18685, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18686, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18687, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18688, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18689, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18690, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18691, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18692, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18693, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 11:33:00.000000');
INSERT INTO `log` VALUES (18694, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18695, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18696, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18697, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18698, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18699, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18700, '127.0.0.1', 'GET', '王源', '/life/queryLife', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18701, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18702, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18703, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18704, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18705, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-27 13:38:00.000000');
INSERT INTO `log` VALUES (18706, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-27 13:39:00.000000');
INSERT INTO `log` VALUES (18707, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 13:39:00.000000');
INSERT INTO `log` VALUES (18708, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-27 14:53:00.000000');
INSERT INTO `log` VALUES (18709, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:53:00.000000');
INSERT INTO `log` VALUES (18710, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:53:00.000000');
INSERT INTO `log` VALUES (18711, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-27 14:53:00.000000');
INSERT INTO `log` VALUES (18712, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:53:00.000000');
INSERT INTO `log` VALUES (18713, '127.0.0.1', 'GET', '王源', '/familyDiease/findDiease', '2022-05-27 14:53:00.000000');
INSERT INTO `log` VALUES (18714, '127.0.0.1', 'GET', '王源', '/sport/findAllSport', '2022-05-27 14:53:00.000000');
INSERT INTO `log` VALUES (18715, '127.0.0.1', 'GET', '王源', '/foods/findAllFood', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18716, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18717, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18718, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18719, '127.0.0.1', 'GET', '王源', '/nowDiease/findDiease', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18720, '127.0.0.1', 'GET', '王源', '/historyDiease/queryDiease', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18721, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18722, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18723, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-27 14:54:00.000000');
INSERT INTO `log` VALUES (18724, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:55:00.000000');
INSERT INTO `log` VALUES (18725, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-27 14:55:00.000000');
INSERT INTO `log` VALUES (18726, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-27 14:55:00.000000');
INSERT INTO `log` VALUES (18727, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18728, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18729, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18730, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18731, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18732, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18733, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18734, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18735, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18736, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18737, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18738, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18739, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18740, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18741, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18742, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18743, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18744, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18745, '127.0.0.1', 'GET', '冯临', '/user/panAppoint', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18746, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18747, '127.0.0.1', 'POST', '冯临', '/user/saveAppoint', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18748, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18749, '127.0.0.1', 'GET', '王源', '/user/queryDoctor', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18750, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18751, '127.0.0.1', 'GET', '王源', '/electron/queryElectron', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18752, '127.0.0.1', 'GET', '王源', '/electron/findPeple', '2022-05-27 14:56:00.000000');
INSERT INTO `log` VALUES (18753, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 14:58:00.000000');
INSERT INTO `log` VALUES (18754, '127.0.0.1', 'POST', '冯临', '/user/UpdateUser', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18755, '127.0.0.1', 'GET', '冯临', '/user/querFindAll', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18756, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18757, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18758, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18759, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18760, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18761, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18762, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18763, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18764, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18765, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18766, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18767, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18768, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18769, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18770, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18771, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18772, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18773, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18774, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18775, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18776, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18777, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18778, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18779, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18780, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18781, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18782, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18783, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18784, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18785, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18786, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18787, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18788, '127.0.0.1', 'GET', '冯临', '/user/findDiease', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18789, '127.0.0.1', 'GET', '冯临', '/user/familyDiease', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18790, '127.0.0.1', 'GET', '冯临', '/user/queryLife', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18791, '127.0.0.1', 'GET', '冯临', '/electron/findPeple', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18792, '127.0.0.1', 'GET', '冯临', '/user/foryouFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18793, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18794, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18795, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18796, '127.0.0.1', 'GET', '冯临', '/user/foryouSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18797, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18798, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18799, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18800, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18801, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18802, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18803, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18804, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18805, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18806, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18807, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18808, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18809, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18810, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18811, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18812, '127.0.0.1', 'GET', '冯临', '/user/findFood', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18813, '127.0.0.1', 'GET', '冯临', '/user/findSport', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18814, '127.0.0.1', 'GET', '冯临', '/user/userappoint', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18815, '127.0.0.1', 'GET', '冯临', '/user/queryDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18816, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18817, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18818, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18819, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18820, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18821, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18822, '127.0.0.1', 'GET', '冯临', '/user/findDoctor', '2022-05-27 14:59:00.000000');
INSERT INTO `log` VALUES (18823, '127.0.0.1', 'GET', '王源', '/heathy/queryHeathy', '2022-05-27 15:20:00.000000');
INSERT INTO `log` VALUES (18824, '127.0.0.1', 'GET', '王源', '/findAll/user', '2022-05-27 15:20:00.000000');
INSERT INTO `log` VALUES (18825, '127.0.0.1', 'GET', '吴世康', '/resident/queryResident', '2022-05-27 15:20:00.000000');
INSERT INTO `log` VALUES (18826, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-27 15:20:00.000000');
INSERT INTO `log` VALUES (18827, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-27 15:20:00.000000');
INSERT INTO `log` VALUES (18828, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-27 15:20:00.000000');
INSERT INTO `log` VALUES (18829, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-27 15:21:00.000000');
INSERT INTO `log` VALUES (18830, '127.0.0.1', 'GET', '吴世康', '/medicine/delete', '2022-05-27 15:21:00.000000');
INSERT INTO `log` VALUES (18831, '127.0.0.1', 'POST', '127.0.0.1', '/images/upload', '2022-05-27 15:21:00.000000');
INSERT INTO `log` VALUES (18832, '127.0.0.1', 'POST', '吴世康', '/medicine/saveUpdate', '2022-05-27 15:21:00.000000');
INSERT INTO `log` VALUES (18833, '127.0.0.1', 'GET', '吴世康', '/medicine/findAll', '2022-05-27 15:21:00.000000');
INSERT INTO `log` VALUES (18834, '127.0.0.1', 'GET', '吴世康', '/roles/findRoles', '2022-05-27 15:21:00.000000');
INSERT INTO `log` VALUES (18835, '127.0.0.1', 'GET', '吴世康', '/users/findUsers', '2022-05-27 15:21:00.000000');
INSERT INTO `log` VALUES (18836, '127.0.0.1', 'GET', '吴世康', '/users/findRoles', '2022-05-27 15:21:00.000000');
INSERT INTO `log` VALUES (18837, '127.0.0.1', 'GET', '吴世康', '/roles/findRoles', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18838, '127.0.0.1', 'GET', '吴世康', '/article/queryArticle', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18839, '127.0.0.1', 'GET', '吴世康', '/article/author', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18840, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18841, '127.0.0.1', 'GET', '吴世康', '/artilcle/find', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18842, '127.0.0.1', 'GET', '吴世康', '/article/queryArticle', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18843, '127.0.0.1', 'GET', '吴世康', '/article/author', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18844, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18845, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18846, '127.0.0.1', 'GET', '吴世康', '/appoint/findAppoint', '2022-05-27 15:22:00.000000');
INSERT INTO `log` VALUES (18847, '127.0.0.1', 'GET', '吴世康', '/user/queryDoctor', '2022-05-27 15:23:00.000000');
INSERT INTO `log` VALUES (18848, '127.0.0.1', 'GET', '吴世康', '/findAll/user', '2022-05-27 15:23:00.000000');
INSERT INTO `log` VALUES (18849, '127.0.0.1', 'GET', '吴世康', '/electron/queryElectron', '2022-05-27 15:23:00.000000');
INSERT INTO `log` VALUES (18850, '127.0.0.1', 'GET', '吴世康', '/store/findAll', '2022-05-27 15:23:00.000000');
INSERT INTO `log` VALUES (18851, '127.0.0.1', 'GET', '吴世康', '/store/findName', '2022-05-27 15:23:00.000000');

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `scale` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `batch_num` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approval_num` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `effects` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '疗效',
  `consumption` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用量',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of medicine
-- ----------------------------
INSERT INTO `medicine` VALUES (5, '硝苯地平控释片', '30mg', '2222', ' 国药准字H20000079', ' 用以治疗高血压和心绞痛', '口服：一次30mg，一日1次。本品口服时应整粒吞服，不得嚼碎。', 'https://img.yaopinnet.com/img500/202112/rfr13c1640787953.gif');
INSERT INTO `medicine` VALUES (6, '神奇R 气血康口服液', '10ml*12支', 'F7473247', '国药准字Z20003073', '健脾固本，滋阴润燥，生津止咳。用于神倦乏力，气短心悸，阴虚津少，口干舌燥。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', '2415808157270718.jpg');
INSERT INTO `medicine` VALUES (7, '神奇R 抗病毒口服液', '10ml*15支', 'C120213', '国药准字Z32021255', '清热祛湿，凉血解毒。用于风热感冒，流感。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/201905/2415797yklhvoti1.jpg');
INSERT INTO `medicine` VALUES (8, '消朦片', '每片重0.5g', '201206A', '国药准字Z45021267', '功能主治：明目退翳，镇静安神。用于角膜云翳、斑翳、白斑、白内障及神经衰弱。 包装规格：12片*3小盒，160中盒/件', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/201805/2250705255250518.jpg');
INSERT INTO `medicine` VALUES (9, '四季感冒片', '14片*2板/盒', 'VW1753E', '国药准字Z20063866', '清热解表。用于四季风寒感冒引起的发热头痛，鼻流清涕，咳嗽口干，咽喉疼痛，恶心厌食', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', '2415808157270718.jpg');
INSERT INTO `medicine` VALUES (10, '风湿安泰片', '0.28g*12片*2板', 'VW1753E', '国药准字Z14020316', '舒筋活血，祛风镇痛。用于筋骨麻木，手足拘挛，腰腿疼痛，风湿性关节炎。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/202105/a3x7nbn0eret8pdn.jpg');
INSERT INTO `medicine` VALUES (11, '骨刺平片', '铝塑 12片×5板', '33672S', '国药准字Z14020590', '补精壮髓,壮筋健骨，通络止痛。用于骨质增生(包括肥大性腰椎炎，胸椎炎，颈椎综合症，四支骨节增生)。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/202012/o3ijahqxc18f1grn.jpg');
INSERT INTO `medicine` VALUES (12, '防芷鼻炎片', '36片×2小盒/中盒×200中盒/件', '3469H', '国药准字Z14021846', '补精壮髓,壮筋健骨，通络止痛。用于骨质增生(包括肥大性腰椎炎，胸椎炎，颈椎综合症，四支骨节增生。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/202105/2bk6zmv2a6zg304l.jpg');
INSERT INTO `medicine` VALUES (13, '清咽片', '0.25克×12片×4板', 'H58345', '国药准字Z14020324', '清凉解热，生津止渴。用于咽喉肿痛，声嘶音哑，口干舌燥，咽下不利。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/202105/u77hbvcxyekxxq5r.jpg');
INSERT INTO `medicine` VALUES (14, '益肺胶囊', '0.3g*12粒*2板', '34467G', '国药准字Z14020261', '补肾益肺，清热化痰，止咳平喘。用于久病咳喘，胸满多痰。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/202105/3pxm6ip2r7fnzsam.jpg');
INSERT INTO `medicine` VALUES (15, '净石灵片', '0.3g*10片*3板', 'FG4572', '国药准字Z20080439', '补肾、利尿、排石。用于治疗肾结石、输尿管结石、膀胱结石以及由结石引起的肾盂积水、尿路感染等。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/202105/wlj09h1b8304vdpk.jpg');
INSERT INTO `medicine` VALUES (16, '甲亢灵颗粒', '9g×18袋', 'FL58924', '国药准字Z20060400', '平肝潜阳，软坚散结。用于具有心悸、汗多、烦躁易怒、咽干、脉数等症状的甲状腺机能亢进症', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/202105/m0hppkolpqqxhf1c.jpg');
INSERT INTO `medicine` VALUES (17, '消渴降糖胶囊', '0.3g×12粒×3板', 'AH6532', '国药准字Z14021660', '生津止渴，甘平养胃，涩敛固阴。用于多饮，多尿，多食，消瘦, 体倦无力，尿糖及血糖升高之消渴症；轻度及中度成年型糖尿病。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img500/202105/e16yve1xnct1z8fh.jpg');
INSERT INTO `medicine` VALUES (18, '桑菊感冒片', '60片×400盒/件\n', 'F7473269', '国药准字Z41020434', '疏风清热，宣肺止咳。用于风热感冒初起，头痛，咳嗽，口干，咽痛。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img/202002/2668378g3thqenxx.jpg');
INSERT INTO `medicine` VALUES (19, '罗汉果止咳胶囊', '0.35g*48粒/盒', 'F7473278', '国药准字Z20090246', '祛痰止咳。用于感冒咳嗽及支气管炎。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img/202110/v1wrgi1635258981.jpg');
INSERT INTO `medicine` VALUES (20, '复方板蓝根颗粒', '每袋装15g(相当原生药15g)', 'F74732858', '国药准字z51021895', '清热解毒，凉血。用于风热感冒，咽喉肿痛。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img/202203/A1223148505345jg.jpg');
INSERT INTO `medicine` VALUES (21, '夏桑菊颗粒', '每袋装10g', 'F7473225', '国药准字z51020157', '清肝明目，疏风散热，除湿痹，解疮毒。用于风热感冒，目赤头痛，头晕耳鸣，咽喉肿痛，疔疮肿毒等症，并可作清凉饮料。', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img/201607/2227693299150716.jpg');
INSERT INTO `medicine` VALUES (22, '阿莫西林胶囊', '0粒*500盒', 'F7473242', '国药准字H20033210', '．溶血链球菌、肺炎链球菌、葡萄球菌或流感嗜血杆菌所致中耳炎、鼻窦炎、咽炎、扁桃体炎等上呼吸道感染。2．大肠埃希菌、奇异变形杆菌或粪肠球菌所致的泌尿生殖道感染。3．溶血链球菌、葡萄球菌或大肠埃希菌所致的皮肤软组织感染。4．溶血链球菌、肺炎链球菌、葡萄球菌或流感嗜血杆菌所致急性支气管炎、肺炎等下呼吸道感染。5．急性单纯性淋病。6．本品尚可用于', '口服，一次10毫升，一日2～3次（早饭前和午、晚饭后各服一次）。', 'https://img.yaopinnet.com/img/201807/2415537267260718.jpg');
INSERT INTO `medicine` VALUES (23, '老夫子益夫净抑菌乳膏', '15g/支', 'F7473241', '赣卫消证字(2012)第0039号', '用于皮肤的抑菌作用，皮肤表面金黄色葡萄球菌、大肠杆菌、白色念珠菌的抑菌作用', '一天涂两次', 'https://img.yaopinnet.com/img/201904/242742hkcevfxer7.jpg');
INSERT INTO `medicine` VALUES (24, '益夫净癣毒清', '20g/支', 'F7473245', '赣卫消证字(2012)第0039号', '用于以下问题皮夫的抑菌作用（如:手足癣、体股癣、花斑癣（汗斑）、牛皮癣、头癣、疥疮、蚊虫叮咬、痤疮、淹裆等问题皮夫）及皮夫表面金黄色葡萄球菌、大肠杆菌、白色念珠菌的抑菌作用', '一天涂两次', 'https://img.yaopinnet.com/img/201809/2427682087180918.jpg');
INSERT INTO `medicine` VALUES (25, '益夫净脚气王喷剂', '30ml/瓶\n', 'F7473249', '赣卫消证字（2012）第0039号', '用于以下问题皮肤的抑菌作用（如：脚气、脚臭、脚癣、烂脚丫、汗脚、香港脚、脱皮、起水泡等问题皮肤）及皮肤表面金黄色葡萄球菌、大肠杆菌、白色念珠菌的抑菌作用。', '一天涂两次', 'https://img.yaopinnet.com/img/201809/2427357846170918.jpg');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gotoId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fromId` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `body` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (80, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651024701357,\"content\":\"我测试\",\"textContent\":\"我测试\"}}');
INSERT INTO `message` VALUES (81, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651024706177,\"content\":\"测试\",\"textContent\":\"测试\"}}');
INSERT INTO `message` VALUES (82, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651025025281,\"content\":\"成功了嘛\",\"textContent\":\"成功了嘛\"}}');
INSERT INTO `message` VALUES (83, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651025031984,\"content\":\"没有嘛\",\"textContent\":\"没有嘛\"}}');
INSERT INTO `message` VALUES (84, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651025080475,\"content\":\"没有哈哈哈\",\"textContent\":\"没有哈哈哈\"}}');
INSERT INTO `message` VALUES (85, 'user-message', '33', '33', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651026003483,\"content\":\"<span class=\'face face0\' title=\'微笑\'></span>\",\"textContent\":\"〖微笑〗\"}}');
INSERT INTO `message` VALUES (86, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651026093486,\"content\":\"啊？\",\"textContent\":\"啊？\"}}');
INSERT INTO `message` VALUES (87, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651026116350,\"content\":\"妈耶\",\"textContent\":\"妈耶\"}}');
INSERT INTO `message` VALUES (88, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651026122651,\"content\":\"有问题了\",\"textContent\":\"有问题了\"}}');
INSERT INTO `message` VALUES (89, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651026124642,\"content\":\"哥哥\",\"textContent\":\"哥哥\"}}');
INSERT INTO `message` VALUES (90, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651026140543,\"content\":\"emm\",\"textContent\":\"emm\"}}');
INSERT INTO `message` VALUES (91, 'user-message', '1', '33', '{\"type\":\"server\",\"gotoId\":\"1\",\"fromId\":\"33\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651026152593,\"content\":\"什么问题\",\"textContent\":\"什么问题\"}}');
INSERT INTO `message` VALUES (92, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651026851483,\"content\":\"哈哈哈哈\",\"textContent\":\"哈哈哈哈\"}}');
INSERT INTO `message` VALUES (93, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651026856082,\"content\":\"这里陈工了\",\"textContent\":\"这里陈工了\"}}');
INSERT INTO `message` VALUES (94, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651026862519,\"content\":\"没问题哈哈哈\",\"textContent\":\"没问题哈哈哈\"}}');
INSERT INTO `message` VALUES (95, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651028190855,\"content\":\"有问题嘛\",\"textContent\":\"有问题嘛\"}}');
INSERT INTO `message` VALUES (96, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651028196977,\"content\":\"没得问题\",\"textContent\":\"没得问题\"}}');
INSERT INTO `message` VALUES (97, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651028200521,\"content\":\"对不对\",\"textContent\":\"对不对\"}}');
INSERT INTO `message` VALUES (98, 'user-message', '1', '33', '{\"type\":\"server\",\"gotoId\":\"1\",\"fromId\":\"33\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651028245759,\"content\":\"啊，对对对\",\"textContent\":\"啊，对对对\"}}');
INSERT INTO `message` VALUES (99, 'user-message', '33', '23', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651028553697,\"content\":\"hello\",\"textContent\":\"hello\"}}');
INSERT INTO `message` VALUES (100, 'user-message', '23', '1', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"1\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651028754246,\"content\":\"跟你说吧爸爸\",\"textContent\":\"跟你说吧爸爸\"}}');
INSERT INTO `message` VALUES (101, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651028825614,\"content\":\"哦哦\",\"textContent\":\"哦哦\"}}');
INSERT INTO `message` VALUES (102, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651028827511,\"content\":\"乐姐\",\"textContent\":\"乐姐\"}}');
INSERT INTO `message` VALUES (103, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651031365535,\"content\":\"哈哈哈\",\"textContent\":\"哈哈哈\"}}');
INSERT INTO `message` VALUES (104, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651031946558,\"content\":\"而命名？\",\"textContent\":\"而命名？\"}}');
INSERT INTO `message` VALUES (105, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651031971152,\"content\":\"哦？\",\"textContent\":\"哦？\"}}');
INSERT INTO `message` VALUES (106, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651032105309,\"content\":\"<span class=\'face face16\' title=\'酷\'></span>\",\"textContent\":\"〖酷〗\"}}');
INSERT INTO `message` VALUES (107, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651032127874,\"content\":\"<span class=\'face face18\' title=\'抓狂\'></span>\",\"textContent\":\"〖抓狂〗\"}}');
INSERT INTO `message` VALUES (108, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651032169819,\"content\":\"<span class=\'face face61\' title=\'饭\'></span>\",\"textContent\":\"〖饭〗\"}}');
INSERT INTO `message` VALUES (109, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651032231057,\"content\":\"<span class=\'face face75\' title=\'月亮\'></span>\",\"textContent\":\"〖月亮〗\"}}');
INSERT INTO `message` VALUES (110, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651032242259,\"content\":\"<span class=\'face face15\' title=\'难过\'></span>\",\"textContent\":\"〖难过〗\"}}');
INSERT INTO `message` VALUES (111, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651032250675,\"content\":\"<span class=\'face face46\' title=\'右哼哼\'></span>\",\"textContent\":\"〖右哼哼〗\"}}');
INSERT INTO `message` VALUES (112, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651032265853,\"content\":\"<span class=\'face face17\' title=\'冷汗\'></span>\",\"textContent\":\"〖冷汗〗\"}}');
INSERT INTO `message` VALUES (113, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651033513774,\"content\":\"咋了\",\"textContent\":\"咋了\"}}');
INSERT INTO `message` VALUES (114, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651033568369,\"content\":\"hello\",\"textContent\":\"hello\"}}');
INSERT INTO `message` VALUES (115, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651033855222,\"content\":\"<span class=\'face face16\' title=\'酷\'></span>\",\"textContent\":\"〖酷〗\"}}');
INSERT INTO `message` VALUES (116, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651034669859,\"content\":\"啊\",\"textContent\":\"啊\"}}');
INSERT INTO `message` VALUES (117, 'user-message', '33', '33', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651035411119,\"content\":\"<span class=\'face face1\' title=\'撇嘴\'></span>\",\"textContent\":\"〖撇嘴〗\"}}');
INSERT INTO `message` VALUES (118, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651035417950,\"content\":\"<span class=\'face face1\' title=\'撇嘴\'></span>\",\"textContent\":\"〖撇嘴〗\"}}');
INSERT INTO `message` VALUES (119, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651038630728,\"content\":\"我测试一下我走了\",\"textContent\":\"我测试一下我走了\"}}');
INSERT INTO `message` VALUES (120, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651038659439,\"content\":\"黑莓\",\"textContent\":\"黑莓\"}}');
INSERT INTO `message` VALUES (121, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651038785815,\"content\":\"<span class=\'face face1\' title=\'撇嘴\'></span>\",\"textContent\":\"〖撇嘴〗\"}}');
INSERT INTO `message` VALUES (122, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651038849107,\"content\":\"我在测试一下\",\"textContent\":\"我在测试一下\"}}');
INSERT INTO `message` VALUES (123, 'user-message', '23', '33', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"33\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651039691667,\"content\":\"<span class=\'face face2\' title=\'色\'></span>\",\"textContent\":\"〖色〗\"}}');
INSERT INTO `message` VALUES (124, 'user-message', '23', '33', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"33\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651039712967,\"content\":\"傻逼刘张群\",\"textContent\":\"傻逼刘张群\"}}');
INSERT INTO `message` VALUES (125, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651039919756,\"content\":\"<span class=\'face face1\' title=\'撇嘴\'></span>\",\"textContent\":\"〖撇嘴〗\"}}');
INSERT INTO `message` VALUES (126, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651039953907,\"content\":\"拜拜\",\"textContent\":\"拜拜\"}}');
INSERT INTO `message` VALUES (127, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651040102247,\"content\":\"emem?\",\"textContent\":\"emem?\"}}');
INSERT INTO `message` VALUES (128, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651040424188,\"content\":\"hello \",\"textContent\":\"hello \"}}');
INSERT INTO `message` VALUES (129, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651040438031,\"content\":\"我上线了\",\"textContent\":\"我上线了\"}}');
INSERT INTO `message` VALUES (130, 'user-message', '1', '33', '{\"type\":\"server\",\"gotoId\":\"1\",\"fromId\":\"33\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651040458729,\"content\":\"怎么回事\",\"textContent\":\"怎么回事\"}}');
INSERT INTO `message` VALUES (131, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651040466493,\"content\":\"a?\",\"textContent\":\"a?\"}}');
INSERT INTO `message` VALUES (132, 'user-message', '33', '1', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"1\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651040478231,\"content\":\"啊\",\"textContent\":\"啊\"}}');
INSERT INTO `message` VALUES (133, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651040483190,\"content\":\"<span class=\'face face30\' title=\'奋斗\'></span>\",\"textContent\":\"〖奋斗〗\"}}');
INSERT INTO `message` VALUES (134, 'user-message', '1', '1', '{\"type\":\"server\",\"gotoId\":\"1\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651040523385,\"content\":\"<span class=\'face face0\' title=\'微笑\'></span>\",\"textContent\":\"〖微笑〗\"}}');
INSERT INTO `message` VALUES (135, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651040686868,\"content\":\"在跑一次看看\",\"textContent\":\"在跑一次看看\"}}');
INSERT INTO `message` VALUES (136, 'user-message', '1', '33', '{\"type\":\"server\",\"gotoId\":\"1\",\"fromId\":\"33\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651041383543,\"content\":\"<span class=\'face face1\' title=\'撇嘴\'></span>\",\"textContent\":\"〖撇嘴〗\"}}');
INSERT INTO `message` VALUES (137, 'user-message', '1', '1', '{\"type\":\"server\",\"gotoId\":\"1\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651042150537,\"content\":\"nihoa \",\"textContent\":\"nihoa \"}}');
INSERT INTO `message` VALUES (138, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651042157302,\"content\":\"bupao\",\"textContent\":\"bupao\"}}');
INSERT INTO `message` VALUES (139, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651042158768,\"content\":\"le \",\"textContent\":\"le \"}}');
INSERT INTO `message` VALUES (140, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651042518030,\"content\":\"跑啊\",\"textContent\":\"跑啊\"}}');
INSERT INTO `message` VALUES (141, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651042526084,\"content\":\"继续跑啊\",\"textContent\":\"继续跑啊\"}}');
INSERT INTO `message` VALUES (142, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651042571617,\"content\":\"不跑了\",\"textContent\":\"不跑了\"}}');
INSERT INTO `message` VALUES (143, 'group-message', '1', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"1\",\"avatar\":\"bj.jpg\",\"nickName\":\"吴世康\",\"message\":{\"time\":1651042595654,\"content\":\"好大的\",\"textContent\":\"好大的\"}}');
INSERT INTO `message` VALUES (144, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651065765697,\"content\":\"大么\",\"textContent\":\"大么\"}}');
INSERT INTO `message` VALUES (145, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651065916410,\"content\":\"挺好\",\"textContent\":\"挺好\"}}');
INSERT INTO `message` VALUES (146, 'user-message', '23', '33', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"33\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651065924118,\"content\":\"<span class=\'face face0\' title=\'微笑\'></span>\",\"textContent\":\"〖微笑〗\"}}');
INSERT INTO `message` VALUES (147, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651065954760,\"content\":\"<span class=\'face face66\' title=\'爱心\'></span>\",\"textContent\":\"〖爱心〗\"}}');
INSERT INTO `message` VALUES (148, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651065965640,\"content\":\"<span class=\'face face32\' title=\'疑问\'></span>\",\"textContent\":\"〖疑问〗\"}}');
INSERT INTO `message` VALUES (149, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651222263700,\"content\":\"疫情\",\"textContent\":\"疫情\"}}');
INSERT INTO `message` VALUES (150, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651222269372,\"content\":\"加油呀呀呀\",\"textContent\":\"加油呀呀呀\"}}');
INSERT INTO `message` VALUES (151, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651222404095,\"content\":\"哦好的\",\"textContent\":\"哦好的\"}}');
INSERT INTO `message` VALUES (152, 'user-message', '23', '33', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"33\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651222421424,\"content\":\"已上传？\",\"textContent\":\"已上传？\"}}');
INSERT INTO `message` VALUES (153, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651222646390,\"content\":\"有问题嘛\",\"textContent\":\"有问题嘛\"}}');
INSERT INTO `message` VALUES (154, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651222649422,\"content\":\"没问题啊\",\"textContent\":\"没问题啊\"}}');
INSERT INTO `message` VALUES (155, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651222651313,\"content\":\"是不是\",\"textContent\":\"是不是\"}}');
INSERT INTO `message` VALUES (156, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"陈鹏\",\"message\":{\"time\":1651222694757,\"content\":\"<span class=\'face face90\' title=\'爱情\'></span>\",\"textContent\":\"〖爱情〗\"}}');
INSERT INTO `message` VALUES (157, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651239953568,\"content\":\"<span class=\'face face62\' title=\'猪头\'></span>\",\"textContent\":\"〖猪头〗\"}}');
INSERT INTO `message` VALUES (158, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651240904314,\"content\":\"<span class=\'face face1\' title=\'撇嘴\'></span>\",\"textContent\":\"〖撇嘴〗\"}}');
INSERT INTO `message` VALUES (159, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651240992609,\"content\":\"<span class=\'face face2\' title=\'色\'></span>\",\"textContent\":\"〖色〗\"}}');
INSERT INTO `message` VALUES (160, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651241042957,\"content\":\"<span class=\'face face78\' title=\'拥抱\'></span>\",\"textContent\":\"〖拥抱〗\"}}');
INSERT INTO `message` VALUES (161, 'user-message', '33', '23', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651241053549,\"content\":\"<span class=\'face face3\' title=\'发呆\'></span>\",\"textContent\":\"〖发呆〗\"}}');
INSERT INTO `message` VALUES (162, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651241299994,\"content\":\"111111111\",\"textContent\":\"111111111\"}}');
INSERT INTO `message` VALUES (163, 'user-message', '23', '33', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"33\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651241312686,\"content\":\"<span class=\'face face15\' title=\'难过\'></span>\",\"textContent\":\"〖难过〗\"}}');
INSERT INTO `message` VALUES (164, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651241344570,\"content\":\"<span class=\'face face1\' title=\'撇嘴\'></span>\",\"textContent\":\"〖撇嘴〗\"}}');
INSERT INTO `message` VALUES (165, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651241357373,\"content\":\"<span class=\'face face91\' title=\'飞吻\'></span>\",\"textContent\":\"〖飞吻〗\"}}');
INSERT INTO `message` VALUES (166, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651241423550,\"content\":\"<span class=\'face face0\' title=\'微笑\'></span>\",\"textContent\":\"〖微笑〗\"}}');
INSERT INTO `message` VALUES (167, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651241548716,\"content\":\"hello \",\"textContent\":\"hello \"}}');
INSERT INTO `message` VALUES (168, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651241563122,\"content\":\"发送消息\",\"textContent\":\"发送消息\"}}');
INSERT INTO `message` VALUES (169, 'user-message', '33', '23', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651241570716,\"content\":\"测试\",\"textContent\":\"测试\"}}');
INSERT INTO `message` VALUES (170, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651241578456,\"content\":\"啦啦啦\",\"textContent\":\"啦啦啦\"}}');
INSERT INTO `message` VALUES (171, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651241582405,\"content\":\"解决bug\",\"textContent\":\"解决bug\"}}');
INSERT INTO `message` VALUES (172, 'user-message', '23', '33', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"33\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651241590336,\"content\":\"haode \",\"textContent\":\"haode \"}}');
INSERT INTO `message` VALUES (173, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651398358499,\"content\":\"<span class=\'face face0\' title=\'微笑\'></span>\",\"textContent\":\"〖微笑〗\"}}');
INSERT INTO `message` VALUES (174, 'user-message', '33', '23', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651559573497,\"content\":\"怎么部署了就不行呢\",\"textContent\":\"怎么部署了就不行呢\"}}');
INSERT INTO `message` VALUES (175, 'user-message', '23', '33', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"33\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651559599266,\"content\":\"我也不懂 a\",\"textContent\":\"我也不懂 a\"}}');
INSERT INTO `message` VALUES (176, 'user-message', '33', '33', '{\"type\":\"server\",\"gotoId\":\"33\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651562201285,\"content\":\"<span class=\'face face0\' title=\'微笑\'></span>\",\"textContent\":\"〖微笑〗\"}}');
INSERT INTO `message` VALUES (177, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651562223700,\"content\":\"hello \",\"textContent\":\"hello \"}}');
INSERT INTO `message` VALUES (178, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651562260495,\"content\":\"但偏偏风渐渐\",\"textContent\":\"但偏偏风渐渐\"}}');
INSERT INTO `message` VALUES (179, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651562266464,\"content\":\"但故事的最后\",\"textContent\":\"但故事的最后\"}}');
INSERT INTO `message` VALUES (180, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651562272453,\"content\":\"你好像还是说了白啊比\",\"textContent\":\"你好像还是说了白啊比\"}}');
INSERT INTO `message` VALUES (181, 'group-message', '33', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"33\",\"avatar\":\"moren.jpg\",\"nickName\":\"刘长权\",\"message\":{\"time\":1651564253990,\"content\":\"在哪\",\"textContent\":\"在哪\"}}');
INSERT INTO `message` VALUES (182, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651624981357,\"content\":\"故事的小黄花\",\"textContent\":\"故事的小黄花\"}}');
INSERT INTO `message` VALUES (183, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651633285436,\"content\":\"为你翘课的哪一天\",\"textContent\":\"为你翘课的哪一天\"}}');
INSERT INTO `message` VALUES (184, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651633304477,\"content\":\"好像在一篇\",\"textContent\":\"好像在一篇\"}}');
INSERT INTO `message` VALUES (185, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651633313407,\"content\":\"您是等待还是离开\",\"textContent\":\"您是等待还是离开\"}}');
INSERT INTO `message` VALUES (186, 'group-message', '34', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"34\",\"avatar\":\"moren.jpg\",\"nickName\":\"123\",\"message\":{\"time\":1651643078751,\"content\":\"雨纷纷旧故里草木深\",\"textContent\":\"雨纷纷旧故里草木深\"}}');
INSERT INTO `message` VALUES (187, 'group-message', '34', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"34\",\"avatar\":\"moren.jpg\",\"nickName\":\"123\",\"message\":{\"time\":1651643087932,\"content\":\"我听闻你始终一个人\",\"textContent\":\"我听闻你始终一个人\"}}');
INSERT INTO `message` VALUES (188, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643684260,\"content\":\"<span class=\'face face4\' title=\'得意\'></span>\",\"textContent\":\"〖得意〗\"}}');
INSERT INTO `message` VALUES (189, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643706669,\"content\":\"我忍住情绪在很后面\",\"textContent\":\"我忍住情绪在很后面\"}}');
INSERT INTO `message` VALUES (190, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643732265,\"content\":\"最美的不是下雨天\",\"textContent\":\"最美的不是下雨天\"}}');
INSERT INTO `message` VALUES (191, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643744469,\"content\":\"会议的画面\",\"textContent\":\"会议的画面\"}}');
INSERT INTO `message` VALUES (192, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643757987,\"content\":\"你把爱渐渐会走远\",\"textContent\":\"你把爱渐渐会走远\"}}');
INSERT INTO `message` VALUES (193, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651643817846,\"content\":\"要我怎么捡\",\"textContent\":\"要我怎么捡\"}}');
INSERT INTO `message` VALUES (194, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651643836737,\"content\":\"医生你好啊\",\"textContent\":\"医生你好啊\"}}');
INSERT INTO `message` VALUES (195, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643843491,\"content\":\"咋了\",\"textContent\":\"咋了\"}}');
INSERT INTO `message` VALUES (196, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643853300,\"content\":\"周杰伦的晴天\",\"textContent\":\"周杰伦的晴天\"}}');
INSERT INTO `message` VALUES (197, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643857677,\"content\":\"还是雨天\",\"textContent\":\"还是雨天\"}}');
INSERT INTO `message` VALUES (198, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643864163,\"content\":\"你当过皇帝嘛\",\"textContent\":\"你当过皇帝嘛\"}}');
INSERT INTO `message` VALUES (199, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651643879794,\"content\":\"故事的小黄花\",\"textContent\":\"故事的小黄花\"}}');
INSERT INTO `message` VALUES (200, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651643907577,\"content\":\"吹着前奏望着天空\",\"textContent\":\"吹着前奏望着天空\"}}');
INSERT INTO `message` VALUES (201, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651643930112,\"content\":\"你会等待还是离开\",\"textContent\":\"你会等待还是离开\"}}');
INSERT INTO `message` VALUES (202, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643970676,\"content\":\"从前从前有个人很爱你很久\",\"textContent\":\"从前从前有个人很爱你很久\"}}');
INSERT INTO `message` VALUES (203, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651643989493,\"content\":\"你好像还是说了拜拜\",\"textContent\":\"你好像还是说了拜拜\"}}');
INSERT INTO `message` VALUES (204, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651644011141,\"content\":\"我怎么看不见\",\"textContent\":\"我怎么看不见\"}}');
INSERT INTO `message` VALUES (205, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1651644052490,\"content\":\"刮风这天我试过握着你手但偏偏雨渐渐大到我看你不见还要多久我才能在你身边等到放晴的那天也许我会比较好一点从前从前有个人爱你很久偏偏风渐渐把距离吹得好远好不容易又能再多爱一天但故事的最后你好像还是说了拜拜rap 刮风这天我试过握着你手但偏偏雨渐渐大到我看你不见还要多久我才能够在你身边等到放晴那天也许我会比较好一点从前从前有个人爱你很久但偏偏雨渐渐把距离吹得好远好不容易又能再多爱一天但故事的最后你好像还是说了拜\",\"textContent\":\"刮风这天我试过握着你手但偏偏雨渐渐大到我看你不见还要多久我才能在你身边等到放晴的那天也许我会比较好一点从前从前有个人爱你很久偏偏风渐渐把距离吹得好远好不容易又能再多爱一天但故事的最后你好像还是说了拜拜rap 刮风这天我试过握着你手但偏偏雨渐渐大到我看你不见还要多久我才能够在你身边等到放晴那天也许我会比较好一点从前从前有个人爱你很久但偏偏雨渐渐把距离吹得好远好不容易又能再多爱一天但故事的最后你好像还是说了拜\"}}');
INSERT INTO `message` VALUES (206, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651644081550,\"content\":\"但故事的最后\",\"textContent\":\"但故事的最后\"}}');
INSERT INTO `message` VALUES (207, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651644088188,\"content\":\"你还是说了拜拜\",\"textContent\":\"你还是说了拜拜\"}}');
INSERT INTO `message` VALUES (208, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651644093181,\"content\":\"如何\",\"textContent\":\"如何\"}}');
INSERT INTO `message` VALUES (209, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651644104280,\"content\":\"刮风这天我试过握着你手但偏偏雨渐渐大到我看你不见还要多久我才能在你身边等到放晴的那天也许我会比较好一点从前从前有个人爱你很久偏偏风渐渐把距离吹得好远好不容易又能再多爱一天但故事的最后你好像还是说了拜拜rap 刮风这天我试过握着你手但偏偏雨渐渐大到我看你不见还要多久我才能够在你身边等到放晴那天也许我会比较好一点从前从前有个人爱你很久但偏偏雨渐渐把距离吹得好远好不容易又能再多爱一天但故事的最后你好像还是说了拜\",\"textContent\":\"刮风这天我试过握着你手但偏偏雨渐渐大到我看你不见还要多久我才能在你身边等到放晴的那天也许我会比较好一点从前从前有个人爱你很久偏偏风渐渐把距离吹得好远好不容易又能再多爱一天但故事的最后你好像还是说了拜拜rap 刮风这天我试过握着你手但偏偏雨渐渐大到我看你不见还要多久我才能够在你身边等到放晴那天也许我会比较好一点从前从前有个人爱你很久但偏偏雨渐渐把距离吹得好远好不容易又能再多爱一天但故事的最后你好像还是说了拜\"}}');
INSERT INTO `message` VALUES (210, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651733676068,\"content\":\"眼泪为你唱歌\",\"textContent\":\"眼泪为你唱歌\"}}');
INSERT INTO `message` VALUES (211, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1651733728244,\"content\":\"家乡在哪美的远方\",\"textContent\":\"家乡在哪美的远方\"}}');
INSERT INTO `message` VALUES (212, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1652281406182,\"content\":\"活动\",\"textContent\":\"活动\"}}');
INSERT INTO `message` VALUES (213, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1652281780395,\"content\":\"<span class=\'face face15\' title=\'难过\'></span>\",\"textContent\":\"〖难过〗\"}}');
INSERT INTO `message` VALUES (214, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1652281795741,\"content\":\"<span class=\'face face0\' title=\'微笑\'></span>\",\"textContent\":\"〖微笑〗\"}}');
INSERT INTO `message` VALUES (215, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1652445777634,\"content\":\"shi\",\"textContent\":\"shi\"}}');
INSERT INTO `message` VALUES (216, 'group-message', '23', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"23\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1652445781639,\"content\":\"<span class=\'face face16\' title=\'酷\'></span>\",\"textContent\":\"〖酷〗\"}}');
INSERT INTO `message` VALUES (217, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1652445789689,\"content\":\"hbnii\",\"textContent\":\"hbnii\"}}');
INSERT INTO `message` VALUES (218, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1652507598563,\"content\":\"你好\",\"textContent\":\"你好\"}}');
INSERT INTO `message` VALUES (219, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1652507603398,\"content\":\"<span class=\'face face15\' title=\'难过\'></span>\",\"textContent\":\"〖难过〗\"}}');
INSERT INTO `message` VALUES (220, 'user-message', '30', '23', '{\"type\":\"server\",\"gotoId\":\"30\",\"fromId\":\"23\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1652507633790,\"content\":\"王医生你好\",\"textContent\":\"王医生你好\"}}');
INSERT INTO `message` VALUES (221, 'group-message', '30', 'group', '{\"type\":\"server\",\"gotoId\":\"group\",\"fromId\":\"30\",\"avatar\":\"moren.jpg\",\"nickName\":\"冯临\",\"message\":{\"time\":1653621221694,\"content\":\"hello\",\"textContent\":\"hello\"}}');
INSERT INTO `message` VALUES (222, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1653621240553,\"content\":\"nihao \",\"textContent\":\"nihao \"}}');
INSERT INTO `message` VALUES (223, 'user-message', '23', '30', '{\"type\":\"server\",\"gotoId\":\"23\",\"fromId\":\"30\",\"avatar\":\"wang.jpg\",\"nickName\":\"王源\",\"message\":{\"time\":1653621254914,\"content\":\"过来一下\",\"textContent\":\"过来一下\"}}');

-- ----------------------------
-- Table structure for now_disase
-- ----------------------------
DROP TABLE IF EXISTS `now_disase`;
CREATE TABLE `now_disase`  (
  `now_id` int(0) NOT NULL AUTO_INCREMENT,
  `x_user_id` int(0) NOT NULL,
  `diease_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `q_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`now_id`) USING BTREE,
  INDEX `关联用户`(`x_user_id`) USING BTREE,
  CONSTRAINT `关联用户` FOREIGN KEY (`x_user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of now_disase
-- ----------------------------
INSERT INTO `now_disase` VALUES (58, 33, '感冒', '2022-05-02 10:48:00.000000');
INSERT INTO `now_disase` VALUES (59, 30, '皮肤病', '2022-05-02 10:49:00.000000');
INSERT INTO `now_disase` VALUES (60, 27, '咳嗽', '2022-05-02 10:52:00.000000');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `roles_id` int(0) NOT NULL AUTO_INCREMENT,
  `rolesName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roles` int(0) NOT NULL DEFAULT 0,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '正常',
  `orders` int(0) NULL DEFAULT NULL,
  `time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`roles_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '普通用户', '这是普通用户', 2, '正常', 6, '2022-03-21 19:58:24.000000');
INSERT INTO `roles` VALUES (2, '王医生', '拥有二十行医年经验', 1, '正常', 1, '2022-03-21 19:58:32.000000');
INSERT INTO `roles` VALUES (3, '管理员', '这是管理员', 2, '正常', 1, '2022-03-21 19:58:28.000000');
INSERT INTO `roles` VALUES (10, '普通用户', '普通用户', 0, '正常', 1, '2022-03-22 22:39:21.000000');
INSERT INTO `roles` VALUES (11, '吴医生', '牛逼哄哄的人物', 1, '正常', 2, '2022-03-29 21:12:09.000000');
INSERT INTO `roles` VALUES (12, '何医生', '擅长各类疾病的治疗拥有十多年的经验', 1, '正常', 1, '2022-04-14 15:20:33.000000');
INSERT INTO `roles` VALUES (13, '刘医生', '子宫肌瘤,痛风,甲状腺癌,乳腺癌,男性不育,先天性,普通疾病', 1, '正常', 1, '2022-04-14 08:33:00.000000');

-- ----------------------------
-- Table structure for sport
-- ----------------------------
DROP TABLE IF EXISTS `sport`;
CREATE TABLE `sport`  (
  `sport_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` int(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `per` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groupes` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `effect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sport_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sport
-- ----------------------------
INSERT INTO `sport` VALUES (2, '跪姿俯卧撑', 3, '双脚交叉，跪于垫上，腰背挺直，从侧面看身体成一条直线，双手撑于胸部两侧，间距比肩略宽|屈臂俯身至肘关节略高于躯干，然后伸臂起身还原', '8个', '无氧运动', '3', '青年人', 'https://www.bilibili.com/video/BV1A4411t7i7?spm_id_from=333.337.search-card.all.click', '这种动作的时候一定要长期坚持，而且要适度。不能剧烈运动或者是疲劳过度，否则有可能会导致肌肉拉伤或者是身体疲惫。');
INSERT INTO `sport` VALUES (3, '俯身肘对膝', 3, '手撑于垫子上，手肘微屈|收紧腰腹，身体绷成一条直线|抬腿提膝，用膝盖去碰触同侧肘关节', '20个', '有氧运动', '3', '中年人,老年人,青年人,未成年人', 'https://v.youku.com/v_show/id_XNDYwODI5NTUyMA==.html', '可以舒筋活络、疏风散寒，能够缓解膝关节疼痛症状，对于大多数膝关节疾病均有好处');
INSERT INTO `sport` VALUES (4, '墙壁俯卧撑', 3, '双手伸直撑墙，与胸等高，胸部挺起|屈肘，身体靠向墙壁，直到脸贴近墙壁|撑起时，肘部往里夹，感受胸部发力', '12个', '无氧运动', '3', '青年人,未成年人', 'https://www.bilibili.com/video/BV1xt411j7Bw?spm_id_from=333.337.search-card.all.click', '延缓衰老的速度，提升肺活量，增强体质，强身健体，增加骨骼发育，提高身体关节的灵活性改善身材，塑造肌肉线条，让身材更加健美，肌肉更加结实燃脂效果明显，提升基础代谢的同时，消耗更多热量');
INSERT INTO `sport` VALUES (5, '仰卧剪刀腿', 3, '平躺在垫子上，双腿绷直，抬离地面|腹部发力，让双腿有节奏的上下交替', '12个', '有氧运动', '3', '青年人,未成年人,中年人', 'https://3g.163.com/v/video/VUAJE4BMU.html', '加快气血循环，燃烧脂肪、紧致腿部线条');
INSERT INTO `sport` VALUES (6, '侧卧抬腿', 3, '侧卧在垫子上，双腿绷直|臀部外侧发力将另一边的腿抬至最高点|垂直向上抬腿到最高点，然后缓慢放下', '10个', '无氧运动', '3', '青年人', 'https://www.bilibili.com/video/BV1ZE411e7xQ?spm_id_from=333.337.search-card.all.click', '它可以锻炼人体的臀肌外侧和大腿外侧肌肉，同时可以牵拉大腿内侧肌群，可以增加髋关节活动度维持骨盆的稳定性和控制能力，是个比较好的锻炼动作。但是它也有不足，人体侧向抬腿时，大腿外侧髂胫束容易紧张，会引起一些疼痛等不良感觉');
INSERT INTO `sport` VALUES (7, '跨步波比', 3, '自然站立，双脚分开与肩同宽|向下俯身，双手与肩同宽撑地|保持双肩稳定，双腿向后交替迈步再还原，身体不能晃动|站起身体，进行第二次动作，动作越连贯越好', '8个', '无氧运动', '3', '青年人', 'https://www.bilibili.com/video/BV19K411H73J?spm_id_from=333.337.search-card.all.click', '减脂瘦身,增强力量，增强心肺耐力，增强协调性');
INSERT INTO `sport` VALUES (8, '靠墙静蹲', 3, '双脚分开与肩同宽，双手放于大腿上|缓慢下蹲至大腿与地面平行，保持住|下背紧贴墙面，感受膝盖附近肌肉发力', '40秒', '有氧运动', '3', '青年人,未成年人,中年人', 'https://jingyan.baidu.com/article/8275fc86d4284107a03cf69e.html', '靠墙静蹲最大的好处就是能够增加下肢的肌力和耐受力，锻炼身体曲线,提升心肺功能,锻炼肌肉');
INSERT INTO `sport` VALUES (9, '站姿交替提膝收腹', 2, '双手轻放在耳后，双脚分开站立|左膝抬高，主动俯身，同时身体扭转，用右手肘去碰左膝，还原，然后换另外一侧', '16个', '无氧运动', '2', '中年人,青年人', 'https://www.bilibili.com/video/av417634911/', '有助于减掉肚子上的肥肉');
INSERT INTO `sport` VALUES (10, '卷腹摸膝', 5, '平躺在瑜伽垫上，屈膝，双腿微微分开，双脚踩实|双手扶在大腿上，用腹肌的力量将肩部和上背部卷离地面，在双手触摸到膝盖后，缓慢回到起始位置|摸膝时，下背部保持紧贴地面，双臂始终伸直', '30个', '有氧运动', '3', '青年人,未成年人,中年人', 'https://www.bilibili.com/video/BV15C4y1a7c4?spm_id_from=333.337.search-card.all.click', '美化腹部肌肉线条，增强肌肉体积，增强核心肌力，提高身体稳定性；减脂塑形，提高身体机能，增强免疫力；消除不良情绪，促进身心愉悦');
INSERT INTO `sport` VALUES (11, '合掌跳', 3, '抬头挺胸，绷紧腹部|绷紧手臂，用胸肌的力量合掌，同时双脚交替前后小幅跳跃', '20秒', '有氧运动', '3', '青年人,未成年人,中年人', 'https://www.bilibili.com/video/BV13f4y1R7ve?spm_id_from=333.337.search-card.all.click', '提高心肺功能,改善协调性,帮助燃烧脂肪');
INSERT INTO `sport` VALUES (12, '箱式深蹲', 2, '自然站立，双脚分开与肩同宽，椅子放于身后|臀部缓慢向后推并向下蹲，蹲至臀部触碰椅子边缘，同时手臂前平举；略作停顿后，臀部发力站起还原至起始状态|坐在椅子边缘时，膝盖不要超过脚尖|腰腹始终收紧，坐下时只有下肢稍放松', '8个', '无氧运动', '2', '青年人,中年人,未成年人', 'https://www.bilibili.com/video/BV1hN411d7Nx?spm_id_from=333.337.search-card.all.click', '提升下肢力量，增强跳跃力，保护膝关节');
INSERT INTO `sport` VALUES (13, '臀桥', 3, '仰卧在瑜伽垫上，双腿屈曲略宽于肩，脚跟踩地|发力将臀部抬起至大腿与身体呈一条直线，臀部抬起时上背部支撑地面|下落时下背部贴地，但臀部悬空', '12个', '有氧运动', '3', '中年人,青年人', 'https://www.bilibili.com/video/BV1Qb411j7dU?spm_id_from=333.337.search-card.all.click', '改进坐骨神经痛,延伸脊柱,紧致腹部线框,经常锻炼还可以加强身体的血液循环，提高新陈代谢的能力，增强身体的抵抗力');
INSERT INTO `sport` VALUES (14, '缓冲深蹲跳', 3, '挺直腰背，双手交握放于胸前，双脚略宽于肩，深蹲|起身时，双脚蹬地跳起|下落时，屈髋屈膝，缓冲落地', '8个', '无氧运动', '3', '青年人,中年人,未成年人', 'https://www.bilibili.com/video/BV117411e7Wk?spm_id_from=333.337.search-card.all.click', '提高弹跳力,预防腰背疼痛,青春期适量深蹲跳有助于长高');
INSERT INTO `sport` VALUES (27, '上背部伸展', 3, '自然站立，双手十指交叉相扣，掌心对着身体，然后翻掌用手背对着身体向前推出。\n低头，身体跟着手前推的力量向后弓背到最大幅度。', '15秒', '屈曲和伸展运动', '3', '中年人', 'https://haokan.baidu.com/v?pd=wisenatural&vid=3991439973259937624', '拉伸背部的作用有很多，拉伸可以保护韧带，改善血液循环，缓解肌肉紧张，降低背部疼痛。');
INSERT INTO `sport` VALUES (28, '睡眠者伸展', 5, '身体左侧躺，头部以枕头支撑，左上臂向身体前方伸出与锁骨平行，手肘弯屈，左前臂向上指向天花板。b. 以右手握住左腕，缓慢的将左前臂向地板方向旋转。目标是要让左前臂可以平贴於地。在动作末端维持20-30秒，然后回到起始姿势，换边进行。', '30秒', '屈曲和伸展运动', '1', '中年人,未成年人,青年人', 'https://www.sohu.com/a/455229625_100114195', '要预防肩关节伤害，特别是肩关节夹击症候群，就必须要保持这个区域的柔软度。因此，这个简单的动作可以伸展肩关节后侧关节囊，目标是达到两侧肩关节的活动度一致。');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `m_id` int(0) NOT NULL,
  `num` bigint(0) NOT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `关联外键`(`m_id`) USING BTREE,
  CONSTRAINT `关联外键` FOREIGN KEY (`m_id`) REFERENCES `medicine` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (11, 5, 3, 'A1架上', '2022-04-20 22:51:00');
INSERT INTO `store` VALUES (12, 6, 3, 'A2架上', '2022-04-20 22:51:00');
INSERT INTO `store` VALUES (13, 8, 1, 'A3架上', '2022-04-20 22:51:00');
INSERT INTO `store` VALUES (14, 9, 1, 'A2架上', '2022-04-20 22:52:00');
INSERT INTO `store` VALUES (15, 10, 2, 'C1架上', '2022-04-20 22:52:00');
INSERT INTO `store` VALUES (16, 11, 1, 'C1架上', '2022-04-20 22:52:00');
INSERT INTO `store` VALUES (17, 13, 1, 'C3架上', '2022-04-20 22:52:00');
INSERT INTO `store` VALUES (18, 17, 1, 'C2架上', '2022-04-20 22:52:00');
INSERT INTO `store` VALUES (19, 12, 1, 'C3架上', '2022-04-20 22:52:00');
INSERT INTO `store` VALUES (20, 14, 1, 'A3架上', '2022-04-20 22:53:00');
INSERT INTO `store` VALUES (21, 15, 1, 'C3架上', '2022-04-20 22:53:00');
INSERT INTO `store` VALUES (22, 16, 1, 'A3架上', '2022-04-20 22:53:00');
INSERT INTO `store` VALUES (23, 7, 1, 'A4架上', '2022-04-20 22:53:00');
INSERT INTO `store` VALUES (24, 25, 2, 'A3架上', '2022-04-21 11:43:00');
INSERT INTO `store` VALUES (25, 24, 1, 'A2架上', '2022-04-21 11:44:00');
INSERT INTO `store` VALUES (26, 23, 1, 'C3架上', '2022-04-21 11:44:00');
INSERT INTO `store` VALUES (27, 22, 2, 'A2架上', '2022-04-21 11:44:00');
INSERT INTO `store` VALUES (28, 21, 1, 'C3架上', '2022-04-21 11:44:00');
INSERT INTO `store` VALUES (29, 20, 1, 'A3架上', '2022-04-21 11:44:00');
INSERT INTO `store` VALUES (30, 19, 1, 'C3架上', '2022-04-21 11:45:00');
INSERT INTO `store` VALUES (31, 18, 0, 'A2架上', '2022-04-21 11:45:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT,
  `r_id` int(0) NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sendEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `community` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '健康社区',
  `borth` datetime(6) NULL DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marriage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `political` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registerDate` datetime(6) NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'moren.jpg',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `角色`(`r_id`) USING BTREE,
  CONSTRAINT `角色` FOREIGN KEY (`r_id`) REFERENCES `roles` (`roles_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 1, '19947926401', '5ffa3bb4362d53e7dca5419e79393574', '吴世康', '男', '19947926401', '', 17, '', '康康社区', '1999-03-05 11:52:33.000000', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-09 11:53:37.000000', 'bj.jpg');
INSERT INTO `user` VALUES (3, 3, '19947926451', '5ffa3bb4362d53e7dca5419e79393574', '卢祖欣', '男', '15078006751', '', 23, '', '健康社区', '1999-03-23 00:00:00.000000', '', '', '初中', '是', '共青团员', '', '2022-03-16 18:37:39.000000', 'bj.jpg');
INSERT INTO `user` VALUES (23, 2, 'admin', '5ffa3bb4362d53e7dca5419e79393574', '王源', '男', '19947926401', '', 23, '', '健康社区', '1999-03-05 00:00:00.000000', '', '', '本科', '是', '共青团员', 'B216室', '2022-03-28 11:28:00.000000', 'wang.jpg');
INSERT INTO `user` VALUES (27, 10, 'admin8', '5ffa3bb4362d53e7dca5419e79393574', '王南', '男', '15078006751', '', 23, '', '健康社区', '1999-03-05 00:00:00.000000', '', '', '本科', '否', '共青团员', '', '2022-04-05 20:13:00.000000', 'bj.jpg');
INSERT INTO `user` VALUES (28, 13, '201800406050', '5ffa3bb4362d53e7dca5419e79393574', '杨阳', '男', '19947926408', '', 23, '', '健康社区', '1999-03-05 00:00:00.000000', '', '', '本科', '是', '共青团员', 'B26', '2022-04-08 18:22:00.000000', 'liu.jpg');
INSERT INTO `user` VALUES (29, 12, 'he123', '5ffa3bb4362d53e7dca5419e79393574', '何冬梅', '女', '15078006475', '', 22, '', '健康社区', '2000-03-14 00:00:00.000000', '', '', '硕士', '否', '共青团员', '', '2022-04-14 08:33:00.000000', 'he.jpg');
INSERT INTO `user` VALUES (30, 10, 'li123', '5ffa3bb4362d53e7dca5419e79393574', '冯临', '男', '15078005221', '', 22, '', '健康社区', '1999-08-20 00:00:00.000000', '', '', '本科', '否', '共青团员', 'B211', '2022-04-16 09:22:00.000000', 'moren.jpg');
INSERT INTO `user` VALUES (33, 10, 'test', '95933d886ae807ae61e32728476e4d7f', '刘长权', '男', '15078006789', '', 23, '', '健康社区', '1999-03-05 00:00:00.000000', '', '', '本科', '是', '中共党员', '', '2022-04-26 10:28:00.000000', 'moren.jpg');

SET FOREIGN_KEY_CHECKS = 1;
