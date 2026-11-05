/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_achievement   */
/******************************************/
CREATE TABLE `tbl_achievement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `achievement_id` int(11) unsigned DEFAULT '0',
  `detail` varchar(255) DEFAULT '',
  `now_value` int(11) unsigned DEFAULT '0',
  `point` int(11) unsigned DEFAULT '0',
  `receive_at` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `achievement_id` (`achievement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_airdrop_treasure_box   */
/******************************************/
CREATE TABLE `tbl_airdrop_treasure_box` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `vip` tinyint(2) unsigned DEFAULT '0' COMMENT 'vip等级',
  `rewards` bigint(20) unsigned DEFAULT '0' COMMENT '奖励能量值',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=139594 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_bingo   */
/******************************************/
CREATE TABLE `tbl_bingo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `nickname` varchar(100) DEFAULT '' COMMENT '用户昵称',
  `head_url` varchar(100) DEFAULT '' COMMENT '头像',
  `level` tinyint(2) unsigned DEFAULT '0' COMMENT '1-初级 2-中级 3-高级',
  `cost` int(10) unsigned DEFAULT '0' COMMENT '消耗bingo豆',
  `result` varchar(100) DEFAULT '' COMMENT '结果',
  `result_type` tinyint(2) DEFAULT '0' COMMENT '结果类型 1-2111 2-221 3-311 4-32 5-11111 6-41 7-5',
  `base_energy` bigint(20) unsigned DEFAULT '0' COMMENT '基础能量',
  `reward_energy` bigint(20) unsigned DEFAULT '0' COMMENT '奖励能量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4434 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_bounty_task   */
/******************************************/
CREATE TABLE `tbl_bounty_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `task_id` int(11) unsigned DEFAULT '0',
  `task_detail` varchar(255) DEFAULT '',
  `cost` int(11) DEFAULT '0',
  `value` int(11) DEFAULT '0',
  `target_value` int(11) DEFAULT '0',
  `earn` float(10,2) DEFAULT '0.00',
  `receive_at` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_card_exchange   */
