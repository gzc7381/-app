SET NAMES UTF8;
DROP DATABASE IF EXISTS trv;
CREATE DATABASE trv CHARSET=UTF8;
USE trv;


/**特产列表**/
CREATE TABLE trv_list(
  lid INT PRIMARY KEY AUTO_INCREMENT, 
  title VARCHAR(128),         #特产标题/介绍 
  price DECIMAL(10,2),        #价格
  sold_count INT,             #已售出的数量
  img VARCHAR(128),
  is_onsale BOOLEAN           #是否促销中
);

INSERT INTO trv_list VALUES(null,'桂花糕',69,2,'indexImg/5add7f57N914b3c1d.jpg',1),
(null,'桂花酒',99,2,'indexImg/220a6792bc5a083e.jpg',1),
(null,'桂花果酱',59,2,'indexImg/ec487e869e5aeef6.jpg',1),
(null,'花桥辣椒酱',39,2,'indexImg/59a78448N4f5cbf2f.png',1);

/**用户信息表**/
CREATE TABLE trv_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/**收货地址信息表**/
CREATE TABLE trv_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  postcode CHAR(6),           #邮编

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

/**购物车条目表**/
CREATE TABLE trv_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,      #用户编号
  product_id INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

/**用户订单表**/
CREATE TABLE trv_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  address_id INT,
  status INT,             #订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,      #下单时间
  pay_time BIGINT,        #付款时间
  deliver_time BIGINT,    #发货时间
  received_time BIGINT    #签收时间
)AUTO_INCREMENT=10000000;

/**用户订单详情表**/
CREATE TABLE trv_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,           #订单编号
  product_id INT,         #产品编号
  count INT               #购买数量
);

/****首页轮播广告商品****/
CREATE TABLE trv_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****首页商品****/
CREATE TABLE trv_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_recommended TINYINT,
  seq_new_arrival TINYINT,
  seq_top_sale TINYINT
);
/**吃在桂林**/
CREATE TABLE trv_eact(
  eid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  img_url VARCHAR(128),
  eact_msg INT,
  eact_eye INT
);
/**吃在桂林详情**/
CREATE TABLE trv_eact_details(
  did INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  fabiao VARCHAR(125),
  rea INT, 
  details VARCHAR(255),
  hottopic VARCHAR(64)
);
/**特产商品列表**/
CREATE TABLE trv_spe_list(
  eid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  img_url VARCHAR(128),
  num INT,
  price DECIMAL(10,2)
);
/**列表详情数据**/


/*******************/
/******数据导入******/
/*******************/
/**吃在桂林数据**/
INSERT INTO trv_eact VALUES(null,'素爆漓江虾','Special/e08.jpg',4,122),
(null,'烤乳猪','Special/e02.jpg',0,43),
(null,'白果炖老鸭','Special/e03.jpg',0,32),
(null,'桂花松糕','Special/e04.jpg',0,64),
(null,'桂林田螺','Special/e10.jpg',0,43),
(null,'十八酿','Special/e11.jpg',0,32),
(null,'荷叶粉蒸肉','Special/e01.jpg',0,64),
(null,'荔浦芋扣肉','Special/e09.jpg',0,43),
(null,'马蹄糕','Special/e06.jpg',0,32),
(null,'把丝芋头','Special/e07.jpg',0,64),
(null,'啤酒漓江鱼','Special/e12.jpg',0,32),
(null,'桂林米粉','Special/e13.jpg',0,64);