/******************************************/
CREATE TABLE `tbl_card_exchange` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户 ID',
  `exchange_id` int(11) unsigned DEFAULT '0' COMMENT '兑换配置 ID',
  `consume` bigint(20) unsigned DEFAULT '0' COMMENT '消耗能量',
  `is_x10` tinyint(1) DEFAULT '0' COMMENT '是否x10 0-否 1-是',
  `gift` varchar(255) DEFAULT '' COMMENT '获得道具',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `exchange_id` (`exchange_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14874 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config   */
/******************************************/
CREATE TABLE `tbl_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT '',
  `value` text,
  `value_type` enum('number','string','table') DEFAULT 'table',
  `conf_type` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT '',
  `enable` tinyint(1) DEFAULT '1',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_array   */
/******************************************/
CREATE TABLE `tbl_config_endless_array` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `detail` varchar(64) DEFAULT '',
  `spd` float(3,1) DEFAULT '0.0',
  `eid` varchar(64) DEFAULT '',
  `distance` varchar(255) DEFAULT '',
  `rType` varchar(32) DEFAULT '',
  `duration` float(10,1) DEFAULT '0.0',
  `fixed` tinyint(2) DEFAULT '0',
  `mapId` varchar(32) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_bonus_pool   */
/******************************************/
CREATE TABLE `tbl_config_endless_bonus_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '方案名称',
  `energy_per` tinyint(4) unsigned DEFAULT '0' COMMENT '能量中奖比例',
  `voucher_per` tinyint(4) unsigned DEFAULT '0' COMMENT '奖券中奖比例',
  `bonus_tax` tinyint(4) unsigned DEFAULT '0' COMMENT '服务费比例',
  `energy_tax_ratio` tinyint(4) unsigned DEFAULT '0' COMMENT '服务费进入能量池比例',
  `voucher_tax_ratio` tinyint(4) unsigned DEFAULT '0' COMMENT '服务费进入奖券池比例',
  `enemy_ls` text COMMENT '怪物配置',
  `bonus_divide_per` text COMMENT '瓜分池击中暴奖比例',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_enemy   */
/******************************************/
CREATE TABLE `tbl_config_endless_enemy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '',
  `type` tinyint(2) DEFAULT '1',
  `mul` varchar(64) DEFAULT '',
  `hp` int(10) DEFAULT '0',
  `model` varchar(124) DEFAULT '',
  `reward` varchar(255) DEFAULT '',
  `special` text,
  `kind` varchar(16) DEFAULT 'X',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_equip   */
/******************************************/
CREATE TABLE `tbl_config_endless_equip` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT '',
  `mul` varchar(32) DEFAULT '',
  `atk` int(10) DEFAULT '0',
  `atkRange` int(10) DEFAULT '0',
  `aSpd` float(4,2) DEFAULT '0.00',
  `bulletCount` varchar(64) DEFAULT '',
  `penetrating` tinyint(1) DEFAULT '0',
  `bulletSpd` int(10) DEFAULT '0',
  `spd` int(10) DEFAULT '0',
  `icon` varchar(64) DEFAULT '',
  `type` varchar(32) DEFAULT '',
  `unlockValue` bigint(20) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_item   */
/******************************************/
CREATE TABLE `tbl_config_endless_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `cd` float(6,2) DEFAULT '0.00' COMMENT '冷却时间',
  `unlockType` tinyint(2) DEFAULT '0' COMMENT '解锁条件类型',
  `unlockValue` int(10) DEFAULT '0' COMMENT '解锁值',
  `detail` varchar(100) DEFAULT '' COMMENT '技能描述',
  `atk` int(10) DEFAULT '0' COMMENT '伤害值',
  `area` float(8,2) DEFAULT '0.00' COMMENT '范围',
  `duration` float(8,2) DEFAULT '0.00' COMMENT '持续时间',
  `aSpd` float(8,2) DEFAULT '0.00' COMMENT '攻击间隔',
  `spd` float(8,2) DEFAULT '0.00' COMMENT '速度',
  `summonCount` tinyint(4) DEFAULT '0' COMMENT '召唤数量',
  `hp` float(4,2) DEFAULT '0.00' COMMENT '回血',
  `maxCount` tinyint(4) DEFAULT '0' COMMENT '最大数量',
  `type` tinyint(4) DEFAULT '0' COMMENT '类型',
  `pro` tinyint(4) DEFAULT '0' COMMENT '概率',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_line   */
/******************************************/
CREATE TABLE `tbl_config_endless_line` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT '',
  `type` tinyint(2) DEFAULT '0',
  `angle` int(10) DEFAULT '0',
  `toMid` tinyint(2) DEFAULT '0',
  `minLength` int(10) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_ng_protect   */
/******************************************/
CREATE TABLE `tbl_config_endless_ng_protect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `cfg` text,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_room   */
/******************************************/
CREATE TABLE `tbl_config_endless_room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT '',
  `mul` varchar(64) DEFAULT '',
  `limit` bigint(21) DEFAULT '0',
  `cfg` text,
  `active` tinyint(1) DEFAULT '1',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `min_vip` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_route   */
/******************************************/
CREATE TABLE `tbl_config_endless_route` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT '',
  `lineAry` varchar(255) DEFAULT '',
  `type` tinyint(2) DEFAULT '0',
  `switch` tinyint(2) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_sequence   */
/******************************************/
CREATE TABLE `tbl_config_endless_sequence` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` varchar(64) DEFAULT '',
  `startPos` varchar(128) DEFAULT '',
  `route` varchar(255) DEFAULT '',
  `midState` varchar(255) DEFAULT '',
  `midPos` varchar(255) DEFAULT '',
  `weight` int(10) DEFAULT '0',
  `mapId` varchar(32) DEFAULT '',
  `spd` varchar(64) DEFAULT '',
  `refreshInterval` varchar(125) DEFAULT '',
  `waveTime` int(10) DEFAULT '0',
  `waveCount` int(10) DEFAULT '0',
  `switch` tinyint(1) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_endless_skill   */
/******************************************/
CREATE TABLE `tbl_config_endless_skill` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT '',
  `icon` varchar(32) DEFAULT '',
  `cd` int(4) DEFAULT '0',
  `unlockType` int(4) DEFAULT '0',
  `unlockValue` int(4) DEFAULT '0',
  `detail` varchar(255) DEFAULT '',
  `area` float(10,1) DEFAULT '0.0',
  `duration` float(10,1) DEFAULT '0.0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `atk_interval` float(10,1) DEFAULT '0.0' COMMENT '攻击间隔',
  `fold_factor` int(4) DEFAULT '1' COMMENT '翻倍系数',
  `vfx_width` float(10,4) DEFAULT '0.0000' COMMENT '特效宽度',
  `vfx_length` float(10,4) DEFAULT '0.0000' COMMENT '特效长度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_first_recharge   */
/******************************************/
CREATE TABLE `tbl_config_first_recharge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '名称',
  `cfg` text COMMENT '额外配置',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id 对应shop配置表的id',
  `upgrade_goods_id` int(11) DEFAULT '0' COMMENT '升级商品id 对应shop配置表的id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_fulixiangou   */
/******************************************/
CREATE TABLE `tbl_config_fulixiangou` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品 id, 0 表示免费',
  `limit_type` tinyint(2) unsigned DEFAULT '0' COMMENT '限购类型 1-日 2-周 3-月',
  `limit_cnt` int(10) unsigned DEFAULT '1' COMMENT '限购类型 1-日 2-周 3-月',
  `discounts` varchar(20) DEFAULT NULL COMMENT '优惠',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_crit_gift   */
/******************************************/
CREATE TABLE `tbl_config_game_crit_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `reward_ratio` int(11) DEFAULT '0' COMMENT '立即到账比例',
  `reward` int(11) DEFAULT '0' COMMENT '立即到账',
  `random_show` varchar(255) DEFAULT '' COMMENT '随机能量上下限，客户端显示，例：1000:2000',
  `random_real` varchar(255) DEFAULT '' COMMENT '实际随机能量上下限，例：1000:2000:30,2000:3000:70',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id 对应shop配置表的id',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_exchange   */
/******************************************/
CREATE TABLE `tbl_config_game_exchange` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `consume` varchar(255) DEFAULT '' COMMENT '奖券消耗',
  `exchangeType` tinyint(2) DEFAULT '0' COMMENT '兑换类型：0-不限次数 1-终身次数 2-每日次数 3-引导',
  `exchangeCount` int(10) DEFAULT '0' COMMENT '兑换次数',
  `detail` varchar(255) DEFAULT '' COMMENT '兑换名称',
  `type` tinyint(2) DEFAULT '0' COMMENT '类型：1-京东卡 2-支付宝 3-能量',
  `item` varchar(255) DEFAULT '' COMMENT '兑换物品',
  `unlock` tinyint(2) DEFAULT '0' COMMENT 'vip解锁',
  `addCount` varchar(255) DEFAULT '' COMMENT 'vip增加次数',
  `completeType` tinyint(2) DEFAULT '0' COMMENT '完成类型：1-击杀任意怪数量 2-在线时长(单位秒),3-流水 4-随机',
  `completeValue` int(10) DEFAULT '0' COMMENT '完成值',
  `randomValue` varchar(255) DEFAULT '' COMMENT '任务随机参数',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `enable` tinyint(1) DEFAULT '1' COMMENT '是否启用 1-启用 2-禁用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `consume10` varchar(255) DEFAULT '' COMMENT 'x10消耗',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_flow_gift   */
/******************************************/
CREATE TABLE `tbl_config_game_flow_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flow` bigint(20) DEFAULT '0' COMMENT '流水要求',
  `reward_ratio` int(11) DEFAULT NULL COMMENT '比例',
  `reward` int(11) DEFAULT '0' COMMENT '充值获得',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id 对应shop配置表的id',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_guide   */
/******************************************/
CREATE TABLE `tbl_config_game_guide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `stepId` int(11) unsigned DEFAULT '0',
  `triggerEvent` varchar(10) DEFAULT '',
  `stepName` varchar(255) DEFAULT '',
  `npcName` varchar(100) DEFAULT '',
  `textContent` varchar(255) DEFAULT '',
  `npcIcon` varchar(50) DEFAULT '',
  `operation` tinyint(4) DEFAULT '0',
  `nextId` int(11) unsigned DEFAULT '0',
  `activeScene` tinyint(4) DEFAULT '0',
  `reward` varchar(100) DEFAULT '',
  `iconPos` varchar(50) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_icon   */
/******************************************/
CREATE TABLE `tbl_config_game_icon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT 'icon 名称',
  `level` tinyint(4) DEFAULT '0' COMMENT '等级要求',
  `conditionType` varchar(100) DEFAULT '' COMMENT '前置条件',
  `conditionValue` varchar(100) DEFAULT '' COMMENT '前置条件值',
  `apperTime` varchar(100) DEFAULT '' COMMENT '出现时间',
  `disapperTime` varchar(100) DEFAULT '' COMMENT '消失时间',
  `dur` varchar(100) DEFAULT '' COMMENT '持续时间',
  `disapperAfterBuy` tinyint(1) DEFAULT '0' COMMENT '购买后是否消失',
  `shopId` int(11) unsigned DEFAULT '0' COMMENT '对应shop表中礼包的id',
  `switch` tinyint(1) DEFAULT '0' COMMENT '开关',
  `type` tinyint(2) DEFAULT '0' COMMENT '位置类型',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_item   */
/******************************************/
CREATE TABLE `tbl_config_game_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '' COMMENT '物品名称',
  `level` tinyint(2) DEFAULT '0' COMMENT '等级',
  `class` tinyint(2) DEFAULT '0' COMMENT '大类',
  `type` tinyint(2) DEFAULT '0' COMMENT '小类',
  `hid` int(2) DEFAULT '0' COMMENT '英雄id',
  `explain` varchar(255) DEFAULT '' COMMENT '说明',
  `ATBType` tinyint(2) DEFAULT '0' COMMENT '属性类型',
  `ATBValue` int(2) DEFAULT '0' COMMENT '属性值',
  `recoverType` tinyint(2) DEFAULT '0' COMMENT '回收价格类型：1-奖券 2-金币 3-钻石',
  `recoverValue` int(2) DEFAULT '0' COMMENT '回收价格',
  `boxDetail` varchar(255) DEFAULT '' COMMENT '宝箱内容',
  `img` int(10) DEFAULT '0' COMMENT '图片id',
  `time` int(10) DEFAULT '0' COMMENT '宝箱解锁时间',
  `enable` tinyint(2) DEFAULT '1' COMMENT '是否启用:0-不启用 1-启用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_limit_all   */
/******************************************/
CREATE TABLE `tbl_config_game_limit_all` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_money` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '总充值',
  `day_limit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '当日限额',
  `tip_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提示额度',
  `tag` tinyint(10) NOT NULL DEFAULT '0' COMMENT '分组 0=日常通用 1=活动专用',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_month_card   */
/******************************************/
CREATE TABLE `tbl_config_game_month_card` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `days` tinyint(4) unsigned DEFAULT '0' COMMENT '间隔天数',
  `reward` varchar(255) DEFAULT '' COMMENT '每日奖励',
  `renew_price` int(11) DEFAULT '0' COMMENT '续费价格',
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id 对应shop配置表的id',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_payLimit   */
/******************************************/
CREATE TABLE `tbl_config_game_payLimit` (
  `uid` int(11) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT '0',
  `des` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_safeBox   */
/******************************************/
CREATE TABLE `tbl_config_game_safeBox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vid` int(10) DEFAULT '0' COMMENT 'vip id',
  `currencyValue` int(10) DEFAULT '0' COMMENT '购买金额',
  `reward` int(10) DEFAULT '0' COMMENT '获得钻石',
  `double_pro` int(10) DEFAULT '0' COMMENT '翻倍概率',
  `double_value` float(10,2) DEFAULT '1.00' COMMENT '翻倍值',
  `minEnergy` bigint(20) DEFAULT '0' COMMENT '最低能量',
  `maxEnergy` bigint(20) DEFAULT '0' COMMENT '最高能量',
  `deposit` float(3,2) DEFAULT '0.00' COMMENT '存入比例',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `dailyLimit` tinyint(4) DEFAULT '0' COMMENT '每日限购',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_sevenDay   */
/******************************************/
CREATE TABLE `tbl_config_game_sevenDay` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `day` int(11) DEFAULT '0' COMMENT '天数',
  `reward` varchar(255) DEFAULT '0' COMMENT '奖励',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_shop   */
/******************************************/
CREATE TABLE `tbl_config_game_shop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goodsType` tinyint(2) DEFAULT '0' COMMENT '商品类型',
  `goodsDetail` varchar(255) DEFAULT '' COMMENT '商品名称',
  `giftDetail` varchar(255) DEFAULT '' COMMENT '礼包内容',
  `currencyType` tinyint(2) DEFAULT '0' COMMENT '购买货币类型：1-金币 2-钻石 3-RMB 4-看广告 5-能量',
  `currencyValue` int(11) DEFAULT '0' COMMENT '购买货币值',
  `effectiveTime` int(11) DEFAULT '0' COMMENT '有效时间',
  `dailyCount` int(11) DEFAULT '0' COMMENT '每日领取次数',
  `unlockLevel` int(11) DEFAULT '0' COMMENT '解锁等级',
  `img` int(11) DEFAULT '0' COMMENT '图片id',
  `limitType` tinyint(2) DEFAULT '1' COMMENT '限购类型',
  `buyLimit` int(11) DEFAULT '0' COMMENT '购买次数限制',
  `giftRatio` bigint(20) DEFAULT '0' COMMENT '额外赠送',
  `firstGift` bigint(11) DEFAULT '0' COMMENT '首次赠送',
  `switch` tinyint(11) DEFAULT '1' COMMENT '开关',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_task   */
/******************************************/
CREATE TABLE `tbl_config_game_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '任务名称',
  `taskDeatail` varchar(200) DEFAULT '' COMMENT '任务描述',
  `completeType` tinyint(3) DEFAULT '0' COMMENT '任务完成条件类型',
  `completeValue` varchar(100) DEFAULT '' COMMENT '任务完成值',
  `type` tinyint(2) DEFAULT '0' COMMENT '任务类型',
  `useCurrency` int(10) DEFAULT '0' COMMENT '消耗红包券',
  `activeReward` int(10) DEFAULT '0' COMMENT '活跃度奖励',
  `rewardType` tinyint(2) DEFAULT '0' COMMENT '任务奖励类型',
  `rewardValue` float(12,2) unsigned DEFAULT '0.00' COMMENT '任务奖励值',
  `group` tinyint(2) DEFAULT '0' COMMENT '任务组',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `enable` tinyint(2) DEFAULT '1' COMMENT '是否启用：1-启用 0-不启用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `extraRewards` varchar(100) DEFAULT NULL COMMENT '其他额外奖励',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_game_vip   */
/******************************************/
CREATE TABLE `tbl_config_game_vip` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(10) DEFAULT '0' COMMENT '等级',
  `exp` int(10) DEFAULT '0' COMMENT '升级经验',
  `reward` varchar(255) DEFAULT '0' COMMENT '升级奖励',
  `privilege1` int(10) DEFAULT '0' COMMENT '特权1：头像',
  `privilege2` float(4,2) DEFAULT '0.00' COMMENT '特权2：玩家升级经验',
  `privilege3` int(10) DEFAULT '0' COMMENT '特权3：解锁武器',
  `privilege4` float(4,2) DEFAULT '0.00' COMMENT '特权4：保险箱次日损耗',
  `tag` int(11) DEFAULT '0' COMMENT '分组',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_grow_task   */
/******************************************/
CREATE TABLE `tbl_config_grow_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned DEFAULT '0' COMMENT '任务类型:1-奖券累计 2-首领 3-解锁1000攻击力武器 4-前往夺宝奇兵高级场 5-累计流水 6-领取夺宝福利任务奖励 7-兑换 8-领取空投礼包',
  `desc` varchar(255) DEFAULT '' COMMENT '任务描述',
  `target_value` int(11) unsigned DEFAULT '0' COMMENT '完成条件',
  `rewards` varchar(100) DEFAULT '' COMMENT '奖励',
  `room_type` tinyint(2) DEFAULT '0' COMMENT '场次类型:1-赏金战场 2-夺宝奇兵 0-不限',
  `vip` tinyint(2) DEFAULT '0' COMMENT 'vip限制',
  `enable` tinyint(2) DEFAULT '1' COMMENT '是否启用：1-启用 0-不启用',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_jd   */
/******************************************/
CREATE TABLE `tbl_config_jd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `card_pwd` varchar(255) NOT NULL,
  `expire_time` datetime DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `send_uid` int(10) unsigned DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_juhuasuan   */
/******************************************/
CREATE TABLE `tbl_config_juhuasuan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品 id',
  `group` tinyint(2) unsigned DEFAULT '0' COMMENT '编组',
  `level` tinyint(11) unsigned DEFAULT '0' COMMENT '等级',
  `expire_minutes` int(11) unsigned DEFAULT '0' COMMENT '到期分钟数',
  `discounts` varchar(100) DEFAULT '' COMMENT '优惠',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_limit_gift   */
/******************************************/
CREATE TABLE `tbl_config_limit_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品 id',
  `timeout` int(11) unsigned DEFAULT '0' COMMENT '倒计时，秒',
  `type` tinyint(1) DEFAULT '1' COMMENT '类型：1-小于某些条件 2-大于某些条件',
  `recharge_acc` int(11) DEFAULT '0' COMMENT '累计充值金额',
  `energy` int(11) DEFAULT '0' COMMENT '能量小于',
  `discounts` varchar(11) DEFAULT '0' COMMENT '优惠',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_marquee_tpl   */
/******************************************/
CREATE TABLE `tbl_config_marquee_tpl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) DEFAULT '' COMMENT '模板类型',
  `content` text COMMENT '模板内容',
  `remark` varchar(100) DEFAULT '' COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_mix   */
/******************************************/
CREATE TABLE `tbl_config_mix` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `k` varchar(255) CHARACTER SET utf8 NOT NULL,
  `val` json NOT NULL COMMENT '不管怎么样，直接解 {"v"=>值} ',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `k_UNIQUE` (`k`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='混合配置表 '
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_ng_task   */
/******************************************/
CREATE TABLE `tbl_config_ng_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned DEFAULT '0' COMMENT '任务类型:1-奖券累计 2-能量赢取 3-商城充值 4-赏金战场通关',
  `desc` varchar(255) DEFAULT '' COMMENT '任务描述',
  `target_value` bigint(20) unsigned DEFAULT '0' COMMENT '完成条件',
  `rewards` varchar(100) DEFAULT '' COMMENT '奖励',
  `room_type` tinyint(2) DEFAULT '0' COMMENT '场次类型:1-赏金战场 2-夺宝奇兵 0-不限',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_open_ceremony   */
/******************************************/
CREATE TABLE `tbl_config_open_ceremony` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cfg` text COMMENT '活动配置',
  `period` int(11) DEFAULT '1' COMMENT '期数',
  `start_time` int(11) unsigned DEFAULT '1' COMMENT '开始时间',
  `end_time` int(11) unsigned DEFAULT '1' COMMENT '结束时间',
  `send_time` datetime DEFAULT NULL COMMENT '奖励发放时间, null时表示未发放',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_rank_reward   */
/******************************************/
CREATE TABLE `tbl_config_rank_reward` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rewards_cfg` text COMMENT '奖励配置',
  `base_cfg` text COMMENT '基础配置',
  `goods` text COMMENT '商品配置',
  `period` int(11) DEFAULT '1' COMMENT '期数',
  `start_time` int(11) unsigned DEFAULT '1' COMMENT '开始时间',
  `end_time` int(11) unsigned DEFAULT '1' COMMENT '结束时间',
  `send_time` datetime DEFAULT NULL COMMENT '奖励发放时间, null时表示未发放',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_red_packet   */
/******************************************/
CREATE TABLE `tbl_config_red_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品 id',
  `cfg` text COMMENT '红包金额随机配置',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_register_ceremony   */
/******************************************/
CREATE TABLE `tbl_config_register_ceremony` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cfg` text COMMENT '活动配置',
  `days` tinyint(4) DEFAULT '7' COMMENT '持续天数',
  `start_time` int(11) unsigned DEFAULT '1' COMMENT '注册开始时间',
  `end_time` int(11) unsigned DEFAULT '1' COMMENT '注册结束时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_return_gift   */
/******************************************/
CREATE TABLE `tbl_config_return_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `vip` tinyint(2) DEFAULT '0' COMMENT 'vip等级',
  `day1` varchar(100) DEFAULT '' COMMENT '第1天',
  `day2` varchar(100) DEFAULT '' COMMENT '第2天',
  `day3` varchar(100) DEFAULT '' COMMENT '第3天',
  `day5` varchar(100) DEFAULT '' COMMENT '第5天',
  `day7` varchar(100) DEFAULT '' COMMENT '第7天',
  `day10` varchar(100) DEFAULT '' COMMENT '第10天',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_vip_gift   */
/******************************************/
CREATE TABLE `tbl_config_vip_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT '0' COMMENT '商品id 对应shop配置表的id',
  `discounts` varchar(50) DEFAULT '' COMMENT '显示优惠',
  `vip_min` tinyint(2) DEFAULT '0' COMMENT 'vip 下限',
  `vip_max` tinyint(2) DEFAULT '0' COMMENT 'vip 上限',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_config_yibenwanli   */
/******************************************/
CREATE TABLE `tbl_config_yibenwanli` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品 id',
  `level` tinyint(11) unsigned DEFAULT '0' COMMENT '等级',
  `tasks` text COMMENT '任务',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_crit_gift   */
/******************************************/
CREATE TABLE `tbl_crit_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户id',
  `goods_id` int(11) unsigned DEFAULT NULL COMMENT '商品id',
  `cost` int(11) unsigned DEFAULT NULL COMMENT '商品金额',
  `energy` bigint(20) DEFAULT NULL COMMENT '立即获得的能量值',
  `rand_energy` bigint(20) DEFAULT NULL COMMENT '额外随机的能量值',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=44565 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_daily_sign   */
/******************************************/
CREATE TABLE `tbl_daily_sign` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `day` tinyint(1) unsigned DEFAULT '0',
  `date` date DEFAULT NULL,
  `receive_at` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=109000 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_daily_task   */
/******************************************/
CREATE TABLE `tbl_daily_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `task_id` int(11) unsigned DEFAULT '0',
  `task_detail` varchar(255) DEFAULT '',
  `date` date DEFAULT NULL,
  `value` int(11) unsigned DEFAULT '0',
  `receive_at` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_daily_wheel   */
/******************************************/
CREATE TABLE `tbl_daily_wheel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `energy` int(11) unsigned DEFAULT '0' COMMENT '获得能量',
  `type` tinyint(2) DEFAULT '0' COMMENT '类型:1-新用户7天，2-流水未达标 3-流水达标未满足招财 4-满足招财',
  `wheel` varchar(20) DEFAULT '' COMMENT '所中转盘:w1,w2...',
  `date` date DEFAULT NULL COMMENT '签到日期',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=280370 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_endless_daily_log   */
/******************************************/
CREATE TABLE `tbl_endless_daily_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `room_id` int(11) unsigned DEFAULT '0' COMMENT '游戏房间id',
  `date` date DEFAULT NULL COMMENT '日期',
  `time` bigint(20) unsigned DEFAULT '0' COMMENT '游戏时长，单位秒',
  `cost_energy` bigint(20) unsigned DEFAULT '0' COMMENT '消耗能量',
  `win_energy` bigint(20) unsigned DEFAULT '0' COMMENT '获得能量',
  `win_voucher` bigint(20) unsigned DEFAULT '0' COMMENT '获得奖券',
  `bonus_voucher` bigint(20) unsigned DEFAULT '0' COMMENT '奖池获得奖券',
  `bonus_energy` bigint(20) unsigned DEFAULT '0' COMMENT '奖池获得能量',
  `ng_cost_energy` bigint(20) unsigned DEFAULT '0' COMMENT '策略消耗能量',
  `ng_win_energy` bigint(20) unsigned DEFAULT '0' COMMENT '策略获得能量',
  `ng_win_voucher` bigint(20) unsigned DEFAULT '0' COMMENT '策略获得奖券',
  `tax` bigint(20) unsigned DEFAULT '0' COMMENT '普通税收',
  `voucher_tax` bigint(20) unsigned DEFAULT '0' COMMENT '奖券税收',
  `bonus_tax` bigint(20) unsigned DEFAULT '0' COMMENT '奖池税收',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=752949 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_endless_pool   */
/******************************************/
CREATE TABLE `tbl_endless_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `room_id` tinyint(2) unsigned DEFAULT '0',
  `line` bigint(20) DEFAULT '0',
  `eat` bigint(20) DEFAULT '0',
  `give` bigint(20) DEFAULT '0',
  `tax` bigint(20) DEFAULT '0',
  `voucher_tax` bigint(20) DEFAULT '0',
  `real_voucher_tax` bigint(20) DEFAULT '0',
  `A_line` bigint(20) DEFAULT '0',
  `A_eat` bigint(20) DEFAULT '0',
  `A_give` bigint(20) DEFAULT '0',
  `A_tax` bigint(20) DEFAULT '0',
  `A_voucher_tax` bigint(20) DEFAULT '0',
  `B_line` bigint(20) DEFAULT '0',
  `B_eat` bigint(20) DEFAULT '0',
  `B_give` bigint(20) DEFAULT '0',
  `B_tax` bigint(20) DEFAULT '0',
  `B_voucher_tax` bigint(20) DEFAULT '0',
  `C_line` bigint(20) DEFAULT '0',
  `C_eat` bigint(20) DEFAULT '0',
  `C_give` bigint(20) DEFAULT '0',
  `C_tax` bigint(20) DEFAULT '0',
  `C_voucher_tax` bigint(20) DEFAULT '0',
  `D_line` bigint(20) DEFAULT '0',
  `D_eat` bigint(20) DEFAULT '0',
  `D_give` bigint(20) DEFAULT '0',
  `D_tax` bigint(20) DEFAULT '0',
  `D_voucher_tax` bigint(20) DEFAULT '0',
  `E_line` bigint(20) DEFAULT '0',
  `E_eat` bigint(20) DEFAULT '0',
  `E_give` bigint(20) DEFAULT '0',
  `E_tax` bigint(20) DEFAULT '0',
  `E_voucher_tax` bigint(20) DEFAULT '0',
  `F_line` bigint(20) DEFAULT '0',
  `F_eat` bigint(20) DEFAULT '0',
  `F_give` bigint(20) DEFAULT '0',
  `F_tax` bigint(20) DEFAULT '0',
  `F_voucher_tax` bigint(20) DEFAULT '0',
  `X_line` bigint(20) DEFAULT '0',
  `X_eat` bigint(20) DEFAULT '0',
  `X_give` bigint(20) DEFAULT '0',
  `X_tax` bigint(20) DEFAULT '0',
  `X_voucher_tax` bigint(20) DEFAULT '0',
  `bonus_energy_bls` bigint(20) DEFAULT '0',
  `bonus_voucher_bls` bigint(20) DEFAULT '0',
  `bonus_eat` bigint(20) DEFAULT '0',
  `bonus_give` bigint(20) DEFAULT '0',
  `real_bonus_flow` bigint(20) DEFAULT '0',
  `fake_bonus_flow` bigint(20) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_id` (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_exchange_order   */
/******************************************/
CREATE TABLE `tbl_exchange_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户 id',
  `type` tinyint(2) unsigned DEFAULT '0' COMMENT '兑换类型：1-京东卡 2-支付宝 3-能量',
  `exchange_id` int(11) unsigned DEFAULT '0' COMMENT '兑换配置id',
  `exchange_no` varchar(64) DEFAULT '' COMMENT '交易订单号',
  `withdraw_money` decimal(11,2) unsigned DEFAULT '0.00' COMMENT '提现金额',
  `account_name` varchar(64) DEFAULT '' COMMENT '用户提现账号名称',
  `account_no` varchar(255) DEFAULT '' COMMENT '用户提现账号',
  `merchant_no` varchar(255) DEFAULT '' COMMENT '商户号',
  `detail` varchar(255) DEFAULT '' COMMENT '兑换名称',
  `state` tinyint(11) unsigned DEFAULT '0' COMMENT '提现状态：0-待提现 1-提现成功 2-提现失败',
  `out_order_no` varchar(255) DEFAULT '' COMMENT '外部订单号',
  `finish_at` datetime DEFAULT NULL COMMENT '订单完成时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `outer_id` varchar(64) DEFAULT '' COMMENT '商城订单号',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `exchange_no` (`exchange_no`),
  KEY `finish_at` (`finish_at`),
  KEY `outer_id` (`outer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=611095 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_exchange_task   */
/******************************************/
CREATE TABLE `tbl_exchange_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `exchange_id` int(11) unsigned DEFAULT '0' COMMENT '兑换id',
  `value` bigint(20) unsigned DEFAULT '0' COMMENT '玩家的达成值',
  `completeValue` bigint(20) unsigned DEFAULT '0' COMMENT '完成值',
  `completeType` bigint(20) unsigned DEFAULT '0' COMMENT '完成类型',
  `exchange_no` varchar(64) DEFAULT NULL COMMENT '提现订单号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `exchange_id` (`exchange_id`)
) ENGINE=InnoDB AUTO_INCREMENT=281270 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_first_recharge   */
/******************************************/
CREATE TABLE `tbl_first_recharge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户id',
  `goods_id` int(11) unsigned DEFAULT NULL COMMENT '商品id',
  `day` int(11) unsigned DEFAULT '1' COMMENT '第几天',
  `rewards` varchar(100) DEFAULT '' COMMENT '获得的物品奖励',
  `can_receive_time` int(11) unsigned DEFAULT '0' COMMENT '可领取的开始时间',
  `receive_at` datetime DEFAULT NULL COMMENT '领取时间',
  `send_at` datetime DEFAULT NULL COMMENT '邮件发送时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=16840 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_first_recharge_draw   */
/******************************************/
CREATE TABLE `tbl_first_recharge_draw` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品 id',
  `item_id` int(11) unsigned DEFAULT '0' COMMENT '道具 id',
  `cnt` bigint(11) unsigned DEFAULT '0' COMMENT '发放数量',
  `day` date DEFAULT NULL COMMENT '抽奖日期',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `day` (`day`)
) ENGINE=InnoDB AUTO_INCREMENT=99766 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_first_recharge_rewards   */
/******************************************/
CREATE TABLE `tbl_first_recharge_rewards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_recharge_id` int(11) unsigned DEFAULT NULL COMMENT '首充数据id',
  `item_id` int(11) unsigned DEFAULT '1' COMMENT '道具id',
  `item_cnt` int(11) unsigned DEFAULT '1' COMMENT '道具数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `first_recharge_id` (`first_recharge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61744 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_flow_gift   */
/******************************************/
CREATE TABLE `tbl_flow_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户id',
  `goods_id` int(11) unsigned DEFAULT NULL COMMENT '商品id',
  `cost` int(11) unsigned DEFAULT NULL COMMENT '商品金额',
  `energy` bigint(20) DEFAULT NULL COMMENT '获得的能量值',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=15062 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_game_data   */
/******************************************/
CREATE TABLE `tbl_game_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` varchar(32) DEFAULT '',
  `uid` int(11) unsigned DEFAULT '0',
  `type` tinyint(1) unsigned DEFAULT '1',
  `init_data` mediumtext,
  `result_data` mediumtext,
  `status` int(11) DEFAULT '1',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `game_id` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_god_draw   */
/******************************************/
CREATE TABLE `tbl_god_draw` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `nickname` varchar(100) DEFAULT '' COMMENT '用户昵称',
  `head_url` varchar(100) DEFAULT '' COMMENT '头像',
  `draw_level` tinyint(2) unsigned DEFAULT '0' COMMENT '1-初级 2-中级 3-高级',
  `prob_level` tinyint(2) unsigned DEFAULT '0' COMMENT '概率等级: * 5%即为中奖概率',
  `cost_voucher` bigint(20) unsigned DEFAULT '0' COMMENT '消耗奖券',
  `win_energy` bigint(20) unsigned DEFAULT '0' COMMENT '奖励能量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=28915 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_grow_task   */
/******************************************/
CREATE TABLE `tbl_grow_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `task_id` int(11) unsigned DEFAULT '0' COMMENT '任务id',
  `cur_value` bigint(20) unsigned DEFAULT '0' COMMENT '当前任务进度值',
  `receive_at` datetime DEFAULT NULL COMMENT '领取时间',
  `rewards` varchar(100) DEFAULT '' COMMENT '领取的奖励',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=606127 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_guide   */
/******************************************/
CREATE TABLE `tbl_guide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `guide_id` int(11) unsigned DEFAULT '0',
  `step_name` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=1564399 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_item_card_stats   */
/******************************************/
CREATE TABLE `tbl_item_card_stats` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) unsigned DEFAULT '0' COMMENT '道具 id',
  `send_cnt` bigint(11) unsigned DEFAULT '0' COMMENT '发放数量',
  `use_cnt` bigint(20) unsigned DEFAULT '0' COMMENT '使用数量',
  `day` varchar(20) DEFAULT '' COMMENT '日期',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `day` (`day`)
) ENGINE=InnoDB AUTO_INCREMENT=5343 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_mail   */
/******************************************/
CREATE TABLE `tbl_mail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户id',
  `type` tinyint(4) unsigned DEFAULT NULL COMMENT '邮件类型',
  `title` varchar(64) DEFAULT NULL COMMENT '邮件标题',
  `content` varchar(512) DEFAULT NULL COMMENT '邮件内容',
  `attachment` varchar(256) DEFAULT NULL COMMENT '附件内容',
  `from` varchar(64) DEFAULT NULL COMMENT '发送人',
  `to` varchar(64) DEFAULT NULL COMMENT '收件人',
  `fromuid` int(11) DEFAULT '0' COMMENT '发件人 uid',
  `status` tinyint(2) DEFAULT '0' COMMENT '邮件状态，0未读，1已读，2附件已取',
  `sendtime` int(11) DEFAULT NULL COMMENT '邮件发送时间',
  `gettime` int(11) DEFAULT NULL COMMENT '收取附件时间',
  `readtime` int(11) DEFAULT NULL COMMENT '邮件读取时间',
  `expiretime` int(11) DEFAULT NULL COMMENT '过期时间',
  `reason` int(11) DEFAULT '0',
  `ext` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fromuid` (`fromuid`),
  KEY `expiretime` (`expiretime`)
) ENGINE=InnoDB AUTO_INCREMENT=17142 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_month_card   */
/******************************************/
CREATE TABLE `tbl_month_card` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户id',
  `goods_id` int(11) unsigned DEFAULT NULL COMMENT '商品id',
  `order_id` int(11) unsigned DEFAULT NULL COMMENT '订单id',
  `day` date DEFAULT NULL COMMENT '可领取日期',
  `reward` varchar(255) DEFAULT NULL COMMENT '礼包内容',
  `receive_at` datetime DEFAULT NULL COMMENT '领取时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_renew` tinyint(2) unsigned DEFAULT '0' COMMENT '是否续费 0-不是 1-是',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `day` (`day`)
) ENGINE=InnoDB AUTO_INCREMENT=68281 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_ng_task   */
/******************************************/
CREATE TABLE `tbl_ng_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `task_id` int(11) unsigned DEFAULT '0' COMMENT '任务id',
  `active_time` int(11) DEFAULT '0' COMMENT '激活时间',
  `day` tinyint(2) DEFAULT '0' COMMENT '第n天',
  `cur_value` int(11) unsigned DEFAULT '0' COMMENT '当前进度',
  `receive_at` datetime DEFAULT NULL COMMENT '领取时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `active_time` (`active_time`)
) ENGINE=InnoDB AUTO_INCREMENT=865943 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_notice   */
/******************************************/
CREATE TABLE `tbl_notice` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `title` varchar(255) DEFAULT '' COMMENT '公告名称',
  `image` varchar(255) DEFAULT '' COMMENT '插图资源',
  `show_time` int(11) unsigned DEFAULT '0' COMMENT '出现时间',
  `vanish_time` int(11) unsigned DEFAULT '0' COMMENT '消失时间',
  `content` text COMMENT '公告内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `popup` tinyint(1) DEFAULT '0' COMMENT '是否弹窗',
  `marquee` tinyint(1) DEFAULT '0' COMMENT '是否跑马灯',
  `only_marquee` tinyint(1) DEFAULT '0' COMMENT '是否仅跑马灯',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_open_ceremony   */
/******************************************/
CREATE TABLE `tbl_open_ceremony` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `period` int(11) DEFAULT '1' COMMENT '期数',
  `recharge` int(11) DEFAULT '0' COMMENT '充值金额',
  `flow` bigint(20) DEFAULT '0' COMMENT '产生流水',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7229 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_open_ceremony_rewards   */
/******************************************/
CREATE TABLE `tbl_open_ceremony_rewards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ceremony_id` int(11) DEFAULT '1' COMMENT '关联的tbl_open_ceremony的ID',
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `period` int(11) DEFAULT '1' COMMENT '期数',
  `reward_type` int(11) DEFAULT '0' COMMENT '奖励类型：1-充值 2-流水',
  `reward_level` int(11) DEFAULT '0' COMMENT '奖励等级:1-10',
  `sn` int(11) DEFAULT '0' COMMENT '选择的哪个奖励:1-3',
  `rewards` varchar(100) DEFAULT NULL COMMENT '获得奖励',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ceremony_id` (`ceremony_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1287 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_order   */
/******************************************/
CREATE TABLE `tbl_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `pay_id` varchar(255) DEFAULT '',
  `cost` float(10,2) unsigned DEFAULT '0.00',
  `goods_id` int(11) unsigned DEFAULT '0',
  `goods_detail` varchar(255) DEFAULT '',
  `gift_detail` varchar(255) DEFAULT '',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `extra_energy` bigint(20) unsigned DEFAULT '0' COMMENT '能量增幅额外增加',
  `extra_per` tinyint(2) unsigned DEFAULT '0' COMMENT '能量增幅比例',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=472060 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_pass_check   */
/******************************************/
CREATE TABLE `tbl_pass_check` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `level` int(11) unsigned DEFAULT '0',
  `free_receive_at` datetime DEFAULT NULL,
  `premium_receive_at` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_pass_order   */
/******************************************/
CREATE TABLE `tbl_pass_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_plan   */
/******************************************/
CREATE TABLE `tbl_plan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '' COMMENT '方案名称',
  `data` text COMMENT '方案数据',
  `channel` text COMMENT '渠道',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_player   */
/******************************************/
CREATE TABLE `tbl_player` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT '*',
  `head_url` varchar(255) DEFAULT '',
  `gold` bigint(20) DEFAULT '0',
  `energy` bigint(20) DEFAULT '0',
  `diamond` bigint(20) DEFAULT '0',
  `voucher` bigint(20) DEFAULT '0',
  `vip` tinyint(3) DEFAULT '0',
  `data_str` blob,
  `status` int(11) DEFAULT '0',
  `status_note` varchar(255) DEFAULT NULL,
  `online` tinyint(4) DEFAULT '0',
  `bounty_voucher_acc` bigint(20) DEFAULT '0',
  `channel` varchar(100) DEFAULT '',
  `is_mini` tinyint(2) DEFAULT '0' COMMENT '是否小号',
  `can_ch_nickname` tinyint(2) DEFAULT '1' COMMENT '是否可以修改昵称 0-否 1-是',
  `create_sec` int(11) unsigned DEFAULT NULL,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  KEY `gold` (`gold`)
) ENGINE=InnoDB AUTO_INCREMENT=361859 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_player_recharge_divide   */
/******************************************/
CREATE TABLE `tbl_player_recharge_divide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `period` int(11) unsigned DEFAULT '1' COMMENT '期数',
  `recharge` bigint(20) DEFAULT '0' COMMENT '累计充值金额',
  `to_pool_energy` bigint(20) DEFAULT '0' COMMENT '总填入奖池能量',
  `send_energy` bigint(20) DEFAULT '0' COMMENT '总立即到账能量',
  `divide_rate` float(5,4) DEFAULT '0.0000' COMMENT '瓜分比例',
  `divide_energy` bigint(20) DEFAULT '0' COMMENT '瓜分到的能量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `period` (`period`)
) ENGINE=InnoDB AUTO_INCREMENT=8857 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_player_voucher_divide   */
/******************************************/
CREATE TABLE `tbl_player_voucher_divide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `period` int(11) unsigned DEFAULT '1' COMMENT '期数',
  `voucher` bigint(20) DEFAULT '0' COMMENT '中级场累计获得奖券值',
  `flow` bigint(20) DEFAULT '0' COMMENT '中级场累计流水',
  `divide_rate` float(5,4) DEFAULT '0.0000' COMMENT '瓜分比例',
  `divide_voucher` bigint(20) DEFAULT '0' COMMENT '瓜分到的奖券',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `period` (`period`)
) ENGINE=InnoDB AUTO_INCREMENT=10910 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_point_rank   */
/******************************************/
CREATE TABLE `tbl_point_rank` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `type1` int(11) unsigned DEFAULT '0' COMMENT '普通怪数量',
  `type2` int(11) unsigned DEFAULT '0' COMMENT 'BOSS怪数量',
  `type3` int(11) unsigned DEFAULT '0' COMMENT '精英怪数量',
  `type4` int(11) unsigned DEFAULT '0' COMMENT '首领怪数量',
  `points` bigint(20) DEFAULT '0' COMMENT '积分',
  `date` date DEFAULT NULL COMMENT '日期',
  `rewards` varchar(100) DEFAULT '' COMMENT '奖励',
  `receive_at` datetime DEFAULT NULL COMMENT '领取时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nickname` varchar(50) DEFAULT '' COMMENT '昵称',
  `head_url` varchar(50) DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `date` (`date`),
  KEY `points` (`points`)
) ENGINE=InnoDB AUTO_INCREMENT=110109 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_pool_reward_period   */
/******************************************/
CREATE TABLE `tbl_pool_reward_period` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `period` int(11) unsigned DEFAULT '1' COMMENT '期数',
  `expire` bigint(20) unsigned DEFAULT '0' COMMENT '过期时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_rank   */
/******************************************/
CREATE TABLE `tbl_rank` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `type` tinyint(1) unsigned DEFAULT '0',
  `value` bigint(21) unsigned DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_rank_reward   */
/******************************************/
CREATE TABLE `tbl_rank_reward` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `period` int(11) DEFAULT '1' COMMENT '期数',
  `recharge` int(11) DEFAULT '0' COMMENT '充值金额',
  `flow` bigint(20) DEFAULT '0' COMMENT '产生流水',
  `points` decimal(20,2) DEFAULT '0.00' COMMENT '积分',
  `rewards` varchar(100) DEFAULT NULL COMMENT '获得奖励',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3568 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_recharge_divide_pool   */
/******************************************/
CREATE TABLE `tbl_recharge_divide_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` int(11) unsigned DEFAULT '0' COMMENT '开始时间',
  `send_energy` bigint(20) DEFAULT '0' COMMENT '总立即到账',
  `energy` bigint(20) DEFAULT '0' COMMENT '奖池累计能量值',
  `min_energy` bigint(20) DEFAULT '0' COMMENT '奖池保底能量',
  `period` int(11) unsigned DEFAULT '0' COMMENT '期数',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '奖励是否已发 0-未发 1-已发',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `period` (`period`)
) ENGINE=InnoDB AUTO_INCREMENT=1089 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_red_packet   */
/******************************************/
CREATE TABLE `tbl_red_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `nickname` varchar(50) DEFAULT '0' COMMENT '昵称',
  `total_energy` bigint(20) unsigned DEFAULT '0' COMMENT '总能量',
  `divide_cnt` int(10) unsigned DEFAULT '0' COMMENT '总瓜分数量',
  `remaining_cnt` int(10) unsigned DEFAULT '0' COMMENT '剩余数量',
  `remaining_energy` int(10) unsigned DEFAULT '0' COMMENT '剩余能量',
  `msg` varchar(255) DEFAULT '' COMMENT '红包祝福文字',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_id` int(11) unsigned DEFAULT '0' COMMENT '订单号',
  `min_energy` int(10) unsigned DEFAULT '1' COMMENT '最低瓜分能量',
  `send_at` datetime DEFAULT NULL COMMENT '放送时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_red_packet_item   */