/**吃在桂林详情**/
INSERT INTO trv_eact_details VALUES(null,'素爆漓江虾','2017-10-10 18:02:08',7,'素爆炒漓江虾是桂林典型的风味菜。以桂林漓江里的河虾为原料加入少许桂林三花酒爆炒而成。由于漓江水清冽，漓江虾肉质细嫩纯正，原汁原味，使本菜肴色泽鲜红如宝石，口感稣脆嫩爽，香而不浓，从中尚可品尝出漓江水的清纯与甘甜。','暂无评论'),
(null,'烤乳猪','2017-10-10 18:02:08',7,'烤乳猪是桂林特色菜。乳猪需用糯米或大米味养，使其肉细皮嫩为上。然后以独特工艺、熟练的火工精心烤制，使其皮丝黄透亮，然后切块上盘，拌以葱酱、白糖食之，其味香甜松脆、肉质细嫩甘香，具有滋心润肺、养颜养容功效','暂无评论'),
(null,'白果炖老鸭','2017-10-10 18:02:08',7,'白果炖老鸭是桂林餐馆里的“拳头菜”，主要原料是产在桂林兴安，灵川一带的白果（银杏）和老鸭，用文火清炖而成，其特点是汤微苦，果香肉甜，营养丰富，四季皆宜。白果性凉，老鸭清火，所以白果炖老鸭即是一道可口的菜肴，又是一种滋补五脏、开胃生津、化痰止咳，润肺益气的上好补品。','暂无评论'),
(null,'桂林松糕','2017-10-10 18:02:08',7,'桂林松糕是用糯米掺粳米适量磨成粉，稍掺些黄糖水拌匀，再将半干半湿的米粉层层撒入蒸桶中蒸一至二小时熟透而成。刚蒸出来的松糕最好吃，把还冒着热气的松糕，一般切成片，松软爽口，香甜宜人，如果再配上荔浦芋头丁，味道更是妙不可言。热气腾腾的松糕来上一块，大冷天也不怕冷了。桂林习俗，松糕一般用于喜庆场合，如生日贺寿、得子、新屋上梁等，常赠以松糕，以示庆贺。在桂林，松糕在大饭店是难觅踪影的，只能到街边小摊、菜市去买。','暂无评论'),
(null,'桂林田螺','2017-10-10 18:02:08',7,'白果炖老鸭是桂林餐馆里的“拳头菜”，主要原料是产在桂林兴安，灵川一带的白果（银杏）和老鸭，用文火清炖而成，其特点是汤微苦，果香肉甜，营养丰富，四季皆宜。白果性凉，老鸭清火，所以白果炖老鸭即是一道可口的菜肴，又是一种滋补五脏、开胃生津、化痰止咳，润肺益气的上好补品。','暂无评论'),
(null,'十八酿','2017-10-10 18:02:08',7,'桂林松糕是用糯米掺粳米适量磨成粉，稍掺些黄糖水拌匀，再将半干半湿的米粉层层撒入蒸桶中蒸一至二小时熟透而成。刚蒸出来的松糕最好吃，把还冒着热气的松糕，一般切成片，松软爽口，香甜宜人，如果再配上荔浦芋头丁，味道更是妙不可言。热气腾腾的松糕来上一块，大冷天也不怕冷了。桂林习俗，松糕一般用于喜庆场合，如生日贺寿、得子、新屋上梁等，常赠以松糕，以示庆贺。在桂林，松糕在大饭店是难觅踪影的，只能到街边小摊、菜市去买。','暂无评论'),
(null,'荷叶粉蒸肉','2017-10-10 18:02:08',7,'素爆炒漓江虾是桂林典型的风味菜。以桂林漓江里的河虾为原料加入少许桂林三花酒爆炒而成。由于漓江水清冽，漓江虾肉质细嫩纯正，原汁原味，使本菜肴色泽鲜红如宝石，口感稣脆嫩爽，香而不浓，从中尚可品尝出漓江水的清纯与甘甜。','暂无评论'),
(null,'荔浦芋扣肉','2017-10-10 18:02:08',7,'烤乳猪是桂林特色菜。乳猪需用糯米或大米味养，使其肉细皮嫩为上。然后以独特工艺、熟练的火工精心烤制，使其皮丝黄透亮，然后切块上盘，拌以葱酱、白糖食之，其味香甜松脆、肉质细嫩甘香，具有滋心润肺、养颜养容功效','暂无评论'),
(null,'马蹄糕','2017-10-10 18:02:08',7,'白果炖老鸭是桂林餐馆里的“拳头菜”，主要原料是产在桂林兴安，灵川一带的白果（银杏）和老鸭，用文火清炖而成，其特点是汤微苦，果香肉甜，营养丰富，四季皆宜。白果性凉，老鸭清火，所以白果炖老鸭即是一道可口的菜肴，又是一种滋补五脏、开胃生津、化痰止咳，润肺益气的上好补品。','暂无评论'),
(null,'把丝芋头','2017-10-10 18:02:08',7,'桂林松糕是用糯米掺粳米适量磨成粉，稍掺些黄糖水拌匀，再将半干半湿的米粉层层撒入蒸桶中蒸一至二小时熟透而成。刚蒸出来的松糕最好吃，把还冒着热气的松糕，一般切成片，松软爽口，香甜宜人，如果再配上荔浦芋头丁，味道更是妙不可言。热气腾腾的松糕来上一块，大冷天也不怕冷了。桂林习俗，松糕一般用于喜庆场合，如生日贺寿、得子、新屋上梁等，常赠以松糕，以示庆贺。在桂林，松糕在大饭店是难觅踪影的，只能到街边小摊、菜市去买。','暂无评论'),
(null,'啤酒漓江鱼','2017-10-10 18:02:08',7,'白果炖老鸭是桂林餐馆里的“拳头菜”，主要原料是产在桂林兴安，灵川一带的白果（银杏）和老鸭，用文火清炖而成，其特点是汤微苦，果香肉甜，营养丰富，四季皆宜。白果性凉，老鸭清火，所以白果炖老鸭即是一道可口的菜肴，又是一种滋补五脏、开胃生津、化痰止咳，润肺益气的上好补品。','暂无评论'),
(null,'桂林米粉','2017-10-10 18:02:08',7,'桂林松糕是用糯米掺粳米适量磨成粉，稍掺些黄糖水拌匀，再将半干半湿的米粉层层撒入蒸桶中蒸一至二小时熟透而成。刚蒸出来的松糕最好吃，把还冒着热气的松糕，一般切成片，松软爽口，香甜宜人，如果再配上荔浦芋头丁，味道更是妙不可言。热气腾腾的松糕来上一块，大冷天也不怕冷了。桂林习俗，松糕一般用于喜庆场合，如生日贺寿、得子、新屋上梁等，常赠以松糕，以示庆贺。在桂林，松糕在大饭店是难觅踪影的，只能到街边小摊、菜市去买。','暂无评论');