/******************************************/
CREATE TABLE `tbl_red_packet_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `red_packet_id` int(11) unsigned DEFAULT '0' COMMENT '红包id',
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `nickname` varchar(50) DEFAULT '0' COMMENT '昵称',
  `divide_energy` int(10) unsigned DEFAULT '0' COMMENT '领取到的数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `red_packet_id` (`red_packet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_register_ceremony   */
/******************************************/
CREATE TABLE `tbl_register_ceremony` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `recharge` int(11) DEFAULT '0' COMMENT '充值金额',
  `flow` bigint(20) DEFAULT '0' COMMENT '产生流水',
  `end_time` int(11) unsigned DEFAULT '0' COMMENT '结束时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=12188 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_register_ceremony_rewards   */
/******************************************/
CREATE TABLE `tbl_register_ceremony_rewards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ceremony_id` int(11) DEFAULT '1' COMMENT '关联的tbl_register_ceremony的ID',
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `reward_type` int(11) DEFAULT '0' COMMENT '奖励类型：1-充值 2-流水',
  `reward_level` int(11) DEFAULT '0' COMMENT '奖励等级:1-10',
  `sn` int(11) DEFAULT '0' COMMENT '选择的哪个奖励:1-3',
  `rewards` varchar(100) DEFAULT NULL COMMENT '获得奖励',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ceremony_id` (`ceremony_id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_return_gift   */
/******************************************/
CREATE TABLE `tbl_return_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `send_id` int(11) unsigned DEFAULT '0' COMMENT '发放id',
  `day` tinyint(2) DEFAULT '0' COMMENT '第n天',
  `date` date DEFAULT NULL COMMENT '生效日期',
  `rewards` varchar(100) DEFAULT '' COMMENT '奖励',
  `receive_at` datetime DEFAULT NULL COMMENT '领取时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=2588 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_return_gift_send_log   */
/******************************************/
CREATE TABLE `tbl_return_gift_send_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `vip` tinyint(2) DEFAULT '0' COMMENT 'vip等级',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `start_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=531 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_safe_box_order   */
/******************************************/
CREATE TABLE `tbl_safe_box_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户 id',
  `order_no` varchar(32) DEFAULT '' COMMENT '交易订单号',
  `safe_box_id` int(11) DEFAULT '0' COMMENT '保险箱配置id',
  `out_order_no` varchar(255) DEFAULT '' COMMENT '外部订单号',
  `money` int(11) unsigned DEFAULT '0' COMMENT '提现金额',
  `reward` bigint(20) DEFAULT '0' COMMENT '获得钻石',
  `energy` bigint(20) DEFAULT '0' COMMENT '获得能量',
  `is_double` tinyint(1) DEFAULT '0' COMMENT '是否翻倍：0-未翻倍 1-翻倍',
  `state` tinyint(11) unsigned DEFAULT '0' COMMENT '支付状态：0-待支付 1-支付成功',
  `finish_at` datetime DEFAULT NULL COMMENT '订单完成时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `extra_energy` bigint(20) unsigned DEFAULT '0' COMMENT '能量增幅额外增加',
  `extra_per` tinyint(2) unsigned DEFAULT '0' COMMENT '能量增幅比例',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2120 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_seven_day_wel   */