INSERT INTO trv_spe_list VALUES
(null,"【广西馆】金顺昌 桂花糕礼盒288g 桂林特产 糕点心零食 儿童点心 地方特色小吃 下午茶糕点礼盒","Special/list01.jpg",2,69),
(null,"桂林 广西桂林特产 麻绳桂花酒20度750ml 桂花酒酿桂花蜜酒","Special/list02.jpg",2,99),
(null,"古磨坊 桂林特产桂花糕绿豆板栗香芋糕110g*4广西组合糯米糕点礼盒 110G板栗糕四盒（赠送手提袋）","Special/list03.jpg",2,88),
(null,"爆浆麻薯糯米滋糍面包好吃的网红大福雪媚娘宿舍小零食整箱 (混合口味)","Special/list04.jpg",3,99),
(null,"古磨坊 桂林特产桂花糕绿豆板栗香芋糕110g*4广西组合糯米糕点礼盒 110G板栗糕四盒（赠送手提袋）","Special/list05.jpg",2,99),
(null,"爆浆麻薯糯米滋糍面包好吃的网红大福雪媚娘宿舍小零食整箱 (混合口味)","Special/list06.jpg",2,189);
-- 插入数据

/**用户信息**/
INSERT INTO trv_user VALUES
(NULL, 'dingding', md5('123456'), 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang',md5('123456'), 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', md5('123456'), 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', md5('123456'), 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');

/****首页轮播广告商品****/
-- 订单详情
CREATE TABLE trv_details(
  eid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  price DECIMAL(10,2),
  img_urls VARCHAR(1024),
  num INT,
  con INT
);
INSERT INTO trv_details VALUES(null,"桂花糕伴手礼 广西桂林特产小吃 传统糕点 好吃的糕点",69,"ImgDetail/ghg1.png,ImgDetail/ghg2.jpg,ImgDetail/ghg3.jpg,ImgDetail/ghg4.png,ImgDetail/ghg5.png",998,1);
INSERT INTO trv_details VALUES(null,"桂林 广西桂林特产 麻绳桂花酒20度750ml 桂花酒酿桂花蜜酒",99,"ImgDetail/ghj01.png,ImgDetail/ghj02.png,ImgDetail/ghj03.png,ImgDetail/ghj04.png,ImgDetail/ghj05.png,ImgDetail/ghj06.png",993,6);
INSERT INTO trv_details VALUES(null,"冰皮月饼糯米糍多口味散装蓝莓奶黄红豆抹茶冰皮中秋月饼",88,"ImgDetail/nmz1.png,ImgDetail/nmz2.png,ImgDetail/nmz3.png,ImgDetail/nmz4.png,ImgDetail/nmz5.png,ImgDetail/nmz6.png,ImgDetail/nmz7.png,ImgDetail/nmz8.png,ImgDetail/nmz9.png,ImgDetail/nmz10.png,ImgDetail/nmz11.png",991,8);
INSERT INTO trv_details VALUES(null,"桂林特产永福罗汉果大中果干果12个 罗汉果茶果肉",99,"ImgDetail/lhg1.png,ImgDetail/lhg2.png,ImgDetail/lhg3.png,ImgDetail/lhg4.png",999,0);
INSERT INTO trv_details VALUES(null,"桂林特产 桂花糕香芋糕板栗糕组合 传统糕点点心零食160G*8包",99,"ImgDetail/501.jpg,ImgDetail/502.jpg,ImgDetail/503.jpg,ImgDetail/504.jpg",999,0);
INSERT INTO trv_details VALUES(null,"桂林 象山洞藏桂林三花酒 52度500ml 老酒礼盒装白酒",189,"ImgDetail/ghj1.jpg,ImgDetail/ghj2.jpg,ImgDetail/ghj3.jpg,ImgDetail/ghj4.jpg,ImgDetail/ghj5.jpg,ImgDetail/ghj6.jpg,ImgDetail/ghj7.jpg",999,0);

/**购物车**/
CREATE TABLE trv_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  eid INT,#由session获取
  aid INT,
  img_url VARCHAR(128),
  titile VARCHAR(128),
  price DECIMAL(10,2),
  count INT
);