/******************************************/
CREATE TABLE `tbl_seven_day_wel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `day` tinyint(1) unsigned DEFAULT '0',
  `receive_at` datetime DEFAULT NULL,
  `can_receive` tinyint(1) unsigned DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=38928 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_star_treasure   */
/******************************************/
CREATE TABLE `tbl_star_treasure` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `nickname` varchar(100) DEFAULT '' COMMENT '用户昵称',
  `period` int(11) unsigned DEFAULT '0' COMMENT '期数',
  `seat` tinyint(2) unsigned DEFAULT '0' COMMENT '占座位置',
  `rewards` bigint(20) unsigned DEFAULT '0' COMMENT '奖励能量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_task   */
/******************************************/
CREATE TABLE `tbl_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0',
  `task_id` int(11) unsigned DEFAULT '0' COMMENT '任务id',
  `task_detail` varchar(255) DEFAULT '' COMMENT '任务名称',
  `expire_time` bigint(20) DEFAULT '9999999999' COMMENT '过期时间',
  `value` bigint(20) unsigned DEFAULT '0' COMMENT '达成值',
  `target` bigint(20) unsigned DEFAULT '0' COMMENT '目标值',
  `period` int(11) DEFAULT '0' COMMENT '期数',
  `reward_type` tinyint(2) DEFAULT '0' COMMENT '奖励类型',
  `reward_value` float(12,2) unsigned DEFAULT '0.00' COMMENT '奖励值',
  `receive_at` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `extraRewards` varchar(100) DEFAULT NULL COMMENT '其他额外奖励',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `task_id` (`task_id`),
  KEY `expire_time` (`expire_time`)
) ENGINE=InnoDB AUTO_INCREMENT=8823954 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_voucher_divide_pool   */
/******************************************/
CREATE TABLE `tbl_voucher_divide_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` int(11) unsigned DEFAULT '0' COMMENT '开始时间',
  `energy` bigint(20) DEFAULT '0' COMMENT '中级场累计能量值',
  `period` int(11) unsigned DEFAULT '0' COMMENT '期数',
  `is_send` tinyint(1) DEFAULT '0' COMMENT '奖励是否已发 0-未发 1-已发',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `period` (`period`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4
;

/******************************************/
/*   DatabaseName = sgxd_game   */
/*   TableName = tbl_yibenwanli_task   */
/******************************************/
CREATE TABLE `tbl_yibenwanli_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned DEFAULT '0' COMMENT '用户id',
  `pay_id` varchar(50) DEFAULT '' COMMENT '支付单号',
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品 id',
  `task_id` int(11) unsigned DEFAULT '0' COMMENT '任务',
  `flow` bigint(20) unsigned DEFAULT '0' COMMENT '目标流水',
  `current_flow` bigint(20) unsigned DEFAULT '0' COMMENT '达成流水',
  `energy` bigint(20) unsigned DEFAULT '0' COMMENT '奖励能量',
  `receive_at` datetime DEFAULT NULL COMMENT '奖励领取时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `goods_id` (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11362 DEFAULT CHARSET=utf8mb4
;
