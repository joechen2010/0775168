DROP TABLE IF EXISTS hh_ad_compete_place;
CREATE TABLE `hh_ad_compete_place` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `price` mediumint(5) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `adnum` smallint(3) NOT NULL DEFAULT '0',
  `wordnum` smallint(3) NOT NULL DEFAULT '0',
  `autoyz` tinyint(1) NOT NULL DEFAULT '1',
  `demourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_ad_compete_user;
CREATE TABLE `hh_ad_compete_user` (
  `ad_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `money` mediumint(6) NOT NULL DEFAULT '0',
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `adlink` varchar(200) NOT NULL DEFAULT '',
  `adword` varchar(255) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `color` varchar(20) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`),
  KEY `id` (`id`,`endtime`,`money`,`yz`),
  KEY `city_id` (`city_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_ad_config;
CREATE TABLE `hh_ad_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_ad_norm_place;
CREATE TABLE `hh_ad_norm_place` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `adcode` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(6) NOT NULL DEFAULT '0',
  `moneycard` mediumint(6) NOT NULL DEFAULT '0',
  `ifsale` tinyint(1) NOT NULL DEFAULT '0',
  `autoyz` tinyint(1) NOT NULL DEFAULT '0',
  `demourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_ad_norm_user;
CREATE TABLE `hh_ad_norm_user` (
  `u_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `u_uid` mediumint(7) NOT NULL DEFAULT '0',
  `u_username` varchar(30) NOT NULL DEFAULT '',
  `u_day` smallint(4) NOT NULL DEFAULT '0',
  `u_begintime` int(10) NOT NULL DEFAULT '0',
  `u_endtime` int(10) NOT NULL DEFAULT '0',
  `u_hits` mediumint(7) NOT NULL DEFAULT '0',
  `u_yz` tinyint(1) NOT NULL DEFAULT '0',
  `u_code` text NOT NULL,
  `u_money` mediumint(7) NOT NULL DEFAULT '0',
  `u_moneycard` mediumint(7) NOT NULL DEFAULT '0',
  `u_posttime` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u_id`),
  KEY `u_endtime` (`u_endtime`),
  KEY `city_id` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_admin_menu;
CREATE TABLE `hh_admin_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `groupid` mediumint(5) NOT NULL DEFAULT '0',
  `iftier` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_alonepage;
CREATE TABLE `hh_alonepage` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `tpl_head` varchar(50) NOT NULL DEFAULT '',
  `tpl_main` varchar(50) NOT NULL DEFAULT '',
  `tpl_foot` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_area;
CREATE TABLE `hh_area` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `dirname` varchar(150) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_city;
CREATE TABLE `hh_city` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `letter` varchar(5) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `dirname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `letter` (`letter`),
  KEY `list` (`list`)
) ENGINE=MyISAM AUTO_INCREMENT=339 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_config;
CREATE TABLE `hh_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_coupon_config;
CREATE TABLE `hh_coupon_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_coupon_content;
CREATE TABLE `hh_coupon_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_coupon_content_1;
CREATE TABLE `hh_coupon_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `price` varchar(8) NOT NULL DEFAULT '',
  `mart_price` varchar(8) NOT NULL DEFAULT '',
  `end_time` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `my_rooms` (`price`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_coupon_field;
CREATE TABLE `hh_coupon_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_coupon_module;
CREATE TABLE `hh_coupon_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_coupon_sort;
CREATE TABLE `hh_coupon_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_crontab;
CREATE TABLE `hh_crontab` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `minutetime` mediumint(4) NOT NULL DEFAULT '0',
  `daytime` varchar(4) NOT NULL DEFAULT '0',
  `whiletime` int(10) NOT NULL DEFAULT '0',
  `lasttime` int(10) NOT NULL DEFAULT '0',
  `filepath` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `ifstop` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ifstop` (`ifstop`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_buyad;
CREATE TABLE `hh_fenlei_buyad` (
  `aid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `sortid` mediumint(7) NOT NULL DEFAULT '0',
  `cityid` mediumint(7) NOT NULL DEFAULT '0',
  `id` int(10) NOT NULL DEFAULT '0',
  `mid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `sortid` (`sortid`,`money`,`endtime`,`cityid`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_class;
CREATE TABLE `hh_fenlei_class` (
  `fid` int(7) NOT NULL AUTO_INCREMENT,
  `fup` int(7) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_collection;
CREATE TABLE `hh_fenlei_collection` (
  `cid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_comments;
CREATE TABLE `hh_fenlei_comments` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_config;
CREATE TABLE `hh_fenlei_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content;
CREATE TABLE `hh_fenlei_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `info` tinyint(2) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `iframeurl` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `head_tpl` varchar(150) NOT NULL DEFAULT '',
  `main_tpl` varchar(150) NOT NULL DEFAULT '',
  `foot_tpl` varchar(100) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `zone_id` mediumint(7) NOT NULL DEFAULT '0',
  `street_id` mediumint(7) NOT NULL DEFAULT '0',
  `editpwd` varchar(32) NOT NULL DEFAULT '',
  `showday` mediumint(4) NOT NULL DEFAULT '0',
  `visit_log` text NOT NULL,
  `visit_num` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `linkman` varchar(20) NOT NULL DEFAULT '',
  `postcode` varchar(6) NOT NULL DEFAULT '',
  `address` varchar(250) NOT NULL DEFAULT '',
  `weburl` varchar(150) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `maps` varchar(50) NOT NULL DEFAULT '',
  `picnum` smallint(4) NOT NULL DEFAULT '0',
  `replytime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `zone_id` (`zone_id`),
  KEY `street_id` (`street_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_1;
CREATE TABLE `hh_fenlei_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `my_bus` varchar(50) NOT NULL DEFAULT '',
  `my_station` varchar(100) NOT NULL DEFAULT '',
  `my_rooms` varchar(30) NOT NULL DEFAULT '',
  `my_price` int(8) NOT NULL DEFAULT '0',
  `my_peitao` varchar(150) NOT NULL DEFAULT '',
  `my_acreage` varchar(12) NOT NULL DEFAULT '',
  `my_fitment` varchar(15) NOT NULL DEFAULT '',
  `my_floor` varchar(12) NOT NULL DEFAULT '',
  `sortid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `my_rooms` (`my_rooms`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_13;
CREATE TABLE `hh_fenlei_content_13` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL DEFAULT '0',
  `sortid2` tinyint(3) NOT NULL DEFAULT '0',
  `my_228` tinyint(1) NOT NULL DEFAULT '0',
  `my_837` varchar(100) NOT NULL DEFAULT '',
  `my_613` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `my_228` (`my_228`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_14;
CREATE TABLE `hh_fenlei_content_14` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL DEFAULT '0',
  `sortid2` tinyint(3) NOT NULL DEFAULT '0',
  `my_382` tinyint(1) NOT NULL DEFAULT '0',
  `my_835` varchar(100) NOT NULL DEFAULT '',
  `my_491` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `my_382` (`my_382`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_2;
CREATE TABLE `hh_fenlei_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_3;
CREATE TABLE `hh_fenlei_content_3` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `my_jobs` varchar(30) NOT NULL DEFAULT '',
  `my_nums` varchar(12) NOT NULL DEFAULT '',
  `my_jobabout` mediumtext NOT NULL,
  `my_workplace` varchar(30) NOT NULL DEFAULT '',
  `wage` tinyint(1) NOT NULL DEFAULT '0',
  `sortid` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `wage` (`wage`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_4;
CREATE TABLE `hh_fenlei_content_4` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(1) NOT NULL DEFAULT '0',
  `my_jobs` varchar(30) NOT NULL DEFAULT '',
  `my_schoolage` varchar(30) NOT NULL DEFAULT '',
  `my_sex` varchar(4) NOT NULL DEFAULT '',
  `my_age` varchar(8) NOT NULL DEFAULT '',
  `my_workplace` varchar(50) NOT NULL DEFAULT '',
  `my_wage` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_5;
CREATE TABLE `hh_fenlei_content_5` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `my_age` varchar(8) NOT NULL DEFAULT '',
  `my_height` varchar(8) NOT NULL DEFAULT '',
  `my_job` varchar(30) NOT NULL DEFAULT '',
  `my_weight` varchar(15) NOT NULL DEFAULT '',
  `my_interest` varchar(100) NOT NULL DEFAULT '',
  `my_sex` varchar(4) NOT NULL DEFAULT '',
  `sortid` tinyint(1) NOT NULL DEFAULT '0',
  `schoo_age` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `schoo_age` (`schoo_age`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_6;
CREATE TABLE `hh_fenlei_content_6` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `my_price` int(7) NOT NULL DEFAULT '0',
  `my_hownew` varchar(12) NOT NULL DEFAULT '',
  `my_outprice` int(10) NOT NULL DEFAULT '0',
  `sortid` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_content_7;
CREATE TABLE `hh_fenlei_content_7` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `my_acreage` varchar(12) NOT NULL DEFAULT '',
  `my_price` int(10) NOT NULL DEFAULT '0',
  `my_fitment` varchar(20) NOT NULL DEFAULT '',
  `my_floor` varchar(5) NOT NULL DEFAULT '',
  `my_station` varchar(50) NOT NULL DEFAULT '',
  `my_bus` varchar(50) NOT NULL DEFAULT '',
  `sortid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_db;
CREATE TABLE `hh_fenlei_db` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_dianping;
CREATE TABLE `hh_fenlei_dianping` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `fen1` smallint(4) NOT NULL DEFAULT '0',
  `fen2` smallint(4) NOT NULL DEFAULT '0',
  `fen3` smallint(4) NOT NULL DEFAULT '0',
  `fen4` smallint(4) NOT NULL DEFAULT '0',
  `fen5` smallint(4) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  `price` mediumint(5) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `keywords2` varchar(100) NOT NULL DEFAULT '',
  `fen6` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_field;
CREATE TABLE `hh_fenlei_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_friendlink;
CREATE TABLE `hh_fenlei_friendlink` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` int(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `iswordlink` tinyint(1) DEFAULT NULL,
  `hits` tinyint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `endtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_module;
CREATE TABLE `hh_fenlei_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_pic;
CREATE TABLE `hh_fenlei_pic` (
  `pid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `imgurl` varchar(150) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `id` (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_report;
CREATE TABLE `hh_fenlei_report` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `onlineip` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_fenlei_sort;
CREATE TABLE `hh_fenlei_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_form_config;
CREATE TABLE `hh_form_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_form_content;
CREATE TABLE `hh_form_content` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hits` (`hits`,`yz`),
  KEY `list` (`list`,`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_form_content_1;
CREATE TABLE `hh_form_content_1` (
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `oicq` varchar(10) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `interest` mediumtext NOT NULL,
  `introduce` mediumtext NOT NULL,
  `sortname` varchar(40) NOT NULL DEFAULT '',
  `webtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_form_content_3;
CREATE TABLE `hh_form_content_3` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `advicetype` varchar(30) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `truename` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_form_module;
CREATE TABLE `hh_form_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` mediumtext NOT NULL,
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `about` text NOT NULL,
  `usetitle` tinyint(1) NOT NULL DEFAULT '0',
  `repeatpost` tinyint(1) NOT NULL DEFAULT '0',
  `statename` varchar(30) NOT NULL DEFAULT '',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_form_reply;
CREATE TABLE `hh_form_reply` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `mid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_friendlink;
CREATE TABLE `hh_friendlink` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `iswordlink` tinyint(1) DEFAULT '0',
  `hits` tinyint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`),
  KEY `city_id` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_friendlink_sort;
CREATE TABLE `hh_friendlink_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_gift_config;
CREATE TABLE `hh_gift_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_gift_content;
CREATE TABLE `hh_gift_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `totaluser` mediumint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `list` (`list`,`fid`,`yz`),
  KEY `hits` (`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_gift_content_1;
CREATE TABLE `hh_gift_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `mart_price` varchar(8) NOT NULL DEFAULT '',
  `giftnum` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_gift_content_2;
CREATE TABLE `hh_gift_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `contact_name` varchar(20) NOT NULL DEFAULT '',
  `contact_phone` varchar(20) NOT NULL DEFAULT '',
  `contact_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_gift_field;
CREATE TABLE `hh_gift_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_gift_join;
CREATE TABLE `hh_gift_join` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `cid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `fid` (`fid`,`cid`),
  KEY `yz` (`yz`,`fid`,`mid`,`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_gift_module;
CREATE TABLE `hh_gift_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_gift_sort;
CREATE TABLE `hh_gift_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_group;
CREATE TABLE `hh_group` (
  `gid` smallint(4) NOT NULL AUTO_INCREMENT,
  `gptype` tinyint(1) NOT NULL DEFAULT '0',
  `grouptitle` varchar(50) NOT NULL DEFAULT '',
  `levelnum` mediumint(7) NOT NULL DEFAULT '0',
  `totalspace` int(10) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `powerdb` text NOT NULL,
  `allowadmin` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmindb` text,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_guestbook_config;
CREATE TABLE `hh_guestbook_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_guestbook_content;
CREATE TABLE `hh_guestbook_content` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `ico` tinyint(2) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) DEFAULT NULL,
  `weburl` varchar(150) NOT NULL DEFAULT '',
  `blogurl` varchar(150) NOT NULL DEFAULT '',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `reply` text NOT NULL,
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_guestbook_sort;
CREATE TABLE `hh_guestbook_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hack;
CREATE TABLE `hh_hack` (
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(30) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `htmlcode` text NOT NULL,
  `hackfile` text NOT NULL,
  `hacksqltable` text NOT NULL,
  `adminurl` varchar(150) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `class1` varchar(30) NOT NULL DEFAULT '',
  `class2` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `linkname` text NOT NULL,
  `isbiz` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_buyad;
CREATE TABLE `hh_house_buyad` (
  `aid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `sortid` mediumint(7) NOT NULL DEFAULT '0',
  `cityid` mediumint(7) NOT NULL DEFAULT '0',
  `id` int(10) NOT NULL DEFAULT '0',
  `mid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `sortid` (`sortid`,`money`,`endtime`,`cityid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_class;
CREATE TABLE `hh_house_class` (
  `fid` int(7) NOT NULL AUTO_INCREMENT,
  `fup` int(7) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_collection;
CREATE TABLE `hh_house_collection` (
  `cid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_comments;
CREATE TABLE `hh_house_comments` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_config;
CREATE TABLE `hh_house_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_content;
CREATE TABLE `hh_house_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `xiaoqu_id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `info` tinyint(2) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `iframeurl` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `head_tpl` varchar(150) NOT NULL DEFAULT '',
  `main_tpl` varchar(150) NOT NULL DEFAULT '',
  `foot_tpl` varchar(100) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `zone_id` mediumint(7) NOT NULL DEFAULT '0',
  `street_id` mediumint(7) NOT NULL DEFAULT '0',
  `editpwd` varchar(32) NOT NULL DEFAULT '',
  `showday` mediumint(4) NOT NULL DEFAULT '0',
  `visit_log` text NOT NULL,
  `visit_num` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `linkman` varchar(20) NOT NULL DEFAULT '',
  `postcode` varchar(6) NOT NULL DEFAULT '',
  `address` varchar(250) NOT NULL DEFAULT '',
  `weburl` varchar(150) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `maps` varchar(50) NOT NULL DEFAULT '',
  `picnum` smallint(4) NOT NULL DEFAULT '0',
  `replytime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `zone_id` (`zone_id`),
  KEY `street_id` (`street_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`),
  KEY `xiaoqu_id` (`xiaoqu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_content_1;
CREATE TABLE `hh_house_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL DEFAULT '0',
  `price` int(8) NOT NULL DEFAULT '0',
  `room_type` varchar(30) NOT NULL DEFAULT '',
  `peitao` varchar(150) NOT NULL DEFAULT '',
  `acreage` varchar(12) NOT NULL DEFAULT '',
  `fitment` varchar(15) NOT NULL DEFAULT '',
  `floor` varchar(12) NOT NULL DEFAULT '',
  `station` varchar(100) NOT NULL DEFAULT '',
  `bus` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `room_type` (`room_type`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_content_2;
CREATE TABLE `hh_house_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(3) NOT NULL DEFAULT '0',
  `price` int(8) NOT NULL DEFAULT '0',
  `room_type` varchar(30) NOT NULL DEFAULT '',
  `peitao` varchar(150) NOT NULL DEFAULT '',
  `acreage` varchar(12) NOT NULL DEFAULT '',
  `fitment` varchar(15) NOT NULL DEFAULT '',
  `floor` varchar(12) NOT NULL DEFAULT '',
  `station` varchar(100) NOT NULL DEFAULT '',
  `bus` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`),
  KEY `room_type` (`room_type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_content_3;
CREATE TABLE `hh_house_content_3` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `price` varchar(20) NOT NULL DEFAULT '',
  `room_type` varchar(30) NOT NULL DEFAULT '',
  `acreage` varchar(20) NOT NULL DEFAULT '',
  `fitment` varchar(15) NOT NULL DEFAULT '',
  `floor` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `room_type` (`room_type`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_content_4;
CREATE TABLE `hh_house_content_4` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `price` varchar(20) NOT NULL DEFAULT '',
  `room_type` varchar(30) NOT NULL DEFAULT '',
  `acreage` varchar(20) NOT NULL DEFAULT '',
  `fitment` varchar(15) NOT NULL DEFAULT '',
  `floor` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `room_type` (`room_type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_content_5;
CREATE TABLE `hh_house_content_5` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `seller` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  `star_sell` varchar(20) NOT NULL DEFAULT '',
  `price` int(5) NOT NULL DEFAULT '0',
  `bus` varchar(250) NOT NULL DEFAULT '',
  `out_peitao` mediumtext NOT NULL,
  `in_peitao` mediumtext NOT NULL,
  `videourl` varchar(100) NOT NULL DEFAULT '',
  `house_num` varchar(30) NOT NULL DEFAULT '',
  `total_area` varchar(10) NOT NULL DEFAULT '',
  `room_area` varchar(10) NOT NULL DEFAULT '',
  `roomtype` varchar(50) NOT NULL DEFAULT '',
  `fitment` varchar(30) NOT NULL DEFAULT '',
  `my_134` varchar(100) NOT NULL DEFAULT '',
  `my_523` varchar(4) NOT NULL DEFAULT '',
  `my_755` varchar(20) NOT NULL DEFAULT '',
  `my_898` varchar(20) NOT NULL DEFAULT '',
  `my_208` varchar(40) NOT NULL DEFAULT '',
  `sell_address` varchar(100) NOT NULL DEFAULT '',
  `zone_area` varchar(30) NOT NULL DEFAULT '',
  `my_432` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `zone_area` (`zone_area`),
  KEY `my_432` (`my_432`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_content_6;
CREATE TABLE `hh_house_content_6` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `fuwu_zone` varchar(50) NOT NULL DEFAULT '',
  `store` varchar(50) NOT NULL DEFAULT '',
  `face` varchar(150) NOT NULL DEFAULT '',
  `my_234` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`fuwu_zone`),
  KEY `my_234` (`my_234`),
  KEY `store` (`store`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_db;
CREATE TABLE `hh_house_db` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_dianping;
CREATE TABLE `hh_house_dianping` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `fen1` smallint(4) NOT NULL DEFAULT '0',
  `fen2` smallint(4) NOT NULL DEFAULT '0',
  `fen3` smallint(4) NOT NULL DEFAULT '0',
  `fen4` smallint(4) NOT NULL DEFAULT '0',
  `fen5` smallint(4) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  `price` mediumint(5) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `keywords2` varchar(100) NOT NULL DEFAULT '',
  `fen6` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_field;
CREATE TABLE `hh_house_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_module;
CREATE TABLE `hh_house_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_pic;
CREATE TABLE `hh_house_pic` (
  `pid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `imgurl` varchar(150) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `id` (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_report;
CREATE TABLE `hh_house_report` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `onlineip` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_house_sort;
CREATE TABLE `hh_house_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_apply;
CREATE TABLE `hh_hr_apply` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `join_id` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `join_id` (`join_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_collection;
CREATE TABLE `hh_hr_collection` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `memberuid` mediumint(7) NOT NULL DEFAULT '0',
  `companyuid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `memberuid` (`memberuid`),
  KEY `companyuid` (`companyuid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_config;
CREATE TABLE `hh_hr_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_content;
CREATE TABLE `hh_hr_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `list` (`list`,`fid`,`yz`),
  KEY `hits` (`hits`),
  KEY `city_id` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_content_1;
CREATE TABLE `hh_hr_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `nums` int(5) NOT NULL DEFAULT '0',
  `wageyear` tinyint(1) NOT NULL DEFAULT '0',
  `asksex` tinyint(1) NOT NULL DEFAULT '0',
  `schoo_age` tinyint(2) NOT NULL DEFAULT '0',
  `wage` tinyint(2) NOT NULL DEFAULT '0',
  `workplace` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `wageyear` (`wageyear`),
  KEY `schoo_age` (`schoo_age`),
  KEY `wage` (`wage`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_content_2;
CREATE TABLE `hh_hr_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `speciality` varchar(50) NOT NULL DEFAULT '',
  `age` tinyint(2) NOT NULL DEFAULT '0',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `height` int(4) NOT NULL DEFAULT '0',
  `school_age` tinyint(3) NOT NULL DEFAULT '0',
  `alma_mater` varchar(30) NOT NULL DEFAULT '',
  `graduate_time` varchar(10) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `education` mediumtext NOT NULL,
  `work` mediumtext NOT NULL,
  `introduce` mediumtext NOT NULL,
  `skill` mediumtext NOT NULL,
  `interest` mediumtext NOT NULL,
  `lifeplace` varchar(50) NOT NULL DEFAULT '',
  `workyear` tinyint(2) NOT NULL DEFAULT '0',
  `worktime` varchar(20) NOT NULL DEFAULT '',
  `hope_job` varchar(200) NOT NULL DEFAULT '',
  `facephoto` varchar(100) NOT NULL DEFAULT '',
  `wage` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sex` (`sex`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_field;
CREATE TABLE `hh_hr_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_module;
CREATE TABLE `hh_hr_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_person;
CREATE TABLE `hh_hr_person` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(1) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `yz` (`yz`,`mid`),
  KEY `city_id` (`city_id`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hr_sort;
CREATE TABLE `hh_hr_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_company;
CREATE TABLE `hh_hy_company` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `host` varchar(32) NOT NULL DEFAULT '',
  `fname` varchar(100) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `renzheng` tinyint(1) NOT NULL DEFAULT '0',
  `is_agent` tinyint(1) NOT NULL DEFAULT '0',
  `is_vip` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` int(10) NOT NULL DEFAULT '0',
  `picurl` varchar(255) NOT NULL DEFAULT '',
  `gz` varchar(248) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(32) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `hits` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `province_id` mediumint(7) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `zone_id` mediumint(7) NOT NULL DEFAULT '0',
  `street_id` mediumint(7) NOT NULL DEFAULT '0',
  `qy_cate` varchar(32) NOT NULL DEFAULT '',
  `qy_saletype` varchar(48) NOT NULL DEFAULT '',
  `qy_regmoney` int(10) NOT NULL DEFAULT '0',
  `qy_createtime` varchar(64) NOT NULL DEFAULT '',
  `qy_regplace` varchar(128) NOT NULL DEFAULT '',
  `qy_address` varchar(248) NOT NULL DEFAULT '',
  `qy_postnum` varchar(8) NOT NULL DEFAULT '',
  `qy_pro_ser` varchar(248) NOT NULL DEFAULT '',
  `my_buy` varchar(248) NOT NULL DEFAULT '',
  `my_trade` varchar(32) NOT NULL DEFAULT '',
  `qy_contact` varchar(16) NOT NULL DEFAULT '',
  `qy_contact_zhiwei` varchar(16) NOT NULL DEFAULT '',
  `qy_contact_sex` int(1) NOT NULL DEFAULT '1',
  `qy_contact_tel` varchar(248) NOT NULL DEFAULT '',
  `qy_contact_mobile` varchar(248) NOT NULL DEFAULT '',
  `qy_contact_fax` varchar(248) NOT NULL DEFAULT '',
  `qy_contact_email` varchar(248) NOT NULL DEFAULT '',
  `qy_website` varchar(248) NOT NULL DEFAULT '',
  `qq` varchar(248) NOT NULL DEFAULT '',
  `msn` varchar(248) NOT NULL DEFAULT '',
  `skype` varchar(248) NOT NULL DEFAULT '',
  `ww` varchar(248) NOT NULL DEFAULT '',
  `bd_pics` varchar(248) NOT NULL DEFAULT '',
  `toptime` int(10) NOT NULL DEFAULT '0',
  `if_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `permit_pic` varchar(100) NOT NULL DEFAULT '',
  `guo_tax_pic` varchar(100) NOT NULL DEFAULT '',
  `di_tax_pic` varchar(100) NOT NULL DEFAULT '',
  `organization_pic` varchar(100) NOT NULL DEFAULT '',
  `idcard_pic` varchar(100) NOT NULL DEFAULT '',
  `gg_maps` varchar(50) NOT NULL DEFAULT '',
  `dianping` mediumint(7) NOT NULL DEFAULT '0',
  `dianpingtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`,`posttime`),
  KEY `yz` (`yz`,`posttime`),
  KEY `toptime` (`toptime`),
  KEY `city_id` (`city_id`,`levels`,`levelstime`),
  KEY `renzheng` (`renzheng`),
  KEY `host` (`host`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_company_fid;
CREATE TABLE `hh_hy_company_fid` (
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_config;
CREATE TABLE `hh_hy_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_dianping;
CREATE TABLE `hh_hy_dianping` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `fen1` smallint(4) NOT NULL DEFAULT '0',
  `fen2` smallint(4) NOT NULL DEFAULT '0',
  `fen3` smallint(4) NOT NULL DEFAULT '0',
  `fen4` smallint(4) NOT NULL DEFAULT '0',
  `fen5` smallint(4) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  `price` mediumint(5) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `keywords2` varchar(100) NOT NULL DEFAULT '',
  `fen6` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_friendlink;
CREATE TABLE `hh_hy_friendlink` (
  `ck_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(16) NOT NULL DEFAULT '',
  `companyName` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(248) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ck_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_guestbook;
CREATE TABLE `hh_hy_guestbook` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `cuid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(16) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cuid` (`cuid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_home;
CREATE TABLE `hh_hy_home` (
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `style` varchar(32) NOT NULL DEFAULT '',
  `index_left` varchar(248) NOT NULL DEFAULT '',
  `index_right` varchar(248) NOT NULL DEFAULT '',
  `listnum` text NOT NULL,
  `banner` varchar(248) NOT NULL DEFAULT '',
  `bodytpl` varchar(8) NOT NULL DEFAULT 'left',
  `renzheng_show` tinyint(1) NOT NULL DEFAULT '0',
  `visitor` text NOT NULL,
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `head_menu` text NOT NULL,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_mysort;
CREATE TABLE `hh_hy_mysort` (
  `ms_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `sortname` char(32) NOT NULL DEFAULT '',
  `fup` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) unsigned NOT NULL DEFAULT '0',
  `ctype` tinyint(1) NOT NULL DEFAULT '1',
  `hits` int(8) unsigned NOT NULL DEFAULT '0',
  `best` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ms_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_news;
CREATE TABLE `hh_hy_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `list` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(1) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `bd_pics` varchar(248) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_pic;
CREATE TABLE `hh_hy_pic` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `psid` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(248) NOT NULL DEFAULT '',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `isfm` tinyint(1) NOT NULL DEFAULT '0',
  `orderlist` mediumint(5) NOT NULL DEFAULT '0',
  `type` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_picsort;
CREATE TABLE `hh_hy_picsort` (
  `psid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `psup` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(16) NOT NULL DEFAULT '',
  `remarks` varchar(248) NOT NULL DEFAULT '',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(16) NOT NULL DEFAULT '',
  `level` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `orderlist` mediumint(4) unsigned NOT NULL DEFAULT '0',
  `faceurl` varchar(248) NOT NULL DEFAULT '',
  PRIMARY KEY (`psid`),
  KEY `uid` (`uid`,`orderlist`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_hy_sort;
CREATE TABLE `hh_hy_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_jfabout;
CREATE TABLE `hh_jfabout` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_jfsort;
CREATE TABLE `hh_jfsort` (
  `fid` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_label;
CREATE TABLE `hh_label` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `ch` smallint(4) NOT NULL DEFAULT '0',
  `chtype` tinyint(2) NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `typesystem` tinyint(1) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  `divcode` text,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `js_time` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `pagetype` tinyint(3) NOT NULL DEFAULT '0',
  `module` mediumint(6) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `if_js` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`lid`),
  KEY `ch` (`ch`,`pagetype`,`module`,`fid`,`chtype`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=609 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_limitword;
CREATE TABLE `hh_limitword` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `oldword` varchar(50) NOT NULL DEFAULT '',
  `newword` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_memberdata;
CREATE TABLE `hh_memberdata` (
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(32) NOT NULL DEFAULT '',
  `groupid` smallint(4) NOT NULL DEFAULT '0',
  `grouptype` tinyint(1) NOT NULL DEFAULT '0',
  `groups` varchar(255) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `newpm` tinyint(1) NOT NULL DEFAULT '0',
  `medals` varchar(255) NOT NULL DEFAULT '',
  `money` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `totalspace` bigint(13) NOT NULL DEFAULT '0',
  `usespace` bigint(13) NOT NULL DEFAULT '0',
  `oltime` int(10) NOT NULL DEFAULT '0',
  `lastvist` int(10) NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `regdate` int(10) NOT NULL DEFAULT '0',
  `regip` varchar(15) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `icon` varchar(150) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `provinceid` mediumint(6) NOT NULL DEFAULT '0',
  `cityid` mediumint(7) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postalcode` varchar(6) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `idcard` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `moneycard` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `email_yz` tinyint(1) NOT NULL DEFAULT '0',
  `mob_yz` tinyint(1) NOT NULL DEFAULT '0',
  `idcard_yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `groups` (`groups`),
  KEY `sex` (`sex`,`bday`,`cityid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_members;
CREATE TABLE `hh_members` (
  `uid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_menu;
CREATE TABLE `hh_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_module;
CREATE TABLE `hh_module` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `pre` varchar(20) NOT NULL DEFAULT '',
  `dirname` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(100) NOT NULL DEFAULT '',
  `admindir` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `list` mediumint(5) NOT NULL DEFAULT '0',
  `admingroup` varchar(150) NOT NULL DEFAULT '',
  `adminmember` text NOT NULL,
  `ifclose` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_moneycard;
CREATE TABLE `hh_moneycard` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `moneyrmb` int(7) NOT NULL DEFAULT '0',
  `moneycard` int(7) NOT NULL DEFAULT '0',
  `ifsell` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_moneylog;
CREATE TABLE `hh_moneylog` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `about` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_news_comments;
CREATE TABLE `hh_news_comments` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `cuid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ifcom` tinyint(1) NOT NULL DEFAULT '0',
  `agree` mediumint(5) NOT NULL DEFAULT '0',
  `disagree` mediumint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `aid` (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `ifcom` (`ifcom`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_news_config;
CREATE TABLE `hh_news_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_news_content;
CREATE TABLE `hh_news_content` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '',
  `smalltitle` varchar(100) NOT NULL DEFAULT '',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `pages` smallint(4) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `copyfrom` varchar(100) NOT NULL DEFAULT '',
  `copyfromurl` varchar(150) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `picurl` varchar(150) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `iframeurl` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `allowdown` varchar(150) NOT NULL DEFAULT '',
  `allowview` varchar(150) NOT NULL DEFAULT '',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `lastview` int(10) NOT NULL DEFAULT '0',
  `digg_num` mediumint(7) NOT NULL DEFAULT '0',
  `digg_time` int(10) NOT NULL DEFAULT '0',
  `forbidcomment` tinyint(1) NOT NULL DEFAULT '0',
  `ifvote` tinyint(1) NOT NULL DEFAULT '0',
  `heart` varchar(255) NOT NULL DEFAULT '',
  `htmlname` varchar(100) NOT NULL DEFAULT '',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `hits` (`hits`,`yz`,`fid`,`ispic`),
  KEY `list` (`list`,`yz`,`fid`,`ispic`),
  KEY `ispic` (`ispic`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `digg_num` (`digg_num`),
  KEY `digg_time` (`digg_time`),
  KEY `mid` (`mid`),
  KEY `city_id` (`city_id`),
  KEY `posttime` (`yz`,`posttime`,`fid`,`ispic`)
) ENGINE=MyISAM AUTO_INCREMENT=968 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_news_content_1;
CREATE TABLE `hh_news_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `subhead` varchar(150) NOT NULL DEFAULT '',
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `topic` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `orderid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `aid` (`id`,`topic`)
) ENGINE=MyISAM AUTO_INCREMENT=962 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_news_sort;
CREATE TABLE `hh_news_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `domain_dir` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_olpay;
CREATE TABLE `hh_olpay` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL DEFAULT '0',
  `numcode` varchar(32) NOT NULL DEFAULT '',
  `money` varchar(15) NOT NULL DEFAULT '0',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `paytype` tinyint(3) NOT NULL DEFAULT '0',
  `moduleid` mediumint(5) NOT NULL DEFAULT '0',
  `formid` mediumint(5) NOT NULL DEFAULT '0',
  `banktype` varchar(15) NOT NULL DEFAULT '',
  `articleid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `numcode` (`numcode`),
  KEY `paytype` (`paytype`),
  KEY `formid` (`formid`),
  KEY `articleid` (`articleid`),
  KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_pm;
CREATE TABLE `hh_pm` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `togroups` varchar(80) NOT NULL DEFAULT '',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `type` enum('rebox','sebox','public') NOT NULL DEFAULT 'rebox',
  `ifnew` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(130) NOT NULL DEFAULT '',
  `mdate` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_propagandize;
CREATE TABLE `hh_propagandize` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ip` bigint(11) NOT NULL DEFAULT '0',
  `day` smallint(3) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `fromurl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_purse;
CREATE TABLE `hh_purse` (
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_sell_telephone;
CREATE TABLE `hh_sell_telephone` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `money` int(7) NOT NULL DEFAULT '0',
  `city_id` int(7) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `about` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `yz` (`yz`),
  KEY `city_id` (`city_id`,`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_collection;
CREATE TABLE `hh_shop_collection` (
  `cid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_comments;
CREATE TABLE `hh_shop_comments` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_config;
CREATE TABLE `hh_shop_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_content;
CREATE TABLE `hh_shop_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `picnum` smallint(4) NOT NULL DEFAULT '0',
  `price` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_content_1;
CREATE TABLE `hh_shop_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `market_price` varchar(10) NOT NULL DEFAULT '',
  `shoptype` varchar(50) NOT NULL DEFAULT '',
  `sortid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_content_2;
CREATE TABLE `hh_shop_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `order_username` varchar(20) NOT NULL DEFAULT '',
  `order_phone` varchar(20) NOT NULL DEFAULT '',
  `order_mobphone` varchar(15) NOT NULL DEFAULT '',
  `order_email` varchar(50) NOT NULL DEFAULT '',
  `order_qq` varchar(11) NOT NULL DEFAULT '',
  `order_postcode` varchar(6) NOT NULL DEFAULT '',
  `order_sendtype` tinyint(1) NOT NULL DEFAULT '0',
  `order_paytype` tinyint(1) NOT NULL DEFAULT '0',
  `order_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_field;
CREATE TABLE `hh_shop_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_join;
CREATE TABLE `hh_shop_join` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `cid` mediumint(7) NOT NULL DEFAULT '0',
  `cuid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `shopnum` mediumint(7) NOT NULL DEFAULT '0',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  `ifsend` tinyint(1) NOT NULL DEFAULT '0',
  `totalmoney` varchar(10) NOT NULL DEFAULT '',
  `banktype` varchar(15) NOT NULL DEFAULT '',
  `emscode` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `fid` (`fid`,`cid`),
  KEY `yz` (`yz`,`fid`,`mid`,`cid`),
  KEY `cuid` (`cuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_module;
CREATE TABLE `hh_shop_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_pic;
CREATE TABLE `hh_shop_pic` (
  `pid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `imgurl` varchar(150) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `id` (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_report;
CREATE TABLE `hh_shop_report` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `onlineip` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shop_sort;
CREATE TABLE `hh_shop_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_collection;
CREATE TABLE `hh_shoptg_collection` (
  `cid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_comments;
CREATE TABLE `hh_shoptg_comments` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_config;
CREATE TABLE `hh_shoptg_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_content;
CREATE TABLE `hh_shoptg_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `picnum` smallint(4) NOT NULL DEFAULT '0',
  `price` varchar(20) NOT NULL DEFAULT '',
  `join_num` mediumint(5) NOT NULL DEFAULT '0',
  `pay_num` mediumint(5) NOT NULL DEFAULT '0',
  `gg_maps` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_content_1;
CREATE TABLE `hh_shoptg_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `market_price` varchar(10) NOT NULL DEFAULT '',
  `shoptype` varchar(10) NOT NULL DEFAULT '',
  `min_num` int(4) NOT NULL DEFAULT '0',
  `about` mediumtext NOT NULL,
  `end_time` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`min_num`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_content_2;
CREATE TABLE `hh_shoptg_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` int(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `order_username` varchar(20) NOT NULL DEFAULT '',
  `order_phone` varchar(20) NOT NULL DEFAULT '',
  `order_mobphone` varchar(15) NOT NULL DEFAULT '',
  `order_email` varchar(50) NOT NULL DEFAULT '',
  `order_qq` varchar(11) NOT NULL DEFAULT '',
  `order_postcode` varchar(6) NOT NULL DEFAULT '',
  `order_sendtype` tinyint(1) NOT NULL DEFAULT '0',
  `order_paytype` tinyint(1) NOT NULL DEFAULT '0',
  `order_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_field;
CREATE TABLE `hh_shoptg_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_join;
CREATE TABLE `hh_shoptg_join` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `cid` mediumint(7) NOT NULL DEFAULT '0',
  `cuid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `shopnum` mediumint(7) NOT NULL DEFAULT '0',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  `ifsend` tinyint(1) NOT NULL DEFAULT '0',
  `totalmoney` varchar(10) NOT NULL DEFAULT '',
  `banktype` varchar(15) NOT NULL DEFAULT '',
  `emscode` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `fid` (`fid`,`cid`),
  KEY `yz` (`yz`,`fid`,`mid`,`cid`),
  KEY `cuid` (`cuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_module;
CREATE TABLE `hh_shoptg_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_pic;
CREATE TABLE `hh_shoptg_pic` (
  `pid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(10) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `imgurl` varchar(150) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`pid`),
  KEY `id` (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_report;
CREATE TABLE `hh_shoptg_report` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `onlineip` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_shoptg_sort;
CREATE TABLE `hh_shoptg_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_street;
CREATE TABLE `hh_street` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `dirname` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_template;
CREATE TABLE `hh_template` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `filepath` varchar(100) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_template_bak;
CREATE TABLE `hh_template_bak` (
  `bid` int(7) NOT NULL AUTO_INCREMENT,
  `id` int(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_comments;
CREATE TABLE `hh_tuangou_comments` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cuid` int(7) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `flowers` smallint(4) NOT NULL DEFAULT '0',
  `egg` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_config;
CREATE TABLE `hh_tuangou_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_content;
CREATE TABLE `hh_tuangou_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `city_id` mediumint(7) NOT NULL DEFAULT '0',
  `totaluser` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `gg_maps` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ispic` (`ispic`),
  KEY `city_id` (`city_id`),
  KEY `list` (`list`,`fid`,`city_id`,`yz`),
  KEY `hits` (`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_content_1;
CREATE TABLE `hh_tuangou_content_1` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `sortid` tinyint(1) NOT NULL DEFAULT '0',
  `place` varchar(100) NOT NULL DEFAULT '',
  `jointime` varchar(15) NOT NULL DEFAULT '',
  `end_time` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `sortid` (`sortid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_content_2;
CREATE TABLE `hh_tuangou_content_2` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `join_num` varchar(10) NOT NULL DEFAULT '',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `telphone` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`),
  KEY `fid` (`fid`),
  KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_field;
CREATE TABLE `hh_tuangou_field` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `field_name` varchar(30) NOT NULL DEFAULT '',
  `field_type` varchar(15) NOT NULL DEFAULT '',
  `field_leng` smallint(3) NOT NULL DEFAULT '0',
  `orderlist` int(10) NOT NULL DEFAULT '0',
  `form_type` varchar(15) NOT NULL DEFAULT '',
  `field_inputwidth` smallint(3) DEFAULT NULL,
  `field_inputheight` smallint(3) NOT NULL DEFAULT '0',
  `form_set` text NOT NULL,
  `form_value` text NOT NULL,
  `form_units` varchar(30) NOT NULL DEFAULT '',
  `form_title` text NOT NULL,
  `mustfill` tinyint(1) NOT NULL DEFAULT '0',
  `listshow` tinyint(1) NOT NULL DEFAULT '0',
  `listfilter` tinyint(1) DEFAULT NULL,
  `search` tinyint(1) NOT NULL DEFAULT '0',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `js_check` text NOT NULL,
  `js_checkmsg` varchar(255) NOT NULL DEFAULT '',
  `classid` mediumint(7) NOT NULL DEFAULT '0',
  `form_js` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_join;
CREATE TABLE `hh_tuangou_join` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `cid` mediumint(7) NOT NULL DEFAULT '0',
  `cuid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `fid` (`fid`,`cid`),
  KEY `yz` (`yz`,`fid`,`mid`,`cid`),
  KEY `cuid` (`cuid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_module;
CREATE TABLE `hh_tuangou_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `sort_id` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `config2` text NOT NULL,
  `comment_type` tinyint(1) NOT NULL DEFAULT '0',
  `ifdp` tinyint(1) NOT NULL DEFAULT '0',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_report;
CREATE TABLE `hh_tuangou_report` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `onlineip` varchar(15) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `iftrue` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_tuangou_sort;
CREATE TABLE `hh_tuangou_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_upfile;
CREATE TABLE `hh_upfile` (
  `up_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `module_id` smallint(4) NOT NULL DEFAULT '0',
  `ids` varchar(255) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `filename` varchar(100) NOT NULL DEFAULT '',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `if_tmp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`up_id`),
  KEY `filename` (`filename`),
  KEY `if_tmp` (`if_tmp`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_vote_comment;
CREATE TABLE `hh_vote_comment` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `vid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_vote_config;
CREATE TABLE `hh_vote_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_vote_element;
CREATE TABLE `hh_vote_element` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `cid` int(7) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `votenum` int(7) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `img` varchar(100) NOT NULL DEFAULT '',
  `describes` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_vote_topic;
CREATE TABLE `hh_vote_topic` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `limittime` int(10) NOT NULL DEFAULT '0',
  `limitip` tinyint(1) NOT NULL DEFAULT '0',
  `ip` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `user` text NOT NULL,
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `forbidguestvote` tinyint(1) NOT NULL DEFAULT '0',
  `ifcomment` tinyint(1) NOT NULL DEFAULT '0',
  `tplcode` text NOT NULL,
  `votetype` tinyint(2) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_yzimg;
CREATE TABLE `hh_yzimg` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `imgnum` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS hh_zone;
CREATE TABLE `hh_zone` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `dirname` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;


INSERT INTO `hh_ad_compete_place` VALUES ('3','顶客页竞价广告','0','0','50','5','8','36','1','/do/digg.php');
INSERT INTO `hh_ad_config` VALUES ('module_pre','ad_','');
INSERT INTO `hh_ad_config` VALUES ('Info_webname','广告系统','');
INSERT INTO `hh_ad_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_ad_config` VALUES ('module_id','24','');
INSERT INTO `hh_ad_config` VALUES ('module_close','0','');
INSERT INTO `hh_ad_norm_place` VALUES ('1','article_list','文章列表页侧面广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `hh_ad_norm_place` VALUES ('10','article_content','文章内容里边的广告','pic','1','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:32:\"other/1_20090326120324_mnfIi.jpg\";s:7:\"linkurl\";s:22:\"http://www.qibosoft.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','5','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `hh_ad_norm_place` VALUES ('2','article_show','文章内容页侧边下方广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:1782:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.zxx6.com/\" target=_blank><font color=#ff0000><strong>站长学习网</strong></font></a> 　　<a href=\"http://www.angelyyl.cn/\" target=_blank>冰蓝世界</a><a href=\"http://www.czin.cn/\" target=_blank><br />崇左热线—崇左人的网上家园</a> <br /><a href=\"http://www.sy50.com/\" target=_blank>邵阳网邻 了解邵阳 商务邵阳</a> <br /><a href=\"http://www.771881.cn/\" target=_blank>亲亲你抱抱你-国际女同拉拉网-败家女网站 </a><br /><a href=\"http://www.aihut.com/\" target=_blank>情感小筑原创情感文章网 </a><br /><a href=\"http://www.popyule.com/\" target=_blank>泡泡娱乐网--娱乐综合站齐博CMS构建</a> <br /><a href=\"http://www.china551.cn/\" target=_blank><font color=#ff0000>高中物理网</font></a> 　　<a href=\"http://www.ym988.com/\" target=_blank>圆梦模板工作室 </a><br /><a href=\"http://www.welights.com/\" target=_blank>国际灯具网</a> 　　<a href=\"http://www.hnmssy.cn/\" target=_blank>湖南民俗摄影网</a> <br /><a href=\"http://www.nuoyue.net/\" target=_blank><font color=#ff0000>诺跃站长社区 - 站长、菜鸟学习的好地方</font></a> <br /><a href=\"http://www.qzfl.com/\" target=_blank>泉州分类 连接泉州信息，服务百姓生活</a> <br /><a href=\"http://www.stmsn.com/\" target=_blank>中国内衣联盟</a> 　　<a href=\"http://www.downcc.cn/\" target=_blank>大当家软件站 </a><br /><a href=\"http://www.yt12333.cn/\" target=_blank>劳动社保之家-盐亭劳动保障网</a> <br /><a href=\"http://www.gooyi.cn/\" target=_blank>广易网 - 广州最大门户网 </a><br /><a href=\"http://www.idercn.com/\" target=_blank>I.D.部落</a> 　　<a href=\"http://www.tz0632.com/\" target=_blank>滕州城市网</a> 　　<a href=\"http://www.doubar.com/\" target=_blank>豆吧 </a></div>\r\n<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.wfseo.org/\" target=_blank><font color=#d2691e>重庆网站优化</font><br /></a><br /></div>\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `hh_ad_norm_place` VALUES ('11','digg_list','顶客排行榜侧边广告','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:813:\"<div style=\"LINE-HEIGHT: 200%\"><a href=\"http://www.ibioo.com/\" target=_blank><font color=#ff0000>绿谷生物网--打造最具活力生物站!</font> </a><br /><a href=\"http://www.51solo.net/\" target=_blank>搜罗娱乐门户－精彩娱乐生活从我开始 </a><br /><a href=\"http://1.com/45/admin/www.china-highway.com\" target=_blank>方向和路线尽在中国高速公路网 </a><br /><a href=\"http://www.nenbei.com/\" target=_blank><font color=#ff0000>嫩北聚合娱乐网欢迎您的到来 </font></a><br /><a href=\"http://www.liuv.net/\" target=_blank><font color=#ff0000>流水设计</font></a> <br /><a href=\"http://www.fming.net/\" target=_blank>蜂鸣原创 文学与摄影的创作平台 </a><br /><a href=\"http://www.netchinatown.com/\" target=_blank>时尚唐城-海外华人精英的网络家园 </a><br /><a href=\"http://frp.ok586.cn/\" target=_blank>上海玻璃钢冷却塔专业生产厂家. </a></div>\";}','0','0','0','0','0','5','0','1','/do/digg.php');
INSERT INTO `hh_ad_norm_place` VALUES ('19','list_page_topad','列表页侧边顶部广告位','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:13:\"ad/listad.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"130\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','2','0','10','1','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `hh_ad_norm_place` VALUES ('18','show_topad','内容页顶部横幅广告','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:18:\"ad/ad_show_top.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','10','1','1','../do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `hh_ad_norm_place` VALUES ('17','show_right_top_picad','内容页侧边顶部图片广告位','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:15:\"ad/qyshowad.jpg\";s:7:\"linkurl\";s:43:\"http://www.qy.com.cn/idc/product_double.asp\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"110\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','29','0','10','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `hh_ad_norm_place` VALUES ('20','AD_list_topad','列表页顶部横幅广告','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:14:\"ad/cnidca1.gif\";s:7:\"linkurl\";s:21:\"http://www.cnidc.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','4','0','10','1','1','/do/list.php?fid=1');
INSERT INTO `hh_ad_norm_place` VALUES ('21','sp_show_ad','专题页广告位','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:943:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://3cq.org/\" target=_blank>重庆幼儿教育 一切为了我们的孩子</a> <br /><a href=\"http://www.liuv.net/\" target=_blank>流水设计</a> <br /><a href=\"http://www.21yao.com/\" target=_blank>世纪医药网</a><br /><a href=\"http://www.fming.net/\" target=_blank>蜂鸣原创</a> <br /><a href=\"http://www.jnrx.net/\" target=_blank>胶南热线</a> <br /><a href=\"http://www.7mt.cn/\" target=_blank>骑摩托-中国第一摩托车互动媒体 </a><br /><a href=\"http://www.hnpolice.net/\" target=_blank>湖南公安高等专科学校校友会 </a><br /><a href=\"http://www.seo178.com/\" target=_blank>SEO培训选择--北京SEO培训中心</a> <br /><a href=\"http://www.51solo.net/\" target=_blank>品牌推广,SEO网站优化 </a><br /><a href=\"http://www.kljy.cn/\" target=_blank>致力于儿童教育 </a><br /><a href=\"http://www.eia8.com/job/\" target=_blank>中国环评吧招聘求职网</a> <br /><a href=\"http://www.wenzhang8.com/\" target=_blank>文章吧 打造最好经典文章网 </a>　 </div>\";}','0','0','0','0','0','0','0','1','/do/showsp.php?fid=1&id=23');
INSERT INTO `hh_ad_norm_user` VALUES ('1','20','1','admin','1','1303009376','1303095776','0','1','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:36:\"ad/1_20110417110431_bG9nbzAwMA==.gif\";s:7:\"linkurl\";s:21:\"http://idc.hcggcm.com\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','10','1303009377','1');
INSERT INTO `hh_ad_norm_user` VALUES ('2','17','1','admin','100','1303009847','1311649847','0','1','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:49:\"http://hcggcm.com/ima/ggtp/201132220292341482.gif\";s:7:\"linkurl\";s:17:\"http://hcggcm.com\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"110\";s:9:\"pictarget\";s:5:\"blank\";}','0','1000','1303009848','1');
INSERT INTO `hh_admin_menu` VALUES ('12','0','内容管理','','','0','99','3','0');
INSERT INTO `hh_admin_menu` VALUES ('83','0','标签设置','','','0','100','3','0');
INSERT INTO `hh_admin_menu` VALUES ('84','83','资讯首页','../news/index.php?jobs=show','','0','18','3','1');
INSERT INTO `hh_admin_menu` VALUES ('140','111','商铺','index.php?lfj=module_admin&dirname=hy&file=sort&job=listsort','','0','-2','3','1');
INSERT INTO `hh_admin_menu` VALUES ('138','111','优惠促销','index.php?lfj=module_admin&dirname=coupon&file=sort&job=listsort','','0','69','3','0');
INSERT INTO `hh_admin_menu` VALUES ('139','111','礼品','index.php?lfj=module_admin&dirname=gift&file=sort&job=listsort','','0','68','3','1');
INSERT INTO `hh_admin_menu` VALUES ('86','83','商铺首页','index.php?lfj=module_admin&dirname=hy&file=center&job=label','','0','15','3','0');
INSERT INTO `hh_admin_menu` VALUES ('87','0','评论管理','','','0','7','3','0');
INSERT INTO `hh_admin_menu` VALUES ('90','87','分类评论','index.php?lfj=module_admin&dirname=f&file=comment&job=list','','0','89','3','0');
INSERT INTO `hh_admin_menu` VALUES ('91','87','分类点评','index.php?lfj=module_admin&dirname=f&file=dianping&job=list','','0','88','3','1');
INSERT INTO `hh_admin_menu` VALUES ('112','111','文章资讯','index.php?lfj=module_admin&dirname=news&file=sort&job=listsort&type=all','','0','-1','3','0');
INSERT INTO `hh_admin_menu` VALUES ('111','0','分类管理','','','0','88','3','0');
INSERT INTO `hh_admin_menu` VALUES ('75','12','文章资讯','index.php?lfj=module_admin&dirname=news&file=list&job=list','','0','-1','3','0');
INSERT INTO `hh_admin_menu` VALUES ('125','12','分类信息','index.php?lfj=module_admin&dirname=f&file=list&job=list','','0','59','3','0');
INSERT INTO `hh_admin_menu` VALUES ('126','12','商品','index.php?lfj=module_admin&dirname=shop&file=list&job=list','','0','58','3','1');
INSERT INTO `hh_admin_menu` VALUES ('116','12','商铺','index.php?lfj=module_admin&dirname=hy&file=company&job=list','','0','-2','3','1');
INSERT INTO `hh_admin_menu` VALUES ('127','12','团购','index.php?lfj=module_admin&dirname=tg&file=list&job=list','','0','57','3','1');
INSERT INTO `hh_admin_menu` VALUES ('128','12','促销信息','index.php?lfj=module_admin&dirname=coupon&file=list&job=list','','0','49','3','0');
INSERT INTO `hh_admin_menu` VALUES ('129','12','礼品兑换','index.php?lfj=module_admin&dirname=gift&file=list&job=list','','0','48','3','1');
INSERT INTO `hh_admin_menu` VALUES ('135','111','分类信息','index.php?lfj=module_admin&dirname=f&file=sort&job=listsort','','0','79','3','0');
INSERT INTO `hh_admin_menu` VALUES ('136','111','商品','index.php?lfj=module_admin&dirname=shop&file=sort&job=listsort','','0','78','3','1');
INSERT INTO `hh_admin_menu` VALUES ('137','111','团购','index.php?lfj=module_admin&dirname=tg&file=sort&job=listsort','','0','77','3','1');
INSERT INTO `hh_admin_menu` VALUES ('102','83','网站主页','../index.php?&ch=1&chtype=0&jobs=show','','0','19','3','0');
INSERT INTO `hh_admin_menu` VALUES ('141','87','商品评论','index.php?lfj=module_admin&dirname=shop&file=comment&job=list','','0','79','3','0');
INSERT INTO `hh_admin_menu` VALUES ('142','87','团购活动','index.php?lfj=module_admin&dirname=tg&file=comment&job=list','','0','78','3','1');
INSERT INTO `hh_admin_menu` VALUES ('143','87','资讯评论','index.php?lfj=module_admin&dirname=news&file=comment&job=list','','0','69','3','0');
INSERT INTO `hh_admin_menu` VALUES ('110','83','礼品首页','index.php?lfj=module_admin&dirname=gift&file=center&job=label','','0','14','3','1');
INSERT INTO `hh_admin_menu` VALUES ('109','83','促销首页','index.php?lfj=module_admin&dirname=coupon&file=center&job=label','','0','8','3','1');
INSERT INTO `hh_admin_menu` VALUES ('106','83','分类首页','index.php?lfj=module_admin&dirname=f&file=center&job=label','','0','11','3','0');
INSERT INTO `hh_admin_menu` VALUES ('107','83','商城首页','index.php?lfj=module_admin&dirname=shop&file=center&job=label','','0','10','3','1');
INSERT INTO `hh_admin_menu` VALUES ('108','83','团购首页','index.php?lfj=module_admin&dirname=tg&file=center&job=label','','0','9','3','0');
INSERT INTO `hh_admin_menu` VALUES ('144','83','房产首页','index.php?lfj=module_admin&dirname=house&file=center&job=label','','0','0','3','0');
INSERT INTO `hh_admin_menu` VALUES ('145','12','房产','index.php?lfj=module_admin&dirname=house&file=list&job=list','','0','-3','3','1');
INSERT INTO `hh_admin_menu` VALUES ('146','87','房产','index.php?lfj=module_admin&dirname=house&file=comment&job=list','','0','0','3','1');
INSERT INTO `hh_alonepage` VALUES ('1','0','友情链接','友情链接','1229507597','0','','','','','','friendlink.htm','','','','<table cellSpacing=4 cellPadding=4 width=\"100%\" border=0>\r\n<tbody>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.mmcbbs.com/\" target=_blank>菁菁论坛</a></td>\r\n<td width=\"20%\"><a href=\"http://www.liuv.net/\" target=_blank>流水设计</a></td>\r\n<td width=\"20%\"><a href=\"http://pic.goodod.com/\" target=_blank>欧迪手机图片</a></td>\r\n<td width=\"20%\"><a href=\"http://www.tianyakezhan.com/\" target=_blank>天涯客栈</a></td>\r\n<td width=\"20%\"><a href=\"http://www.czin.cn/\" target=_blank>崇左热线</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.jneg.com.cn/\" target=_blank>金能家园</a></td>\r\n<td width=\"20%\"><a href=\"http://www.wyrj.com/\" target=_blank>屋檐人家</a></td>\r\n<td width=\"20%\"><a href=\"http://www.nenbei.com/\" target=_blank>嫩北网</a></td>\r\n<td width=\"20%\"><a href=\"http://www.photosbar.com/\" target=_blank>图吧</a></td>\r\n<td width=\"20%\"><a href=\"http://www.ok586.cn/\" target=_blank>视览供销</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.51solo.net/\" target=_blank>我爱搜罗娱乐</a></td>\r\n<td width=\"20%\"><a href=\"http://www.toopd.com/\" target=_blank>飞羽设计</a></td>\r\n<td width=\"20%\"><a href=\"http://www.qiqig.com/\" target=_blank>爱雅</a></td>\r\n<td width=\"20%\"><a href=\"http://www.jxsrjys.com.cn/\" target=_blank>上饶教研</a></td>\r\n<td width=\"20%\"><a href=\"http://www.unok.net/\" target=_blank>优盟网</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://mmm.pudou.com/\" target=_blank>扑豆中国</a></td>\r\n<td width=\"20%\"><a href=\"http://www.itzhan.com/\" target=_blank>IT中文</a></td>\r\n<td width=\"20%\"><a href=\"http://www.hkwtv.com/\" target=_blank>香港网视</a></td>\r\n<td width=\"20%\">&nbsp;</td>\r\n<td width=\"20%\">&nbsp;</td></tr></tbody></table>','57','0');
INSERT INTO `hh_area` VALUES ('1','0','直辖市','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('2','0','广东','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('3','0','浙江','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('4','0','安徽','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('5','0','福建','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('6','0','甘肃','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('7','0','广西','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('8','0','贵州','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('9','0','海南','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('10','0','河北','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('11','0','河南','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('12','0','黑龙江','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('13','0','湖北','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('14','0','湖南','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('15','0','吉林','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('16','0','江苏','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('17','0','江西','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('18','0','辽宁','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('19','0','内蒙古','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('20','0','宁夏','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('21','0','青海','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('22','0','山东','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('23','0','山西','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('24','0','陕西','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('25','0','四川','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('26','0','西藏','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('27','0','新疆','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_area` VALUES ('28','0','云南','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','0');
INSERT INTO `hh_city` VALUES ('1','1','北京','0','0','0','flyggcm','0','0','','','','','|||','','0','','','0','','','','','0','','1','B','','');
INSERT INTO `hh_city` VALUES ('2','1','上海','0','0','0','','0','0','','','','','|||','','0','','','0','','','','','0','','0','S','','');
INSERT INTO `hh_city` VALUES ('3','1','天津','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TianJin');
INSERT INTO `hh_city` VALUES ('4','1','重庆','0','0','0','','0','0','','','','','|||','','0','','','0','','','','','0','','0','C','','ChongQing');
INSERT INTO `hh_city` VALUES ('5','2','广州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GuangZhou');
INSERT INTO `hh_city` VALUES ('6','2','深圳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','Shen');
INSERT INTO `hh_city` VALUES ('7','2','珠海','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhuHai');
INSERT INTO `hh_city` VALUES ('8','2','汕头','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShanTou');
INSERT INTO `hh_city` VALUES ('9','2','韶关','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShaoGuan');
INSERT INTO `hh_city` VALUES ('10','2','佛山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','F','','FoShan');
INSERT INTO `hh_city` VALUES ('11','2','江门','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiangMen');
INSERT INTO `hh_city` VALUES ('12','2','湛江','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhanJiang');
INSERT INTO `hh_city` VALUES ('13','2','茂名','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','M','','MaoMing');
INSERT INTO `hh_city` VALUES ('14','2','肇庆','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhaoQing');
INSERT INTO `hh_city` VALUES ('15','2','惠州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuiZhou');
INSERT INTO `hh_city` VALUES ('16','2','梅州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','M','','MeiZhou');
INSERT INTO `hh_city` VALUES ('17','2','汕尾','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShanWei');
INSERT INTO `hh_city` VALUES ('18','2','河源','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeYuan');
INSERT INTO `hh_city` VALUES ('19','2','阳江','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YangJiang');
INSERT INTO `hh_city` VALUES ('20','2','清远','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QingYuan');
INSERT INTO `hh_city` VALUES ('21','2','东莞','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','Dong');
INSERT INTO `hh_city` VALUES ('22','2','中山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhongShan');
INSERT INTO `hh_city` VALUES ('23','2','潮州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChaoZhou');
INSERT INTO `hh_city` VALUES ('24','2','揭阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JieYang');
INSERT INTO `hh_city` VALUES ('25','2','云浮','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YunFu');
INSERT INTO `hh_city` VALUES ('26','3','杭州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HangZhou');
INSERT INTO `hh_city` VALUES ('27','3','嘉兴','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiaXing');
INSERT INTO `hh_city` VALUES ('28','3','宁波','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NingBo');
INSERT INTO `hh_city` VALUES ('29','3','湖州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuZhou');
INSERT INTO `hh_city` VALUES ('30','3','绍兴','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShaoXing');
INSERT INTO `hh_city` VALUES ('31','3','金华','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JinHua');
INSERT INTO `hh_city` VALUES ('32','3','衢州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','Zhou32');
INSERT INTO `hh_city` VALUES ('33','3','舟山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhouShan');
INSERT INTO `hh_city` VALUES ('34','3','台州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TaiZhou34');
INSERT INTO `hh_city` VALUES ('35','3','丽水','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiShui');
INSERT INTO `hh_city` VALUES ('36','3','义乌','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YiWu');
INSERT INTO `hh_city` VALUES ('37','3','温州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WenZhou');
INSERT INTO `hh_city` VALUES ('38','4','合肥','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeFei');
INSERT INTO `hh_city` VALUES ('39','4','芜湖','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuHu');
INSERT INTO `hh_city` VALUES ('40','4','蚌埠','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BangBu');
INSERT INTO `hh_city` VALUES ('41','4','淮南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuaiNan');
INSERT INTO `hh_city` VALUES ('42','4','马鞍山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','M','','MaAnShan');
INSERT INTO `hh_city` VALUES ('43','4','淮北','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuaiBei');
INSERT INTO `hh_city` VALUES ('44','4','铜陵','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TongLing');
INSERT INTO `hh_city` VALUES ('45','4','安庆','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','AnQing');
INSERT INTO `hh_city` VALUES ('46','4','黄山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuangShan');
INSERT INTO `hh_city` VALUES ('47','4','滁州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChuZhou');
INSERT INTO `hh_city` VALUES ('48','4','阜阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','F','','FuYang');
INSERT INTO `hh_city` VALUES ('49','4','巢湖','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChaoHu');
INSERT INTO `hh_city` VALUES ('50','4','六安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiuAn');
INSERT INTO `hh_city` VALUES ('51','4','亳州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','Zhou51');
INSERT INTO `hh_city` VALUES ('52','4','池州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChiZhou');
INSERT INTO `hh_city` VALUES ('53','4','宣城','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XuanCheng');
INSERT INTO `hh_city` VALUES ('54','4','宿州市','0','0','0','','0','0','','','','','|||','','0','','','0','','','','','0','','0','S','','SuZhouShi');
INSERT INTO `hh_city` VALUES ('55','5','福州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','F','','FuZhou55');
INSERT INTO `hh_city` VALUES ('56','5','厦门','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiaMen');
INSERT INTO `hh_city` VALUES ('57','5','莆田','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','P','','PuTian');
INSERT INTO `hh_city` VALUES ('58','5','三明','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SanMing');
INSERT INTO `hh_city` VALUES ('59','5','泉州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QuanZhou');
INSERT INTO `hh_city` VALUES ('60','5','漳州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhangZhou');
INSERT INTO `hh_city` VALUES ('61','5','南平','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NanPing');
INSERT INTO `hh_city` VALUES ('62','5','龙岩','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LongYan');
INSERT INTO `hh_city` VALUES ('63','5','宁德','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NingDe');
INSERT INTO `hh_city` VALUES ('64','6','兰州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LanZhou');
INSERT INTO `hh_city` VALUES ('65','6','嘉峪关','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiaYuGuan');
INSERT INTO `hh_city` VALUES ('66','6','金昌','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JinChang');
INSERT INTO `hh_city` VALUES ('67','6','白银','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaiYin');
INSERT INTO `hh_city` VALUES ('68','6','天水','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TianShui');
INSERT INTO `hh_city` VALUES ('69','6','武威','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuWei');
INSERT INTO `hh_city` VALUES ('70','6','张掖','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhangYe');
INSERT INTO `hh_city` VALUES ('71','6','平凉','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','P','','PingLiang');
INSERT INTO `hh_city` VALUES ('72','6','酒泉','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiuQuan');
INSERT INTO `hh_city` VALUES ('73','6','庆阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QingYang');
INSERT INTO `hh_city` VALUES ('74','6','定西','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DingXi');
INSERT INTO `hh_city` VALUES ('75','6','陇南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LongNan');
INSERT INTO `hh_city` VALUES ('76','6','临夏','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LinXia');
INSERT INTO `hh_city` VALUES ('77','6','甘南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GanNan');
INSERT INTO `hh_city` VALUES ('78','7','南宁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NanNing');
INSERT INTO `hh_city` VALUES ('79','7','柳州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiuZhou');
INSERT INTO `hh_city` VALUES ('80','7','桂林','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GuiLin');
INSERT INTO `hh_city` VALUES ('81','7','梧州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuZhou');
INSERT INTO `hh_city` VALUES ('82','7','贵港','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GuiGang');
INSERT INTO `hh_city` VALUES ('83','7','钦州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QinZhou');
INSERT INTO `hh_city` VALUES ('84','7','北海','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BeiHai');
INSERT INTO `hh_city` VALUES ('85','7','防城港','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','F','','FangChengGang');
INSERT INTO `hh_city` VALUES ('86','7','崇左','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChongZuo');
INSERT INTO `hh_city` VALUES ('87','7','百色','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaiSe');
INSERT INTO `hh_city` VALUES ('88','7','河池','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeChi');
INSERT INTO `hh_city` VALUES ('89','7','来宾','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LaiBin');
INSERT INTO `hh_city` VALUES ('90','7','贺州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeZhou');
INSERT INTO `hh_city` VALUES ('91','7','玉林','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YuLin91');
INSERT INTO `hh_city` VALUES ('92','8','贵阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GuiYang');
INSERT INTO `hh_city` VALUES ('93','8','六盘水','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiuPanShui');
INSERT INTO `hh_city` VALUES ('94','8','遵义','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZunYi');
INSERT INTO `hh_city` VALUES ('95','8','安顺','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','AnShun');
INSERT INTO `hh_city` VALUES ('96','8','黔南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QianNan');
INSERT INTO `hh_city` VALUES ('97','8','黔东南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QianDongNan');
INSERT INTO `hh_city` VALUES ('98','8','黔西南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QianXiNan');
INSERT INTO `hh_city` VALUES ('99','8','毕节','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BiJie');
INSERT INTO `hh_city` VALUES ('100','8','铜仁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TongRen');
INSERT INTO `hh_city` VALUES ('101','9','海口','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HaiKou');
INSERT INTO `hh_city` VALUES ('102','9','三亚','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SanYa');
INSERT INTO `hh_city` VALUES ('103','10','石家庄','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShiJiaZhuang');
INSERT INTO `hh_city` VALUES ('104','10','沧州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','CangZhou');
INSERT INTO `hh_city` VALUES ('105','10','迁安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QianAn');
INSERT INTO `hh_city` VALUES ('106','10','邯郸','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HanDan');
INSERT INTO `hh_city` VALUES ('107','10','邢台','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XingTai');
INSERT INTO `hh_city` VALUES ('108','10','保定','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaoDing');
INSERT INTO `hh_city` VALUES ('109','10','张家口','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhangJiaKou');
INSERT INTO `hh_city` VALUES ('110','10','承德','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChengDe');
INSERT INTO `hh_city` VALUES ('111','10','唐山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TangShan');
INSERT INTO `hh_city` VALUES ('112','10','廊坊','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LangFang');
INSERT INTO `hh_city` VALUES ('113','10','衡水','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HengShui');
INSERT INTO `hh_city` VALUES ('114','10','秦皇岛','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QinHuangDao');
INSERT INTO `hh_city` VALUES ('115','11','郑州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhengZhou');
INSERT INTO `hh_city` VALUES ('116','11','焦作','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiaoZuo');
INSERT INTO `hh_city` VALUES ('117','11','洛阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LuoYang');
INSERT INTO `hh_city` VALUES ('118','11','信阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XinYang');
INSERT INTO `hh_city` VALUES ('119','11','驻马店','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhuMaDian');
INSERT INTO `hh_city` VALUES ('120','11','鹤壁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeBi');
INSERT INTO `hh_city` VALUES ('121','11','新乡','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XinXiang');
INSERT INTO `hh_city` VALUES ('122','11','安阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','AnYang');
INSERT INTO `hh_city` VALUES ('123','11','濮阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','Yang');
INSERT INTO `hh_city` VALUES ('124','11','许昌','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XuChang');
INSERT INTO `hh_city` VALUES ('125','11','漯河','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','He');
INSERT INTO `hh_city` VALUES ('126','11','三门峡','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SanMenXia');
INSERT INTO `hh_city` VALUES ('127','11','南阳','0','0','0','','0','0','','','','','|||','','0','','','0','','','','','0','','0','N','','NanYang');
INSERT INTO `hh_city` VALUES ('128','11','商丘','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShangQiu');
INSERT INTO `hh_city` VALUES ('129','11','平顶山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','P','','PingDingShan');
INSERT INTO `hh_city` VALUES ('130','11','周口','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhouKou');
INSERT INTO `hh_city` VALUES ('131','11','开封','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','K','','KaiFeng');
INSERT INTO `hh_city` VALUES ('132','12','哈尔滨','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HaErBin');
INSERT INTO `hh_city` VALUES ('133','12','齐齐哈尔','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QiQiHaEr');
INSERT INTO `hh_city` VALUES ('134','12','鸡西','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiXi');
INSERT INTO `hh_city` VALUES ('135','12','鹤岗','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeGang');
INSERT INTO `hh_city` VALUES ('136','12','双鸭山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShuangYaShan');
INSERT INTO `hh_city` VALUES ('137','12','大庆','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DaQing');
INSERT INTO `hh_city` VALUES ('138','12','伊春','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YiChun138');
INSERT INTO `hh_city` VALUES ('139','12','佳木斯','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiaMuSi');
INSERT INTO `hh_city` VALUES ('140','12','七台河','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QiTaiHe');
INSERT INTO `hh_city` VALUES ('141','12','牡丹江','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','M','','MuDanJiang');
INSERT INTO `hh_city` VALUES ('142','12','黑河','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeiHe');
INSERT INTO `hh_city` VALUES ('143','12','绥化','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SuiHua');
INSERT INTO `hh_city` VALUES ('144','12','大兴安岭','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DaXingAnLing');
INSERT INTO `hh_city` VALUES ('145','13','武汉','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuHan');
INSERT INTO `hh_city` VALUES ('146','13','襄樊','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiangFan');
INSERT INTO `hh_city` VALUES ('147','13','黄石','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuangShi');
INSERT INTO `hh_city` VALUES ('148','13','十堰','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShiYan');
INSERT INTO `hh_city` VALUES ('149','13','随州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SuiZhou');
INSERT INTO `hh_city` VALUES ('150','13','宜昌','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YiChang');
INSERT INTO `hh_city` VALUES ('151','13','荆州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JingZhou');
INSERT INTO `hh_city` VALUES ('152','13','咸宁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XianNing');
INSERT INTO `hh_city` VALUES ('153','13','鄂州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','E','','EZhou');
INSERT INTO `hh_city` VALUES ('154','13','黄冈','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuangGang');
INSERT INTO `hh_city` VALUES ('155','13','孝感','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiaoGan');
INSERT INTO `hh_city` VALUES ('156','13','荆门','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JingMen');
INSERT INTO `hh_city` VALUES ('157','13','恩施','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','E','','EnShi');
INSERT INTO `hh_city` VALUES ('158','14','长沙','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChangSha');
INSERT INTO `hh_city` VALUES ('159','14','株洲','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhuZhou');
INSERT INTO `hh_city` VALUES ('160','14','湘潭','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiangTan');
INSERT INTO `hh_city` VALUES ('161','14','衡阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HengYang');
INSERT INTO `hh_city` VALUES ('162','14','邵阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShaoYang');
INSERT INTO `hh_city` VALUES ('163','14','岳阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YueYang');
INSERT INTO `hh_city` VALUES ('164','14','常德','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChangDe');
INSERT INTO `hh_city` VALUES ('165','14','张家界','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhangJiaJie');
INSERT INTO `hh_city` VALUES ('166','14','益阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YiYang');
INSERT INTO `hh_city` VALUES ('167','14','郴州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChenZhou');
INSERT INTO `hh_city` VALUES ('168','14','永州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YongZhou');
INSERT INTO `hh_city` VALUES ('169','14','怀化','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuaiHua');
INSERT INTO `hh_city` VALUES ('170','14','娄底','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LouDi');
INSERT INTO `hh_city` VALUES ('171','14','湘西','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiangXi');
INSERT INTO `hh_city` VALUES ('172','15','长春','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChangChun');
INSERT INTO `hh_city` VALUES ('173','15','吉林','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiLin');
INSERT INTO `hh_city` VALUES ('174','15','四平','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SiPing');
INSERT INTO `hh_city` VALUES ('175','15','辽源','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiaoYuan');
INSERT INTO `hh_city` VALUES ('176','15','通化','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TongHua');
INSERT INTO `hh_city` VALUES ('177','15','白山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaiShan');
INSERT INTO `hh_city` VALUES ('178','15','松原','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SongYuan');
INSERT INTO `hh_city` VALUES ('179','15','白城','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaiCheng');
INSERT INTO `hh_city` VALUES ('180','15','延边','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YanBian');
INSERT INTO `hh_city` VALUES ('181','16','南京','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NanJing');
INSERT INTO `hh_city` VALUES ('182','16','无锡','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuXi');
INSERT INTO `hh_city` VALUES ('183','16','徐州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XuZhou');
INSERT INTO `hh_city` VALUES ('184','16','常州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChangZhou');
INSERT INTO `hh_city` VALUES ('185','16','扬州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YangZhou');
INSERT INTO `hh_city` VALUES ('186','16','南通','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NanTong');
INSERT INTO `hh_city` VALUES ('187','16','连云港','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LianYunGang');
INSERT INTO `hh_city` VALUES ('188','16','淮安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuaiAn');
INSERT INTO `hh_city` VALUES ('189','16','盐城','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YanCheng');
INSERT INTO `hh_city` VALUES ('190','16','苏州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SuZhou');
INSERT INTO `hh_city` VALUES ('191','16','镇江','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhenJiang');
INSERT INTO `hh_city` VALUES ('192','16','宿迁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SuQian');
INSERT INTO `hh_city` VALUES ('193','16','泰州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TaiZhou');
INSERT INTO `hh_city` VALUES ('194','17','南昌','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NanChang');
INSERT INTO `hh_city` VALUES ('195','17','景德镇','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JingDeZhen');
INSERT INTO `hh_city` VALUES ('196','17','萍乡','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','P','','PingXiang');
INSERT INTO `hh_city` VALUES ('197','17','九江','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiuJiang');
INSERT INTO `hh_city` VALUES ('198','17','新余','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XinYu');
INSERT INTO `hh_city` VALUES ('199','17','鹰潭','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YingTan');
INSERT INTO `hh_city` VALUES ('200','17','赣州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GanZhou');
INSERT INTO `hh_city` VALUES ('201','17','吉安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiAn');
INSERT INTO `hh_city` VALUES ('202','17','上饶','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShangRao');
INSERT INTO `hh_city` VALUES ('203','17','宜春','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YiChun');
INSERT INTO `hh_city` VALUES ('204','17','抚州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','F','','FuZhou');
INSERT INTO `hh_city` VALUES ('205','18','沈阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShenYang');
INSERT INTO `hh_city` VALUES ('206','18','大连','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DaLian');
INSERT INTO `hh_city` VALUES ('207','18','鞍山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','AnShan');
INSERT INTO `hh_city` VALUES ('208','18','抚顺','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','F','','FuShun');
INSERT INTO `hh_city` VALUES ('209','18','本溪','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BenXi');
INSERT INTO `hh_city` VALUES ('210','18','丹东','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DanDong');
INSERT INTO `hh_city` VALUES ('211','18','锦州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JinZhou');
INSERT INTO `hh_city` VALUES ('212','18','营口','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YingKou');
INSERT INTO `hh_city` VALUES ('213','18','阜新','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','F','','FuXin');
INSERT INTO `hh_city` VALUES ('214','18','辽阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiaoYang');
INSERT INTO `hh_city` VALUES ('215','18','盘锦','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','P','','PanJin');
INSERT INTO `hh_city` VALUES ('216','18','铁岭','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TieLing');
INSERT INTO `hh_city` VALUES ('217','18','朝阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChaoYang');
INSERT INTO `hh_city` VALUES ('218','18','葫芦岛','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuLuDao');
INSERT INTO `hh_city` VALUES ('219','19','呼和浩特','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuHeHaoTe');
INSERT INTO `hh_city` VALUES ('220','19','包头','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaoTou');
INSERT INTO `hh_city` VALUES ('221','19','呼伦贝尔','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuLunBeiEr');
INSERT INTO `hh_city` VALUES ('222','19','赤峰','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChiFeng');
INSERT INTO `hh_city` VALUES ('223','19','通辽','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TongLiao');
INSERT INTO `hh_city` VALUES ('224','19','鄂尔多斯','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','E','','EErDuoSi');
INSERT INTO `hh_city` VALUES ('225','19','乌海','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuHai');
INSERT INTO `hh_city` VALUES ('226','19','巴彦淖尔','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaYanNaoEr');
INSERT INTO `hh_city` VALUES ('227','19','乌兰察布','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuLanChaBu');
INSERT INTO `hh_city` VALUES ('228','19','兴安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XingAn');
INSERT INTO `hh_city` VALUES ('229','19','锡林郭勒','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiLinGuoLe');
INSERT INTO `hh_city` VALUES ('230','19','阿拉善','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','ALaShan');
INSERT INTO `hh_city` VALUES ('231','20','银川','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YinChuan');
INSERT INTO `hh_city` VALUES ('232','20','石嘴山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShiZuiShan');
INSERT INTO `hh_city` VALUES ('233','20','吴忠','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuZhong');
INSERT INTO `hh_city` VALUES ('234','20','固原','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GuYuan');
INSERT INTO `hh_city` VALUES ('235','20','中卫','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhongWei');
INSERT INTO `hh_city` VALUES ('236','21','西宁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiNing');
INSERT INTO `hh_city` VALUES ('237','21','海东','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HaiDong');
INSERT INTO `hh_city` VALUES ('238','21','海北','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HaiBei');
INSERT INTO `hh_city` VALUES ('239','21','黄南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HuangNan');
INSERT INTO `hh_city` VALUES ('240','21','果洛','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GuoLuo');
INSERT INTO `hh_city` VALUES ('241','21','玉树','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YuShu');
INSERT INTO `hh_city` VALUES ('242','21','海西','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HaiXi');
INSERT INTO `hh_city` VALUES ('243','22','济南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiNan');
INSERT INTO `hh_city` VALUES ('244','22','济宁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JiNing');
INSERT INTO `hh_city` VALUES ('245','22','淄博','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZiBo');
INSERT INTO `hh_city` VALUES ('246','22','枣庄','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZaoZhuang');
INSERT INTO `hh_city` VALUES ('247','22','东营','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DongYing');
INSERT INTO `hh_city` VALUES ('248','22','烟台','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YanTai');
INSERT INTO `hh_city` VALUES ('249','22','潍坊','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WeiFang');
INSERT INTO `hh_city` VALUES ('250','22','威海','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WeiHai');
INSERT INTO `hh_city` VALUES ('251','22','青岛','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QingDao');
INSERT INTO `hh_city` VALUES ('252','22','泰安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TaiAn');
INSERT INTO `hh_city` VALUES ('253','22','日照','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','R','','RiZhao');
INSERT INTO `hh_city` VALUES ('254','22','莱芜','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LaiWu');
INSERT INTO `hh_city` VALUES ('255','22','临沂','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LinYi');
INSERT INTO `hh_city` VALUES ('256','22','德州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DeZhou');
INSERT INTO `hh_city` VALUES ('257','22','聊城','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiaoCheng');
INSERT INTO `hh_city` VALUES ('258','22','滨州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BinZhou');
INSERT INTO `hh_city` VALUES ('259','22','菏泽','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeZe');
INSERT INTO `hh_city` VALUES ('260','23','太原','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TaiYuan');
INSERT INTO `hh_city` VALUES ('261','23','大同','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DaTong');
INSERT INTO `hh_city` VALUES ('262','23','阳泉','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YangQuan');
INSERT INTO `hh_city` VALUES ('263','23','长治','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChangZhi');
INSERT INTO `hh_city` VALUES ('264','23','晋城','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JinCheng');
INSERT INTO `hh_city` VALUES ('265','23','朔州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShuoZhou');
INSERT INTO `hh_city` VALUES ('266','23','晋中','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','J','','JinZhong');
INSERT INTO `hh_city` VALUES ('267','23','运城','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YunCheng');
INSERT INTO `hh_city` VALUES ('268','23','忻州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XinZhou');
INSERT INTO `hh_city` VALUES ('269','23','临汾','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LinFen');
INSERT INTO `hh_city` VALUES ('270','23','吕梁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LvLiang');
INSERT INTO `hh_city` VALUES ('271','24','西安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiAn');
INSERT INTO `hh_city` VALUES ('272','24','铜川','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TongChuan');
INSERT INTO `hh_city` VALUES ('273','24','宝鸡','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaoJi');
INSERT INTO `hh_city` VALUES ('274','24','咸阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XianYang');
INSERT INTO `hh_city` VALUES ('275','24','渭南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WeiNan');
INSERT INTO `hh_city` VALUES ('276','24','延安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YanAn');
INSERT INTO `hh_city` VALUES ('277','24','汉中','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HanZhong');
INSERT INTO `hh_city` VALUES ('278','24','榆林','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YuLin');
INSERT INTO `hh_city` VALUES ('279','24','安康','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','AnKang');
INSERT INTO `hh_city` VALUES ('280','24','商洛','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShangLuo');
INSERT INTO `hh_city` VALUES ('281','25','成都','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChengDu');
INSERT INTO `hh_city` VALUES ('282','25','泸州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','Zhou');
INSERT INTO `hh_city` VALUES ('283','25','绵阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','M','','MianYang');
INSERT INTO `hh_city` VALUES ('284','25','德阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DeYang');
INSERT INTO `hh_city` VALUES ('285','25','南充','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NanChong');
INSERT INTO `hh_city` VALUES ('286','25','广安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GuangAn');
INSERT INTO `hh_city` VALUES ('287','25','遂宁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SuiNing');
INSERT INTO `hh_city` VALUES ('288','25','内江','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NeiJiang');
INSERT INTO `hh_city` VALUES ('289','25','乐山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LeShan');
INSERT INTO `hh_city` VALUES ('290','25','自贡','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZiGong');
INSERT INTO `hh_city` VALUES ('291','25','广元','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GuangYuan');
INSERT INTO `hh_city` VALUES ('292','25','宜宾','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YiBin');
INSERT INTO `hh_city` VALUES ('293','25','攀枝花','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','P','','PanZhiHua');
INSERT INTO `hh_city` VALUES ('294','25','巴中','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaZhong');
INSERT INTO `hh_city` VALUES ('295','25','达州','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DaZhou');
INSERT INTO `hh_city` VALUES ('296','25','资阳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZiYang');
INSERT INTO `hh_city` VALUES ('297','25','眉山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','M','','MeiShan');
INSERT INTO `hh_city` VALUES ('298','25','雅安','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YaAn');
INSERT INTO `hh_city` VALUES ('299','25','阿坝','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','ABa');
INSERT INTO `hh_city` VALUES ('300','25','甘孜','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','G','','GanZi');
INSERT INTO `hh_city` VALUES ('301','25','凉山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiangShan');
INSERT INTO `hh_city` VALUES ('302','26','拉萨','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LaSa');
INSERT INTO `hh_city` VALUES ('303','26','昌都','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChangDu');
INSERT INTO `hh_city` VALUES ('304','26','山南','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShanNan');
INSERT INTO `hh_city` VALUES ('305','26','日喀则','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','R','','RiKaZe');
INSERT INTO `hh_city` VALUES ('306','26','那曲','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NaQu');
INSERT INTO `hh_city` VALUES ('307','26','阿里','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','ALi');
INSERT INTO `hh_city` VALUES ('308','26','林芝','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LinZhi');
INSERT INTO `hh_city` VALUES ('309','27','乌鲁木齐','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WuLuMuQi');
INSERT INTO `hh_city` VALUES ('310','27','克拉玛依','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','K','','KeLaMaYi');
INSERT INTO `hh_city` VALUES ('311','27','吐鲁番','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TuLuFan');
INSERT INTO `hh_city` VALUES ('312','27','哈密','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HaMi');
INSERT INTO `hh_city` VALUES ('313','27','和田','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HeTian');
INSERT INTO `hh_city` VALUES ('314','27','阿克苏','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','AKeSu');
INSERT INTO `hh_city` VALUES ('315','27','喀什','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','K','','KaShi');
INSERT INTO `hh_city` VALUES ('316','27','巴音郭楞','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaYinGuoLeng');
INSERT INTO `hh_city` VALUES ('317','27','昌吉','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChangJi');
INSERT INTO `hh_city` VALUES ('318','27','博尔塔拉','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BoErTaLa');
INSERT INTO `hh_city` VALUES ('319','27','伊犁','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YiLi');
INSERT INTO `hh_city` VALUES ('320','27','塔城','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','T','','TaCheng');
INSERT INTO `hh_city` VALUES ('321','27','阿勒泰','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','A','','ALeTai');
INSERT INTO `hh_city` VALUES ('322','27','石河子','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','ShiHeZi');
INSERT INTO `hh_city` VALUES ('323','28','昆明','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','K','','KunMing');
INSERT INTO `hh_city` VALUES ('324','28','曲靖','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Q','','QuJing');
INSERT INTO `hh_city` VALUES ('325','28','玉溪','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Y','','YuXi');
INSERT INTO `hh_city` VALUES ('326','28','保山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','B','','BaoShan');
INSERT INTO `hh_city` VALUES ('327','28','昭通','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','Z','','ZhaoTong');
INSERT INTO `hh_city` VALUES ('328','28','丽江','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LiJiang');
INSERT INTO `hh_city` VALUES ('329','28','临沧','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','L','','LinCang');
INSERT INTO `hh_city` VALUES ('330','28','文山','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','W','','WenShan');
INSERT INTO `hh_city` VALUES ('331','28','红河','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','H','','HongHe');
INSERT INTO `hh_city` VALUES ('332','28','西双版纳','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','X','','XiShuangBanNa');
INSERT INTO `hh_city` VALUES ('333','28','楚雄','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','C','','ChuXiong');
INSERT INTO `hh_city` VALUES ('334','28','大理','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DaLi');
INSERT INTO `hh_city` VALUES ('335','28','德宏','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DeHong');
INSERT INTO `hh_city` VALUES ('336','28','怒江','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','N','','NuJiang');
INSERT INTO `hh_city` VALUES ('337','28','迪庆','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','D','','DiQing');
INSERT INTO `hh_city` VALUES ('338','28','思茅','0','0','0','','0','0','','','','','','','0','','','0','','','','','0','','0','S','','SiMao');
INSERT INTO `hh_config` VALUES ('yzImgComment','0','');
INSERT INTO `hh_config` VALUES ('flashtime','0','');
INSERT INTO `hh_config` VALUES ('showComment','1','');
INSERT INTO `hh_config` VALUES ('forbidComment','0','');
INSERT INTO `hh_config` VALUES ('showCommentRows','8','');
INSERT INTO `hh_config` VALUES ('viewNoPassGuestBook','1','');
INSERT INTO `hh_config` VALUES ('yzImgContribute','0','');
INSERT INTO `hh_config` VALUES ('groupPassContribute','3','');
INSERT INTO `hh_config` VALUES ('yzImgReg','1','');
INSERT INTO `hh_config` VALUES ('MaxOnlineUser','1000','');
INSERT INTO `hh_config` VALUES ('groupPassShopYz','3,4','');
INSERT INTO `hh_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `hh_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `hh_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `hh_config` VALUES ('ContributeFid','2','');
INSERT INTO `hh_config` VALUES ('groupPassLogYz','3,4','');
INSERT INTO `hh_config` VALUES ('RegYz','1','');
INSERT INTO `hh_config` VALUES ('FtpPwd','admin','');
INSERT INTO `hh_config` VALUES ('PostSortStep','2','');
INSERT INTO `hh_config` VALUES ('ListSonline','2','');
INSERT INTO `hh_config` VALUES ('_Notice','29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=','');
INSERT INTO `hh_config` VALUES ('CommentTime','5','');
INSERT INTO `hh_config` VALUES ('weburl','/','');
INSERT INTO `hh_config` VALUES ('MailType','smtp','');
INSERT INTO `hh_config` VALUES ('yeepay_id','10000821064','');
INSERT INTO `hh_config` VALUES ('yeepay_key','ve4ets3huzxruch0tsf6nga7a2lpckm8h9p7qnefj31q49ms8bhl3qin6q0g','');
INSERT INTO `hh_config` VALUES ('allowMemberCommentPass','1','');
INSERT INTO `hh_config` VALUES ('AvoidGatherPre','','');
INSERT INTO `hh_config` VALUES ('AvoidCopy','0','');
INSERT INTO `hh_config` VALUES ('AvoidGather','0','');
INSERT INTO `hh_config` VALUES ('AvoidSave','0','');
INSERT INTO `hh_config` VALUES ('waterpos','7','');
INSERT INTO `hh_config` VALUES ('adminPostEditType','html','');
INSERT INTO `hh_config` VALUES ('article_show_step','0','');
INSERT INTO `hh_config` VALUES ('ifContribute','1','');
INSERT INTO `hh_config` VALUES ('allowGuestSearch','0','');
INSERT INTO `hh_config` VALUES ('kill_badword','0','');
INSERT INTO `hh_config` VALUES ('ShowKeywordColor','#F70968','');
INSERT INTO `hh_config` VALUES ('ifShowKeyword','1','');
INSERT INTO `hh_config` VALUES ('UseFtp','0','');
INSERT INTO `hh_config` VALUES ('FtpWeb','','');
INSERT INTO `hh_config` VALUES ('FtpName','admin','');
INSERT INTO `hh_config` VALUES ('groupTime','180','');
INSERT INTO `hh_config` VALUES ('allowGuestCommentPass','1','');
INSERT INTO `hh_config` VALUES ('ShowMenu','0','');
INSERT INTO `hh_config` VALUES ('GuestBookNum','8','');
INSERT INTO `hh_config` VALUES ('ShopNormalSend','8','');
INSERT INTO `hh_config` VALUES ('ShopEmsSend','25','');
INSERT INTO `hh_config` VALUES ('groupUpType','1','');
INSERT INTO `hh_config` VALUES ('NewsMakeHtml','0','');
INSERT INTO `hh_config` VALUES ('waterimg','images/default/water.gif','');
INSERT INTO `hh_config` VALUES ('MailPort','25','');
INSERT INTO `hh_config` VALUES ('HideNopowerPost','1','');
INSERT INTO `hh_config` VALUES ('allowGuestComment','1','');
INSERT INTO `hh_config` VALUES ('ListSonLeng','34','');
INSERT INTO `hh_config` VALUES ('Listsortnameline','2','');
INSERT INTO `hh_config` VALUES ('ListLeng','70','');
INSERT INTO `hh_config` VALUES ('showsortlogo','0','');
INSERT INTO `hh_config` VALUES ('PostNotice','<font face=SimSun>\r\n<p><font face=SimSun>1、如果是转载内容，请务必填写稿件来源网址及出处。<br />2、所引起的版权纠纷与法律责任由发布者承担。</font></p></font>','');
INSERT INTO `hh_config` VALUES ('propagandize_jumpto','/','');
INSERT INTO `hh_config` VALUES ('propagandize_LogDay','5','');
INSERT INTO `hh_config` VALUES ('propagandize_close','0','');
INSERT INTO `hh_config` VALUES ('propagandize_Money','2','');
INSERT INTO `hh_config` VALUES ('YZ_IdcardMoney','20','');
INSERT INTO `hh_config` VALUES ('EditYzEmail','0','');
INSERT INTO `hh_config` VALUES ('EditYzMob','0','');
INSERT INTO `hh_config` VALUES ('EditYzIdcard','0','');
INSERT INTO `hh_config` VALUES ('YZ_EmailMoney','10','');
INSERT INTO `hh_config` VALUES ('YZ_MobMoney','15','');
INSERT INTO `hh_config` VALUES ('MailServer','smtp.163.com','');
INSERT INTO `hh_config` VALUES ('sms_es_name','1','');
INSERT INTO `hh_config` VALUES ('sms_type','ccell','');
INSERT INTO `hh_config` VALUES ('sms_wi_id','2','');
INSERT INTO `hh_config` VALUES ('sms_es_key','2','');
INSERT INTO `hh_config` VALUES ('SPlist_filename','html/4special{$fid}/list{$page}.htm','');
INSERT INTO `hh_config` VALUES ('SPbencandy_filename','html/5special{$fid}/show{$id}.htm','');
INSERT INTO `hh_config` VALUES ('reg_group','8','');
INSERT INTO `hh_config` VALUES ('close_count','0','');
INSERT INTO `hh_config` VALUES ('passport_TogetherLogin','1','');
INSERT INTO `hh_config` VALUES ('ListSonRows','9','');
INSERT INTO `hh_config` VALUES ('forbidRegName','','');
INSERT INTO `hh_config` VALUES ('cache_time_js','-1','');
INSERT INTO `hh_config` VALUES ('SideTitleStyle','side_tpl/2','');
INSERT INTO `hh_config` VALUES ('JsListRows','5','');
INSERT INTO `hh_config` VALUES ('list_filename','html/{$fid}/{$page}.htm','');
INSERT INTO `hh_config` VALUES ('bencandy_filename','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `hh_config` VALUES ('cache_time_com','-1','');
INSERT INTO `hh_config` VALUES ('JsListLeng','36','');
INSERT INTO `hh_config` VALUES ('SideSortStyle','side_sort/2','');
INSERT INTO `hh_config` VALUES ('emailOnly','1','');
INSERT INTO `hh_config` VALUES ('sortNUM','27','');
INSERT INTO `hh_config` VALUES ('articleNUM','77','');
INSERT INTO `hh_config` VALUES ('cache_time_like','-1','');
INSERT INTO `hh_config` VALUES ('cache_time_new','-1','');
INSERT INTO `hh_config` VALUES ('is_waterimg','1','');
INSERT INTO `hh_config` VALUES ('passport_path','../pw7','');
INSERT INTO `hh_config` VALUES ('Del_MoreUpfile','1','');
INSERT INTO `hh_config` VALUES ('passport_type','','');
INSERT INTO `hh_config` VALUES ('FtpDir','./','');
INSERT INTO `hh_config` VALUES ('passport_url','http://8888.ly.cm/bbs','');
INSERT INTO `hh_config` VALUES ('MakeIndexHtmlTime','0','');
INSERT INTO `hh_config` VALUES ('passport_pre','`dz7`.cdb_','');
INSERT INTO `hh_config` VALUES ('cache_time_pic','-1','');
INSERT INTO `hh_config` VALUES ('list_cache_time','0','');
INSERT INTO `hh_config` VALUES ('bencandy_cache_time','0','');
INSERT INTO `hh_config` VALUES ('showsp_cache_time','0','');
INSERT INTO `hh_config` VALUES ('cache_time_hot','-1','');
INSERT INTO `hh_config` VALUES ('RegCompany','1','');
INSERT INTO `hh_config` VALUES ('regmoney','5','');
INSERT INTO `hh_config` VALUES ('forbidReg','0','');
INSERT INTO `hh_config` VALUES ('pay99_id','','');
INSERT INTO `hh_config` VALUES ('MoneyRatio','100','');
INSERT INTO `hh_config` VALUES ('Money2card','0','');
INSERT INTO `hh_config` VALUES ('index_cache_time','0','');
INSERT INTO `hh_config` VALUES ('waterAlpha','80','');
INSERT INTO `hh_config` VALUES ('if_gdimg','1','');
INSERT INTO `hh_config` VALUES ('forbidRegIp','','');
INSERT INTO `hh_config` VALUES ('ForbidShowPhpPage','0','');
INSERT INTO `hh_config` VALUES ('AutoPassCompany','1','');
INSERT INTO `hh_config` VALUES ('limitRegTime','','');
INSERT INTO `hh_config` VALUES ('ArticleHeart','欠扁|1.gif\r\n支持|2.gif\r\n很棒|3.gif\r\n找骂|4.gif\r\n搞笑|5.gif\r\n软文|6.gif\r\n不解|7.gif\r\n吃惊|8.gif','');
INSERT INTO `hh_config` VALUES ('heart_time','30','');
INSERT INTO `hh_config` VALUES ('heart_noRecord','1','');
INSERT INTO `hh_config` VALUES ('UseArticleHeart','1','');
INSERT INTO `hh_config` VALUES ('UseArticleDigg','0','');
INSERT INTO `hh_config` VALUES ('ForceDel','0','');
INSERT INTO `hh_config` VALUES ('AutoTitleNum','1','');
INSERT INTO `hh_config` VALUES ('deleteArticleMoney','-1','');
INSERT INTO `hh_config` VALUES ('postArticleMoney','1','');
INSERT INTO `hh_config` VALUES ('comArticleMoney','3','');
INSERT INTO `hh_config` VALUES ('hotArticleNum','100','');
INSERT INTO `hh_config` VALUES ('newArticleTime','24','');
INSERT INTO `hh_config` VALUES ('ListShowIcon','0','');
INSERT INTO `hh_config` VALUES ('autoGetKeyword','0','');
INSERT INTO `hh_config` VALUES ('autoGetSmallPic','1','');
INSERT INTO `hh_config` VALUES ('KeepTodayCount','1','');
INSERT INTO `hh_config` VALUES ('ShopOtherSend','18','');
INSERT INTO `hh_config` VALUES ('DefaultIndexHtml','0','');
INSERT INTO `hh_config` VALUES ('bencandy_filename2','bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `hh_config` VALUES ('MailId','lfj846@163.com','');
INSERT INTO `hh_config` VALUES ('MailPw','020齐博CMSgz','');
INSERT INTO `hh_config` VALUES ('tenpay_id','1900000109','');
INSERT INTO `hh_config` VALUES ('tenpay_key','8934e7d15453e97507ef794cf7b0519d','');
INSERT INTO `hh_config` VALUES ('alipay_id','test@test.com','');
INSERT INTO `hh_config` VALUES ('pay99_key','','');
INSERT INTO `hh_config` VALUES ('alipay_key','','');
INSERT INTO `hh_config` VALUES ('list_filename2','list.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `hh_config` VALUES ('MAX_sell_telephone','10','');
INSERT INTO `hh_config` VALUES ('money_sell_telephone','50','');
INSERT INTO `hh_config` VALUES ('sell_telephone_titleNUM','12','');
INSERT INTO `hh_config` VALUES ('sell_telephone_telNUM','13','');
INSERT INTO `hh_config` VALUES ('path','/do','');
INSERT INTO `hh_config` VALUES ('viewNoPassArticle','0','');
INSERT INTO `hh_config` VALUES ('ForbidRepeatTitle','1','');
INSERT INTO `hh_config` VALUES ('autoCutSmallPic','1','');
INSERT INTO `hh_config` VALUES ('ArticlePicHeight','600','');
INSERT INTO `hh_config` VALUES ('ArticlePicWidth','800','');
INSERT INTO `hh_config` VALUES ('ArticleDownloadDirTime','0','');
INSERT INTO `hh_config` VALUES ('ArticleDownloadUseFtp','0','');
INSERT INTO `hh_config` VALUES ('SortUseOtherModule','0','');
INSERT INTO `hh_config` VALUES ('photoShowType','0','');
INSERT INTO `hh_config` VALUES ('allowDownMv','0','');
INSERT INTO `hh_config` VALUES ('autoPlayFirstMv','1','');
INSERT INTO `hh_config` VALUES ('EditSystem','0','');
INSERT INTO `hh_config` VALUES ('XunLei_ID','08311','');
INSERT INTO `hh_config` VALUES ('FlashGet_ID','6370','');
INSERT INTO `hh_config` VALUES ('ListPageTitle_nojs','0','');
INSERT INTO `hh_config` VALUES ('view_sell_article','0','');
INSERT INTO `hh_config` VALUES ('FtpPort','21','');
INSERT INTO `hh_config` VALUES ('sms_wi_pwd','3','');
INSERT INTO `hh_config` VALUES ('memberNotice','欢迎大家踊跃投稿,投稿可得积分奖励!!','');
INSERT INTO `hh_config` VALUES ('member_contact',' <div class=t>020-88888888</div>\r\n            <div class=t>020-88888888</div>\r\n            <div class=q>qq:123456</div>','');
INSERT INTO `hh_config` VALUES ('guide_word','网站首页|/|0||51\r\n资讯|/news/|0||52\r\n分类信息|/f/|0||59\r\n同城网购|/shop/|0||58\r\n商家黄页|/hy|0||60\r\n团购活动|/tg/|0||56\r\n优惠促销|/coupon/|0||57\r\n求职招聘|/hr/|0||61\r\n礼品|/gift/|0||55\r\n官方团|/shoptg/|0||62\r\n房产|/house/|0||63','');
INSERT INTO `hh_config` VALUES ('Reg_Field','a:1:{s:8:\\\"field_db\\\";a:0:{}}','');
INSERT INTO `hh_config` VALUES ('TheSameMakeIndexHtml','0','');
INSERT INTO `hh_config` VALUES ('SPlist_filename2','listsp.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `hh_config` VALUES ('SPbencandy_filename2','showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `hh_config` VALUES ('FtpHost','119.161.210.199','');
INSERT INTO `hh_config` VALUES ('copyright','','');
INSERT INTO `hh_config` VALUES ('mymd5','39336846','');
INSERT INTO `hh_config` VALUES ('companyTrade','机械及行业设备\r\n普通机械制造\r\n通用零部件\r\n五金配件\r\n金属工具\r\n电动工具\r\n电子元件\r\n电子器件\r\n照明及照明器具\r\n安全防护设备\r\n包装\r\n造纸及纸制品\r\n电机、电工电器\r\n电工器材\r\n通用仪器仪表\r\n专用仪器仪表\r\n交通运输设备、零部件\r\n办公、文教用品\r\n数码、电脑及网络配件\r\n日常家居用品\r\n木材、木制品\r\n家具\r\n家用电器\r\n礼品、工艺美术品\r\n食品、饮料\r\n通信产品\r\n玩具\r\n印刷设备\r\n运动、休闲、保健用品\r\n鞋、帽\r\n服装\r\n日用化学品\r\n农用化学品\r\n胶粘剂\r\n染料、颜料、涂料和油墨\r\n催化剂和助剂\r\n库存精细化学品\r\n食品和饲料添加剂\r\n塑料\r\n橡胶制品\r\n环保、环保设备\r\n建筑、建材\r\n能源\r\n粮油、农制品\r\n金属\r\n医药、保健及医疗设备\r\n纺织\r\n皮革\r\n煤焦化产品\r\n日常服务\r\n广告服务\r\n教育培训\r\n认证\r\n创意设计\r\n物流服务\r\n进出口代理\r\n维修及安装服务\r\n广告、展览器材\r\n专业录音、放音设备\r\n光学摄影器材\r\n编辑制作设备\r\n播出、前端设备\r\n建筑、装饰业\r\n房地产\r\n安装工程\r\n邮电通信\r\n事务所、公证\r\n卫生、体育、社会、福利\r\n公共服务业\r\n金融、保险\r\n实业公司、商业贸易\r\n高新技术开发区\r\n卡类市场','');
INSERT INTO `hh_config` VALUES ('miibeian_gov_cn','京ICP备050453号','');
INSERT INTO `hh_config` VALUES ('bokecc_id','','');
INSERT INTO `hh_config` VALUES ('cookiePre','','');
INSERT INTO `hh_config` VALUES ('cookieDomain','','');
INSERT INTO `hh_config` VALUES ('forbid_show_bug','1','');
INSERT INTO `hh_config` VALUES ('sms_ccell_id','82008','');
INSERT INTO `hh_config` VALUES ('sms_ccell_pwd','celllxl','');
INSERT INTO `hh_config` VALUES ('alipay_partner','','');
INSERT INTO `hh_config` VALUES ('alipay_service','create_partner_trade_by_buyer','');
INSERT INTO `hh_config` VALUES ('alipay_transport','https','');
INSERT INTO `hh_config` VALUES ('alipay_scale','100','');
INSERT INTO `hh_config` VALUES ('mirror','http://down.qibosoft.com/other/testv6/upload_files/','');
INSERT INTO `hh_config` VALUES ('updir','upload_files','');
INSERT INTO `hh_config` VALUES ('upfileType','.rar .txt .jpg .gif .bmp .png .zip .mp3 .wma .wmv .mpeg .mpg .rm .ram .htm .doc .swf .avi .flv .sql .doc .ppt .xls .chm .pdf .asp','');
INSERT INTO `hh_config` VALUES ('upfileMaxSize','','');
INSERT INTO `hh_config` VALUES ('totalSpace','100','');
INSERT INTO `hh_config` VALUES ('time','0','');
INSERT INTO `hh_config` VALUES ('admin_url','admin','');
INSERT INTO `hh_config` VALUES ('www_url','http://127.0.0.1/','');
INSERT INTO `hh_config` VALUES ('style_member','default','');
INSERT INTO `hh_config` VALUES ('style','blue','');
INSERT INTO `hh_config` VALUES ('close_why','网站维护当中,\r\n暂停访问.','');
INSERT INTO `hh_config` VALUES ('web_open','1','');
INSERT INTO `hh_config` VALUES ('MoneyDW','个','');
INSERT INTO `hh_config` VALUES ('MoneyName','积分','');
INSERT INTO `hh_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `hh_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `hh_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `hh_config` VALUES ('webmail','admin@admin.com','');
INSERT INTO `hh_config` VALUES ('description','提供给大家消费交流的网站','');
INSERT INTO `hh_config` VALUES ('metakeywords','生活 黄页 美食','');
INSERT INTO `hh_config` VALUES ('webname','齐博地方生活门户系统','');
INSERT INTO `hh_config` VALUES ('AutoCutFace','0','');
INSERT INTO `hh_config` VALUES ('yzImgAdminLogin','0','');
INSERT INTO `hh_config` VALUES ('DownLoad_readfile','1','');
INSERT INTO `hh_config` VALUES ('label_cache_time','-1','');
INSERT INTO `hh_config` VALUES ('RewriteUrl','0','');
INSERT INTO `hh_config` VALUES ('Info_allcityType','0','');
INSERT INTO `hh_config` VALUES ('jump_city','0','');
INSERT INTO `hh_config` VALUES ('hideFid','','');
INSERT INTO `hh_coupon_config` VALUES ('module_pre','coupon_','');
INSERT INTO `hh_coupon_config` VALUES ('Info_allowpost','3,4,8,9','');
INSERT INTO `hh_coupon_config` VALUES ('module_id','27','');
INSERT INTO `hh_coupon_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_coupon_config` VALUES ('Info_webname','优惠券','');
INSERT INTO `hh_coupon_config` VALUES ('module_close','0','');
INSERT INTO `hh_coupon_content` VALUES ('32','全聚德烤鸭店王府井店','1','25','鲜花礼品','6','0','1276392077','1276392077','1','admin','','qb_coupon_/25/1_20101103121120_y4z3d.jpg','1','1','1','1277108891','','127.0.0.1','0','0','0','0','1303035068','1');
INSERT INTO `hh_coupon_content` VALUES ('31','高丽王朝牛排酱汤火锅日坛公园店','1','25','鲜花礼品','6','0','1276392059','1276392059','1','admin','','qb_coupon_/25/1_20101103121142_drwq8.jpg','1','1','1','1277108892','','127.0.0.1','0','0','0','0','1303040709','1');
INSERT INTO `hh_coupon_content` VALUES ('30','麻辣小馆','1','25','鲜花礼品','8','0','1276392046','1276392046','1','admin','','qb_coupon_/25/1_20101103121109_j7ntk.jpg','1','1','1','1277108892','','127.0.0.1','0','0','0','0','1303034651','1');
INSERT INTO `hh_coupon_content` VALUES ('29','东北骨头庄','1','25','鲜花礼品','9','0','1276392033','1276392033','1','admin','','qb_coupon_/25/1_20101103121127_z4rb1.jpg','1','1','1','1277108893','','127.0.0.1','0','0','0','0','1288758091','1');
INSERT INTO `hh_coupon_content` VALUES ('28','外婆家国际行大厦店','1','25','鲜花礼品','8','0','1276392020','1276392020','1','admin','','qb_coupon_/25/1_20101103121107_uekzb.jpg','1','1','1','1277108894','','127.0.0.1','0','0','0','0','1288757650','1');
INSERT INTO `hh_coupon_content` VALUES ('27','澳门豆捞亚运村店','1','25','鲜花礼品','10','0','1276392005','1276392005','1','admin','','qb_coupon_/25/1_20101103121149_rywyu.gif','1','1','1','1290142086','','127.0.0.1','0','0','0','0','1288758171','1');
INSERT INTO `hh_coupon_content` VALUES ('33','鼎系私房饺子','1','25','鲜花礼品','32','0','1276401055','1276401055','1','admin','','qb_coupon_/25/1_20101103121158_os7ny.jpg','1','1','1','1277108887','','127.0.0.1','0','0','0','1276660255','1303031211','1');
INSERT INTO `hh_coupon_content` VALUES ('34','九乡日本料理','1','25','鲜花礼品','37','0','1276401068','1276401068','1','admin','','qb_coupon_/25/1_20101103121128_dtzeg.jpg.jpg','1','1','1','1277108886','','127.0.0.1','0','0','0','0','1303034311','1');
INSERT INTO `hh_coupon_content` VALUES ('35','麻里香锅朝外大街店-麻里香锅大特价3.8折！','1','25','鲜花礼品','42','0','1276401082','1276401082','1','admin','','qb_coupon_/25/1_20101103121104_xth6f.jpg.jpg','1','1','1','1277108886','','127.0.0.1','0','0','0','0','1303031518','1');
INSERT INTO `hh_coupon_content_1` VALUES ('18','33','25','1','<span>地址：</span><span>朝阳区农展馆南路1号(近朝阳公园西门) </span><p><span>电话：</span><span><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://count.koubei.com/showphone/showphone.php?f=jpg&w=96&h=10&bc=255,255,255&fc=0,0,0&fs=10&fn=arial&phone=LTE2NTUzMjIxMzU%3D%23n483rlAaILSEXvUL\" width=\"96\" height=\"12\" alt=\"鼎系私房饺子电话\" /></span></p>\r\n<p><span>特色：</span><span>不能刷卡 可停车</span></p>\r\n','35','54','2010-06-03');
INSERT INTO `hh_coupon_content_1` VALUES ('17','32','25','1','<span>地址：</span><span>王府井大街(帅府园胡同9号)</span><p><span>电话：</span><span><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://count.koubei.com/showphone/showphone.php?f=jpg&w=96&h=10&bc=255,255,255&fc=0,0,0&fs=10&fn=arial&phone=MTQ4NDUxODk1Ng%3D%3D%235joPVM%2FQGFsptZQi\" width=\"96\" height=\"12\" alt=\"全聚德烤鸭店王府井店电话\" /></span></p>\r\n<p><span>人均：</span><span><font color=\"#ff4400\">85元</font></span></p>\r\n<p><span>特色：</span><span>有外卖 有包厢 不能刷卡 收费停车</span></p>\r\n','400','800','2010-06-04');
INSERT INTO `hh_coupon_content_1` VALUES ('16','31','25','1','<span>地址：</span><span>日坛北路外神路街39号(日坛公园北门)</span><p><span>电话：</span><span><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://count.koubei.com/showphone/showphone.php?f=jpg&w=96&h=10&bc=255,255,255&fc=0,0,0&fs=10&fn=arial&phone=MTY1MjE5Njk5Mg%3D%3D%23K0o68qh%2FiXbrW3yU\" width=\"96\" height=\"12\" alt=\"高丽王朝牛排酱汤火锅日坛公园店电话\" /></span></p>\r\n<p><span>人均：</span><span><font color=\"#ff4400\">42元</font></span></p>\r\n<p><span>特色：</span><span>无包厢 可刷卡 免费停车</span></p>\r\n','400','500','2010-06-05');
INSERT INTO `hh_coupon_content_1` VALUES ('15','30','25','1','<span>地址：</span><span>西三环北路11号(北京电视台旧址南50米邮局胡同...</span><p><span>电话：</span><span><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://count.koubei.com/showphone/showphone.php?f=jpg&w=96&h=10&bc=255,255,255&fc=0,0,0&fs=10&fn=arial&phone=MTg1Nzk3NTA2%23Q2sLPpQSEZvelo6d\" width=\"96\" height=\"12\" alt=\"麻辣小馆电话\" /></span></p>\r\n<p><span>人均：</span><span><font color=\"#ff4400\">40元</font></span></p>\r\n<p><span>特色：</span><span>不能刷卡 </span></p>\r\n','500','700','2010-06-26');
INSERT INTO `hh_coupon_content_1` VALUES ('14','29','25','1','<span>地址：</span><span>魏公村小区29号</span><p><span>电话：</span><span><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://count.koubei.com/showphone/showphone.php?f=jpg&w=96&h=10&bc=255,255,255&fc=0,0,0&fs=10&fn=arial&phone=LTg2MDQxMjE4NA%3D%3D%23RUUDo8OMhcacY0u%2F\" width=\"96\" height=\"12\" alt=\"东北骨头庄电话\" /></span></p>\r\n<p><span>人均：</span><span><font color=\"#ff4400\">52元</font></span></p>\r\n<p><span>时间：</span><span>日常营业</span></p>\r\n<p><span>特色：</span><span>无外卖 无包厢 不能刷卡 免费停车</span></p>\r\n','440','550','2010-06-05');
INSERT INTO `hh_coupon_content_1` VALUES ('13','28','25','1','<span>地址：</span><span>中关村南大街甲18号国际大厦B1楼</span><p><span>电话：</span><span><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://count.koubei.com/showphone/showphone.php?f=jpg&w=96&h=10&bc=255,255,255&fc=0,0,0&fs=10&fn=arial&phone=MTkxNzk2NTk3MQ%3D%3D%23dOtjfT859mSJgYTE\" width=\"96\" height=\"12\" alt=\"外婆家国际行大厦店电话\" /></span></p>\r\n<p><span>人均：</span><span><font color=\"#ff4400\">71元</font></span></p>\r\n<p><span>特色：</span><span>有包厢 不能刷卡 免费停车</span></p>\r\n','550','670','2010-06-25');
INSERT INTO `hh_coupon_content_1` VALUES ('12','27','25','1','<span>地址：</span><span>北苑170号(欧陆经典北区凯旋城底商)</span><p><span>电话：</span><span><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://count.koubei.com/showphone/showphone.php?f=jpg&w=96&h=10&bc=255,255,255&fc=0,0,0&fs=10&fn=arial&phone=MTYwMjg2NDg0NQ%3D%3D%23WFy1UFXCPYfyB7I%2B\" width=\"96\" height=\"12\" alt=\"澳门豆捞亚运村店电话\" /></span></p>\r\n<p><span>人均：</span><span><font color=\"#ff4400\">59元</font></span></p>\r\n<p><span>特色：</span><span>可停车</span></p>\r\n','235','469','2010-06-05');
INSERT INTO `hh_coupon_content_1` VALUES ('19','34','25','1','<p>\r\n	址：<span>安定门西大街7号</span></p>\r\n<p>\r\n	<span>电话：</span><span><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' alt=\"九乡日本料理电话\" height=\"12\" onload=\"if(this.width&gt;600)makesmallpic(this,600,800);\" src=\"http://count.koubei.com/showphone/showphone.php?f=jpg&amp;w=96&amp;h=10&amp;bc=255,255,255&amp;fc=0,0,0&amp;fs=10&amp;fn=arial&amp;phone=LTE2NDM0NzMwMA%3D%3D%23VE9RGkHlse4wgH8f\" width=\"96\" /></span></p>\r\n<p>\r\n	<span>人均：</span><span><font color=\"#ff4400\">79元</font></span></p>\r\n<p>\r\n	<span>时间：</span><span>日常营业</span></p>\r\n<p>\r\n	<span>特色：</span><span>不能刷卡</span><span> 免费停车</span></p>\r\n','40','90','2010-06-03');
INSERT INTO `hh_coupon_content_1` VALUES ('20','35','25','1','<div>\r\n	菜品3.8折起，入会即送菜品+1元/人秘制饮料无限续杯，逢周一免费酒水畅饮，限朝外店、美术馆店。</div>\r\n<p>\r\n	<u>地址：朝外大街12号昆泰商城三楼(百脑汇旁)</u></p>\r\n','30','100','2010-06-24');
INSERT INTO `hh_coupon_field` VALUES ('86','1','详细信息','content','mediumtext','0','1','ieedit','650','250','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_coupon_field` VALUES ('79','1','促销价','price','varchar','8','8','text','8','0','','','元','','0','1','1','0','','','','','31','');
INSERT INTO `hh_coupon_field` VALUES ('78','1','市场价','mart_price','varchar','8','9','text','12','0','','','元','','0','1','0','0','','','','','31','');
INSERT INTO `hh_coupon_field` VALUES ('142','1','截止日期','end_time','varchar','15','7','time','15','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_coupon_module` VALUES ('1','0','消费类','10','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','','1','0','');
INSERT INTO `hh_coupon_sort` VALUES ('1','0','时尚购物','1','1','0','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:1:{s:11:\"field_value\";N;}','0','0','','jiajuyongpin','0');
INSERT INTO `hh_coupon_sort` VALUES ('2','0','餐饮美食','1','1','0','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:1:{s:11:\"field_value\";N;}','0','0','','canyinxiuxian','0');
INSERT INTO `hh_coupon_sort` VALUES ('3','0','休闲娱乐','1','1','0','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:1:{s:11:\"field_value\";N;}','0','0','','wenhuatiyu','0');
INSERT INTO `hh_coupon_sort` VALUES ('5','0','数码影音','1','1','0','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:1:{s:11:\"field_value\";N;}','0','0','','shumayingyin','0');
INSERT INTO `hh_coupon_sort` VALUES ('25','1','鲜花礼品','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('26','1','宠物服务','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('27','1','商场超市','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('28','1','护理用品','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('29','1','美发造型','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('30','1','美容美体','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('31','1','化妆品','1','2','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('32','1','服装服饰','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('33','2','咖啡馆茶楼','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('34','2','蛋糕冰淇淋','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('35','2','食品饮料','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('36','2','连锁经营','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('37','2','日韩料理','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('38','2','异国风味','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('39','2','中式餐饮','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('40','3','按摩洗浴','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('41','3','摄影婚庆','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('42','3','视听娱乐','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('43','3','迪厅酒吧','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('44','3','电影演出','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('45','3','KTV歌舞厅','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('46','5','软件游戏','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('47','5','办公用品','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('48','5','家电','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('49','5','mp3mp4','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('50','5','电脑','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('51','5','DC/DV','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_coupon_sort` VALUES ('52','5','手机','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_crontab` VALUES ('2','备份数据库','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `hh_crontab` VALUES ('3','清除CK编辑器多余的缩略图','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `hh_crontab` VALUES ('4','清空附件表','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `hh_fenlei_buyad` VALUES ('1','11','1','1','0','1','1288747862','1297387862','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('2','1','1','1','0','1','1288747862','1297387862','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('3','11','1','2','0','1','1288748053','1297388053','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('4','1','1','2','0','1','1288748053','1297388053','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('5','11','1','3','0','1','1288748274','1297388274','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('6','1','1','3','0','1','1288748274','1297388274','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('7','11','1','5','0','1','1288748451','1297388451','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('8','1','1','5','0','1','1288748451','1297388451','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('9','11','1','6','0','1','1288748551','1297388551','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('10','1','1','6','0','1','1288748551','1297388551','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('11','12','1','7','0','1','1288748680','1297388680','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('12','1','1','7','0','1','1288748680','1297388680','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('13','12','1','8','0','1','1288748767','1297388767','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('14','1','1','8','0','1','1288748767','1297388767','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('15','12','1','9','0','1','1288748853','1297388853','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('16','1','1','9','0','1','1288748853','1297388853','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('17','12','1','10','0','1','1288748955','1297388955','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('18','1','1','10','0','1','1288748955','1297388955','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('19','12','1','11','0','1','1288749091','1297389091','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('20','1','1','11','0','1','1288749091','1297389091','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('21','12','1','12','0','1','1288749185','1297389185','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('22','1','1','12','0','1','1288749185','1297389185','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('23','12','1','13','0','1','1288749284','1297389284','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('24','1','1','13','0','1','1288749284','1297389284','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('25','12','1','14','0','1','1288749389','1297389389','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('26','1','1','14','0','1','1288749389','1297389389','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('27','25','1','15','0','1','1288749504','1297389504','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('28','2','1','15','0','1','1288749504','1297389504','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('29','25','1','16','0','1','1288749586','1297389586','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('30','2','1','16','0','1','1288749586','1297389586','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('31','25','1','17','0','1','1288749657','1297389657','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('32','2','1','17','0','1','1288749657','1297389657','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('33','19','1','18','0','1','1288749841','1297389841','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('34','1','1','18','0','1','1288749841','1297389841','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('35','19','1','19','0','1','1288749918','1297389918','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('36','1','1','19','0','1','1288749918','1297389918','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('37','19','1','20','0','1','1288750024','1297390024','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('38','1','1','20','0','1','1288750024','1297390024','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('39','19','1','21','0','1','1288750130','1297390130','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('40','1','1','21','0','1','1288750130','1297390130','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('41','19','1','22','0','1','1288750213','1297390213','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('42','1','1','22','0','1','1288750213','1297390213','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('43','19','1','23','0','1','1288750318','1297390318','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('44','1','1','23','0','1','1288750318','1297390318','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('45','19','1','24','0','1','1288750366','1297390366','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('46','1','1','24','0','1','1288750366','1297390366','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('47','11','1','25','0','1','1288750509','1297390509','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('48','1','1','25','0','1','1288750509','1297390509','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('49','11','1','26','0','1','1288750587','1297390587','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('50','1','1','26','0','1','1288750587','1297390587','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('51','11','1','27','0','1','1288750643','1297390643','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('52','1','1','27','0','1','1288750643','1297390643','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('53','25','1','28','0','1','1288750739','1297390739','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('54','2','1','28','0','1','1288750739','1297390739','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('55','25','1','29','0','1','1288750820','1297390820','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('56','2','1','29','0','1','1288750820','1297390820','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('57','25','1','30','0','1','1288750891','1297390891','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('58','2','1','30','0','1','1288750891','1297390891','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('59','25','1','31','0','1','1288750945','1297390945','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('60','2','1','31','0','1','1288750945','1297390945','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('61','60','1','33','0','1','1288762758','1297402758','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('62','3','1','33','0','1','1288762758','1297402758','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('63','26','1','34','0','1','1288763234','1297403234','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('64','2','1','34','0','1','1288763234','1297403234','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('65','31','1','35','0','1','1288763344','1297403344','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('66','2','1','35','0','1','1288763344','1297403344','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('67','30','1','36','0','1','1288763474','1297403474','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('68','2','1','36','0','1','1288763474','1297403474','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('69','24','1','37','0','1','1288763579','1297403579','25','0');
INSERT INTO `hh_fenlei_buyad` VALUES ('70','2','1','37','0','1','1288763579','1297403579','25','0');
INSERT INTO `hh_fenlei_class` VALUES ('31','0','岗位类型','1');
INSERT INTO `hh_fenlei_class` VALUES ('32','31','计算机/互联网类','0');
INSERT INTO `hh_fenlei_class` VALUES ('33','31','人力资源/行政/文职人员','0');
INSERT INTO `hh_fenlei_class` VALUES ('34','31','医疗卫生/美容保健','0');
INSERT INTO `hh_fenlei_class` VALUES ('38','34','护士/护理人员','0');
INSERT INTO `hh_fenlei_class` VALUES ('37','34','医生/医师','0');
INSERT INTO `hh_fenlei_class` VALUES ('39','33','文员/秘书','0');
INSERT INTO `hh_fenlei_class` VALUES ('40','33','行政/人力资源总监','0');
INSERT INTO `hh_fenlei_class` VALUES ('41','32','软件工程师','0');
INSERT INTO `hh_fenlei_class` VALUES ('42','32','硬件工程师','0');
INSERT INTO `hh_fenlei_config` VALUES ('AdInfoListLeng','40','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_PostMaxNum','20','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_TopNum','5','');
INSERT INTO `hh_fenlei_config` VALUES ('AdInfoSortShow','10','');
INSERT INTO `hh_fenlei_config` VALUES ('AdInfoShowTime','100','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_feedbackID','111111','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_MakeIndexHtmlTime','0','');
INSERT INTO `hh_fenlei_config` VALUES ('ErrSortMoney','13','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_DelKeyword','暴乱\r\n反动','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_PostMaxLeng','100000','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_RepeatPostNum','3','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_postCkMob','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_postCkIp','0','');
INSERT INTO `hh_fenlei_config` VALUES ('DelOtherCommentMoney','12','');
INSERT INTO `hh_fenlei_config` VALUES ('otherCardMoney','11','');
INSERT INTO `hh_fenlei_config` VALUES ('permitMoney','10','');
INSERT INTO `hh_fenlei_config` VALUES ('IDcardMoney','9','');
INSERT INTO `hh_fenlei_config` VALUES ('EmailYzMoney','8','');
INSERT INTO `hh_fenlei_config` VALUES ('ReportMoney','7','');
INSERT INTO `hh_fenlei_config` VALUES ('GoodCommentMoney','6','');
INSERT INTO `hh_fenlei_config` VALUES ('PublicizeRegMoney','5','');
INSERT INTO `hh_fenlei_config` VALUES ('ALLInfoMoney','4','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_loginTime','16','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_loginMoney','3','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_regmoney','1','');
INSERT INTO `hh_fenlei_config` VALUES ('illInfoMoney','14','');
INSERT INTO `hh_fenlei_config` VALUES ('DelReportMoney','15','');
INSERT INTO `hh_fenlei_config` VALUES ('Jump_allcity','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Jump_fromarea','1','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_TopMoney','3','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_closeWhy','网站维护当中,暂停开放','');
INSERT INTO `hh_fenlei_config` VALUES ('sort_layout','10,9,150,165#2,4#1,5,3#6,7,8#','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_GroupCommentYzImg','2,3,4,8,9','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_GroupPostYzImg','2,3,4,8,9','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_weburl','','');
INSERT INTO `hh_fenlei_config` VALUES ('ForbidPostIp','','');
INSERT INTO `hh_fenlei_config` VALUES ('AdInfoIndexLeng','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ForbidMemberViewContact','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ShowSearchContact','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ImgShopContact','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ForbidGuesViewContact','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_TopDay','2','');
INSERT INTO `hh_fenlei_config` VALUES ('ForbidPostMember','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_cityPost','0','');
INSERT INTO `hh_fenlei_config` VALUES ('AdInfoBigsortShow','15','');
INSERT INTO `hh_fenlei_config` VALUES ('InfoIndexCSRow','','');
INSERT INTO `hh_fenlei_config` VALUES ('Force_Choose_City','0','');
INSERT INTO `hh_fenlei_config` VALUES ('post_htmlType','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_Searchkeyword','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Post_group_UpPhoto','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_forbidOutPost','1','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_MemberPostRepeat','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_GuestPostRepeat','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_MemberPostMoney','2','');
INSERT INTO `hh_fenlei_config` VALUES ('InfoIndexLeng','26','');
INSERT INTO `hh_fenlei_config` VALUES ('InfoIndexRow','8','');
INSERT INTO `hh_fenlei_config` VALUES ('InfoListRow','10','');
INSERT INTO `hh_fenlei_config` VALUES ('AdInfoIndexRow','16','');
INSERT INTO `hh_fenlei_config` VALUES ('group_UpPhoto','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_index_cache','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_list_cache','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_guide_word','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_MemberPostPicNum','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_MemberDayPostNum','20','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_GuestPostPicNum','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_GuestDayPostNum','3','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ClosePostWhy','严打时期,暂停发布与修改信息','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_YzKeyword_DO','0','');
INSERT INTO `hh_fenlei_config` VALUES ('CommentPass_group','3,4','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_htmlType','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_allcityType','1','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_MemberChooseCity','1','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_sys','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ClosePost','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_contact','010-88888888\r\nkefu@gmail.com\r\nkefu@msn.com\r\n88888888','');
INSERT INTO `hh_fenlei_config` VALUES ('module_id','36','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_style','','');
INSERT INTO `hh_fenlei_config` VALUES ('UpdatePostTime','3','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_htmlname','html','');
INSERT INTO `hh_fenlei_config` VALUES ('if_GGmap','1','');
INSERT INTO `hh_fenlei_config` VALUES ('AdInfoIndexShow','20','');
INSERT INTO `hh_fenlei_config` VALUES ('GroupPassYz','','');
INSERT INTO `hh_fenlei_config` VALUES ('GroupPostInfo','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_TopColor','#F70968','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_Musttelephone','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_Mustmobphone','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_MustQQ','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_MustEmail','0','');
INSERT INTO `hh_fenlei_config` VALUES ('InfoIndexCSLeng','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_showsortnum','','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ListNum','','');
INSERT INTO `hh_fenlei_config` VALUES ('AdInfoListRow','10','');
INSERT INTO `hh_fenlei_config` VALUES ('InfoListLeng','30','');
INSERT INTO `hh_fenlei_config` VALUES ('showNoPassComment','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_YzKeyword','性爱\r\n做爱\r\n共产党','');
INSERT INTO `hh_fenlei_config` VALUES ('rand_num','1303103761','');
INSERT INTO `hh_fenlei_config` VALUES ('rand_num_inputname','kvgd','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_showday','3/10/30/60/90/180','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ShowNoYz','1','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_DelEndtime','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_webadmin','','');
INSERT INTO `hh_fenlei_config` VALUES ('CollectArticleNum','23','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_allowGuesSearch','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_UseEndTime','1','');
INSERT INTO `hh_fenlei_config` VALUES ('PostInfoMoney','2','');
INSERT INTO `hh_fenlei_config` VALUES ('module_pre','fenlei_','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_metakeywords','房产 二手 交易 黄页','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_areaname','全国','');
INSERT INTO `hh_fenlei_config` VALUES ('module_close','0','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_webname','分类信息','');
INSERT INTO `hh_fenlei_config` VALUES ('Info_ReportDB','垃圾信息\r\n虚假信息\r\n违法信息\r\n雷同信息','');
INSERT INTO `hh_fenlei_config` VALUES ('rand_num_mktime','1','');
INSERT INTO `hh_fenlei_content` VALUES ('1','小关东里地铁口附近精装两居室廉价出租','1','11','出租房','0','7','0','1288747862','1288747862','1','admin','','0','http://pic.58.com/p1/big/n_6734506480129.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304299862','','1292043973','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','7','0');
INSERT INTO `hh_fenlei_content` VALUES ('2','个人出租 15平米 精装次卧 右安门','1','11','出租房','0','4','0','1288748053','1288748053','1','admin','','0','http://pic.58.com/p1/big/n_6677318701828.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304300053','','1288748124','1','1','1','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','3','0');
INSERT INTO `hh_fenlei_content` VALUES ('3','管庄东里超便宜一居室出租可以做两居用','1','11','出租房','0','4','0','1288748274','1288748274','1','admin','','0','http://pic.58.com/p1/big/n_6669086810625.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304300274','','1303080090','1','2','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','5','0');
INSERT INTO `hh_fenlei_content` VALUES ('4','房主低价甩租城铁站对面带暖气的地下室','1','11','出租房','0','14','0','1292043984','1292043984','1','admin','','0','http://pic.58.com/p1/big/n_6776884899585.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1292303184','','1303027245','1','3','0','','3','','0','','13399999999','54325@qq.com','888888','','admin','','','','','11640951,3989701','3','0');
INSERT INTO `hh_fenlei_content` VALUES ('5','紧邻地铁五号线 中等装修 落地窗大阳台单间出租','1','11','出租房','0','8','0','1288748451','1288748451','1','admin','','0','http://pic.58.com/p1/big/n_6675172719362.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304300451','','1288751630','1','3','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('6','房主直租精装修双井广馨居全家电提包入住','1','11','出租房','0','4','0','1288748551','1288748551','1','admin','','0','http://pic.58.com/p1/big/n_6274044757249.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304300551','','1302934045','1','4','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','4','0');
INSERT INTO `hh_fenlei_content` VALUES ('7','开发商直售,一居两居,大兴西红门使用权精装公寓!','1','12','二手房出售','0','2','0','1288748680','1288748680','1','admin','','0','http://pic.58.com/p1/big/n_6629233098498.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304300680','','1303078674','1','1','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('8','一层带花园大两居室,113米,165万。商品房','1','12','二手房出售','0','2','0','1288748767','1288748767','1','admin','','0','http://pic.58.com/p1/big/n_6756913455618.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304300767','','1303081104','1','1','1','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','4','0');
INSERT INTO `hh_fenlei_content` VALUES ('9','金隅七零九零三居,结婚生子,养老投资,必备良家!!','1','12','二手房出售','0','2','0','1288748853','1288748853','1','admin','','0','http://pic.58.com/p1/big/n_6648791474433.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304300853','','1303075797','1','2','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','3','0');
INSERT INTO `hh_fenlei_content` VALUES ('10','稀缺资源:个人售西内示范小区南北向板楼73平+阁楼','1','12','二手房出售','0','3','0','1288748955','1288748955','1','admin','','0','http://pic.58.com/p1/big/n_5923400835588.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304300955','','1288751714','1','3','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','6','0');
INSERT INTO `hh_fenlei_content` VALUES ('11','紧邻地铁 自住首选 低于市场价12万 性价比高!','1','12','二手房出售','0','2','0','1288749091','1288749091','1','admin','','0','http://pic.58.com/p1/big/n_6543150205444.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301091','','1303086511','1','6','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','4','0');
INSERT INTO `hh_fenlei_content` VALUES ('12','京汉旭城独门独户大三居全明格局业主低价出售','1','12','二手房出售','0','2','0','1288749185','1288749185','1','admin','','0','http://pic.58.com/p1/big/n_6695274413313.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301185','','1303083855','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','4','0');
INSERT INTO `hh_fenlei_content` VALUES ('13','西二旗铭科苑小区低于市场价98平160w投资绝对值','1','12','二手房出售','0','2','0','1288749284','1288749284','1','admin','','0','http://pic.58.com/p1/big/n_6651860091394.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301284','','1290069132','1','3','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','6','0');
INSERT INTO `hh_fenlei_content` VALUES ('14','黄村星瑞家园单价1.4万一平米好房急售啦','1','12','二手房出售','0','5','0','1288749389','1288749389','1','admin','','0','http://pic.58.com/p1/big/n_6273115439620.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301389','','1303105594','1','8','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','4','0');
INSERT INTO `hh_fenlei_content` VALUES ('15','个人转让IBM高配笔记本,内存1G硬盘120G','6','25','二手笔记本','0','1','0','1288749504','1288749504','1','admin','','0','http://pic.58.com/p1/big/n_6668288325380.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301504','','1288749505','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('16','转让单位更换下来的笔记本','6','25','二手笔记本','0','1','0','1288749586','1288749586','1','admin','','0','http://pic.58.com/p1/big/n_5847911041538.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301586','','1288749587','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','6','0');
INSERT INTO `hh_fenlei_content` VALUES ('17','9.9成新(半年)ThinkPad E30 笔记本','6','25','二手笔记本','0','2','0','1288749657','1288749657','1','admin','','0','http://pic.58.com/p1/big/n_6547264688642.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301657','','1288749658','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('18','5A纯写字楼嘉盛中心165㎡5元/㎡/天免中介费','7','19','写字楼出租/求租','0','3','0','1288749841','1288749841','1','admin','','0','http://pic.58.com/p1/big/n_6761542190084.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301841','','1301035633','1','1','1','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('19','北三环 安贞桥环球贸易中心出租270平到1650平','7','19','写字楼出租/求租','0','1','0','1288749918','1288749918','1','admin','','0','http://pic.58.com/p1/big/n_6674458128129.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304301918','','1288749919','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('20','朝阳门SOHO—开发商特价招租—朝阳门桥地铁口凯恒','7','19','写字楼出租/求租','0','1','0','1288750024','1288750024','1','admin','','0','http://pic.58.com/p1/big/n_6579165722369.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1289009224','','1288750025','1','2','0','','3','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','6','0');
INSERT INTO `hh_fenlei_content` VALUES ('21','望京城铁附近悠乐汇350平米开间纯写字楼低价出租随','7','19','写字楼出租/求租','0','1','0','1288750130','1288750130','1','admin','','0','http://pic.58.com/p1/big/n_6777321068802.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302130','','1288750131','1','2','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','4','0');
INSERT INTO `hh_fenlei_content` VALUES ('22','东二环地铁口小户型写字间低价招租(绝非中介)','7','19','写字楼出租/求租','0','4','0','1288750213','1288750213','1','admin','','0','http://pic.58.com/p1/big/n_5914324988418.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302213','','1288751649','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','6','0');
INSERT INTO `hh_fenlei_content` VALUES ('23','荐!!上地最实惠小型商务写字间出租可注册','7','19','写字楼出租/求租','0','1','0','1288750318','1288750318','1','admin','','0','http://pic.58.com/p1/big/n_6228552039169.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302318','','1288750319','1','7','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','4','0');
INSERT INTO `hh_fenlei_content` VALUES ('24','望京新星商住悠乐汇精装开间67平米出租!3800元','7','19','写字楼出租/求租','0','3','0','1288750366','1288750366','1','admin','','0','http://pic.58.com/p1/big/n_2840474831617.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302366','','1301040670','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('25','东花市北里区中区南北通透三居室,家具家电全齐','1','11','出租房','0','15','0','1288750509','1288750509','1','admin','','0','http://pic.58.com/p1/big/n_6676699118849.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302509','','1302933978','1','2','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','6','0');
INSERT INTO `hh_fenlei_content` VALUES ('26','双井家乐福对面首城国际中心精装一居室招租中甩甩甩','1','11','出租房','0','5','0','1288750587','1288750587','1','admin','','0','http://pic.58.com/p1/big/n_6669667112193.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302587','','1301035273','1','1','1','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('27','动物园 车公庄 北礼士路 绝对温馨舒适好一居室','1','11','出租房','0','3','0','1288750643','1288750643','1','admin','','0','http://pic.58.com/p1/big/n_6675030029058.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302643','','1303009476','1','2','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('28','个人转让惠普高配游戏笔记本,能玩大型3D游戏','6','25','二手笔记本','0','2','0','1288750739','1288750739','1','admin','','0','http://pic.58.com/p1/big/n_6734044924418.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302739','','1288750741','1','1','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','4','0');
INSERT INTO `hh_fenlei_content` VALUES ('29','批发全新酷睿双核液晶电脑,免费送货上门,三年保修','6','25','二手笔记本','0','1','0','1288750820','1288750820','1','admin','','0','http://pic.58.com/p1/big/n_4233931316737.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302820','','1288750821','1','3','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('30','1个月99.9新250G钢琴华丽漆漂亮惠普CQ40','6','25','二手笔记本','0','2','0','1288750891','1288750891','1','admin','','0','http://pic.58.com/p1/big/n_6755839858689.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302891','','1288750892','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_fenlei_content` VALUES ('31','2G迅盘带28个月保修行货999新IBMT61P','6','25','二手笔记本','0','1','0','1288750945','1288750945','1','admin','','0','http://pic.58.com/p1/big/n_6777091359492.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304302945','','1288750947','1','1','6','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('32','找个人 一起吃饭聊天','5','129','找男友','0','1','0','1288762604','1288762604','1','admin','','0','http://pic.58.com/p1/big/n_6777574838529.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304314604','','1288762605','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('33','四星级酒店高薪诚聘服务员','3','60','旅游/酒店餐饮','0','3','0','1288762758','1288762758','1','admin','','0','http://pic.58.com/p1/big/n_6668047451908.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304314758','','1288762823','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('34','全新的大屏幕触控华硕M10智能手机','6','26','手机/通讯相关','0','1','0','1288763234','1288763234','1','admin','','0','http://pic.58.com/p1/big/n_6762676355074.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1289022434','','1288763235','1','1','0','','3','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('35','低价转好孩子轻便推车9成新95元转','6','31','母婴/儿童用品','0','1','0','1288763344','1288763344','1','admin','','0','http://pic.58.com/p1/big/n_5042078629889.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1289022544','','1288763345','1','1','0','','3','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('36','转让男式皮靴,42号的或称27厘米 ,10元就转让','6','30','艺术/工艺/收藏品','0','4','0','1288763474','1288763474','1','admin','','0','http://pic.58.com/p1/big/n_6778448960516.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1289022674','','1301040873','1','0','0','','3','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('37','转从美国带回来的苹果官网买的MACBOOK','6','24','二手台式电脑','0','8','0','1288763579','1288763579','1','admin','','0','http://pic.58.com/p1/big/n_6780653510658.jpg','1','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','1304315579','','1303097536','1','0','0','','180','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','1','0');
INSERT INTO `hh_fenlei_content` VALUES ('38','哈哈福建哀嚎肩甲健康','1','11','出租房','0','1','0','1303103761','1303103761','41','123zxc','','0','','0','1','','0','0','0','','','','','','','','0','0','117.28.100.149','0','0','','','0','0','1303362961','','1303103762','1','16','0','','3','','0','','','10391181@qq.com','','','123zxc','','','','','','0','0');
INSERT INTO `hh_fenlei_content_1` VALUES ('1','1','11','1','房子是南北通透两居室；室内精装修，主卧室和次卧室朝南，厨房洗手间干净明亮，厨房里面有整体橱柜。室内家电全齐。现在拎包即可入住。有意提前电话联系即可看房<br />\r\n联系我时请说明是在58同城看到的，谢谢！','88路','车陂站','两室一厅','900','水/电/电话/宽带/管道煤气/电梯','65','精装修','89','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('2','2','11','1','中介勿扰<br />\r\n我和男朋友住一间， 另一间次卧出租，我们是上班族，想租给女生或情侣，立马可以入住。屋子的非常好，看过一眼的人肯定会租的。房子是两居，绝对没有隔断，住着比较舒适安静，照片是我今天刚拍的。<br />\r\n位于南二环，玉林东里三区 距离主路 紧5分钟路程 下楼不远就是公交站,交通车19,48,53,54,59,72,122,395,377,414,474,626,741,800,939等,<br />\r\n<br />\r\n房子是精装修2居中的1居，冰箱，洗衣机，热水器，微波炉，空调全都有。<br />\r\n2. 15平米，宽敞明亮;<br />\r\n3. 家具一应俱全，双人床垫+木质书架x1+书桌x1+椅子<br />\r\n4. 厨房卫生间电器齐全，做饭洗衣方便。极其好用；<br />\r\n5. 小区是24小时有门卫，绝对安全，公交车站多，生活便利；<br />\r\n5. 仅限周一至周五晚19：00后和周末（全天）看房<br />\r\n<br />\r\n招租对象：<br />\r\n1. 仅限女孩或情侣<br />\r\n2. 有稳定工作,性格好,爱干净。<br />\r\n','989路','黄村站','两室一厅','6000','水/电/电话/电梯/家具','66','普通装修','21','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('3','3','11','1','房子在管庄东里，家具和家电比较齐全，交通很便利，购物及其方便，房子是老房子但对居住没任何影响，我传的照片就是真实的室内图，有需要的朋友给我发信息，请不要打电话，那样我会很生气的，后果很严重的，我已经声明了！','','','两室一厅','3000','水/电/电梯/家具','66','精装修','12','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('4','4','11','1','新装修的房，上楼后即地铁5号线和13号线交界处的立水桥城铁站A口，更有多路公交车，交通超方便。社区成熟,有暖气，冬暖夏凉。有监控设备,手机信号好，可上网,有有线,房间干净明亮,通风干燥。能洗衣服做饭。租户说这是他“见过的最好的地下室“,现有LOFT户型,楼上楼下都有床可住宿,是性价比极高的房子,可以和同事或朋友合租','','','两室一厅','500','水/电/宽带/管道煤气/电梯','55','普通装修','14','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('5','5','11','1','出租给您的是带阳台的一间。房间宽敞明亮，朝南的大落地窗，三面都是墙，另一面为塑钢门，屋内环境舒适 卫生 安静 。屋内居住的都是上班族 屋内木地板.，家电很齐全，有热水器 洗衣机 冰箱，包物业取暖。有厨房可做饭。屋内配有衣柜 写字台电脑桌 椅子 饭桌 双人床。要求屋内最好住一个女孩，或者两个女孩，因为屋子很干净，希望爱惜房子，好相处的人入住，随时可以看房，电联。 中介勿扰！<br />\r\n<br />\r\n房子紧邻5号线地铁天通苑站，交通十分便利，出门到公交、地铁不会超过10分钟，除了地铁5号线以外，公交有快三、417、432、、758等多条线路！<br />\r\n','','','两室一厅','5555','水/电/电话/宽带','44','普通装修','23','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('6','6','11','1','02年商品房.西北方向板楼,二层,明厨明卫,空气通透性极好,67平米一居.全家电,包括:电视、冰箱、洗衣机、热水器、电话ADSL、微波炉,天燃气，卧室和客厅均有空调.家俱齐全.双阳台,客厅,厨房较大,提包即可入住.<br />\r\n交通及其方便地铁步行几分钟即到。本周内可看房。本周六正式出租。<br />\r\n请真心想租房的租户给我打电话，请不要浪费彼此的时间，中介请绕行。不与中介合作。希望与具有诚的的人合作。对价格敏感绕行。年付价格可议。其他不议。','','','两室一厅','434','水/电','55','精装修','34','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('7','7','12','1','房子为一次性买断20年使用权，精装修，一梯两户，南北通透，投资、养老、居住首选！<br />\r\n','','','两室一厅','11112','水/电','32','豪华装修','23','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('8','8','12','1','此房是一层带花园的。花园有30平米，还可以外扩。采光不受影响。此房是通透的户型。通风特别好。保持的很干净。此房还是商品房。税费少。小区里有；幼儿园、银行、歌华有线、超市等等！小区环境优雅、周边配套设施齐全、交通便利、多条公交车路过小区门口，看房方便','','','两室一厅','4343','水/电','34','精装修','4','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('9','9','12','1','曾经有一套好房您没有珍惜，追悔莫及。<br />\r\n现在有一套好房放在您面前，要对他说：全款！！<br />\r\n如果加上一个期限，那就是大产权！70年！！','','','三室一厅','5455','水/电/电话/宽带','55','精装修','5','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('10','10','12','1','本房屋属南北向板楼，格局方正，采光充足，南北卧室及南向起居厅等约73平米，另在上层有阁楼一间（做收纳空间，亦可加顶窗辟为多功能室）。本小区位于地铁2号、4号；13号线西直门站东南200米处，6号线车公庄站东北200米处。本小区为市政府组织专家规划设计的旧城改造样板示范小区，小区建筑高度从南至北依次为二至五层，冬暖夏凉，并保留原四合院内大量树木，成为宜居绿色生态小区。本住宅位于小区中央，安静舒适，南北窗独享小区绿色树冠，位处顶层，不受其他住户干扰。本小区属市政集中供暖并通有管道天然气。小区房屋享受政府终生维护，房屋硬件设施先后多次更新。小区周边有曙光幼儿园；中华路小学、四根柏小学、玉桃园小学、官园小学；北京三中、北京35中；北京四中培训中心、北京电大、中国儿童少年活动中心、北京青年宫；小区周边购物方便，有顺天府、好邻居、西环广场等大型购物超市；小区步行50米有中国工商银行、中国银行、建设银行；从小区步行二百米是北京大学人民医院；从小区出来乘坐地铁或公交可直达人大附中、北京四中。此外，对于居住来说，因为二环内土地少，再加上很多历史的限制，没有成片、比较有规模的小区，而二环内丰富的国家级文教、卫生、公共资源使得以本小区为代表的少数居住社区尤显珍贵；本小区位于二环西直门内，南临国家金融街行政商务板块，可谓大隐于市；二环内珍贵的土地上将以行政、商务、公共服务业态为主，政府已出台过“二环内不再新增住宅商品房项目用地”的规定；因此，本物业除去居住属性，更属稀缺、紧俏资源，具极大投资价值，参照2010年上半年同区域拆迁补偿标准，本房屋保守估值为260万圆，激进估值为300-400万圆以上。另外，北京关于疏散二环内近70万居民往远郊的部署，亦使得二环内类似本小区这样为数不多的现代宜居居住小区凸显珍贵；一些居住于本小区附近危旧屋舍的老城区居民，只要听闻拆迁，便纷纷光顾本小区寻找待出售的房产；毕竟，中国长期执行的户籍制度至少在北京这样全国精英云集的首都还将继续存在下去；而西城区作为政府部委、高端金融商务、国家级公共设施云集的区域，无论在过去被称为“西贵”，还是将来，都始终处于尊贵地位。<br />\r\n','','','两室一厅','0','水/电/电话/宽带','43','精装修','4','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('11','11','12','1','房子是南北通透的2居室，业主诚意出售，看房随时。<br />\r\n<br />\r\n2.小区环境幽雅，交通便利，出门多条公交线路到达各个地方。<br />\r\n<br />\r\n3.周边大学介绍:石油大学,北京语言大学,石油化工科学院,中国农业大学东校区,北京林业大学,天开站,中国石油大学.<br />\r\n<br />\r\n4.业主急需用钱才会超低价出售。','','','两室一厅','4355','水/电/电话','45','精装修','4','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('12','12','12','1','小区人车分流，绿化面积大，房子是独门独户的大三居，厕所厨房朝北，客厅和卧室全是朝南，客厅和主卧都带阳台，房子精装修。','','','两室一厅','43434','水/电/电话','43','普通装修','4','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('13','13','12','1','一、 房源优势： 1、铭科院正房型楼层价出租 <br />\r\n2、挑高客厅 宽敞大气 <br />\r\n3、装修 提包入住 <br />\r\n二、 户型介绍：户型：3室2厅1卫，朝向：南北通透，格局方正，使用率超赞 <br />\r\n1、客厅挑高、宽敞舒适、阳光非常充足 <br />\r\n2、卧室搭配的很新颖，使用率非常之高 <br />\r\n3、厨房朝北带阳台，让您和家人有足够的空间展现私家厨艺<br />\r\n4、连接客厅和厨房之间是您和家人享受美味的餐厅，足足可摆下多人桌，让您热情的招待亲朋好友<br />\r\n三、 社区介绍：环境优美 适宜居住 人文素质高 物业管理完善 <br />\r\n1、小区建成于2000年 社区环境好 <br />\r\n2、小区是集中供暖的<br />\r\n3、小区的容积率非常小，属于低密度社区 ，非常适宜居住 <br />\r\n4、小区的绿化率高，让您感受花园一样的家<br />\r\n四、 配套介绍：配套齐全 生活所需一应齐全 便利的生活触手可及 <br />\r\n1、 小区附近有 （居家购物方便至极） <br />\r\n2、 位于小区不远有周边银行：安宁里邮电所邮政储蓄（投资理财方便快捷）<br />\r\n3、 小区旁有附近学校：上地101中,西二旗小学（孩子上学方便） <br />\r\n4、 距离小区不远有餐饮：新天地酒店，福口居 （招待朋友不愁） <br />\r\n五、交通介绍：地理位置得天独厚 私家车和公共交通都能方便出行，公交有： 周边公交：448，114，392，333，963，362，。<br />\r\n六、个人介绍：本房源是*新房源，发布及时，欢迎来电咨询并实地看房，房子位置：海淀西三旗铭科院<br />\r\n地址：海淀清河西二旗<br />\r\n','','','两室一厅','434','水/电/电话/宽带','34','普通装修','4','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('14','14','12','1','此房是南北通透的两居室，格局好，地理位置优越，紧邻大兴二小！后期消费低，适宜生活居住，有意者可随时联系看房！！<br />\r\n<br />\r\n多条公交线路：968.410.456.631.957.937等 ，距地铁口5分钟距离！享受轻松便利生活！','','','两室一厅','434','水/电/宽带','54','普通装修','4','1');
INSERT INTO `hh_fenlei_content_1` VALUES ('15','25','11','1','欢迎浏览我的网上店铺，本人发布的房源真实有效。祝您租房愉快！<br />\r\n房屋推荐三大理由：<br />\r\n户型好：南北通透大三居，户型方正，布局合理，中间层无遮拦，不临马路，安静。<br />\r\n装修好：精装修，家具家电都齐全，现业主保持非常好，即租即住，可看一下照片。<br />\r\n业主心态：诚心出租，此价绝对低于同小区3居<br />\r\n资深置业专家简介：链家地产张雪经营崇文区的出租房已经一年多了，由于我的真诚和勤奋，赢得了很多客户和业主的信任。<br />\r\n我对这一带非常熟悉，只要您有房产需求，优质的服务将从接听电话开始！<br />\r\n如有意向可随时来电看房，链家张雪将竭诚为您服务<br />\r\n另有大量不同房源请点击我的头像进入我的店铺查看！<br />\r\n','','','两室一厅','543','水/电/电话','543','精装修','54','2');
INSERT INTO `hh_fenlei_content_1` VALUES ('16','26','11','1','地理位置绝佳 家来有非常大的升值潜力 是投资的好地段 <br />\r\n购物便捷 紧邻家乐福 百安居 苏宁电器 华联超市 .... <br />\r\n紧邻东三环合地铁10号线 交通非常的便捷 <br />\r\n地址：朝阳区广渠路 <br />\r\n学校：北京航空航天大学继续教育学院分部<br />\r\n','','','两室一厅','65465','水/电/电话','65','精装修','65','2');
INSERT INTO `hh_fenlei_content_1` VALUES ('17','27','11','1','房子里面装修得很不错，有成套的家具电器，收拾的干净利索，随时可以如入，随时看房！小区里面环境也是很不错的，绿化管理的非常好，周边交通便利，生活设施齐全，租房的电话联系吧','','','两室一厅','543','水/电/电话','543','精装修','54','2');
INSERT INTO `hh_fenlei_content_1` VALUES ('18','38','11','41','按揭付款垃圾费嘎哈高oak理发虹桥公园','','','两室一厅','0','水/电','','普通装修','','1');
INSERT INTO `hh_fenlei_content_3` VALUES ('1','33','60','1','北京晋粤湘都餐饮有限责任公司（原名龙河村酒楼）成立于2006年5月26日，坐落在中关村北大街42号（圆明园东门正对面），营业面积达4000多平方米，酒楼以古典风格为主，30多个大小不等的包房，1500多个餐位，五百个宽敞的停车位，更是方便大众。二楼的宴会大厅，可接待各种婚宴，生日宴等大型聚会。 本店经营主要以山西面食、晋菜为主，兼经营山西雁北风味，精美川、湘、粤、淮扬菜，地方官府私房菜，以及应时海鲜。我公司经营有几大招牌菜：精品佛跳墙、沁洲黄小米煮辽参、岁岁平安参、极品鸳鸯燕、鲍汁鲜鱼翅、黄焖四宝及山珍海味、老大同炖羊杂、倒蒜羊肉、天镇风味烧烤、大同香辣兔头、正宗浑源凉粉、香辣烤鱼………… 该酒楼由上海紫萍餐饮管理有限公司专业管理。 总经理王吉海将带领旗下全体员工共创美好未来。 现高薪对社会公开招聘各岗位人员。','收款员','5','会洗碗','北京','3','1');
INSERT INTO `hh_fenlei_content_5` VALUES ('1','32','129','1','我性格好，温柔善良美丽大方，喜欢安静，，希望你是成熟有责任心有主见的男人，让我们一起奋斗，共创美好的未来，期待有缘的你哦。','23','155','','50','','女','1','5');
INSERT INTO `hh_fenlei_content_6` VALUES ('1','15','25','1','本人更换新本了，转让IBM 一台 九成新\r\nCPU奔腾2.0 内存1G 硬盘120G \r\n14寸屏 独立显卡9000 DVD康宝刻录\r\n外观无划痕，无维修史，电池待机2小时\r\n平时就是作3D图，玩玩游戏用。大型网游。上网看电影非常流','200','9成新','600','1');
INSERT INTO `hh_fenlei_content_6` VALUES ('2','16','25','1','宏基CPU600 内存128M 硬盘10G 12寸 8成新500元\r\n康柏CPU500 内存128M 硬盘10G 14寸 VCD 9成新 600元\r\nCPU奔腾400 内存128M 12寸屏 红外线 USB接口 VCD光驱 外观无磨损 价格500元\r\nIBM 超薄 CPU奔腾 内存128M 硬盘10G 12寸屏 九五成新，无维修史，外观无磨损，价格500元\r\n东芝 CPU600 内存192M 硬盘10G 12寸屏 VCD光驱 价格800\r\nNEC笔记本 CPU450 内存128M 硬盘10G 14寸屏 外观无磨损 九成新 价格500元 \r\n\r\nIBM T20超薄机型 CPU奔腾900 内存256M 硬盘20G 14寸屏 电池好用，DVD光驱九五成新价格1000元。\r\n康柏 CPU700 内存256M 硬盘20G VCD光驱 14寸屏 九成新无维修史 价格800元\r\n富士通 cpu1000 内存256M 硬盘20G 15寸屏 VCD光驱 价格800元\r\n东芝 CPU 900 内存256M 硬盘20G 14寸屏 DVD光驱 价格900元 外观无磨损,九成新,无维修史。\r\nDELL迅驰1.7 内存512M 硬盘40G 显卡64M DVD康宝刻录光驱 14寸高亮屏。无线网卡 价格1100元。\r\nTCL CPU1000 内存128M 硬盘20G 14寸 VCD光驱 9成新 800元\r\n\r\n东芝 CPU2.0 内存512M 硬盘40G 15寸大屏 DVD康宝 9成新 蓝色 1100元\r\n联想 CPU迅驰1.5 内存512M 硬盘40G 13.3寸宽屏 内置无线上网卡 9成新 灰色 1200元\r\nHP CPU迅驰2.8 内存1G 硬盘80G 显卡128M集成 DVD康宝 14寸高亮屏无维修史,九成新 价格1450元 可无线上网。\r\nIBM CPU迅驰2.2 内存1G 硬盘40G 独立显卡7500 DVD光驱 14寸 九五成新 价格1400元。\r\nIBM R60 双核1.66 内存1G 硬盘80G 独立显卡 DVD康宝刻录 14寸 95成新 2000元\r\nDELL D620 双核1.73 内存1G 硬盘80G 14宽屏 DVD康宝刻录 显卡256M 9成新 价格1850元\r\n','54','9成新','545','1');
INSERT INTO `hh_fenlei_content_6` VALUES ('3','17','25','1','型号：Thinkpad E30（0492-2ZC）\r\n颜色：热力红（亮光面）\r\nCPU： SU4100(1.30GHz)\r\n内存： 2GB\r\n硬盘：320GB\r\n显示芯片：Intel GMA 4500MHD\r\n无线网卡：ThinkPad BGN （支持802.11b/g/n无线协议）\r\n网卡：1000Mbps以太网卡\r\n触摸板：多点触摸板 \r\n指点杆：Trackpoint指点杆\r\n摄像头像素： 130万 \r\n屏幕：13.3英寸 宽屏16：9 1366 x 768\r\n续航时间： 电池29Wh 5小时 看电影3-4个小时。\r\n具体参数可以到网上看看，京东现在的价钱是5300的样子。\r\n用了半年，发票保修单一应俱全，还有半年的质保期！\r\n此本保护还好 外观无任何磨损 ，已装WIN7旗舰版！\r\n上网办公 游戏娱乐 在线看看电影， 都不在话下，低电压CPU，续航能力超强。而且特别轻，1.64KG的样子。比较适合女孩子用。\r\n想要的可以跟我联系，非诚勿扰！谢谢！\r\n','44','9成新','4343','1');
INSERT INTO `hh_fenlei_content_6` VALUES ('4','28','25','1','个人转让惠普高配游戏笔记本,机器95成新平时很少也用，配置：14寸镜面炫彩宽屏，双核1.7（速度很快），1G内存，160G硬盘，高性能256M显卡，无线上网，DVD刻录，多合一读卡器，轻触控制键，奥特蓝星HIFI高级音响（音响很好）。\r\n\r\n此本玩游戏一点问题都没有，什么魔兽，极飞，使命召唤等都很好运行，像地下城，诛仙，穿越火线等更不在话下！！！不论玩游戏办公这本完全可以胜任！\r\n机器没有修过，买时贴的膜，刚揭下来跟新的一样！','543','9成新','5435','2');
INSERT INTO `hh_fenlei_content_6` VALUES ('5','29','25','1','电话：13126781171 QQ：1455597583 联系人：蒋飞 北京市内免费送货上门，你也可以来我的实体店当面交易，我们是正规商家，在中关村有专柜，售后有保障，下面有我们实体店的营业执照图片。\r\n\r\n实体店址：海淀区中关村硅谷电脑城一层C区1C72号\r\n\r\n本店承诺所售产品均是全新配件，三月包换，三年保修。北京市内免费送货上门,当天订购 当天送货上门。可收支票，需要开发票的加5%的税点。\r\n\r\n请买家朋友看清楚所说的电脑配置，货比三家，我们已经是最低价了，请勿砍价！！！\r\n\r\n液晶显示器：清华紫光 15寸350元 17寸600元 19寸650 22寸带电视900元\r\n\r\n办公机型（特别适合公司办公用）买全套送全套光电键鼠一套和鼠标垫一个，单主机不送。\r\n\r\n配置1: INTEL 2.6G/512M内存/英特845主板/西数80G硬盘/集成显卡/机箱电源400W=单主机600元(特价机）\r\n\r\n配置2：INTEL 2.6G/金士顿1G内存/英特945主板/西数80G硬盘/集成256M显卡/机箱电源400W/三星DVD=单主机750元 \r\n\r\n配置3：英特HT双核2.8G/金士顿1G内存/英特945主板/西数80G硬盘/集成256M显卡/机箱电源400W/三星DVD=主机850元\r\n\r\n配置4：英特HT双核3.0G/金士顿1G内存/英特945主板/西数160G硬盘/集成256M显卡/机箱电源400W/三星DVD=主机950元\r\n\r\n配置5: 酷睿Xeon双核3.06G/金士顿1G内存/英特G31主板/西数160G硬盘/集成256M显卡/机箱电源400W/三星DVD=主机1000元 \r\n\r\n个人家用型（家用玩游戏，CF，地下城，跑跑卡丁车，极品飞车，魔兽）\r\n\r\n配置1：AMD速龙2双核 220 2.8G主频/金士顿2G内存/AM2C68主板/西数160G硬盘/板载6150SE 512M显卡/机箱电源400W/三星DVD=单主机1300元 \r\n\r\n配置2：酷睿Xeon双核3.06G/金士顿2G内存/英特G31主板/160G硬盘/独立9800GT 1G显卡/机箱电源400W/三星DVD=单主机1400元\r\n\r\n配置3：酷睿双核E5500/金士顿2G内存/英特G31主板/西数160G硬盘/独立9800GT 1G显卡/机箱电源400W/三星DVD=单主机1600元 \r\n\r\n配置4：AMD速龙三核8600/华硕主板/金士顿2G内存/500G硬盘/独立9800GT 1G显卡/机箱电源400W/三星DVD=单主机1700元 \r\n\r\n配置5：开核AMD5000 四核/微星770主板/金士顿2G内存/500G硬盘/独立9800GT 1G显卡/机箱电源400W/三星DVD=单主机1700元 \r\n\r\n配置6：AMD双核三代245 2.8G主频/金士顿2G内存/铭瑄主板/500G硬盘/独立9800GT 1G显卡/机箱电源400W/三星DVD=单主机1700元 \r\n\r\n配置7：四核AMD X4 635/华硕主板/金士顿2G内存/500G硬盘/独立9800GT 1G显卡/机箱电源400W/三星DVD=单主机2200元 \r\n\r\n配置8：英特四核Q8200/梅捷G41G主板/金士顿2G内存/500G硬盘/独立9800GT 1G显卡/机箱电源400W/三星DVD=单主机2400元','54','9成新','5646','2');
INSERT INTO `hh_fenlei_content_6` VALUES ('6','30','25','1','我的本本是惠普的CQ40，非常的漂亮，买了不到1个月，成色没得说，99.9成新。\r\n外观十分的漂亮，黑色的钢琴华丽烤漆表面上镶嵌着一个银色的惠普的标志，很高贵很华丽。\r\n本本内部是珍珠银白色的华美掌托包围键盘，很漂亮很高贵，黑色的巧克力防水防尘舒适键盘，看上去更是漂亮至极，本本多处的五彩指示灯的绚丽闪烁令本本华丽无比。本本的屏幕是14.1寸的LED黑晶透亮宽屏，看上去非常的亮，视觉效果很好。\r\n本本外观是极其的漂亮。\r\n电脑的处理器CPU是 Inter 酷睿2双核 2.0HZ 速度非常的快的。\r\n内存 1G的\r\n硬盘是 250G 超级高速大硬盘\r\n显卡是 ATI的独立显卡512MB玩游戏作图看电影什么的视觉效果非常好\r\n光驱是DVD刻录光驱 听朋友说可以自己刻录光盘的\r\n电池3个小时以上 本本散热非常好\r\n本本内置高清摄像头 无线网卡 蓝牙 HDMI高清数字接口 多功能读卡器 等\r\n我的国家正式发票 保修卡 原装电脑包 鼠标 适配器 等都在，买了没1个月，电脑各方面非常好，2年的全国联保。\r\n','434','9成新','54354','1');
INSERT INTO `hh_fenlei_content_6` VALUES ('7','31','25','1','电脑型号是IBM T61P高端商务笔记本，里外几乎没有磨损，可以说和新的没有什么区别，999成新没有问题。\r\n笔记本内有的商务功能有：蓝牙，集成指纹识别器，安全芯片，5合1读卡器，2G迅盘{加速拷贝资料的速度，比普通的电脑要快近一倍}，无线上网卡，1394数码接口，防水键盘等等。\r\n笔记本购买到目前为止8个月时间，本机总共全国保修3年，现在还有2年零4个月时间。发票，保修卡等保修手续全部都有。质量可以完全放心，可以当面随便检查。\r\n笔记本我平时只是用来办公上网使用[其实非常的浪费]，出售的原因就是因为闲置。\r\n要是有喜欢玩游戏或者作图设计的朋友我的电脑真是首选。毕竟这么高的配置已经相当高了。\r\n处理器：迅驰4代的技术，英特酷睿2双核T8300的，主频大小2.4HZ，采用的是先进的45纳米技术。\r\n处理文件的速度非常的快。电池基本上没有用，现在单次充满电能用3小时多。\r\n内存：原装的2代 2G内存，最高支持4G扩展。 硬盘：高转速320G超大硬盘。\r\n显卡：Nvidia FX570M的专业独立显卡。显卡大小512MB的。无论是玩游戏作图设计都没有问题。\r\n光驱：DVD带双层刻录的DVD光驱，能刻录VCD,CD,DVD等各种光盘。\r\n笔记本屏幕是15.4寸的16：9高分宽屏，屏幕是180度角度清晰可见的U屏。分辨率是1680*1050.\r\n我的本本大概也就这些参数了，有喜欢小黑商务本的朋友不妨可以来看看。\r\n本本的配件有：电源适配器，鼠标，发票，保修卡原装双肩背包{单这个背包至少需要200多元}等所有免费一起随电脑赠送。\r\n','43','9成新','5435','2');
INSERT INTO `hh_fenlei_content_6` VALUES ('8','34','26','1','全新的手机，行货价3850元，除了打开盒子拍了以下的照片，机器都没有拆封，可检查电池触点。别人送的行货，因为不习惯WM系统，所以便宜出售。WM6.5系统，大屏幕触控，非常大气时尚。手感很好。与专业导航设备公司Garmin的联合品牌Garmin-Asus推出的第二款以专业导航功能为卖点的机型，其余详细介绍请上网查询。\r\n','2500','9成新','3000','2');
INSERT INTO `hh_fenlei_content_6` VALUES ('9','35','31','1','1,全新小阿龙伞车120元\r\n2，好孩子轻便推车单手折叠；可半躺可坐可折叠；九成新160元转:单手即可打开和收起整辆婴儿车，操作便捷。 重量轻，折叠体积小，携带方便。靠背两档调节，可满足宝宝坐，可半躺的不同需求。 前轮可定向,带避震，令宝宝出行更加安全和舒适 折叠后可自立 有布质置物篮筐，方便购物 适用年龄范围：7-36个月。 净重4.75kg\r\n3，好孩子轻便推车单手折叠；7成新95元转。\r\n4，好孩子轻便推车单手折叠8成新120元转。\r\n5,好孩子伞车8成新70元转。\r\n6；好孩子伞车8成新100元转。\r\n7，好孩子伞车9成新140元转。\r\n8全新宝乐宝伞车60元转\r\n你好;我们是二手婴儿用品专卖店;详细地址；南四环小红门桥南50米;\r\n','50','9成新','60','1');
INSERT INTO `hh_fenlei_content_6` VALUES ('10','36','30','1','个人的皮靴，42号的或称27厘米，牌子是金典鼎豪。断断续续穿了一年，觉得顶脚有点小，今年又买大一号的皮靴了，这双鞋就不穿了，觉得还不算旧，扔了可惜，转让给需要的不讲究的人吧，10元就转让。（如不用花钱可用旧手机交换也行，手机有点毛病有点问题也可交换）。有意者电话短信邮箱都可联系，地点也可商量','2','9成新','10','2');
INSERT INTO `hh_fenlei_content_6` VALUES ('11','37','24','1','http://www.apple.com/macbook/ 这是官网介绍我就是在这里买的 刚从美国带回来 本来想自用的 后来发现学校的网络用MAC非常不方便 忍痛割爱 我绝对不是骗子可以给有意者当面看我的VISA 地址：北京林业大学\r\n','1000','9成新','3000','1');
INSERT INTO `hh_fenlei_content_7` VALUES ('1','18','19','1','嘉盛中心配套设施完备。电讯盈科、诺基亚、IBM写字楼近在咫尺，中心商务氛围浓厚；大型商场太平洋百货和针对外国人的雅秀服装市场为该地区的中心商业聚足了人气；三里屯酒吧街和朝阳酒吧文化广场使这里的娱乐生活有声有色；工人体育场、郡王府体育馆、青鸟健身中心提供了休闲锻炼的好去处；兆龙饭店则提供了高档的进餐、旅住场所！\r\n此房源属嘉盛中心特价房源，稀缺户型，房间朝向好，采光好，视野开阔，价钱便宜，急租，机会不多，莫失良机，有意者速速电话联系~！\r\n','543','543','普通装修','54','','','1');
INSERT INTO `hh_fenlei_content_7` VALUES ('2','19','19','1','现在有E座出租整层1650平米\r\n\r\n环贸中心共分3期，有a、b、c、d、e、f共6栋写字楼，全部只租不售。\r\n1）一期是在整个项目中具有标志性地位，直接面向北三环主干线，地面24层，地下4层。其中地下一层为商务餐饮配套。目前一期a、b栋已经确定全部出租，没有空房，整层面积大约在600-1000平米。\r\n2）二期c座和d座。目前d栋14层以下已经出租完毕；c栋也已经确定成交了5层，包括地面三层商业和两层办公面积。二期整层面积约3200平米，将在2008年10-11月交房。\r\n3）三期e、f栋写字楼地上分别为15层、 7层，地下4层，单层面积1500平方米。整个三期直接面向中央公园，是三期中景观最好的写字楼。开发商倾向于整栋租赁。\r\n总规划车位3500个，一期有523个停车位，二期有1200个停车位。一期车位费650-750元/月，二期车位费定于800-1300元/月。除了固定地下车位之外，地面广场上还有几十个临时停车位','543','543','普通装修','54','','','1');
INSERT INTO `hh_fenlei_content_7` VALUES ('3','20','19','1','SOHO中国集团，香港上市集团公司， SOHO中国连续多年成为中国房地产行业纳税前10名企业。SOHO中国于2005年成立了公益慈善机构“北京搜候中国城市文化基金会”（简称“SOHO中国基金会”）。SOHO中国2007年10月8日，SOHO中国在香港联交所成功上市（股票代码：410），融资19亿美元，创造了亚洲最大的地产企业IPO。2006年至2009年，SOHO中国连续四年入选《财富》杂志中文版评选出的“最受赞赏的中国公司”全明星榜。\r\n\r\n\r\nSOHO中国旗下部分出租项目：\r\n\r\n\r\n朝阳门SOHO写字楼：东二环朝阳门SOHO（原凯恒中心）火爆招租中……\r\n\r\n招租面积：80——9000平米 价格：3.8元——7元/米/天！\r\n\r\n\r\n朝阳门SOHO地处北京朝阳门黄金地段，是东二环上最大的城市综合体，坐拥两条地铁交汇处的绝佳区位，与外交部、中国电信、中国银行、中石化、中海油、中国人保等众多中央政府机构及国家核心企业比肩林立。朝阳门SOHO位距东二环朝阳门立交桥西南角，北京环线地铁，6号地铁线交汇；110，112， 119，44路等多条公交线通过，更与首都国际机场高速路，北京火车站，京津塘高速路便捷相连。众多国际企业，政府部门，金融机构聚集于此。\r\n\r\n朝阳门SOHO 紧守东二环朝阳门桥西南角，地铁2号线和6号线交叉穿越，交通网络四通八达，37米挑高中庭与南向全幕墙设计的大堂共享空间，体现卓然不凡气度；全新精装修办公开间户型方正，无柱办公，空间利用自由，紧邻地铁朝阳门站，北京市中心办公区域。\r\n\r\n朝阳门SOHO是一个超大规模的新时代建筑集群，占地7.65公顷,总建筑面积50余万平方米，汇集国际顶级写字楼，超五星级酒店，国际会展中心，高级公寓等四大部分。同时，写字楼更规划了5层高档国际商铺。凯恒中心设施先进，配套齐全，装修精良，几大功能区之间相互协调，相互配合，商务，会展，娱乐，生活，购物等一站式享受。\r\n\r\n\r\n\r\n三里屯SOHO精装写字楼——整栋8800平米\r\n\r\n特价——出租 4.5平米/天！\r\n\r\n另有三里屯酒店式高档公寓火爆招租中……\r\n\r\n面积100——300平米，价格12000元——30000元/月\r\n\r\n\r\n三里屯SOHO项目位于北京市朝阳区工体北路南侧，南三里屯路路西，毗邻第二使馆区和工人体育馆，是北京最具国际化气氛和传统的区域，其独特的消费文化及娱乐气息闻名中外。、带灯光的小河将5个购物中心串连起来，功能丰富，46万平米的建筑让这里就像一个浓缩了的城市景观，将成为三里屯地区变革的新亮点，集商业，餐饮，娱乐为一体，成为中外游客，写字楼人群及附近居住者的一个全新的休闲消费港湾。\r\n\r\n\r\nSOHO嘉盛中心写字楼(朝阳区东三环北路甲19号)特价招租中…\r\n\r\n嘉盛中心招租面积：170——9000平米 价格：5元——7元/米/天！ \r\n\r\n\r\nSOHO嘉盛中心(SOHO Nexus Center)是位于北京东三环内集商业和办公为一体的综合性建筑，是新一代优质甲级写字楼的创意先驱。楼高150米，外观宏伟，设计独特，是北京最具代表性的建筑之一。毗邻主要商业区、五星级酒店及中央电视台新办公楼；十万平方米的总建筑面积，提供理想的办公场所和购物环境。SOHO嘉盛中心正以其国际化的全球视野、独特周到的商务理念，重新定义现代都市甲级写字楼新标准。 \r\n嘉盛中心地址:北京市朝阳区东三环北路甲19号 \r\n\r\n\r\nSOHO嘉盛中心项目特点\r\n\r\n&#8226; 单层面积约2100——2500平米，部分户型具备给排水条件 \r\n&#8226; 东三环长虹桥边紧邻CBD核心区 \r\n&#8226; 地铁10号线团结湖站，多条公交线路可直达 \r\n&#8226; 紧邻国贸商区和三里屯使馆区，距首都机场仅40分钟车程 \r\n&#8226; 建筑外墙所采用的中空玻璃幕墙、架空地板及变风量空调系统，节约能源 \r\n&#8226; 16部高低区乘客电梯，智能IC卡安全保障系统 \r\n&#8226; 俯瞰CBD及东三环夜景 \r\n&#8226; 临近多家五星级酒店及高端写字楼，遥望央视新址 \r\n\r\n\r\n\r\nSOHO中国开发商租售热线：13701394570\r\n','543','54','普通装修','54','','','1');
INSERT INTO `hh_fenlei_content_7` VALUES ('4','21','19','1','悠乐汇真实350平米办公开间写字楼低价出租，可随时看房，有需要的赶快行动，好房子不等人','5435','54','普通装修','5','','','1');
INSERT INTO `hh_fenlei_content_7` VALUES ('5','22','19','1','金泰有名的房地产项目，地理位置十分稀缺优秀，交通十分便利。出行方便！商业气氛浓厚！\r\n价格十分公道，只收租金其他全免，就连办公用电和停车费全免。\r\n有面积。25、27、52、69、83、200平米可自由选择！\r\n是你理想的办公场所。物业超好，国有企业，服务周到、管理严格。\r\n提供员工餐十元一份，三荤两素还有水果。\r\n','434','43243','普通装修','43','','','1');
INSERT INTO `hh_fenlei_content_7` VALUES ('6','23','19','1','骏一孵化器提供小型商务办公室租赁，高档装修，配办公家具，宽带，共享复印机，打印机，传真机等办公设施，共享会议室，会客室，有前台接待，形象好。可以为企业提供注册，报税及各种认证服务，提高办公效率。\r\n现强力推出适合 2-8人办公，价格：1518元-4660元，房间有网络和电话接口；有公用的会议室；免物业、取暖、保洁、网络、水、饮用水等费用；客户只需携带公文包就可轻松实现网络办公；交通便利，紧邻城铁上地站，楼下18线公交车直达京城各区，方便员工上下班，楼下有超大停车场；周边银行、餐饮、娱乐设施一应俱全. \r\n联系地址：北京市海淀区上地四街一号五号楼二层\r\n联系电话： 010-51660061 010-51669561 010-51669761联系人： 刘小姐\r\n公司网址：www.kinghorse.com QQ:870262691\r\n创业者天下MSN: kinghorse_cy@hotmail.com\r\n并且提供：专业的50万以下公司注册服务,提供真实工商注册地址服务,提供注账、报税、代理记帐服务。\r\n','453','5435','普通装修','4','','','2');
INSERT INTO `hh_fenlei_content_7` VALUES ('7','24','19','1','房屋位于望京商业街中心悠乐汇，屋内精装开间，朝向为南 ，看房随时联系真实房源保证免费为您服务另有更多房源','5434','543','普通装修','4','','','1');
INSERT INTO `hh_fenlei_db` VALUES ('1','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('2','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('3','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('4','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('5','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('6','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('7','12','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('8','12','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('9','12','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('10','12','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('11','12','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('12','12','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('13','12','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('14','12','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('15','25','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('16','25','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('17','25','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('18','19','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('19','19','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('20','19','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('21','19','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('22','19','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('23','19','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('24','19','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('25','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('26','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('27','11','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('28','25','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('29','25','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('30','25','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('31','25','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('32','129','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('33','60','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('34','26','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('35','31','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('36','30','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('37','24','1','1');
INSERT INTO `hh_fenlei_db` VALUES ('38','11','1','41');
INSERT INTO `hh_fenlei_field` VALUES ('125','6','附注信息','content','mediumtext','0','7','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('124','6','新旧程度','my_hownew','varchar','12','8','select','0','0','9成新\r\n8成新\r\n7成新\r\n6成新\r\n5成新\r\n4成新\r\n3成新\r\n2成新\r\n1成新\r\n全新','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('122','6','原价','my_outprice','int','10','10','text','5','0','','','元','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('123','6','现价','my_price','int','7','9','text','5','0','','','元','','0','1','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('120','5','自我介绍','content','mediumtext','0','3','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('121','6','交易方式','sortid','varchar','1','11','radio','0','0','1|当面交易\r\n2|网上交易','1','','','1','1','1','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('119','5','学历','schoo_age','int','1','4','select','0','0','1|小学\r\n2|初中\r\n3|高中\r\n4|中专\r\n5|大专\r\n6|本科\r\n7|研究生\r\n8|博士以上','5','','','0','1','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('118','5','条件要求','sortid','int','1','5','radio','0','0','1|漂亮\r\n2|贤慧\r\n3|英俊\r\n4|上进\r\n5|老实','','','','1','1','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('117','5','兴趣爱好','my_interest','varchar','100','6','text','50','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('116','5','从事职业','my_job','varchar','30','7','text','30','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('115','5','体重','my_weight','varchar','15','8','text','3','0','','','公斤','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('114','5','身高','my_height','varchar','8','9','text','3','0','','','CM','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('113','5','年龄','my_age','varchar','8','10','text','2','0','','','岁','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('112','5','性别','my_sex','varchar','4','11','radio','0','0','男\r\n女\r\n保密','保密','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('111','4','自我介绍','content','mediumtext','0','0','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('110','4','期望月薪','my_wage','varchar','30','4','select','0','0','面议\r\n1000元以内\r\n1000元-2000元\r\n2000元-3000元\r\n3000元-4000元\r\n4000元-5000元\r\n5000元以上','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('108','4','工作经验','sortid','int','1','6','radio','0','0','1|应届生\r\n2|一年\r\n3|两年\r\n4|三年以上\r\n','1','','','0','1','1','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('109','4','期望工作城市','my_workplace','varchar','50','5','text','12','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('107','4','性别','my_sex','varchar','4','7','radio','0','0','男\r\n女\r\n保密','保密','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('106','4','年龄','my_age','varchar','8','8','text','2','0','','','岁','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('105','4','学历','my_schoolage','varchar','30','9','select','0','0','小学\r\n初中\r\n高中\r\n中专\r\n大专\r\n本科\r\n研究生\r\n博士以上','大专','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('104','4','期望从事职业','my_jobs','varchar','30','10','text','30','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('103','3','公司介绍','content','mediumtext','0','0','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('102','3','职位技能要求','my_jobabout','mediumtext','255','5','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('101','3','月薪待遇','wage','int','1','6','select','0','0','1|面议\r\n2|1000元以下\r\n3|1000元-2000元\r\n4|2000元-3000元\r\n5|3000元-4000元\r\n6|4000元-5000元\r\n7|5000元以上','1','','','0','1','1','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('100','3','工作地区','my_workplace','varchar','30','7','text','12','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('99','3','招聘人数','my_nums','varchar','12','8','text','5','0','','','人','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('98','3','招聘职位','my_jobs','varchar','30','9','text','30','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('97','3','招聘类型','sortid','varchar','1','10','radio','0','0','1|全职\r\n2|兼职\r\n3|实习','1','','','0','1','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('96','7','附注信息','content','mediumtext','0','0','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('95','7','公交线路','my_bus','varchar','50','4','text','12','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('94','7','附近公交站','my_station','varchar','50','5','text','15','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('93','7','所在楼层','my_floor','varchar','5','6','text','3','0','','','楼','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('92','7','装修情况','my_fitment','varchar','20','7','select','0','0','普通装修\r\n精装修\r\n豪华装修\r\n毛坯房','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('90','7','面积','my_acreage','varchar','12','9','text','5','0','','','平方米','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('91','7','价格','my_price','int','10','8','text','8','0','','','元','','0','1','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('89','7','性质','sortid','int','1','10','radio','0','0','1|个人\r\n2|中介','1','','','1','1','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('88','2','详细信息','content','mediumtext','0','2','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('86','1','附注信息','content','mediumtext','0','1','ieedit','500','300','','','','','0','0','0','0','','','','','31');
INSERT INTO `hh_fenlei_field` VALUES ('87','2','性质','sortid','int','1','3','radio','0','0','1|个人\r\n2|团体\r\n3|企业','1','','','0','1','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('85','1','公交路线','my_bus','varchar','50','2','text','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('84','1','附近公交站','my_station','varchar','100','3','text','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('83','1','所在楼层','my_floor','varchar','12','4','text','4','0','','','楼','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('81','1','室内面积','my_acreage','varchar','12','6','text','5','0','','','平方米','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('82','1','装修情况','my_fitment','varchar','15','5','radio','0','0','普通装修\r\n精装修\r\n豪华装修\r\n毛坯房','普通装修','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('80','1','配套设施','my_peitao','varchar','150','7','checkbox','0','0','水\r\n电\r\n电话\r\n宽带\r\n管道煤气\r\n电梯\r\n家具','水/电','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('79','1','室内布局','my_rooms','varchar','30','8','select','0','0','两室一厅\r\n两室两厅\r\n三室一厅\r\n三室两厅\r\n一室一厅\r\n一居室\r\n三室以上\r\n别墅','','','','0','1','1','0','','','','','1');
INSERT INTO `hh_fenlei_field` VALUES ('78','1','价格','my_price','int','8','9','text','12','0','','','元','','0','1','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('77','1','性质','sortid','int','1','10','radio','0','0','1|个人\r\n2|中介','1','','','0','1','1','1','','','','','1');
INSERT INTO `hh_fenlei_field` VALUES ('126','13','详情','content','mediumtext','0','0','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('127','13','人均消费','sortid','int','3','0','radio','0','0','1|30元以下\r\n2|30~50元\r\n3|50~100元\r\n4|100~150元\r\n5|150~200元\r\n6|200~300元\r\n7|300元以上','1','','','0','0','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('128','13','环境','sortid2','int','3','0','radio','0','0','1|家庭聚会\r\n2|随便吃吃\r\n3|情侣约会\r\n4|商务洽谈\r\n5|朋友聚会\r\n6|工作午餐\r\n7|大型聚会','1','','','0','0','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('129','13','停车位','my_228','int','1','0','radio','0','0','1|免费\r\n2|收费\r\n3|无\r\n4|未知','4','','','0','0','1','1','','','','','1');
INSERT INTO `hh_fenlei_field` VALUES ('130','13','公交线路','my_837','varchar','100','0','text','30','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('131','13','附近公交站','my_613','varchar','100','0','text','50','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('132','14','详情','content','mediumtext','0','0','textarea','0','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('133','14','人均消费','sortid','int','3','0','radio','0','0','1|30元以下\r\n2|30~50元\r\n3|50~100元\r\n4|100~150元\r\n5|150~200元\r\n6|200~300元\r\n7|300元以上','1','','','0','0','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('134','14','环境','sortid2','int','3','0','radio','0','0','1|家庭聚会\r\n2|随便吃吃\r\n3|情侣约会\r\n4|商务洽谈\r\n5|朋友聚会\r\n6|工作午餐\r\n7|大型聚会','1','','','0','0','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('135','14','停车位','my_382','int','1','0','radio','0','0','1|免费\r\n2|收费\r\n3|无\r\n4|未知','4','','','0','0','1','1','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('136','14','公交线路','my_835','varchar','100','0','text','30','0','','','','','0','0','0','0','','','','','0');
INSERT INTO `hh_fenlei_field` VALUES ('137','14','附近公交站','my_491','varchar','100','0','text','30','0','','','','','0','0','0','0','','','','','1');
INSERT INTO `hh_fenlei_friendlink` VALUES ('1','0','齐博CMS官方站','http://www.qibosoft.com/','','中国领先的CMS系统!!','0','0','0','0','0','0','','1','0');
INSERT INTO `hh_fenlei_module` VALUES ('1','0','住宅房','10','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','','1','0','a:4:{s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:4:\"post\";s:0:\"\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_fenlei_module` VALUES ('2','0','一般信息','4','','a:1:{s:9:\"moduleSet\";N;}','','1','0','');
INSERT INTO `hh_fenlei_module` VALUES ('7','0','商用房','9','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','','0','0','');
INSERT INTO `hh_fenlei_module` VALUES ('3','0','招聘','6','','a:1:{s:9:\"moduleSet\";N;}','','0','0','');
INSERT INTO `hh_fenlei_module` VALUES ('4','0','求职','7','','a:1:{s:9:\"moduleSet\";N;}','','0','0','');
INSERT INTO `hh_fenlei_module` VALUES ('5','0','交友','5','','a:1:{s:9:\"moduleSet\";N;}','','0','0','');
INSERT INTO `hh_fenlei_module` VALUES ('6','0','交易','8','','a:1:{s:9:\"moduleSet\";N;}','','0','0','');
INSERT INTO `hh_fenlei_module` VALUES ('13','0','餐饮','0','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','a:5:{s:4:\"fen1\";a:2:{s:4:\"name\";s:4:\"总评\";s:3:\"set\";s:36:\"1=差\r\n2=一般\r\n3=好\r\n4=很好\r\n5=非常好\";}s:4:\"fen2\";a:2:{s:4:\"name\";s:4:\"环境\";s:3:\"set\";s:36:\"1=差\r\n2=一般\r\n3=好\r\n4=很好\r\n5=非常好\";}s:4:\"fen3\";a:2:{s:4:\"name\";s:4:\"服务\";s:3:\"set\";s:36:\"1=差\r\n2=一般\r\n3=好\r\n4=很好\r\n5=非常好\";}s:4:\"fen4\";a:2:{s:4:\"name\";s:4:\"价位\";s:3:\"set\";s:28:\"1=便宜\r\n2=适中\r\n3=贵\r\n4=很贵\";}s:4:\"fen5\";a:2:{s:4:\"name\";s:8:\"喜欢程度\";s:3:\"set\";s:36:\"1=不喜欢\r\n2=无所谓\r\n3=喜欢\r\n4=很喜欢\";}}','0','1','');
INSERT INTO `hh_fenlei_module` VALUES ('14','0','休闲','0','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";i:1;}}','a:6:{s:4:\"fen1\";a:2:{s:4:\"name\";s:4:\"总评\";s:3:\"set\";s:36:\"1=差\r\n2=一般\r\n3=好\r\n4=很好\r\n5=非常好\";}s:4:\"fen2\";a:2:{s:4:\"name\";s:4:\"环境\";s:3:\"set\";s:36:\"1=差\r\n2=一般\r\n3=好\r\n4=很好\r\n5=非常好\";}s:4:\"fen3\";a:2:{s:4:\"name\";s:4:\"服务\";s:3:\"set\";s:36:\"1=差\r\n2=一般\r\n3=好\r\n4=很好\r\n5=非常好\";}s:4:\"fen4\";a:2:{s:4:\"name\";s:4:\"价位\";s:3:\"set\";s:28:\"1=便宜\r\n2=适中\r\n3=贵\r\n4=很贵\";}s:4:\"fen5\";a:2:{s:4:\"name\";s:8:\"喜欢程度\";s:3:\"set\";s:36:\"1=不喜欢\r\n2=无所谓\r\n3=喜欢\r\n4=很喜欢\";}s:4:\"fen6\";a:2:{s:4:\"name\";s:8:\"环境氛围\";s:3:\"set\";s:48:\"家庭聚会\r\n情侣约会\r\n商务洽谈\r\n朋友聚会\r\n大型聚会\";}}','0','1','');
INSERT INTO `hh_fenlei_pic` VALUES ('1','1','11','0','1','0','http://pic.58.com/p1/big/n_6734506480129.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('2','1','11','0','1','0','http://pic.58.com/p1/big/n_6734508713986.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('3','1','11','0','1','0','http://pic.58.com/p1/big/n_6734511689476.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('4','1','11','0','1','0','http://pic.58.com/p1/big/n_6734471650562.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('5','1','11','0','1','0','http://pic.58.com/p1/big/n_6734518066946.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('6','1','11','0','1','0','http://pic.58.com/p1/big/n_6734520442626.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('7','1','11','0','1','0','http://pic.58.com/p1/big/n_6734524643841.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('8','2','11','0','1','0','http://pic.58.com/p1/big/n_6677318701828.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('9','2','11','0','1','0','http://pic.58.com/p1/big/n_6677317915396.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('10','2','11','0','1','0','http://pic.58.com/p1/big/n_6677276803586.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('11','3','11','0','1','0','http://pic.58.com/p1/big/n_6669086810625.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('12','3','11','0','1','0','http://pic.58.com/p1/big/n_6669094643458.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('13','3','11','0','1','0','http://pic.58.com/p1/big/n_6669102120962.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('14','3','11','0','1','0','http://pic.58.com/p1/big/n_6669117145858.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('15','3','11','0','1','0','http://pic.58.com/p1/big/n_6669109559044.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('16','4','11','0','1','0','http://pic.58.com/p1/big/n_6776884899585.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('17','4','11','0','1','0','http://pic.58.com/p1/big/n_6776877710852.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('18','4','11','0','1','0','http://pic.58.com/p1/big/n_6776878775809.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('19','5','11','0','1','0','http://pic.58.com/p1/big/n_6675172719362.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('20','5','11','0','1','0','http://pic.58.com/p1/big/n_6675127980802.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('21','6','11','0','1','0','http://pic.58.com/p1/big/n_6274044757249.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('22','6','11','0','1','0','http://pic.58.com/p1/big/n_6274014898178.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('23','6','11','0','1','0','http://pic.58.com/p1/big/n_6274027778306.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('24','6','11','0','1','0','http://pic.58.com/p1/big/n_6274060408068.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('25','7','12','0','1','0','http://pic.58.com/p1/big/n_6629233098498.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('26','7','12','0','1','0','http://pic.58.com/p1/big/n_6629279272962.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('27','8','12','0','1','0','http://pic.58.com/p1/big/n_6756913455618.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('28','8','12','0','1','0','http://pic.58.com/p1/big/n_6756914729730.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('29','8','12','0','1','0','http://pic.58.com/p1/big/n_6756871945730.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('30','8','12','0','1','0','http://pic.58.com/p1/big/n_6756918049796.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('31','9','12','0','1','0','http://pic.58.com/p1/big/n_6648791474433.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('32','9','12','0','1','0','http://pic.58.com/p1/big/n_6648799507202.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('33','9','12','0','1','0','http://pic.58.com/p1/big/n_6648800388356.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('34','10','12','0','1','0','http://pic.58.com/p1/big/n_5923400835588.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('35','10','12','0','1','0','http://pic.58.com/p1/big/n_5923402491138.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('36','10','12','0','1','0','http://pic.58.com/p1/big/n_5923379162114.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('37','10','12','0','1','0','http://pic.58.com/p1/big/n_5923404312066.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('38','10','12','0','1','0','http://pic.58.com/p1/big/n_5923405158404.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('39','10','12','0','1','0','http://pic.58.com/p1/big/n_5923405762817.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('40','11','12','0','1','0','http://pic.58.com/p1/big/n_6543150205444.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('41','11','12','0','1','0','http://pic.58.com/p1/big/n_6543157596673.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('42','11','12','0','1','0','http://pic.58.com/p1/big/n_6543160072961.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('43','11','12','0','1','0','http://pic.58.com/p1/big/n_6543123519234.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('44','12','12','0','1','0','http://pic.58.com/p1/big/n_6695274413313.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('45','12','12','0','1','0','http://pic.58.com/p1/big/n_6695230392834.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('46','12','12','0','1','0','http://pic.58.com/p1/big/n_6695279130369.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('47','12','12','0','1','0','http://pic.58.com/p1/big/n_6695238440706.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('48','13','12','0','1','0','http://pic.58.com/p1/big/n_6651860091394.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('49','13','12','0','1','0','http://pic.58.com/p1/big/n_6651863946754.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('50','13','12','0','1','0','http://pic.58.com/p1/big/n_6651868582657.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('51','13','12','0','1','0','http://pic.58.com/p1/big/n_6651879048194.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('52','13','12','0','1','0','http://pic.58.com/p1/big/n_6651894885889.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('53','13','12','0','1','0','http://pic.58.com/p1/big/n_6651881218306.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('54','14','12','0','1','0','http://pic.58.com/p1/big/n_6273115439620.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('55','14','12','0','1','0','http://pic.58.com/p1/big/n_6273081732354.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('56','14','12','0','1','0','http://pic.58.com/p1/big/n_6273116459524.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('57','14','12','0','1','0','http://pic.58.com/p1/big/n_6273084650754.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('58','15','25','0','1','0','http://pic.58.com/p1/big/n_6668288325380.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('59','15','25','0','1','0','http://pic.58.com/p1/big/n_6668243447298.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('60','16','25','0','1','0','http://pic.58.com/p1/big/n_5847911041538.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('61','16','25','0','1','0','http://pic.58.com/p1/big/n_5847913764356.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('62','16','25','0','1','0','http://pic.58.com/p1/big/n_5847894684162.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('63','16','25','0','1','0','http://pic.58.com/p1/big/n_5847939890436.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('64','16','25','0','1','0','http://pic.58.com/p1/big/n_5847920633858.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('65','16','25','0','1','0','http://pic.58.com/p1/big/n_5847955339777.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('66','17','25','0','1','0','http://pic.58.com/p1/big/n_6547264688642.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('67','17','25','0','1','0','http://pic.58.com/p1/big/n_6547269359874.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('68','18','19','0','1','0','http://pic.58.com/p1/big/n_6761542190084.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('69','18','19','0','1','0','http://pic.58.com/p1/big/n_6761537635844.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('70','19','19','0','1','0','http://pic.58.com/p1/big/n_6674458128129.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('71','19','19','0','1','0','http://pic.58.com/p1/big/n_6674449699330.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('72','20','19','0','1','0','http://pic.58.com/p1/big/n_6579165722369.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('73','20','19','0','1','0','http://pic.58.com/p1/big/n_6579148441858.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('74','20','19','0','1','0','http://pic.58.com/p1/big/n_6579261257218.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('75','20','19','0','1','0','http://pic.58.com/p1/big/n_6579209917186.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('76','20','19','0','1','0','http://pic.58.com/p1/big/n_6579249465090.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('77','20','19','0','1','0','http://pic.58.com/p1/big/n_6579248914946.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('78','21','19','0','1','0','http://pic.58.com/p1/big/n_6777321068802.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('79','21','19','0','1','0','http://pic.58.com/p1/big/n_6777283788546.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('80','21','19','0','1','0','http://pic.58.com/p1/big/n_6777313677060.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('81','21','19','0','1','0','http://pic.58.com/p1/big/n_6777269783554.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('82','22','19','0','1','0','http://pic.58.com/p1/big/n_5914324988418.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('83','22','19','0','1','0','http://pic.58.com/p1/big/n_5914322499330.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('84','22','19','0','1','0','http://pic.58.com/p1/big/n_5914321671684.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('85','22','19','0','1','0','http://pic.58.com/p1/big/n_5914320547332.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('86','22','19','0','1','0','http://pic.58.com/p1/big/n_5914326906372.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('87','22','19','0','1','0','http://pic.58.com/p1/big/n_5914325925634.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('88','23','19','0','1','0','http://pic.58.com/p1/big/n_6228552039169.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('89','23','19','0','1','0','http://pic.58.com/p1/big/n_6228540864002.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('90','23','19','0','1','0','http://pic.58.com/p1/big/n_6228514492162.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('91','23','19','0','1','0','http://pic.58.com/p1/big/n_6228527664898.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('92','24','19','0','1','0','http://pic.58.com/p1/big/n_2840474831617.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('93','25','11','0','1','0','http://pic.58.com/p1/big/n_6676699118849.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('94','25','11','0','1','0','http://pic.58.com/p1/big/n_6676701816834.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('95','25','11','0','1','0','http://pic.58.com/p1/big/n_6676702116353.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('96','25','11','0','1','0','http://pic.58.com/p1/big/n_6676658765826.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('97','25','11','0','1','0','http://pic.58.com/p1/big/n_6676703413762.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('98','25','11','0','1','0','http://pic.58.com/p1/big/n_6676703170561.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('99','26','11','0','1','0','http://pic.58.com/p1/big/n_6669667112193.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('100','26','11','0','1','0','http://pic.58.com/p1/big/n_6669663453186.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('101','27','11','0','1','0','http://pic.58.com/p1/big/n_6675030029058.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('102','27','11','0','1','0','http://pic.58.com/p1/big/n_6675006245377.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('103','28','25','0','1','0','http://pic.58.com/p1/big/n_6734044924418.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('104','28','25','0','1','0','http://pic.58.com/p1/big/n_6734089378818.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('105','28','25','0','1','0','http://pic.58.com/p1/big/n_6734092457473.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('106','28','25','0','1','0','http://pic.58.com/p1/big/n_6734090518785.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('107','29','25','0','1','0','http://pic.58.com/p1/big/n_4233931316737.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('108','30','25','0','1','0','http://pic.58.com/p1/big/n_6755839858689.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('109','30','25','0','1','0','http://pic.58.com/p1/big/n_6755798215938.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('110','31','25','0','1','0','http://pic.58.com/p1/big/n_6777091359492.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('111','32','129','0','1','0','http://pic.58.com/p1/big/n_6777574838529.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('112','33','60','0','1','0','http://pic.58.com/p1/big/n_6668047451908.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('113','34','26','0','1','0','http://pic.58.com/p1/big/n_6762676355074.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('114','35','31','0','1','0','http://pic.58.com/p1/big/n_5042078629889.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('115','36','30','0','1','0','http://pic.58.com/p1/big/n_6778448960516.jpg','');
INSERT INTO `hh_fenlei_pic` VALUES ('116','37','24','0','1','0','http://pic.58.com/p1/big/n_6780653510658.jpg','');
INSERT INTO `hh_fenlei_sort` VALUES ('1','0','房产','1','1','0','1','','10','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','104','','FangChan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('2','0','物品交易','6','1','0','1','','9','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','100','','WuPinJiaoYi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('3','0','企业招聘','6','1','0','1','','8','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','50','','QiYeZhaoPin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('4','0','求职简历','2','1','0','1','','7','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','37','','QiuZhiJianLi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('5','0','同城交友','2','1','0','1','','6','0','','','','','','','0','','','','1','','','','','0','','0','1','','TongChengJiaoYou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('6','0','同城活动','2','1','0','1','','5','0','','','','','','','0','','','','1','','','','','0','','0','1','','TongChengHuoDong','0');
INSERT INTO `hh_fenlei_sort` VALUES ('7','0','服务-生活类','2','1','0','1','','4','0','','','','','','','0','','','','1','','','','','0','','0','1','','FuWu_ShengHuoLei','0');
INSERT INTO `hh_fenlei_sort` VALUES ('8','0','服务-商务类','2','1','0','1','','3','0','','','','','','','0','','','','1','','','','','0','','0','1','','FuWu_ShangWuLei','0');
INSERT INTO `hh_fenlei_sort` VALUES ('9','0','车辆买卖与服务','2','1','0','1','','2','0','','','','','','','0','','','','1','','','','','0','','0','0','','CheLiangMaiMaiYuFuWu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('10','0','教育培训','2','1','0','1','','1','0','','','','','','','0','','','','1','','','','','0','','0','1','','JiaoYuPeiXun','0');
INSERT INTO `hh_fenlei_sort` VALUES ('11','1','出租房','1','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','1','1','','ChuZuFang','0');
INSERT INTO `hh_fenlei_sort` VALUES ('12','1','二手房出售','1','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:11:\"field_value\";N;s:7:\"is_html\";N;}','1','0','','ErShouFangChuShou','1');
INSERT INTO `hh_fenlei_sort` VALUES ('13','1','合租房','1','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','HeZuFang','0');
INSERT INTO `hh_fenlei_sort` VALUES ('14','1','短期租房','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DuanQiZuFang','0');
INSERT INTO `hh_fenlei_sort` VALUES ('15','1','求租房','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiuZuFang','0');
INSERT INTO `hh_fenlei_sort` VALUES ('16','1','二手房求购','1','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ErShouFangQiuGou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('17','1','商铺出租/求租','7','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ShangPuChuZu_QiuZu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('18','1','商铺出售/求购','7','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ShangPuChuShou_QiuGou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('19','1','写字楼出租/求租','7','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','1','0','','XieZiLouChuZu_QiuZu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('20','1','写字楼出售/求购','7','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','XieZiLouChuShou_QiuGou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('21','2','火车票/门票/购物券/消费卡','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','HuoChePiao_MenPiao_GouWuQuan_XiaoFeiKa','0');
INSERT INTO `hh_fenlei_sort` VALUES ('23','2','宠物/宠物用品','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ChongWu_ChongWuYongPin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('24','2','二手台式电脑','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ErShouTaiShiDianNao','0');
INSERT INTO `hh_fenlei_sort` VALUES ('25','2','二手笔记本','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','1','1','','ErShouBiJiBen','0');
INSERT INTO `hh_fenlei_sort` VALUES ('26','2','手机/通讯相关','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ShouJi_TongXunXiangGuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('27','2','二手数码/摄录','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ErShouShuMa_SheLu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('28','2','音响/乐器/影音','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','YinXiang_LeQi_YingYin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('29','2','软件/图书/音像','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','RuanJian_TuShu_YinXiang','0');
INSERT INTO `hh_fenlei_sort` VALUES ('30','2','艺术/工艺/收藏品','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','YiShu_GongYi_ShouCangPin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('31','2','母婴/儿童用品','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','MuYing_ErTongYongPin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('32','2','服饰/箱包/鞋帽','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','FuShi_XiangBao_XieMao','0');
INSERT INTO `hh_fenlei_sort` VALUES ('33','2','化妆品/保健品','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','HuaZhuangPin_BaoJianPin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('36','2','办公用品/耗材','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','BanGongYongPin_HaoCai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('37','2','运动/健身器材','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','YunDong_JianShenQiCai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('38','2','家居/日用百货','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','JiaJu_RiYongBaiHuo','0');
INSERT INTO `hh_fenlei_sort` VALUES ('40','2','二手家电','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ErShouJiaDian','0');
INSERT INTO `hh_fenlei_sort` VALUES ('42','2','网游/装备/虚拟物品','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','WangYou_ZhuangBei_XuNiWuPin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('43','2','其他物品','6','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','QiTaWuPin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('44','9','二手汽车买卖','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ErShouQiCheMaiMai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('45','9','租车/代驾','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZuChe_DaiJia','0');
INSERT INTO `hh_fenlei_sort` VALUES ('46','9','带车求职','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DaiCheQiuZhi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('47','9','自行车买卖','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZiXingCheMaiMai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('48','9','摩托车/助动车','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','MoTuoChe_ZhuDongChe','0');
INSERT INTO `hh_fenlei_sort` VALUES ('49','9','拼车上下班','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','PinCheShangXiaBan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('50','9','驾校/陪练','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiaXiao_PeiLian','0');
INSERT INTO `hh_fenlei_sort` VALUES ('51','9','无车司机求职','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','WuCheSiJiQiuZhi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('52','9','汽修/保养','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiXiu_BaoYang','0');
INSERT INTO `hh_fenlei_sort` VALUES ('53','9','车辆配件','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','CheLiangPeiJian','0');
INSERT INTO `hh_fenlei_sort` VALUES ('54','9','新车买卖','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XinCheMaiMai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('55','3','市场/营销','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ShiChang_YingXiao55','0');
INSERT INTO `hh_fenlei_sort` VALUES ('56','3','兼职','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JianZhi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('57','3','文秘/文员','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','WenMi_WenYuan57','0');
INSERT INTO `hh_fenlei_sort` VALUES ('58','3','技工/一般工人','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiGong_YiBanGongRen58','0');
INSERT INTO `hh_fenlei_sort` VALUES ('59','3','电脑/网络相关','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DianNao_WangLuoXiangGuan59','0');
INSERT INTO `hh_fenlei_sort` VALUES ('60','3','旅游/酒店餐饮','3','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','LvYou_JiuDianCanYin60','0');
INSERT INTO `hh_fenlei_sort` VALUES ('61','3','设计/策划','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','SheJi_CeHua61','0');
INSERT INTO `hh_fenlei_sort` VALUES ('62','3','行政/助理','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XingZheng_ZhuLi62','0');
INSERT INTO `hh_fenlei_sort` VALUES ('63','3','金融/财会/出纳','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JinRong_CaiHui_ChuNa63','0');
INSERT INTO `hh_fenlei_sort` VALUES ('64','3','经营管理','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JingYingGuanLi64','0');
INSERT INTO `hh_fenlei_sort` VALUES ('65','3','保健/美容美发','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','BaoJian_MeiRongMeiFa65','0');
INSERT INTO `hh_fenlei_sort` VALUES ('66','3','音乐/表演/主持','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','YinLe_BiaoYan_ZhuChi66','0');
INSERT INTO `hh_fenlei_sort` VALUES ('67','3','电子/机械/工程','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DianZi_JiXie_GongCheng67','0');
INSERT INTO `hh_fenlei_sort` VALUES ('68','3','写作/翻译','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XieZuo_FanYi68','0');
INSERT INTO `hh_fenlei_sort` VALUES ('69','3','政府/事业单位','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZhengFu_ShiYeDanWei69','0');
INSERT INTO `hh_fenlei_sort` VALUES ('70','3','其他职位','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiTaZhiWei70','0');
INSERT INTO `hh_fenlei_sort` VALUES ('71','7','家政','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiaZheng','0');
INSERT INTO `hh_fenlei_sort` VALUES ('72','7','保洁','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','BaoJie','0');
INSERT INTO `hh_fenlei_sort` VALUES ('73','7','搬家','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','BanJia','0');
INSERT INTO `hh_fenlei_sort` VALUES ('74','7','装修/装饰','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZhuangXiu_ZhuangShi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('75','7','管道疏通/打孔','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','GuanDaoShuTong_DaKong','0');
INSERT INTO `hh_fenlei_sort` VALUES ('76','7','电脑维修','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DianNaoWeiXiu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('77','7','家电维修','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiaDianWeiXiu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('78','7','办公设备维修','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','BanGongSheBeiWeiXiu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('79','7','礼仪婚庆','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','LiYiHunQing','0');
INSERT INTO `hh_fenlei_sort` VALUES ('80','7','写真/婚纱摄影','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XieZhen_HunShaSheYing','0');
INSERT INTO `hh_fenlei_sort` VALUES ('81','7','美容美体','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','MeiRongMeiTi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('82','7','养生保健','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','YangShengBaoJian','0');
INSERT INTO `hh_fenlei_sort` VALUES ('83','7','旅游','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','LvYou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('84','7','订票/特价机票','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DingPiao_TeJiaJiPiao','0');
INSERT INTO `hh_fenlei_sort` VALUES ('85','7','送水/送气','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','SongShui_SongQi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('86','7','陪练','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','PeiLian','0');
INSERT INTO `hh_fenlei_sort` VALUES ('87','4','市场/营销','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ShiChang_YingXiao','0');
INSERT INTO `hh_fenlei_sort` VALUES ('88','4','求兼职','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiuJianZhi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('89','4','文秘/文员','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','WenMi_WenYuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('90','4','技工/一般工人','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiGong_YiBanGongRen','0');
INSERT INTO `hh_fenlei_sort` VALUES ('91','4','电脑/网络相关','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DianNao_WangLuoXiangGuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('92','4','旅游/酒店餐饮','4','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','LvYou_JiuDianCanYin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('93','4','设计/策划','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','SheJi_CeHua','0');
INSERT INTO `hh_fenlei_sort` VALUES ('94','4','行政/助理','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XingZheng_ZhuLi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('95','4','金融/财会/出纳','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JinRong_CaiHui_ChuNa','0');
INSERT INTO `hh_fenlei_sort` VALUES ('96','4','经营管理','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JingYingGuanLi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('97','4','保健/美容美发','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','BaoJian_MeiRongMeiFa','0');
INSERT INTO `hh_fenlei_sort` VALUES ('98','4','音乐/表演/主持','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','YinLe_BiaoYan_ZhuChi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('99','4','电子/机械/工程','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DianZi_JiXie_GongCheng','0');
INSERT INTO `hh_fenlei_sort` VALUES ('100','4','写作/翻译','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XieZuo_FanYi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('101','4','政府/事业单位','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZhengFu_ShiYeDanWei','0');
INSERT INTO `hh_fenlei_sort` VALUES ('102','4','其他职位','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiTaZhiWei','0');
INSERT INTO `hh_fenlei_sort` VALUES ('103','8','快递','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','KuaiDi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('104','8','设计/网站建设','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','SheJi_WangZhanJianShe','0');
INSERT INTO `hh_fenlei_sort` VALUES ('105','8','印刷','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','YinShua','0');
INSERT INTO `hh_fenlei_sort` VALUES ('106','8','喷绘招牌','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','PenHuiZhaoPai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('107','8','招商加盟','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZhaoShangJiaMeng','0');
INSERT INTO `hh_fenlei_sort` VALUES ('108','8','公司注册/年检','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','GongSiZhuCe_NianJian','0');
INSERT INTO `hh_fenlei_sort` VALUES ('109','8','会计/审计/评估','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','HuiJi_ShenJi_PingGu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('110','8','金融/担保贷款','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JinRong_DanBaoDaiKuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('111','8','律师','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','LvShi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('112','8','清欠/商务调查','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QingQian_ShangWuDiaoCha','0');
INSERT INTO `hh_fenlei_sort` VALUES ('113','8','翻译','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','FanYi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('114','8','快餐外卖','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','KuaiCanWaiMai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('116','8','物流/货运','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','WuLiu_HuoYun','0');
INSERT INTO `hh_fenlei_sort` VALUES ('117','8','其它','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiTa117','0');
INSERT INTO `hh_fenlei_sort` VALUES ('118','10','家教','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiaJiao','0');
INSERT INTO `hh_fenlei_sort` VALUES ('119','10','外语培训','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','WaiYuPeiXun','0');
INSERT INTO `hh_fenlei_sort` VALUES ('120','10','职业培训','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZhiYePeiXun','0');
INSERT INTO `hh_fenlei_sort` VALUES ('121','10','继续教育','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiXuJiaoYu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('122','10','文艺/体育','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','WenYi_TiYu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('123','10','留学/移民','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','LiuXue_YiMin','0');
INSERT INTO `hh_fenlei_sort` VALUES ('124','10','电脑/网络','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DianNao_WangLuo','0');
INSERT INTO `hh_fenlei_sort` VALUES ('125','10','中小学教育','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZhongXiaoXueJiaoYu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('126','10','考研/公务员','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','KaoYan_GongWuYuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('127','10','其他','2','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','QiTa127','0');
INSERT INTO `hh_fenlei_sort` VALUES ('128','5','找女友','5','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','ZhaoNvYou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('129','5','找男友','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZhaoNanYou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('130','5','男士征婚','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','NanShiZhengHun','0');
INSERT INTO `hh_fenlei_sort` VALUES ('131','5','女士征婚','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','NvShiZhengHun','0');
INSERT INTO `hh_fenlei_sort` VALUES ('132','5','同乡会','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','TongXiangHui','0');
INSERT INTO `hh_fenlei_sort` VALUES ('133','5','兴趣交友','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XingQuJiaoYou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('134','5','真情告白/祝福','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZhenQingGaoBai_ZhuFu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('135','5','寻人寻友','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XunRenXunYou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('136','5','技能交换','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiNengJiaoHuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('137','5','其他','5','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiTa137','0');
INSERT INTO `hh_fenlei_sort` VALUES ('138','6','活动召集','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','HuoDongZhaoJi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('139','6','团购/打折','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','TuanGou_DaZhe','0');
INSERT INTO `hh_fenlei_sort` VALUES ('140','6','结伴出游','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JieBanChuYou','0');
INSERT INTO `hh_fenlei_sort` VALUES ('141','6','相约运动','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XiangYueYunDong','0');
INSERT INTO `hh_fenlei_sort` VALUES ('142','6','公益活动/志愿者','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','GongYiHuoDong_ZhiYuanZhe','0');
INSERT INTO `hh_fenlei_sort` VALUES ('143','6','讲座/研讨会/招聘会','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiangZuo_YanTaoHui_ZhaoPinHui','0');
INSERT INTO `hh_fenlei_sort` VALUES ('144','6','演出/展览','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','YanChu_ZhanLan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('145','6','其他','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiTa','0');
INSERT INTO `hh_fenlei_sort` VALUES ('150','0','餐饮美食','13','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','CanYinMeiShi','0');
INSERT INTO `hh_fenlei_sort` VALUES ('158','150','家常菜','13','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiaChangCai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('159','150','茶馆','13','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ChaGuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('160','150','咖啡馆','13','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','KaFeiGuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('161','150','自助餐','13','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','ZiZhuCan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('162','150','快餐','13','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','KuaiCan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('163','150','湘菜','13','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XiangCai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('164','150','日韩菜','13','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','RiHanCai','0');
INSERT INTO `hh_fenlei_sort` VALUES ('165','0','休闲娱乐','14','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XiuXianYuLe','0');
INSERT INTO `hh_fenlei_sort` VALUES ('166','165','酒吧','14','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','JiuBa','0');
INSERT INTO `hh_fenlei_sort` VALUES ('167','165','KTV','14','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','KTV','0');
INSERT INTO `hh_fenlei_sort` VALUES ('168','165','美容美发','14','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','MeiRongMeiFa','0');
INSERT INTO `hh_fenlei_sort` VALUES ('169','165','洗浴','14','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','XiYu','0');
INSERT INTO `hh_fenlei_sort` VALUES ('170','165','电影院','14','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','DianYingYuan','0');
INSERT INTO `hh_fenlei_sort` VALUES ('171','165','按摩','14','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','AnMo','0');
INSERT INTO `hh_fenlei_sort` VALUES ('172','165','棋牌室','14','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','QiPaiShi','0');
INSERT INTO `hh_form_config` VALUES ('module_id','21','');
INSERT INTO `hh_form_config` VALUES ('module_pre','form_','');
INSERT INTO `hh_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_form_config` VALUES ('Info_webname','万能表单','');
INSERT INTO `hh_form_content` VALUES ('27','','3','1','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `hh_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `hh_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `hh_form_content_3` VALUES ('18','1','售后客服','','222223','54325@qq.com','133444444443');
INSERT INTO `hh_form_content_3` VALUES ('25','1','售后客服','hhhhhhhhhhhhhhhhhh','222223','54325@qq.com','13377777777');
INSERT INTO `hh_form_content_3` VALUES ('27','1','售后客服','192.168.0.99/55 all righ\nts reserved \n京ICP备05047353号 \nPowered by 齐博CMS','222223','54325@qq.com','13377777777');
INSERT INTO `hh_form_module` VALUES ('1','版主申请','0','','a:3:{s:8:\"field_db\";a:8:{s:8:\"sortname\";a:14:{s:5:\"title\";s:18:\"申请哪个栏目的版主\";s:10:\"field_name\";s:8:\"sortname\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:8:\"checkbox\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:38:\"新闻频道\r\n下载频道\r\n图片频道\r\n视频频道\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:2:\"11\";s:9:\"allowview\";N;}s:7:\"webtime\";a:15:{s:5:\"title\";s:16:\"每天上网几个小时\";s:10:\"field_name\";s:7:\"webtime\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"4\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:4:\"小时\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"真实姓名\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"7\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"9\";s:9:\"allowview\";N;}s:3:\"sex\";a:15:{s:5:\"title\";s:4:\"性别\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|男\r\n2|女\r\n0|保密\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"联系QQ\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:8:\"手机号码\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:8:\"interest\";a:14:{s:5:\"title\";s:8:\"兴趣爱好\";s:10:\"field_name\";s:8:\"interest\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:9:\"introduce\";a:14:{s:5:\"title\";s:8:\"自我介绍\";s:10:\"field_name\";s:9:\"introduce\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:4;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"内容\";}s:11:\"listshow_db\";a:2:{s:8:\"truename\";s:8:\"真实姓名\";s:3:\"sex\";s:4:\"性别\";}}','3,4,8,9','0','<p><strong>如果你有激情,有梦想,就来申请做我们的版主吧!</strong></p>','0','0','审批','');
INSERT INTO `hh_form_module` VALUES ('3','投诉建议','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:15:{s:5:\"title\";s:8:\"投诉类型\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"售前客服\r\n售后客服\r\n产品质量\r\n其它\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"你的电话\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"你的邮箱\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:15:{s:5:\"title\";s:8:\"投诉内容\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"你的称呼\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:8:\"投诉类型\";s:8:\"truename\";s:8:\"你的称呼\";}}','','0','','0','1','处理','3,4');
INSERT INTO `hh_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `hh_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `hh_friendlink` VALUES ('12','PHPWIND官方论坛','http://www.phpwind.net/','http://www.phpwind.net/logo.gif','PHPWIND官方论坛','32','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('5','齐博CMS','http://www.qibosoft.com','../images/default/friendlink.gif','国内著名的CMS建站系统提供商!!','40','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('13','中国站长站','http://www.chinazhan.net/','','中国站长站','0','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('16','群英网络','http://www.qy.com.cn/','','','0','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('17','动网论坛','http://www.dvbbs.net/','','动网论坛','0','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('18','web开发网','http://www.cncms.com.cn/','','','25','1','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('19','中国站长导航','http://www.hao168.cc/','','','0','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('25','站长网','http://www.admin5.com/','friendlink/1_20090418160400_wqpAk.gif','站长网','37','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('26','中国站长站','http://www.chinaz.com/','friendlink/1_20090418160432_JNCry.gif','中国站长站','38','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('27','WEB开发网','http://www.cncms.com.cn/','friendlink/1_20090418160451_64IKO.gif','WEB开发网','34','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('29','中电云集','http://www.chinaccnet.com/','','中电云集','9','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('32','快车下载','http://union.flashget.com/','','快车下载','0','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('34','CNZZ','http://www.cnzz.cn/','','CNZZ','8','0','0','0','0','0','','1','0','0');
INSERT INTO `hh_friendlink` VALUES ('35','华夏名网','http://www.sudu.cn/','','','10','0','0','0','1293588992','0','','1','0','0');
INSERT INTO `hh_friendlink_sort` VALUES ('2','友情链接','0');
INSERT INTO `hh_friendlink_sort` VALUES ('3','合作伙伴','0');
INSERT INTO `hh_gift_config` VALUES ('Info_webname','礼品兑换','');
INSERT INTO `hh_gift_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_gift_config` VALUES ('module_close','0','');
INSERT INTO `hh_gift_config` VALUES ('module_pre','gift_','');
INSERT INTO `hh_gift_config` VALUES ('module_id','26','');
INSERT INTO `hh_gift_content` VALUES ('21','诺基亚 N86 8MP','1','1','家居用品','17','0','1276250288','1276250288','1','admin','','http://img01.taobaocdn.com/bao/uploaded/i5/T1CPXFXnFdXXX4x0bX_084541.jpg_310x310.jpg','1','1','1','1284360835','','127.0.0.1','0','4000','0','0','1289961626','0');
INSERT INTO `hh_gift_content` VALUES ('22','爱国者数码相框 DPF801D','1','1','家居用品','11','0','1276250366','1276250366','1','admin','','http://img02.taobaocdn.com/bao/uploaded/i2/T1epVOXeRtXXck5mDa_092301.jpg_310x310.jpg','1','1','1','1284360835','','127.0.0.1','0','3000','0','0','1292982025','0');
INSERT INTO `hh_gift_content` VALUES ('23','金士頓 DataTraveler G2(4G)','1','1','家居用品','8','0','1276250386','1276250386','1','admin','','http://img04.taobaocdn.com/bao/uploaded/i8/T1sQJyXd0wXXX6HXPX_113821.jpg_310x310.jpg','1','1','1','1277108878','','127.0.0.1','0','3000','0','0','1288758851','0');
INSERT INTO `hh_gift_content` VALUES ('24','尼康 D90(配18-105mm镜头)','1','1','家居用品','86','0','1276250401','1276250401','1','admin','','http://img03.taobaocdn.com/bao/uploaded/i7/T1NaBpXm4aXXb1upjX.jpg_310x310.jpg','1','1','1','1277108877','','127.0.0.1','0','4000','0','0','1303003209','0');
INSERT INTO `hh_gift_content` VALUES ('25','索尼 VPCEA25EC','1','1','家居用品','18','0','1276250421','1276250421','1','admin','','http://img01.taobaocdn.com/bao/uploaded/i5/T18f4IXjpKXXXXNp.U_013525.jpg_310x310.jpg','1','1','1','1277108877','','127.0.0.1','0','3000','0','0','1288758659','0');
INSERT INTO `hh_gift_content` VALUES ('26','苹果 iPhone 4(16GB)','1','1','家居用品','43','0','1276420607','1276420607','1','admin','','http://img03.taobaocdn.com/bao/uploaded/i3/T1ycVNXeNwXXbBkzgW_023847.jpg_310x310.jpg','1','1','1','1277108876','','127.0.0.1','0','20000','0','0','1288758542','0');
INSERT INTO `hh_gift_content` VALUES ('32','洋基NY,弹力网,棒球帽 网帽面料全封春秋款','1','4','服装配饰','2','0','1288759310','1288759310','1','admin','','http://img02.taobaocdn.com/bao/uploaded/i6/T1xfpCXnXdXXbyndEV_020212.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','600','0','0','1294649570','0');
INSERT INTO `hh_gift_content` VALUES ('33','韩版手袋粉嫩公主名媛淑女仿羊皮皮通勤包手提单肩包 0216粉色','1','1','家居用品','3','0','1288759492','1288759492','1','admin','','http://img02.taobaocdn.com/bao/uploaded/i2/T13ihAXcpbXXbahV.Z_030956.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','600','0','0','1290485475','0');
INSERT INTO `hh_gift_content` VALUES ('34','威登保罗正品 男 2010新 男包 牛皮 单肩包 男士包 真皮包 包包','1','1','家居用品','1','0','1288759658','1288759658','1','admin','','http://img03.taobaocdn.com/bao/uploaded/i3/T1vyBPXcBkXXcS.5.4_053414.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','400','0','0','1288759660','0');
INSERT INTO `hh_gift_content` VALUES ('35','名好记 嗨e点海苔饼干 名好记海苔饼干 整箱9.5斤','1','2','餐饮休闲','2','0','1288759797','1288759797','1','admin','','http://img04.taobaocdn.com/imgextra/i8/T1bQpFXhxyXXb.H8w._113255.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','30','0','0','1292920804','0');
INSERT INTO `hh_gift_content` VALUES ('36','韩版秋冬新款三色全棉长袖蕾丝高领打底衫T恤','1','3','文化体育','1','0','1288759968','1288759968','1','admin','','http://img02.taobaocdn.com/imgextra/i6/T1_eFFXoFxXXc.6lg3_051036.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','600','0','0','1288759970','0');
INSERT INTO `hh_gift_content` VALUES ('37','蓝色激光标签CASIO卡西欧钢带男手表EF-316D-1A','1','3','文化体育','1','0','1288760072','1288760072','1','admin','','http://img02.taobaocdn.com/imgextra/i6/T1EAXFXnpfXXc8DakZ_031305.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','800','0','0','1288760074','0');
INSERT INTO `hh_gift_content` VALUES ('38','原装德国LAMY safari凌美 狩猎者系列钢笔10新款白色','1','3','文化体育','7','0','1288760178','1288760178','1','admin','','http://img01.taobaocdn.com/bao/uploaded/i1/T1PEXJXodhXXa7s9gT_012730.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','900','0','0','1293506209','0');
INSERT INTO `hh_gift_content` VALUES ('39','索尼CX150E 高清摄像机 内置16G内存/25X/420万像素 三年保','1','1','家居用品','1','0','1288760299','1288760299','1','admin','','http://img04.taobaocdn.com/bao/uploaded/i4/T1ih8OXddCXXbIgFZY_025314.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','9000','0','0','1288760300','0');
INSERT INTO `hh_gift_content` VALUES ('40','诺亚舟电子词典学习机NP360+全新现货配件齐全','1','3','文化体育','2','0','1288760477','1288760477','1','admin','','http://img03.taobaocdn.com/bao/uploaded/i3/T1dnlEXfJXXXcXEXA._081139.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','600','0','0','1298948067','0');
INSERT INTO `hh_gift_content_1` VALUES ('5','21','1','1','<em>上市时间：</em><em>2009年</em> <li>手机制式：</li>GSM,WCDMA <li>手机外形：</li>滑盖 <li>主屏尺寸：</li>2.6英寸 <li>主屏参数：</li>240×320像素(QVGA) <li>系统：</li>Symbian 9.3,Series 60第3版 <li>GPS定位系统：</li>支持GPS,支持A-GPS网络辅助导航功能,诺基亚地图 <li>摄像头像素：</li><p>800万像素</p>\r\n<p><font size=\"4\"> </font></p>\r\n<div align=\"center\"><font size=\"4\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img02.taobaocdn.com/imgextra/i2/272720344/T2VS0oXeJXXXXXXXXX_!!272720344.jpg\" width=\"500\" height=\"700\" border=\"1\" /></font></div>\r\n<p align=\"center\"><font color=\"#339966\" size=\"4\"><strong></strong></font><p align=\"center\"><font size=\"4\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img02.taobaocdn.com/imgextra/i2/272720344/T2_m0oXdBXXXXXXXXX_!!272720344.jpg\" width=\"500\" height=\"375\" /></font></p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img01.taobaocdn.com/imgextra/i1/272720344/T2P94oXaFXXXXXXXXX_!!272720344.jpg\" width=\"545\" height=\"375\" /></p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/272720344/T2tC4oXb4XXXXXXXXX_!!272720344.jpg\" width=\"500\" height=\"375\" /></p>\r\n<div align=\"center\"><strong><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/272720344/T2xCFoXjFaXXXXXXXX_!!272720344.jpg\" width=\"500\" height=\"375\" /></strong></div>\r\n<div align=\"center\">&nbsp;</div>\r\n<div align=\"center\"><strong><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img01.taobaocdn.com/imgextra/i1/272720344/T24S4oXX0XXXXXXXXX_!!272720344.jpg\" width=\"500\" height=\"375\" /></strong></div>\r\n<div align=\"center\">&nbsp;</div>\r\n<div align=\"center\"><strong><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img01.taobaocdn.com/imgextra/i1/272720344/T2CStoXgdbXXXXXXXX_!!272720344.jpg\" width=\"500\" height=\"375\" /></strong></div>\r\n<div align=\"center\">&nbsp;</div>\r\n<div align=\"center\"><strong><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img02.taobaocdn.com/imgextra/i2/272720344/T2mmBoXoBaXXXXXXXX_!!272720344.jpg\" width=\"500\" height=\"375\" /></strong></div>\r\n<div align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img03.taobaocdn.com/imgextra/i3/272720344/T2R9toXfXbXXXXXXXX_!!272720344.jpg\" width=\"500\" height=\"375\" /></div>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img02.taobaocdn.com/imgextra/i2/272720344/T25StoXeXbXXXXXXXX_!!272720344.jpg\" width=\"499\" height=\"333\" /></p>\r\n</p>\r\n','4000','56');
INSERT INTO `hh_gift_content_1` VALUES ('6','22','1','1','<p><font size=\"2\">1.8英寸4:3数字液晶屏，分辨率800*600<br />\r\n2.最大支持3000万像素数码照片<br />\r\n3.多种图片切换播放效果<br />\r\n4.图片具有幻灯片自动播放功能，并可后台同时播放音乐<br />\r\n5.图片具有缩放/选装/显示比例设置/播放速度设定/屏幕亮度随意调节/功能<br />\r\n6.支持多任务功能，支持背景MP3播放<br />\r\n7.支持常规电影格式播放支持MJEG, MPEG2, AVI等影片播放<br />\r\n8.支持TXT电子书浏览功能，可设置自动滚屏速度，随意选择文字颜色，随时更换背景音乐<br />\r\n9.时钟，电子台历，闹钟功能<br />\r\n10.内置企业定制功能，轻松定制企业战士及广告内容，特别适合赠送亲朋好友，企业赠送<br />\r\n11.我的收藏功能，随时存放自己喜爱的图片<br />\r\n12.中英文人性化简单操作菜单<br />\r\n13.支持SD/MMC/SDHC等主流存储卡<br />\r\n14.U盘直插功能<br />\r\n15.内置高音质专用外放<br />\r\n16.支持WIN2000、WINXP 系统<br />\r\n17.高速USB2.0<br />\r\n18.支持固件升级<br />\r\n19.馈赠佳品，时尚新潮<br />\r\n馈赠亲友，企业送礼。大方实用，时尚新潮，不愧是为你量身定做的绝佳礼品。<br />\r\n20.商业展示，新颖独特<br />\r\n一改传统商业展示模式，全程动态商品展示，MP3背景音频播放，MP4视频演示。<br />\r\n生动新颖，全新的视觉冲击和感官体验，带来无限商机。<br />\r\n21.家居装饰，尊贵典雅<br />\r\n新颖独特的展示方式，丰富多彩的浏览模式，时尚家居不可缺少的典雅饰品<br />\r\n22.办公空间，休闲中心<br />\r\n工作之余浏览昔日远行点滴，欣赏优美动听的音乐，有效缓解工作压力。<br />\r\n23.分享快乐，展示成功<br />\r\n将数码相框放在书桌案头，与亲朋好友共同分享过往欢乐的时光。<br />\r\n长年奔波在外的儿女，向父母展示在外工作生活的情况，浪漫温馨亲情体验。</font></p>\r\n<div>&nbsp;</div>\r\n','320','32');
INSERT INTO `hh_gift_content_1` VALUES ('7','23','1','1','<p>正品 金士顿 DataTraveler C10 4GB U盘</p>\r\n<p>新推出的 金士顿&reg; DataTraveler c10 闪存盘有四种缤纷的色彩可供选择，并采用全尺寸的帽盖设计，以保护 USB 插头。</p>\r\n<p>不论居家、办公或在学校中，全新的数据存储伙伴能让您走到哪里，用到哪里。这款新推出的闪存盘不仅价格实惠、性能卓越，容量更高可达32GB，让您可轻松地存储最爱的相片、音乐、文档等数据。依容量大小共提供四种不同色彩，让您轻松将数据带着走！</p>\r\n<p>DataTraveler c10拥有五年保固以及金士顿可靠的质量保证。</p>\r\n<p>金士顿 DataTraveler c10料号：<br />\r\n<br />\r\nDTC10/4GB, DTC10/8GB, DTC10/16GB, DTC10/32GB<br />\r\n<br />\r\n功能／规格： </p>\r\n<ul><li>容量*— 4GB、8GB、16GB、32GB </li><li>尺寸— 58.38mm×21.9mm×13.4mm </li><li>工作温度— 0°C～60°C </li><li>存储温度— -20°C～85°C </li><li>简单连接— 轻松插接至任何 USB 接口 </li><li>易于携带— 耐用的金属环设计，可栓挂在的钥匙圈上 </li><li>方便使用— 体积轻巧，容易携带 </li><li>质量保证— 五年保固 </li><li>时尚外型— 多种色彩选择： </li></ul>\r\n','100','32');
INSERT INTO `hh_gift_content_1` VALUES ('8','24','1','1','<p align=\"center\"><u><font color=\"#000000\"></font></u><p align=\"left\">　　从<font color=\"#000000\">尼康D3</font>、<font color=\"#000000\">D300</font>，到<font color=\"#000000\">D70</font>0，再到现在的尼康D90，尼康每次推出的中高端<font color=\"#000000\">数码单反</font>都给人耳目一新的感觉。虽然尼康D90还是维持与D3、D300、D700差不多的<font color=\"#000000\">1200万像素</font>的水平，整体硬件性能比较类似简化版的D300，但是尼康D90的高清视频短片拍摄功能却相当让人喜出望外。正当我们看着<font color=\"#000000\">佳能</font><font color=\"#000000\">50D</font>的参数表而觉得没什么新意的时候，看到尼康D90能拍短片，确实觉得相当振奋，不免对尼康D90抱有不少希望。</p>\r\n<p align=\"left\">　　但希望归希望，尼康D90的高清短片拍摄功能还是有不少弊端。1280*720p/24fps分辨率下单次拍摄最长限制5分钟，拍摄过程中不能自动调整白平衡，不能进行自动对焦，只有单声道录音，这些都是尼康D90在视频拍摄中还需要改进的地方。其中尤其以不能进行自动对焦这一点最为麻烦。试想一下使用变焦<font color=\"#000000\">镜头</font>拍摄的时候，一边变焦同时一边对焦的情况是多么的手忙脚乱。当然，先变焦然后再对焦也是可以的，但是速度就成了另外一个问题。</p>\r\n<p align=\"left\">　　如果希望尼康D90能有D300的画质水平，我觉得尼康D90还是值得去期待的。初步查看实拍<font color=\"#000000\">样张</font>的画质，高ISO的质量确实不错，画面细节方面也达到一定的高水平。由于还没有合适的软件处理尼康D90的RAW文件，本次尼康D90评测所拍摄的样张，全部采用尼康D90机身内置的RAW处理功能转换成JPG格式。与机身直出的JPG文件相比，画面细节是有一定提升的，相信在电脑上转换RAW文件会有更好的表现，这在尼康D90深入评测中会继续研究。</p>\r\n<p align=\"left\"><span><span><span><span> <p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_450x337/849/ceEE66WB83ZHA.jpg\" width=\"500\" height=\"375\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/850/ce2fNT2xfnvE.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/851/ce6dOvB4nDSbw.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90</p>\r\n<p align=\"center\"><br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/857/cehO9WlC1hc2Q.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/858/ceXYPW59dIGZQ.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90 相机右肩区域</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/859/ceMxoXsfYJeHo.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/860/ceOEzKCwVjyIA.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90 模式拨轮与屈光度调节拨轮</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/862/ceNFbUVc4z6pM.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/861/ceshF7WvtVE6.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90 机顶热靴</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/863/ceVlkyYHwmlLA.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/864/ceCP4HhvhL4DM.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /></p>\r\n</span></span></span></span></p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_450x337/849/ceEE66WB83ZHA.jpg\" width=\"500\" height=\"375\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/850/ce2fNT2xfnvE.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/851/ce6dOvB4nDSbw.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90</p>\r\n<p align=\"center\"><br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/857/cehO9WlC1hc2Q.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/858/ceXYPW59dIGZQ.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90 相机右肩区域</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/859/ceMxoXsfYJeHo.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/860/ceOEzKCwVjyIA.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90 模式拨轮与屈光度调节拨轮</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/862/ceNFbUVc4z6pM.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/861/ceshF7WvtVE6.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><br />\r\n尼康D90 机顶热靴</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/863/ceVlkyYHwmlLA.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/22_240x180/864/ceCP4HhvhL4DM.jpg\" width=\"240\" height=\"180\" alt=\"支持高清视频 中端之选尼康D90全国首测（未完）\" title=\"支持高清视频 中端之选尼康D90全国首测（未完）\" /></p>\r\n</p>\r\n','6700','213');
INSERT INTO `hh_gift_content_1` VALUES ('9','25','1','1','<em>上市时间：</em><a href=\"http://product.pconline.com.cn/notebook/c7707/\" target=\"_blank\"><em>2010年 6月</em></a> <li>处理器：</li>Intel Pentium P6000(1.86GHz) <li>内存容量：</li><a href=\"http://product.pconline.com.cn/so/s26143/\" target=\"_blank\">2GB</a> <li>硬盘容量：</li><a href=\"http://product.pconline.com.cn/so/s34146/\" target=\"_blank\">320GB</a> <li>屏幕尺寸：</li><a href=\"http://product.pconline.com.cn/notebook/c1116/\" target=\"_blank\">14英寸</a> <li>显卡芯片：</li><a href=\"http://product.pconline.com.cn/so/s47401/\" target=\"_blank\">ATI Mobility Radeon HD 5145</a> <li>重量：</li><p><a href=\"http://product.pconline.com.cn/notebook/c3336/\" target=\"_blank\">约2.35Kg</a></p>\r\n<p><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img.taobaocdn.com/imgextra/i7/196070357/T2AaXjXm0bXXXXXXXX_!!196070357.png\" width=\"638\" height=\"443\" /></p>\r\n<p><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img.taobaocdn.com/imgextra/i8/196070357/T2zatjXdpaXXXXXXXX_!!196070357.png\" width=\"630\" height=\"437\" /></p>\r\n<p><font color=\"#ff0000\"><font size=\"4\"><font color=\"#0000ff\"><strong><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img.taobaocdn.com/imgextra/i4/196070357/T2np8jXcVcXXXXXXXX_!!196070357.png\" width=\"636\" height=\"450\" /></strong></font></font></font></p>\r\n<p><font color=\"#ff0000\"><font size=\"4\"><font color=\"#0000ff\"><strong><font color=\"#ff0000\" style=\"background-color:#ffff00;\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img.taobaocdn.com/imgextra/i3/196070357/T22p0jXjRcXXXXXXXX_!!196070357.png\" width=\"640\" height=\"431\" /></font></strong></font></font></font></p>\r\n','7900','123');
INSERT INTO `hh_gift_content_1` VALUES ('10','26','1','1','<p align=\"center\"><font size=\"3\">iphone4高品质苹果专用品牌配件 保护你的爱机</font></p>\r\n<p align=\"center\"><font size=\"3\">（恒丰承诺我们只选优质的带盒装的正品品牌配件）</font></p>\r\n<h2 style=\"font-size:22px;\"><font size=\"3\">iphone4大陆行货2种版本16GB，32GB。欢迎各位订购 欢迎各位咨询购买。</font></h2><p align=\"center\" style=\"font-size:22px;\"><font size=\"3\">现在购买iPhone4都是最新版本4.1，已经能越狱的，iPhone4新机是没有什么玩的软件，我们公司提供正版iPhone4专用软件，是花了3000美金购买的，给安装是要收费的，收取200元软件费用，可以包3年，也可以提供破解技术。（但是凡在本店购买任意一款iPhone4套餐，都可以免费安装价值1000美金的软件或者免费破解）<br />\r\n<br />\r\n此款手机使用的是迷你SIM卡，SIM需要使用剪卡器剪小之后才能插入手机。本店提供剪卡器（80元）,凡是购买套餐即赠送剪卡器<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img02.taobaocdn.com/imgextra/i2/T1kAlJXgVIXXbzmloT_012618.jpg_310x310.jpg\" width=\"192\" height=\"175\" style=\"width:192px;height:175px;\" /><br />\r\n<br />\r\n现货出售，预购从速！<br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/330770771/T2GXhqXetbXXXXXXXX_!!330770771.jpg\" width=\"675\" height=\"450\" /><br />\r\n<br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img03.taobaocdn.com/imgextra/i3/330770771/T2TppqXmtaXXXXXXXX_!!330770771.jpg\" width=\"675\" height=\"450\" /><br />\r\n<br />\r\n官方标配：iphone4 32G + 数据线 + 充电器 + 耳机 +&nbsp;使用手册 + 取卡针（全新未开封大陆行货）<br />\r\n</font></p>\r\n','3900','886');
INSERT INTO `hh_gift_content_1` VALUES ('11','27','1','1','2222222222','222','122');
INSERT INTO `hh_gift_content_1` VALUES ('17','32','4','1','<p>高级弹力网专用布料，弹力网孔超级透气，帽子板正有型，帽子的尺码：56-59厘米，帽深12厘米 ，请您一定要确认好头围再行购买！具体帽围的测量方法请参考下图。</p>\r\n<p>水洗与弹力网的区别：</p>\r\n<p>水洗的意思是可以直接水洗，而不是干洗或其它的洗涤方法，因为手感好，戴着又舒服，所以这也是检验帽子的好坏标准之一，对于一般棉布布料手感硬的帽子，或型状很板正的，有的是不能水洗的，因为帽子的材料可能会有桃胶、SN胶等定型胶，一洗的话就会严重变形，甚至损坏！弹力网的手感略硬，帽样更有型，因为是弹力网眼布，所以透气性更好，最好不要水洗<br />\r\n</p>\r\n<p><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img03.taobaocdn.com/imgextra/i3/54917771/T2u1RhXcFdXXXXXXXX_!!54917771.jpg\" width=\"700\" height=\"525\" /></p>\r\n','20','300');
INSERT INTO `hh_gift_content_1` VALUES ('18','33','1','1','<p>&nbsp;</p>\r\n<p align=\"left\">【品名】&nbsp;&nbsp;~韓風名媛優雅通勤款质感PU内有隔层多兜两用款女包</p>\r\n<div align=\"left\">【颜色】 黑色、粉色、棕色、黄色、黄色</div>\r\n<div align=\"left\">&nbsp;</div>\r\n<div align=\"left\">【款式】&nbsp;&nbsp; 手提 /&nbsp;单肩&nbsp;</div>\r\n<div align=\"left\">&nbsp;</div>\r\n<div align=\"left\">【质地】&nbsp; PU</div>\r\n<p align=\"left\">【重量】&nbsp; 0.75公斤</p>\r\n<p align=\"left\">【结构】 包包主袋搭扣封口，包内有一隔层拉链袋，一小隔层拉链袋一贴壁拉链袋，一手机袋及一零钱袋，包后有一贴壁拉链袋，包包前部有两个兜盖吸扣袋，包包两侧各有一贴壁袋。</p>\r\n<p align=\"left\">【规格】 包包从左到右上口宽为34厘米，从左到右底部宽36厘米，从上到下不含手提高28厘米，包包手提高19厘米，包底厚11.5厘米.</p>\r\n<p><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/268869723/T23w0mXXNaXXXXXXXX_!!268869723.jpg\" width=\"567\" height=\"377\" /><br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/268869723/T2KM8mXh8XXXXXXXXX_!!268869723.jpg\" width=\"702\" height=\"381\" /><br />\r\n<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/268869723/T2xNdmXaxXXXXXXXXX_!!268869723.jpg\" width=\"463\" height=\"588\" /></p>\r\n','200','300');
INSERT INTO `hh_gift_content_1` VALUES ('19','34','1','1','<li>品牌: Videng Polo/威登保罗</li><li>货号: lrbest001</li><li>性别: 男</li><li>款式: 肩包</li><li>背包方式: 单肩斜挎</li><li>背包部位: 肩部</li><li>质地: 牛皮</li><li>皮质特征: 软面皮</li><li>肩带根数: 单根</li><li>提拎部件: 软把</li><li>箱包开袋方式: 拉链搭扣</li><li>内部结构: 夹层拉链袋&nbsp;证件袋...</li><li>外袋种类: 内贴袋</li><li>箱包流行元素: 车缝线</li><li>风格: 日韩风范</li><li>箱包外形: 竖款方形</li><li>箱包图案: 纯色无图案</li><li>颜色分类: 黑色加强版：23*27*......</li><li>有无夹层: 有</li><li>硬度: 软</li><li>有无拉杆: 无</li><li>可否折叠: 否</li><li>有无手腕带: 无</li><li>成色: 全新</li><li>价格区间: 101-500元<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/282272281/T2rhXrXexaXXXXXXXX_!!282272281.jpg\" width=\"750\" height=\"300\" border=\"0\" /></li>','100','200');
INSERT INTO `hh_gift_content_1` VALUES ('20','35','2','1','<p>箱子上面有原厂的胶带纸封装。不会去拆箱也就谈不上缺斤少两了。这个饼干整箱打开后，最上面一层是装不满的。</p>\r\n<p><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img02.taobaocdn.com/imgextra/i6/387793574/T2fIFcXatXXXXXXXXX_!!387793574.jpg_310x310.jpg\" width=\"219\" height=\"220\" border=\"0\" /></p>\r\n','8','30');
INSERT INTO `hh_gift_content_1` VALUES ('21','36','3','1','<li>货号: 6324<img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img01.taobaocdn.com/imgextra/i1/144668369/T2GmFnXhdaXXXXXXXX_!!144668369.jpg_310x310.jpg\" width=\"310\" height=\"207\" border=\"0\" /></li><li>袖长: 长袖</li><li>领子: 立领</li><li>图案: 纯色</li><li>风格: 韩版</li><li>质地: 纯棉</li><li>适合人群: 少女</li><li>颜色分类: 白色现货&nbsp;黑色现货...</li><li>尺码: 均码</li><li>季节: 夏季&nbsp;冬季&nbsp;秋季...</li><li>图片实拍: 平铺实拍...</li><li>细节图: 有细节图</li><li>价格: 0-30元 </li><p>&nbsp;</p>\r\n','60','90');
INSERT INTO `hh_gift_content_1` VALUES ('22','37','3','1','<p align=\"left\">目前本款所有正品均具有蓝色防伪标签，如果没有的话极有可能是仿品！请各位买家一定留意！！！</p>\r\n<p align=\"left\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img03.taobaocdn.com/imgextra/i3/96601411/T2WfJnXjBXXXXXXXXX_!!96601411.jpg\" width=\"750\" height=\"415\" border=\"0\" /></p>\r\n','600','800');
INSERT INTO `hh_gift_content_1` VALUES ('23','38','3','1','<p>产品描述：<br />\r\n˙LAMY safari 10新款白色 钢笔<br />\r\n˙强化塑胶材质精緻笔身<br />\r\n˙镀黑铜圈笔夹<br />\r\n˙独特的人体工学叁角握环，书写顺畅流利。<br />\r\n˙产地：德国<br />\r\n</p>\r\n<p>&nbsp;</p>\r\n<span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\">◆ LAMY&nbsp; safari (狩猎系列)<br />\r\n˙充满年轻气息<br />\r\n˙ABS强化塑胶笔杆，笔身前端设计独特，配弹性铜线笔夹，让您书写流畅无比。此系列备有墨水笔、钢珠笔、原子笔及铅芯笔(笔头配有擦胶)。另备有蓝色、黄色、炭黑色及红色供选择。<br />\r\n˙1994年： LAMY safari狩猎系列 德国汉诺威iF设计大奖<br />\r\n˙2008年： LAMY safari狩猎系列 - 中國 IF 設計大獎</span><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"><br />\r\n<p>&nbsp;</p>\r\n</span></span></span><p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"></span></span><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"></span><p>&nbsp;</p>\r\n<p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"></span></span><p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\">现在您只需158元就能买到和国内专柜售价380元一样的配置：</span></span></p>\r\n<p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\">(1支钢笔+1支T10墨胆+1个LAMY盒子)+ Z24上墨器 现在四件套仅需158元！</span></span></p>\r\n<p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"></span></span><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"><p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\">详细请看评价中有无刮纸等评语^_^，相信大家不会为了几元钱买支刮纸的笔回去吧，如有需要，可免费调整各规格笔尖；</span></span></p>\r\n<p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\">现有规格：EF(特细:0.4mm),F(细:0.5mm),M(中：0.7mm),B(粗：0.9mm)，默认发EF；</span></span></p>\r\n<p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"></span></span></p>\r\n</span><span style=\"font-family:宋体;\"><span><p><span style=\"font-family:宋体;\"><span style=\"color:black;font-size:13.5pt;font-family:幼圆;\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/50642456/T2vp4mXetaXXXXXXXX_!!50642456.jpg_620x10000.jpg\" width=\"592\" height=\"674\" /></span></span></p>\r\n</span></span></span>','600','80');
INSERT INTO `hh_gift_content_1` VALUES ('24','39','1','1','时尚的机身加上还算合理的价格，再配上“索尼”的牌子，相信不少消费者都抵御不了这样的诱惑力，CX150E拥有多种机身颜色设计，可以满足不同消费者的购买需求，它内置16GB内存容量，同时支持外接存储卡。在存储方面也可以满足绝大部分一般消费者的拍摄需求。它拥有420万总像素“Exmor R”CMOS影像传感器，夜景方面表现超出同类产品表现。<p align=\"center\" style=\"text-align:center;\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/44/250/ceyF5Qggg6ZY.jpg\" width=\"500\" height=\"375\" border=\"0\" /></p>\r\n<p><br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 索尼数码摄像机CX150E<br />\r\n　　除了强大的影像处理器以外，CX150E还具备25倍光学变焦镜头，虽然不是最长的变焦摄像机产品，但一般拍摄已经完全够用。此外，为了方便入门级消费者使用，CX150E还具备智能自动拍摄模式，保证对摄像不是很懂行的消费者可以拍摄出满意的画面。</p>\r\n<p align=\"center\" style=\"text-align:center;\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img2.zol.com.cn/product/44/251/ceUcLEPzS0as.jpg\" width=\"500\" height=\"375\" border=\"0\" /></p>\r\n','900','500');
INSERT INTO `hh_gift_content_1` VALUES ('25','40','3','1','<p>八大创新功能：<br />\r\n<br />\r\n<br />\r\n128M海量内存内存升级至128M。<br />\r\n<br />\r\n专业MP3发音单词、课文、课件实现全MP3音质发音，清晰、悦耳。收录北京外国语大学语音界权威屠蓓老师的原声录音，发音纯正，让你轻松练就一口标准流利的英语。<br />\r\n<br />\r\n实时课堂录音可同步录制老师讲课，有助课后复习；可录自己发音，有助练就标准英语。<br />\r\n<br />\r\n及时跟读对比原音即时收录，并可即时播放，矫正语音方便轻松<br />\r\n<br />\r\n专享78部词典全版收录《朗文双解活用词典》、《现代汉语·双语》、《新英汉词典》三大权威词典，内置小学、初中、高中、四级 、六级、考研、托福、雅思、GRE、GMAT十大分级词典，并有五大常备词典和三大精选词典，还可下载55本专业词典，名符其实的“词典大全”。<br />\r\n<br />\r\n游戏高效背单词提供小学、初中、高中的单词学习和自建生词库等功能，“单词连线”、“ 翻牌成对”、“太空堡垒”、“星球大战”、“一目十行”等五大创新互动的游戏记忆场景，是记单词的好帮手。<br />\r\n<br />\r\nRPG智能游戏支持强大RPG游戏《天龙传说》、坦克大战，动感游戏，益智娱乐。<br />\r\n<br />\r\n幽默动漫短片可下载播放幽默有趣的动漫短片，并支持动漫邮件Nmail，享受动漫DIY的无限乐趣。</p>\r\n<p>&nbsp;</p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img04.taobaocdn.com/imgextra/i4/52843514/T26fBhXdFXXXXXXXXX_!!52843514.jpg\" width=\"675\" height=\"473\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img07.taobaocdn.com/imgextra/i7/52843514/T2dLdhXfxbXXXXXXXX_!!52843514.jpg\" width=\"677\" height=\"801\" style=\"width:677px;height:801px;\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img03.taobaocdn.com/imgextra/i3/52843514/T2U14hXcNcXXXXXXXX_!!52843514.jpg\" width=\"643\" height=\"586\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img08.taobaocdn.com/imgextra/i8/52843514/T2Je4hXd0cXXXXXXXX_!!52843514.jpg\" width=\"609\" height=\"589\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img02.taobaocdn.com/imgextra/i2/52843514/T2Iu4hXd8cXXXXXXXX_!!52843514.jpg\" width=\"751\" height=\"549\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img05.taobaocdn.com/imgextra/i5/52843514/T2hfFhXcXXXXXXXXXX_!!52843514.jpg\" width=\"770\" height=\"340\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img07.taobaocdn.com/imgextra/i7/52843514/T26fBhXdBXXXXXXXXX_!!52843514.jpg\" width=\"672\" height=\"611\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img06.taobaocdn.com/imgextra/i6/52843514/T2Ve0hXjFcXXXXXXXX_!!52843514.jpg\" width=\"547\" height=\"614\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img08.taobaocdn.com/imgextra/i8/52843514/T2Ou0hXkxcXXXXXXXX_!!52843514.jpg\" width=\"774\" height=\"358\" /></font></p>\r\n<p><font size=\"6\"><img onload=\'if(this.width>600)makesmallpic(this,600,800);\' src=\"http://img01.taobaocdn.com/imgextra/i1/52843514/T2WeJhXc8eXXXXXXXX_!!52843514.jpg\" width=\"807\" height=\"300\" /></font></p>\r\n','100','200');
INSERT INTO `hh_gift_content_2` VALUES ('4','6','1','1','gfds','gfsd','gfds','gfsd');
INSERT INTO `hh_gift_content_2` VALUES ('5','7','1','9','ruytr','yutr','uytr','uyt');
INSERT INTO `hh_gift_field` VALUES ('86','1','礼品介绍','content','mediumtext','0','1','ieedit','650','250','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_gift_field` VALUES ('142','1','库存量','giftnum','int','5','7','text','5','0','','','个','','0','0','0','0','','','','','31','');
INSERT INTO `hh_gift_field` VALUES ('78','1','市场价格','mart_price','varchar','8','9','text','12','0','','','元','','0','1','0','0','','','','','31','');
INSERT INTO `hh_gift_field` VALUES ('145','2','附注','content','mediumtext','0','-1','textarea','400','50','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_gift_field` VALUES ('147','2','联系人姓名','contact_name','varchar','20','10','text','100','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_gift_field` VALUES ('148','2','联系人电话','contact_phone','varchar','20','9','text','100','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_gift_field` VALUES ('149','2','收信地址','contact_address','varchar','100','8','text','200','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_gift_join` VALUES ('6','2','24','1','1276510964','1','admin','0','127.0.0.1');
INSERT INTO `hh_gift_join` VALUES ('7','2','24','1','1277376800','9','康佳','1','127.0.0.1');
INSERT INTO `hh_gift_module` VALUES ('1','0','礼品类','10','','a:1:{s:9:\"moduleSet\";N;}','','1','0','a:4:{s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:4:\"post\";s:0:\"\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_gift_module` VALUES ('2','0','表单类','0','','a:1:{s:9:\"moduleSet\";N;}','','0','0','a:4:{s:4:\"list\";s:12:\"joinlist.htm\";s:4:\"show\";s:12:\"joinshow.htm\";s:4:\"post\";s:8:\"join.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_gift_sort` VALUES ('1','0','家居用品','1','1','0','0','','1','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_gift_sort` VALUES ('2','0','餐饮休闲','1','1','0','0','','2','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:1:{s:11:\"field_value\";N;}','0','0','','canyinxiuxian','0');
INSERT INTO `hh_gift_sort` VALUES ('3','0','文化体育','1','1','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:1:{s:11:\"field_value\";N;}','0','0','','wenhuatiyu','0');
INSERT INTO `hh_gift_sort` VALUES ('4','0','服装配饰','1','1','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:1:{s:11:\"field_value\";N;}','0','0','','fuzhuangpeishi','0');
INSERT INTO `hh_gift_sort` VALUES ('5','0','数码影音','1','1','0','0','','0','0','','','','','N;','','20','','','','0','2','','','','0','','0','0','','','0');
INSERT INTO `hh_group` VALUES ('2','1','游客组','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `hh_group` VALUES ('3','1','超级管理员','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:133:{s:13:\"center_config\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:9:\"city_zone\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:12:\"company_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:14:\"moneycard_make\";s:1:\"1\";s:14:\"limitword_list\";s:1:\"1\";s:12:\"propagandize\";s:1:\"1\";s:11:\"jfadmin_mod\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:14:\"sell_telephone\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:8:\"adminmap\";s:1:\"1\";s:8:\"moneylog\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:10:\"labelstyle\";s:1:\"1\";s:26:\"Module_house_center_config\";s:1:\"1\";s:21:\"Module_house_autopass\";s:1:\"1\";s:25:\"Module_house_center_label\";s:1:\"1\";s:17:\"Module_house_list\";s:1:\"1\";s:20:\"Module_house_comment\";s:1:\"1\";s:19:\"Module_house_module\";s:1:\"1\";s:19:\"Module_house_report\";s:1:\"1\";s:20:\"Module_house_replace\";s:1:\"1\";s:25:\"Module_news_center_config\";s:1:\"1\";s:24:\"Module_news_center_label\";s:1:\"1\";s:21:\"Module_news_sort_post\";s:1:\"1\";s:16:\"Module_news_list\";s:1:\"1\";s:19:\"Module_news_comment\";s:1:\"1\";s:25:\"Module_news_sort_listsort\";s:1:\"1\";s:23:\"Module_hy_center_config\";s:1:\"1\";s:14:\"Module_hy_sort\";s:1:\"1\";s:17:\"Module_hy_company\";s:1:\"1\";s:18:\"Module_hy_dianping\";s:1:\"1\";s:17:\"Module_hy_comment\";s:1:\"1\";s:18:\"Module_hy_renzheng\";s:1:\"1\";s:22:\"Module_hy_center_label\";s:1:\"1\";s:21:\"Module_hy_companynews\";s:1:\"1\";s:20:\"Module_hy_companypic\";s:1:\"1\";s:27:\"Module_fenlei_center_config\";s:1:\"1\";s:27:\"Module_fenlei_center_settpl\";s:1:\"1\";s:22:\"Module_fenlei_autopass\";s:1:\"1\";s:26:\"Module_fenlei_center_label\";s:1:\"1\";s:18:\"Module_fenlei_list\";s:1:\"1\";s:21:\"Module_fenlei_comment\";s:1:\"1\";s:22:\"Module_fenlei_dianping\";s:1:\"1\";s:18:\"Module_fenlei_sort\";s:1:\"1\";s:20:\"Module_fenlei_module\";s:1:\"1\";s:23:\"Module_fenlei_fieldsort\";s:1:\"1\";s:20:\"Module_fenlei_report\";s:1:\"1\";s:21:\"Module_fenlei_replace\";s:1:\"1\";s:25:\"Module_shop_center_config\";s:1:\"1\";s:24:\"Module_shop_center_label\";s:1:\"1\";s:16:\"Module_shop_list\";s:1:\"1\";s:19:\"Module_shop_comment\";s:1:\"1\";s:16:\"Module_shop_sort\";s:1:\"1\";s:18:\"Module_shop_report\";s:1:\"1\";s:17:\"Module_shop_order\";s:1:\"1\";s:18:\"Module_shop_module\";s:1:\"1\";s:28:\"Module_tuangou_center_config\";s:1:\"1\";s:27:\"Module_tuangou_center_label\";s:1:\"1\";s:19:\"Module_tuangou_list\";s:1:\"1\";s:19:\"Module_tuangou_sort\";s:1:\"1\";s:19:\"Module_tuangou_join\";s:1:\"1\";s:22:\"Module_tuangou_comment\";s:1:\"1\";s:21:\"Module_tuangou_module\";s:1:\"1\";s:27:\"Module_shoptg_center_config\";s:1:\"1\";s:26:\"Module_shoptg_center_label\";s:1:\"1\";s:18:\"Module_shoptg_list\";s:1:\"1\";s:18:\"Module_shoptg_sort\";s:1:\"1\";s:19:\"Module_shoptg_order\";s:1:\"1\";s:20:\"Module_shoptg_module\";s:1:\"1\";s:23:\"Module_hr_center_config\";s:1:\"1\";s:22:\"Module_hr_center_label\";s:1:\"1\";s:14:\"Module_hr_sort\";s:1:\"1\";s:14:\"Module_hr_list\";s:1:\"1\";s:18:\"Module_hr_joinlist\";s:1:\"1\";s:20:\"Module_hr_collection\";s:1:\"1\";s:16:\"Module_hr_module\";s:1:\"1\";s:25:\"Module_gift_center_config\";s:1:\"1\";s:24:\"Module_gift_center_label\";s:1:\"1\";s:16:\"Module_gift_list\";s:1:\"1\";s:16:\"Module_gift_sort\";s:1:\"1\";s:16:\"Module_gift_join\";s:1:\"1\";s:18:\"Module_gift_module\";s:1:\"1\";s:27:\"Module_coupon_center_config\";s:1:\"1\";s:26:\"Module_coupon_center_label\";s:1:\"1\";s:18:\"Module_coupon_list\";s:1:\"1\";s:18:\"Module_coupon_sort\";s:1:\"1\";s:20:\"Module_coupon_module\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:18:\"Module_vote_center\";s:1:\"1\";s:20:\"Module_vote_vote_add\";s:1:\"1\";s:21:\"Module_vote_vote_list\";s:1:\"1\";s:24:\"Module_vote_comment_list\";s:1:\"1\";s:16:\"Module_ad_center\";s:1:\"1\";s:21:\"Module_ad_norm_listad\";s:1:\"1\";s:25:\"Module_ad_norm_listuserad\";s:1:\"1\";s:24:\"Module_ad_compete_listad\";s:1:\"1\";s:26:\"Module_ad_compete_listuser\";s:1:\"1\";s:6:\"mymenu\";N;}');
INSERT INTO `hh_group` VALUES ('4','1','前台管理员','0','0','0','a:6:{s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";}','0','a:1:{s:6:\"mymenu\";N;}');
INSERT INTO `hh_group` VALUES ('8','0','普通会员','0','50','0','a:62:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";s:16:\"shop_postauto_yz\";s:1:\"1\";s:14:\"tg_postauto_yz\";s:1:\"1\";s:14:\"post_coupon_yz\";s:1:\"0\";s:13:\"post_shop_num\";s:1:\"5\";s:11:\"post_tg_num\";s:1:\"3\";s:15:\"post_coupon_num\";s:1:\"3\";s:13:\"post_gift_num\";s:1:\"0\";}','0','');
INSERT INTO `hh_group` VALUES ('9','0','VIP会员','10000','0','0','a:61:{s:17:\"SearchArticleType\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:2:\"30\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:9:\"topmyinfo\";s:0:\"\";s:12:\"topmyinfoday\";s:0:\"\";s:13:\"topcompanyday\";s:0:\"\";s:13:\"post_sell_num\";s:2:\"50\";s:12:\"post_buy_num\";s:2:\"50\";s:13:\"post_news_num\";s:2:\"50\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:2:\"20\";s:17:\"post_zhanghui_num\";s:2:\"20\";s:12:\"post_ZLG_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:2:\"50\";s:19:\"post_xunjiadian_num\";s:2:\"50\";s:16:\"post_pingpai_num\";s:2:\"10\";s:24:\"post_info_collection_num\";s:3:\"100\";s:18:\"allow_get_homepage\";s:1:\"1\";s:16:\"shop_postauto_yz\";s:1:\"1\";s:14:\"tg_postauto_yz\";s:1:\"1\";s:14:\"post_coupon_yz\";s:1:\"1\";s:13:\"post_shop_num\";s:3:\"100\";s:11:\"post_tg_num\";s:2:\"50\";s:15:\"post_coupon_num\";s:2:\"50\";s:13:\"post_gift_num\";s:1:\"0\";}','0','');
INSERT INTO `hh_group` VALUES ('10','0','钻石会员','30000','0','0','a:57:{s:17:\"SearchArticleType\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:16:\"PassContributeSP\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"100\";s:12:\"post_buy_num\";s:3:\"100\";s:13:\"post_news_num\";s:3:\"100\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:3:\"100\";s:17:\"post_zhanghui_num\";s:3:\"100\";s:12:\"post_ZLG_num\";s:2:\"10\";s:16:\"post_pingpai_num\";s:2:\"10\";s:19:\"post_baojiadian_num\";s:3:\"100\";s:19:\"post_xunjiadian_num\";s:3:\"100\";s:24:\"post_info_collection_num\";s:3:\"300\";s:18:\"allow_get_homepage\";s:1:\"1\";s:16:\"shop_postauto_yz\";s:1:\"1\";s:14:\"tg_postauto_yz\";s:1:\"1\";s:14:\"post_coupon_yz\";s:1:\"1\";s:13:\"post_shop_num\";s:3:\"200\";s:11:\"post_tg_num\";s:3:\"100\";s:15:\"post_coupon_num\";s:2:\"50\";s:13:\"post_gift_num\";s:1:\"1\";}','0','');
INSERT INTO `hh_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `hh_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `hh_guestbook_config` VALUES ('groupPassPassGuestBook','3,4','');
INSERT INTO `hh_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `hh_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `hh_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `hh_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `hh_guestbook_config` VALUES ('Info_webname','留言本','');
INSERT INTO `hh_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_guestbook_content` VALUES ('12','0','1','','','','','1','admin','192.168.0.99','忘记密码强制进入网站后台的方法是:修改/admin/global.php文件,查找$ForceEnter=0;把0改成1即可,强制进入网站的后台.','1','1240206881','1240206881','','');
INSERT INTO `hh_guestbook_content` VALUES ('13','0','1','','','','','1','admin','192.168.0.99','普通管理员成为超级管理员的方法是,修改文件/齐博CMS/admin.php,把里边的帐号更换一下即可','1','1240206958','1240206958','','');
INSERT INTO `hh_guestbook_content` VALUES ('14','0','1','','','','','1','admin','192.168.0.99','整站系统的数据库配置文件是/齐博CMS/mysql_config.php','1','1240207079','1240207079','','');
INSERT INTO `hh_guestbook_content` VALUES ('15','0','1','','','','','1','admin','192.168.0.99','服务器默认限制上传文件大小为2M,你如果不修改服务器设置.而想在整站系统上传大于2M的文件.是不可以的.必须先修改服务器设置.一般来说服务器的PHP配置文件放在c:\\windows\\php.ini这里.','1','1240207216','1240207216','','');
INSERT INTO `hh_guestbook_content` VALUES ('16','0','1','','','','','1','admin','192.168.0.99','如果服务器做了限制.就无法使用采集程序.','1','1240207330','1240207330','','');
INSERT INTO `hh_guestbook_content` VALUES ('22','1','1','','','','','1','admin','127.0.0.1','fsdafds\r\nwfdsafd','1','1283393799','1283393799','a:4:{s:8:\"username\";s:5:\"admin\";s:7:\"content\";s:20:\"wfdsa\r\nfd\r\n3511\r\n999\";s:8:\"posttime\";i:1283394570;s:3:\"uid\";s:1:\"1\";}','');
INSERT INTO `hh_guestbook_content` VALUES ('23','2','1','','','','','1','admin','127.0.0.1','42452424','1','1283395885','1283395885','a:4:{s:7:\"content\";s:7:\"1111144\";s:3:\"uid\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:8:\"posttime\";i:1283395894;}','');
INSERT INTO `hh_guestbook_sort` VALUES ('1','0','发展建议','0','1','0','0','','0','0','','','','','','','0','','','','0','','','','','0','b:0;','0','0','','','0');
INSERT INTO `hh_guestbook_sort` VALUES ('2','0','意见投诉','0','1','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hack` VALUES ('login','用户登录插件','0','','a:3:{s:10:\"systemType\";s:6:\"齐博CMS\";s:9:\"guestcode\";s:0:\"\";}','','','','index.php?lfj=hack&hack=login&job=list','','','','0','','0');
INSERT INTO `hh_hack` VALUES ('adminmap','后台菜单','0','','','','','','index.php?lfj=adminmap&job=list','','other','插件大全','0','','0');
INSERT INTO `hh_hack` VALUES ('moneylog','用户消费积分记录','0','','','','','','index.php?lfj=moneylog&job=list','','other','插件大全','0','','0');
INSERT INTO `hh_hack` VALUES ('alipay_set','在线充值支付管理','0','','','','','','index.php?lfj=alipay&job=list','','other','电子商务管理','9','','0');
INSERT INTO `hh_hack` VALUES ('template_list','模板设置','0','','','','','','index.php?lfj=template&job=list','','other','风格/模板设置','1','','0');
INSERT INTO `hh_hack` VALUES ('style_editstyle','风格管理','0','','','','','','index.php?lfj=style&job=edittpl','','other','风格/模板设置','2','','0');
INSERT INTO `hh_hack` VALUES ('propagandize','推广赚取积分功能','0','','','','','','index.php?lfj=propagandize&job=list','','other','其它功能','8','','0');
INSERT INTO `hh_hack` VALUES ('jfadmin_mod','积分介绍管理','0','','','','','','index.php?lfj=jfadmin&job=listjf','','other','其它功能','7','','0');
INSERT INTO `hh_hack` VALUES ('attachment_list','附件管理','0','','','','','','index.php?lfj=attachment&job=list','','other','其它功能','6','','0');
INSERT INTO `hh_hack` VALUES ('upgrade_ol','系统在线升级','0','','','','','','index.php?lfj=upgrade&job=get','','other','其它功能','4','','0');
INSERT INTO `hh_hack` VALUES ('mail_send','邮件群发','0','','','','','','index.php?lfj=mail&job=send','','other','消息/邮件群发','2','','0');
INSERT INTO `hh_hack` VALUES ('message_send','站内消息群发','0','','','','','','index.php?lfj=message&job=send','','other','消息/邮件群发','3','','0');
INSERT INTO `hh_hack` VALUES ('sms_send','手机短信群发','0','','','','','','index.php?lfj=sms&job=send','','other','消息/邮件群发','1','','0');
INSERT INTO `hh_hack` VALUES ('cnzz_set','CNZZ流量统计','0','','','','','','index.php?lfj=cnzz&job=ask','','other','插件大全','3','','0');
INSERT INTO `hh_hack` VALUES ('limitword_list','不良词语过滤','0','','','','','','index.php?lfj=limitword&job=list','','other','其它功能','9','','0');
INSERT INTO `hh_hack` VALUES ('moneycard_make','点卡充值管理','0','','','','','','index.php?lfj=moneycard&job=make','','other','电子商务管理','7','','1');
INSERT INTO `hh_hack` VALUES ('logs_login_logs','后台登录日志','0','','','','','','index.php?lfj=logs&job=login_logs','','other','日志管理','2','','0');
INSERT INTO `hh_hack` VALUES ('logs_admin_do_logs','后台操作日志','0','','','','','','index.php?lfj=logs&job=admin_logs','','other','日志管理','1','','0');
INSERT INTO `hh_hack` VALUES ('sell_telephone','电话号码广告','0','','','','','','index.php?lfj=sell_telephone&job=list','','other','其它功能','0','','0');
INSERT INTO `hh_hack` VALUES ('crontab','定时任务','0','','','','','','index.php?lfj=crontab&job=list','','other','插件大全','0','','0');
INSERT INTO `hh_hack` VALUES ('labelstyle','标签数据导入与导出','0','','','','','','index.php?lfj=labelstyle&job=label','','other','风格/模板设置','2','','0');
INSERT INTO `hh_house_class` VALUES ('31','0','岗位类型','1');
INSERT INTO `hh_house_class` VALUES ('32','31','计算机/互联网类','0');
INSERT INTO `hh_house_class` VALUES ('33','31','人力资源/行政/文职人员','0');
INSERT INTO `hh_house_class` VALUES ('34','31','医疗卫生/美容保健','0');
INSERT INTO `hh_house_class` VALUES ('38','34','护士/护理人员','0');
INSERT INTO `hh_house_class` VALUES ('37','34','医生/医师','0');
INSERT INTO `hh_house_class` VALUES ('39','33','文员/秘书','0');
INSERT INTO `hh_house_class` VALUES ('40','33','行政/人力资源总监','0');
INSERT INTO `hh_house_class` VALUES ('41','32','软件工程师','0');
INSERT INTO `hh_house_class` VALUES ('42','32','硬件工程师','0');
INSERT INTO `hh_house_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_house_config` VALUES ('Info_allowViewList','4','');
INSERT INTO `hh_house_config` VALUES ('Info_allowViewContent','3','');
INSERT INTO `hh_house_config` VALUES ('Limit_postOne','0','');
INSERT INTO `hh_house_config` VALUES ('Info_allowpost','2','');
INSERT INTO `hh_house_config` VALUES ('Info_contact','','');
INSERT INTO `hh_house_config` VALUES ('Info_titleName','姓名','');
INSERT INTO `hh_house_config` VALUES ('module_id','38','');
INSERT INTO `hh_house_config` VALUES ('if_GGmap','1','');
INSERT INTO `hh_house_config` VALUES ('Info_allowsearch','2,8','');
INSERT INTO `hh_house_config` VALUES ('Info_ShowNoYz','1','');
INSERT INTO `hh_house_config` VALUES ('Info_UseEndTime','0','');
INSERT INTO `hh_house_config` VALUES ('Info_DelEndtime','0','');
INSERT INTO `hh_house_config` VALUES ('module_pre','house_','');
INSERT INTO `hh_house_config` VALUES ('CollectArticleNum','','');
INSERT INTO `hh_house_config` VALUES ('PostInfoMoney','','');
INSERT INTO `hh_house_config` VALUES ('Info_description','','');
INSERT INTO `hh_house_config` VALUES ('Info_metakeywords','','');
INSERT INTO `hh_house_config` VALUES ('Info_areaname','','');
INSERT INTO `hh_house_config` VALUES ('module_close','0','');
INSERT INTO `hh_house_config` VALUES ('Info_webname','房产频道','');
INSERT INTO `hh_house_config` VALUES ('rand_num_mktime','','');
INSERT INTO `hh_house_config` VALUES ('Info_TopNum','5','');
INSERT INTO `hh_house_config` VALUES ('Info_TopDay','10','');
INSERT INTO `hh_house_config` VALUES ('Info_TopMoney','100','');
INSERT INTO `hh_house_config` VALUES ('Info_TopColor','#FF0000','');
INSERT INTO `hh_house_config` VALUES ('GroupPostInfo','','');
INSERT INTO `hh_house_config` VALUES ('GroupPassYz','','');
INSERT INTO `hh_house_config` VALUES ('ForbidPostIp','','');
INSERT INTO `hh_house_config` VALUES ('ForbidPostMember','','');
INSERT INTO `hh_house_config` VALUES ('Info_cityPost','0','');
INSERT INTO `hh_house_config` VALUES ('Info_forbidOutPost','0','');
INSERT INTO `hh_house_config` VALUES ('Info_MemberPostRepeat','0','');
INSERT INTO `hh_house_config` VALUES ('Info_MemberPostPicNum','20','');
INSERT INTO `hh_house_config` VALUES ('Info_MemberDayPostNum','','');
INSERT INTO `hh_house_config` VALUES ('Info_GuestPostPicNum','0','');
INSERT INTO `hh_house_config` VALUES ('Info_GuestDayPostNum','0','');
INSERT INTO `hh_house_config` VALUES ('Info_GuestPostRepeat','0','');
INSERT INTO `hh_house_config` VALUES ('Info_MemberPostMoney','1','');
INSERT INTO `hh_house_config` VALUES ('Info_ClosePostWhy','','');
INSERT INTO `hh_house_config` VALUES ('Info_ClosePost','0','');
INSERT INTO `hh_house_config` VALUES ('Info_GroupCommentYzImg','','');
INSERT INTO `hh_house_config` VALUES ('Info_GroupPostYzImg','','');
INSERT INTO `hh_house_config` VALUES ('Info_showday','','');
INSERT INTO `hh_house_config` VALUES ('UpdatePostTime','','');
INSERT INTO `hh_house_config` VALUES ('Info_ReportDB','虚假信息\r\n过期信息\r\n违法信息','');
INSERT INTO `hh_house_content` VALUES ('8','万科府前花园','5','0','5','楼盘','0','5','0','1302232860','1302232860','1','admin','','0','qb_house_/5/1_20110408110400_MQ==.jpg','1','1','','0','1','1302248813','南沙区 凤凰大道西侧 丰泽西路西南','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960624','1','1','1','','0','','0','400-888-2200','13399999999','54325@qq.com','888888','','admin','','南沙区凤凰大道西侧','','','39.908946186502526,116.3671875','3','0');
INSERT INTO `hh_house_content` VALUES ('10','碧桂园凤凰城','5','0','5','楼盘','0','8','0','1302233779','1302233779','1','admin','','0','qb_house_/5/1_20110408110419_Nw==.jpg','1','1','','0','1','1302248812','普通住宅 别墅 高层洋房 小高层洋房 独栋别墅 联体别墅','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960644','1','3','0','','0','','0','400-888-2200','13399999999','54325@qq.com','888888','','admin','','增城市广园东快速路（广园路、广深高速新塘出口）','','','39.919808548259375,116.38581275939941','3','0');
INSERT INTO `hh_house_content` VALUES ('35','陈荣','6','0','6','中介','0','12','0','1302246940','1302246940','1','admin','','0','qb_house_/6/1_20110409140412_NDQ=.jpg','1','1','','0','1','1302248821','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1303034693','1','5','0','','0','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_house_content` VALUES ('34','杨志雄','6','0','6','中介','0','5','0','1302246743','1302246743','1','admin','','0','qb_house_/6/1_20110409140442_NDI=.jpg','1','1','','0','1','1302248821','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1303032800','1','1','0','','0','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_house_content` VALUES ('11','阳光雅筑','5','0','5','楼盘','0','7','0','1302234754','1302234754','1','admin','','0','qb_house_/5/1_20110408110434_MQ==.jpg','1','1','','0','1','1302248811','天河区 中山大道东189号 天虹花园二期','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960658','1','4','0','','0','','0','','13399999999','54325@qq.com','888888','','admin','','广州市中山大道东189号天虹花园2期阳光雅筑营销中心','','','39.91678042665948,116.4360237121582','3','0');
INSERT INTO `hh_house_content` VALUES ('9','东港花园','5','0','5','楼盘','0','6','0','1302233359','1302233359','1','admin','','0','qb_house_/5/1_20110408110419_NA==.jpg','1','1','','0','1','1302248812','黄埔区 文船路363号大院','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960634','1','2','0','','0','','0','400-888-2200','13399999999','54325@qq.com','888888','','admin','','黄埔区黄埔东路（广深公路以北文冲村文船路以西','','','39.89446035777916,116.43482208251953','3','0');
INSERT INTO `hh_house_content` VALUES ('12','麓湖御景','5','0','5','楼盘','0','7','0','1302237922','1302237922','1','admin','','0','qb_house_/5/1_20110408140444_MDA=.jpg','1','1','','0','1','1302248811','普通住宅 高层洋房','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960666','1','7','0','','0','','0','020-83488818','13399999999','54325@qq.com','888888','','admin','','越秀区麓苑路39号','','','39.91862364705806,116.39945983886719','2','0');
INSERT INTO `hh_house_content` VALUES ('13','东风广场','5','0','5','楼盘','0','7','0','1302238153','1302238153','1','admin','','0','qb_house_/5/1_20110408120434_Ng==.jpg','1','1','','0','1','1302248810','商住楼 高层洋房 小高层洋房','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960677','1','8','0','','0','','0','543543543','13399999999','54325@qq.com','888888','','admin','','东山东风东路787号（梅花路口）','','','39.90150612062975,116.4210033416748','3','0');
INSERT INTO `hh_house_content` VALUES ('14','南国奥园','5','0','5','楼盘','0','4','0','1302238503','1302238503','1','admin','','0','qb_house_/5/1_20110408120403_MQ==.jpg','1','1','','0','1','1302248810','普通住宅 公寓 多层洋房(带电梯)','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960689','1','12','0','','0','','0','400-888-2200','13399999999','54325@qq.com','888888','','admin','','广州番禺汉溪大道','','','39.90980207146212,116.43482208251953','3','0');
INSERT INTO `hh_house_content` VALUES ('15','银汇华庭','5','0','5','楼盘','0','12','0','1302238983','1302238983','1','admin','','0','qb_house_/5/1_20110408140429_MA==.jpg','1','1','','0','1','1302248809','普通住宅 高层洋房 小高层洋房','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960703','1','4','0','','0','','0','400-888-2200','13399999999','54325@qq.com','888888','','admin','','天河区龙怡路113号(地铁华师站E出口)','','','39.906180946626705,116.44580841064453','3','0');
INSERT INTO `hh_house_content` VALUES ('16','逸彩新世界','5','0','5','楼盘','0','5','0','1302239293','1302239293','1','admin','','0','qb_house_/5/1_20110408130413_Nw==.jpg','1','1','','0','1','1302248809','普通住宅 高层洋房 多层洋房(带电梯)','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960717','1','3','0','','0','','0','400-888-2200','13399999999','54325@qq.com','888888','','admin','','新世界西区销售中心（荔湾区芳村大道西236号）','','','39.91888696020796,116.41207695007324','3','0');
INSERT INTO `hh_house_content` VALUES ('17','亚运城','5','0','5','楼盘','0','8','0','1302239815','1302239815','1','admin','','0','qb_house_/5/1_20110408130455_MQ==.jpg','1','1','','0','1','1302248808','普通住宅 公寓 高层洋房','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960728','1','11','0','','0','','0','400-888-2200','13399999999','54325@qq.com','888888','','admin','','东方宾馆、花园酒店、科尔海悦酒店、富力中心、富力盈信大厦、白云机场','','','39.90144027573221,116.43722534179687','3','0');
INSERT INTO `hh_house_content` VALUES ('18','岭南湾畔','5','0','5','楼盘','0','5','0','1302240018','1302240018','1','admin','','0','qb_house_/5/1_20110408130418_NA==.jpg','1','1','','0','1','1302248808','荔湾区 西湾路中段','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960782','1','13','0','','0','','0','400-888-2200','13399999999','54325@qq.com','888888','','admin','','西湾路中段','','','39.92099342895789,116.40649795532226','3','0');
INSERT INTO `hh_house_content` VALUES ('19','锦绣半岛','5','0','5','楼盘','0','4','0','1302240221','1302240221','1','admin','','0','qb_house_/5/1_20110408130441_Nw==.jpg','1','1','','0','1','1302248807','普通住宅 高层洋房 多层洋房(带电梯)','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960790','1','14','0','','0','','0','020-99888888','13399999999','54325@qq.com','888888','','admin','','广州市番禺区洛浦街南浦环岛西路','','','39.90756358051684,116.36478424072265','3','0');
INSERT INTO `hh_house_content` VALUES ('20','恒大绿洲','5','0','5','楼盘','0','8','0','1302240426','1302240426','1','admin','','0','qb_house_/5/1_20110408130406_MQ==.jpg','1','1','','0','1','1302248807','普通住宅','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960800','1','15','0','','0','','0','020-5544552','13399999999','54325@qq.com','888888','','admin','','位于金沙洲大桥以南','','','39.90176949958711,116.43465042114258','3','0');
INSERT INTO `hh_house_content` VALUES ('21','东银广场','5','0','5','楼盘','0','6','0','1302240639','1302240639','1','admin','','0','qb_house_/5/1_20110408130439_NA==.jpg','1','1','','0','1','1302248806','普通住宅 高层洋房','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960811','1','17','0','','0','','0','020-8877444','13399999999','54325@qq.com','888888','','admin','','海珠区东晓路38号（明珠花园对面','','','39.89979413273051,116.43216133117676','3','0');
INSERT INTO `hh_house_content` VALUES ('22','港安银座','5','0','5','楼盘','0','7','0','1302240957','1302240957','1','admin','','0','qb_house_/5/1_20110408130457_Nw==.jpg','1','1','','0','1','1302248805','普通住宅 公寓','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960821','1','17','0','','0','','0','020-5452111','13399999999','54325@qq.com','888888','','admin','','广州南沙进港大道珠电路口','','','39.90144027573221,116.40349388122558','3','0');
INSERT INTO `hh_house_content` VALUES ('23','星河湾','5','0','5','楼盘','0','14','0','1302241170','1302241170','1','admin','','0','qb_house_/5/1_20110408130430_MQ==.jpg','1','1','','0','1','1302248805','普通住宅 公寓 高层洋房 小高层洋房 多层洋房(带电梯)','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1303193193','1','18','0','','0','','0','020-5544221','13399999999','54325@qq.com','888888','','admin','','广州番禺迎宾路沙溪大桥南岸','','','39.902493786499846,116.44949913024902','3','0');
INSERT INTO `hh_house_content` VALUES ('24','马赛国际 高层大单间可改两房 视野开阔','2','8','2','出售','0','3','0','1302245254','1302245254','1','admin','','0','hh_house_/2/1_20110416210427_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg.gif','1','1','','0','1','1302248788','天河区 珠江新城 马赛国际公寓','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960029','1','1','1','','0','','0','020-22554411','13399999999','54325@qq.com','888888','','admin','','','','','39.903744809497965,116.38083457946777','2','0');
INSERT INTO `hh_house_content` VALUES ('25','旭景家园 精致三房 少有南向 132万 过五年','2','10','2','出售','0','5','0','1302245437','1302245437','1','admin','','0','hh_house_/2/1_20110416210403_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg.gif','1','1','','0','1','1302248787','商品房 够5年 电梯楼','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1303037050','1','2','0','','0','','0','020-8855444','13399999999','54325@qq.com','888888','','admin','','','','','39.91118463226871,116.42160415649414','2','0');
INSERT INTO `hh_house_content` VALUES ('26','祈福新村 蝶舞轩 业主急售 有钥匙可以马上看','2','11','2','出售','0','3','0','1302245594','1302245594','1','admin','','0','hh_house_/2/1_20110416210444_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg.gif','1','1','','0','1','1302248786','番禺区 祈福 祈福新村','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302959987','1','3','0','','0','','0','','13399999999','54325@qq.com','888888','','admin','','','','','39.908551159068324,116.43559455871582','2','0');
INSERT INTO `hh_house_content` VALUES ('27','金碧翡翠华庭 装修新净 厅出阳台 楼盘最低价','2','9','2','出售','0','3','0','1302245734','1302245734','1','admin','','0','hh_house_/2/1_20110416210415_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg.gif','1','1','','0','1','1302248786','天河区 天河北 金碧翡翠华庭','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1303027414','1','4','0','','0','','0','','13399999999','54325@qq.com','888888','','admin','','','','','39.90552253972854,116.43181800842285','2','0');
INSERT INTO `hh_house_content` VALUES ('28','乐意居 中层靓景四期少有单位放盘 住家婚房首选','2','9','2','出售','0','20','0','1302245957','1302245957','1','admin','','0','hh_house_/2/1_20110416210421_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png.gif','1','1','','0','1','1302248785','天河区 五山 乐意居','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1303192438','1','3','0','','0','','0','020-54448887','13399999999','54325@qq.com','888888','','admin','','','','','39.90216456612496,116.42752647399902','2','0');
INSERT INTO `hh_house_content` VALUES ('29','第三金碧花园 三房两厅全新装修 家私电器全齐','1','9','1','出租','0','4','0','1302246104','1302246104','1','admin','','0','hh_house_/1/1_20110416210430_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png.gif','1','1','','0','1','1302248779','海珠区 金碧 金碧花园','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960212','1','2','0','','0','','0','020-857441211','13399999999','54325@qq.com','888888','','admin','','','','','39.905193333906674,116.4327621459961','2','0');
INSERT INTO `hh_house_content` VALUES ('30','黄埔花园 园景小区 电梯三房 南向吉屋','1','17','1','出租','0','2','0','1302246219','1302246219','1','admin','','0','hh_house_/1/1_20110416210414_MzZCOGJ1SFcyRDQ0QzIwMTAwOTIw.jpg.gif','1','1','','0','1','1302248779','黄埔区 区府 黄埔花园','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960196','1','8','0','','0','','0','020-55221144','13399999999','54325@qq.com','888888','','admin','','','','','39.9041398646466,116.42495155334472','2','0');
INSERT INTO `hh_house_content` VALUES ('31','万科城市花园 二房笋租 家电齐全 现在唯有几套','1','15','1','出租','0','5','0','1302246330','1302246330','1','admin','','0','hh_house_/1/1_20110416210455_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg.gif','1','1','','0','1','1302248778','黄埔区 区府 万科城市花园','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960177','1','6','0','','0','','0','020-2255441','13399999999','54325@qq.com','888888','','admin','','','','','39.91111879667259,116.4305305480957','2','0');
INSERT INTO `hh_house_content` VALUES ('32','天河员村大院一房一厅','1','10','1','出租','0','4','0','1302246452','1302246452','1','admin','','0','hh_house_/1/1_20110416210426_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg.gif','1','1','','0','1','1302248778','房改房 楼梯楼','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960148','1','9','0','','0','','0','020-22554411','13399999999','54325@qq.com','888888','','admin','','','','','39.89926735861801,116.43070220947265','2','0');
INSERT INTO `hh_house_content` VALUES ('33','勤天E品 豪华复式一房一厅 展现厅的双倍空间','1','15','1','出租','0','28','0','1302246567','1302246567','1','admin','','0','hh_house_/1/1_20110416210410_MTI4MjIwODAzMDY3MQ==.jpg.gif','1','1','','0','1','1302248777','天河区 天河公园 勤天E品上馆','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1303034727','1','11','0','','0','','0','020-55441112','13399999999','54325@qq.com','888888','','admin','','','','','39.91302800326956,116.43430709838867','2','0');
INSERT INTO `hh_house_content` VALUES ('36','陈奇峰','6','0','6','中介','0','10','0','1302247098','1302247098','1','admin','','0','qb_house_/6/1_20110409140452_NDY=.jpg','1','1','','0','1','1302248820','房产 好便宜','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960529','1','3','0','','0','','0','020-55887744','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_house_content` VALUES ('37','王海军','6','0','6','中介','0','5','0','1302247172','1302247172','1','admin','','0','qb_house_/6/1_20110409140430_NDg=.jpg','1','1','','0','1','1302248819','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960517','1','0','0','','0','','0','020-55444111','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_house_content` VALUES ('38','凌二芳','6','0','6','中介','0','24','0','1302247277','1302247277','1','admin','','0','qb_house_/6/1_20110409140400_NTA=.jpg','1','1','','0','1','1302248818','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960466','1','6','0','','0','','0','020-25488744','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_house_content` VALUES ('39','肖彦娟','6','0','6','中介','0','11','0','1302247346','1302247346','1','admin','','0','qb_house_/6/1_20110409140437_NTI=.jpg','1','1','','0','1','1302248818','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960452','1','8','0','','0','','0','020-2255444','13399999999','54325@qq.com','888888','','admin','','','','','','2','0');
INSERT INTO `hh_house_content` VALUES ('40','自己住的，找个西北三环附近的房子中介勿扰','3','0','3','求租','0','3','0','1302247564','1302247564','1','admin','','0','hh_house_/3/1_20110416210430_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg.gif','1','1','','0','1','1302248793','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960273','1','1','1','','0','','0','020-2255441','13399999999','54325@qq.com','888888','','admin','','','','','39.91269883351498,116.4217758178711','2','0');
INSERT INTO `hh_house_content` VALUES ('41','求租大兴区芳源里 菊园里 上林苑小区','3','0','3','求租','0','5','0','1302247742','1302247742','1','admin','','0','hh_house_/3/1_20110416210415_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg.gif','1','1','','0','1','1302248792','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960263','1','2','0','','0','','0','020-5544887','13399999999','54325@qq.com','888888','','admin','','','','','39.9113163032711,116.4276123046875','2','0');
INSERT INTO `hh_house_content` VALUES ('42','个人上班族求租双桥正规两居或三居其中一间！房内无隔断就行','3','0','3','求租','0','3','0','1302247808','1302247808','1','admin','','0','hh_house_/3/1_20110416210451_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg.gif','1','1','','0','1','1302248792','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960240','1','0','0','','0','','0','020-5544111','13399999999','54325@qq.com','888888','','admin','','','','','39.911908819649724,116.42778396606445','2','0');
INSERT INTO `hh_house_content` VALUES ('43','全款求购望京点击未来50平东南朝向一居','4','0','4','求购','0','3','0','1302248000','1302248000','1','admin','','0','hh_house_/4/1_20110416210408_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg.gif','1','1','','0','1','1302248800','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960369','1','1','1','','0','','0','','13399999999','54325@qq.com','888888','','admin','','','','','39.91309383703065,116.41714096069336','2','0');
INSERT INTO `hh_house_content` VALUES ('44','特别急求购菓岭小区住房一套','4','0','4','求购','0','2','0','1302248111','1302248111','1','admin','','0','hh_house_/4/1_20110416210453_MTNhOGY1NjJjYWQ0NDRiMzg2ODYzYTM4ZTgyMzlmMWM=.jpg.gif','1','1','','0','1','1302248800','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960355','1','2','0','','0','','0','020-55444555','13399999999','54325@qq.com','888888','','admin','','','','','39.90940704896342,116.40229225158691','2','0');
INSERT INTO `hh_house_content` VALUES ('45','为客户急购300万海淀附近两居一居','4','0','4','求购','0','3','0','1302248198','1302248198','1','admin','','0','hh_house_/4/1_20110416210439_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg.gif','1','1','','0','1','1302248799','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1302960341','1','0','0','','0','','0','020-22554411','13399999999','54325@qq.com','888888','','admin','','','','','39.91427883390961,116.41714096069336','2','0');
INSERT INTO `hh_house_content` VALUES ('46','信息标题','3','0','3','求租','0','1','0','1303193157','1303193157','1','admin','','0','','0','1','','0','0','0','','','','','','','','0','0','127.0.0.1','0','0','','','0','0','0','','1303193158','1','1','2','','0','','0','','13399999999','54325@qq.com','888888','','admin','','','','','','0','0');
INSERT INTO `hh_house_content_1` VALUES ('2','29','1','1','第三金碧花园座立在: 广州市海珠区工业大道南，金碧花园分为三个期。 分别有: 第一金碧花园(包含都市广场), 第二金碧花园(包含碧水闲庭), 第三金碧花园(包含爵府天下). 占地面积52万平方米, 建筑面积200万平方米, 18万平方米的园林绿地, 8000产方米中心花园, 15个风格各异的主题花园, 绿化面积高达35%, 更有5个超过一万平方米的人工湖。','2','3500','三室两厅','水/电','128','精装修','14','华师站','45路');
INSERT INTO `hh_house_content_1` VALUES ('3','30','1','1','黄埔花园&mdash;&mdash;广州市黄埔区中山大道和丰乐南路交界处，位于广州黄埔区中心位置，紧邻众多城市动脉，地铁、渡轮航班、长途汽车等立体式交通，方便快捷。黄埔花园&mdash;&mdash;占地16万平方米，建筑面积42万平方米，其住宅部分由数十栋12-23层高楼宇组成，是黄埔中心区域规模最大的生态水景园林社区。社区内配套成熟，除大型会所外，还设有商业服务设施、中学、幼儿园一体化素质教育配套等。面积达3万平方米的商场，集时尚、潮流于一体。黄埔花园&mdash;&mdash;将分三期建设，2004年4月，首期单位将正式对外推出。二期将主要以高层洋房为主，2004年6月将全面动工，大型商业中心也将在今年中开始建设，三期单位也将于2004年底动工。户型都是中规中矩、方方正正的，动静分离。一进门一律就是客厅、餐厅相连直出阳台，大厅开间都有四米以上，阳台进深也大多有一米五，采光通风具有较强的均好性。','2','3000','一居室','水/电/宽带/管道煤气','98','普通装修','12','黄村站','15路');
INSERT INTO `hh_house_content_1` VALUES ('4','31','1','1','&nbsp;&nbsp;&nbsp; 万科城市花园，位于黄埔区大沙中心区，临近区政府，是黄埔的行政中心、商业中心。北侧是规划公园，可以近享一块完整的生态绿地，西侧则临近政府规划中文化中心，政府计划建设区图书馆、科技馆、博物馆等一批文化设施。','1','2900','三室两厅','水/电/宽带/管道煤气/电梯','95','普通装修','16','岗顶站','B9');
INSERT INTO `hh_house_content_1` VALUES ('5','32','1','1','二号大院位于员村四横路，小区安静，绿化率高，自住首选。','1','1300','一室一厅','水/电/电梯/家具','23','普通装修','5','员村站','15路');
INSERT INTO `hh_house_content_1` VALUES ('6','33','1','1','勤天E品是新一代复式酒店服务公寓，地处被誉为&ldquo;广州硅谷&rdquo;的天河软件园的核心位置，紧邻中山大道与科韵路，距琶洲会展中心5分钟车程，数十条公交路线经过，离5号地铁线科韵路站步行不到五分钟，附近天河公园、好又多、银行、酒店、学院等，生活和交通非常方便.五星级酒店式服务管理，豪华、高尚、尊贵、气派，自住首选。','2','2800','两室两厅','水/电/管道煤气','56','豪华装修','12','学院站','15路');
INSERT INTO `hh_house_content_2` VALUES ('3','24','2','1','此房是马赛国际公寓高层单位，安静单位，朝向又好，装修保养也不错，最主要是价格低卖：15000/方，说了你不相，现在这种户型的租金已经去到2600到2800不等，租金绝对是决定楼价的重要标准。这个房子是一个大单间，自己可以改成两房，房子绝对是套帮你赚钱的房子，机会难得。','1','95','两室一厅','水/电','90','普通装修','8','中山站','18路');
INSERT INTO `hh_house_content_2` VALUES ('4','25','2','1','该物业是三房两厅的大单位，光线充足、通风凉爽、格局方正实用，让人进屋的第一感觉无比温馨，那种身心放松的感觉，非常适合在外奔波劳累的您，停下脚步歇歇的最佳首选，何谓为家，家就是能让你身心放松，感觉温馨舒适的地方，我也不想说这房子有多么多么的好了，很多好东西，看了才知道嘛，不是么？有意向的友友们，趁业主还没反口，就别再犹豫了，赶快拿起你手中的电话拨打小龙的看房热线，嘟嘟嘟~喂，小龙在吗？ 如果这套房子不是您最终想要的选择,这边还有多种间隔房屋,尊贵的您心动不如行动,欢迎您的咨询,小龙将竭诚为您服务,第一时间帮到您!','1','132','两室一厅','水/电','91','普通装修','12','东圃站','B2');
INSERT INTO `hh_house_content_2` VALUES ('5','26','2','1','福集团的经典巨作，祈福新村以大环境、大配套、大交通的国际文化型社区，世界一流水平，有&ldquo;中国第一村&rdquo;的美誉。祈福新村占地7500亩，自1991年建祈福新村至今已投入资金160多亿元，有来自美国、法国、日本等36个国家及地区的精英成为祈福新村，常住人口达10多万人，业主20多万人。祈福新村二手房单位个人点评 这套房子95.5方，卖108万没过5年。目前业主急售这套房，在祈福新村我相信南向的蝶舞轩三房带主套，除了我这套房子的话，你想找都很难找得到。我有钥匙可以马上看，温馨提醒：业主里面的房子过几天就要搬走啦，唯一卖点就是，108万低市场10万南向中间位置。绝对真实，不会浪费你们的时间，如果你是经常来祈福新村看楼的人就知道我这套房子，绝对是性价比高，超高。','2','108','两室一厅','水/电/宽带','96','精装修','15','中山站','56路');
INSERT INTO `hh_house_content_2` VALUES ('6','27','2','1','&nbsp;&nbsp;&nbsp; 金碧翡翠华庭 ：金碧翡翠华庭是恒大集团的。该盘位于天河北龙口东路，北接广园快速干线，南临天润路，西临龙口东路，东连五山路，离地铁三号线五山站很近，项目(二手房)为城市中心地带高档精品住宅。&nbsp;&nbsp;&nbsp;&nbsp; 个人点评：此单元厅出大阳台，装修新净，精致实用两房，最最主要是，此房价格为本楼盘最低价，且楼盘新净，小区安静，为住家好去处，价格低下，懂投资的您一定不会错过！','1','160','两室一厅','水/电','79','豪华装修','18','黄村站','57路');
INSERT INTO `hh_house_content_2` VALUES ('7','28','2','1','乐意居花园位于长兴路天河客运站附近，仅需三分钟车程，交通方便，绿色小区，绿化充足，绿树成荫，二十四小时保安巡逻，每一楼梯都分别安装摄像头，管理严密，让您放心入住。配套完善,有运动场，球场，和休息之地。','1','142','两室一厅','水/电/宽带/管道煤气','99','普通装修','18','车陂站','87路');
INSERT INTO `hh_house_content_3` VALUES ('2','40','3','1','我们想找个房子，只要是西北三环附近的，我在友谊宾馆这边上班，四通桥这边，有直达车的也行，最好靠近车站。 两居，三居都行，一居的最好大一点的，（ 中介就不用了，请勿打扰），有是白天不在，可以发短信给我','3200','两室一厅','100','精装修','2');
INSERT INTO `hh_house_content_3` VALUES ('3','41','3','1','要求安静，精装修 ，有停车位，无电梯3层以内，至少签订期限两年租房协议。中介勿扰！！！！\r\n一家人打算长期居住，会很爱惜你的房子。租金3000-3200。','2500','三室一厅','100','精装修','3');
INSERT INTO `hh_house_content_3` VALUES ('4','42','3','1','本人为正规上班族，希望是在康惠园，双惠苑，水岸双桥这三个小区最好。\r\n房间要整间，干净，可以做饭！\r\n不接受隔断间。','2400','两室一厅','98','普通装修','5');
INSERT INTO `hh_house_content_3` VALUES ('5','46','3','1','','','两室一厅','','普通装修','');
INSERT INTO `hh_house_content_4` VALUES ('2','43','4','1','1室  50-50㎡  价格：120-129万元\r\n\r\n全款求购点击未来50平东南朝向一居，低层不考虑。','50','两室一厅','100','普通装修','3');
INSERT INTO `hh_house_content_4` VALUES ('3','44','4','1',' 昌平 昌平县城 &nbsp; 2室  90-300㎡  价格：200-600万元\r\n\r\n有房就行，价格可议！！方位好，南北！','36','两室一厅','30','普通装修','8');
INSERT INTO `hh_house_content_4` VALUES ('4','45','4','1','本人隶属中宇慧通资产管理有限公司，本公司经营范畴有房产、车产、不动产、抵押贷款、中小企业贷款，等货币兑换。专业为拥有房产暂时需要资金周转的您提供贷款服务，本公司办事效率特别高可以合各房产公司合作，也可与个人合作！','200','两室一厅','100','豪华装修','6');
INSERT INTO `hh_house_content_5` VALUES ('2','8','5','1','&nbsp; 　　万科南沙项目位于南沙区凤凰大道西侧，与南沙行政中心相邻，占地13.5万平方米，建筑面积约27万平方米，由广州市万科房地产有限公司开发。<br />\r\n<br />\r\n　　此地块曾于2008年12月2日以底价2.64亿元被广州南沙建设投资有限公司&ldquo;俘获&rdquo;，折合楼面地价980元/平方米。事隔9月，万科以3.01亿元购入该项目的95%权益，折合楼面地价1173元/平方米，相比原来的楼面地价来说，溢价近20%；但比8月28日碧桂园竞拍的南沙09N JY -2地块1506元/平方米的楼面地价，依然显得便宜。另外，鉴于南沙目前5143元/平方米的楼价和南沙开发前景，开发利润还是很大的','广州临海房地产有限公司','南沙区凤凰大道西侧','2011-04-02','8000','南沙1、2、3、4、5、6线停靠此站','学校： 滨江中路第一小学 石冲口幼儿园 广州市第七十八中学 仲恺农业技术学院 广州城市职业学院 \r\n购物： OK便利店 7-11便利店 喜事多便利店 长江滨江东综合市场 金惠超市 广州市粮食集团8字连锁店 \r\n休闲： 大元帅府 孙中山大元帅府纪念馆 ','食肆： 海南城风味酒家 \r\n政府机构： 广州航道局 \r\n','','','269520','134760','洋房','简装','万科物业管理公司','2',' 30%','545','400-888-2200 转 16085','南沙区凤凰大道西侧','朝阳区','在售');
INSERT INTO `hh_house_content_5` VALUES ('3','9','5','1','&nbsp; 　　东港花园位于黄埔区文冲机械市场以东，四海酒家以西。项目分A、B两区开放，首推A区217套单位，主推80&mdash;90㎡的单位，同时还有40、60、110㎡单位。','广州市东润房地产开发有限公司','黄埔区黄埔东路（广深公路以北文冲村文船路以西','2011-04-01','13500','文冲村委站，途经线路包括433路、506路517路、566路、569路、570路、883路、夜46路','学校：广州市黄埔区文冲幼儿园、广州市黄埔区文冲小学 \r\n银行：农村信用合作社 \r\n饮食：四海酒家 \r\n其它：7-11便利店、广州市黄埔区文冲街道办事处','银行：农村信用合作社 \r\n饮食：四海酒家','','5栋','72800','23470','洋房','简装','广东粤安物业管理公司','1.5','33.4%','545','400-888-2200 转 13687','黄埔区黄埔东路（广深公路以北文冲村文船路以西）','朝阳区','在售');
INSERT INTO `hh_house_content_5` VALUES ('4','10','5','1','凤凰城位处广州市增城区新塘镇，紧邻广深高速、广园快速路、广惠高速、107国道，交通便捷，到广州天河中央商务区仅30分钟车程，独立交通中心每天发车300多班次，强势运输网络全面覆盖珠三角主要城市，可迅捷到达周边重要交通枢纽。 　　以&ldquo;森林、湖泊、新城市&rdquo; 定位的凤凰城，拉开了广州都市山水新城人居新模式序幕。在开发过程中，凤凰城一直贯彻保护性开发的原则，力求在不改变原有纯自然生态的情况下对现有资源进行美化和运用，营造出一种建筑与自然合二为一、富有自然情趣和亲和力的生活氛围。 　　在开发自然环境的同时，凤凰城坚持&ldquo;配套先行,一次成型&rdquo;的理念，在社区成长硬件的设计上做出大量创造性的实践，开创出极具竞争力的&ldquo;城市级配套&rdquo;模式。 　　2002年，凤凰城大型交通中心、康体中心、商业中心、大型超市等便已投入使用；2003年，超省一级标准的凤凰城中英文学校正式开学；以白金五星级标准建造,集商务、度假于一体的凤凰城酒店试业；2004年凤凰城大型商业配套&mdash;&mdash;东门商业广场启动；2005年，位于凤凰城入口处的广州游乐第一村增城荔枝文化村隆重试业；2006年凤凰城累计获得包括联合国全球人居环境幸福社区创新奖、中国社科院评选的中国百家经典楼盘、十大明星楼盘及和谐人居评鉴至尚园林、最佳居住楼盘等在内的许多大奖；2007年，主打年轻市场的凤馨苑美寓小镇闪亮登场，在六个多月时间里劲销3000套。可以说，随着开发进度的推进，凤凰城的生活环境已经越来越美，越来越舒适和方便，一座缤纷成熟的山水新城已经崛起在东广州。 　　包括凤馨苑在内，凤凰城现已规划建成各具特色的13个独立苑区，包括：超豪别墅区，独立别墅区，联体别墅区，优雅洋房区以及专为外籍人士量身订造的凤凰岛国际租赁社区。数万业主在此安居乐业。五星级的凤凰城，开创广州大型居住社区的新时代。 ','碧桂园物业发展有限公司','增城市广园东快速路（广园路、广深高速新塘出口）','2011-04-01','9000','免费看楼车乘车点：逢节假日宏城广场南门，往凤凰城','银行：中国银行、工商银行、农业银行、建设银行\r\n超市：凤凰城超市、吉之岛超市\r\n学校：凤凰城国际中英文学校\r\n市场：凤凰城生鲜市场、凤凰城超市、便利店、凤凰城东门商业街、九九隆大型商场\r\n娱乐：东门饮食一条街、荔枝文化村\r\n','医院：在建凤凰城医院、新塘人民医院\r\n邮局:凤凰城邮政局 ','','25','1332万','666万','洋房','简装','增城碧桂园物业管理有限公司','2','75%','325','400-888-2200 转 13387','增城市广园东快速路（广园路、广深高速新塘出口）','西城区','在售');
INSERT INTO `hh_house_content_5` VALUES ('5','11','5','1','&nbsp; 　　天虹花园2期阳光雅筑位于广州天河区中山大道，仅有160套，小户型单位，面积49-78平米，高性价比。享受主干道的便利交通，中山大道就在旁边，广园快速干线就在附近，四通八达。项目9层，带电梯。<br />\r\n<br />\r\n　　BRT经过门口中山大道,真正的广州半小时生活圈。天河完善的配套，享受生活轻而易举，地处天河中山大道南区域，辐射各大银行、餐饮商铺和超市，生活便利。<br />\r\n<br />\r\n　　全部户型在设计上以舒适为第一原则,采用大开间、短进深等设计要点，居室长度符合黄金规律。<br />\r\n<br />\r\n　　在室内设计上符合人体工学,充分考虑各功能分区面积的合理性及使用方便性,为业主创造优质的先居住先天条件。 ','广州市粤商投资有限公司','广州市中山大道东189号天虹花园2期阳光雅筑营销中心','2011-04-09','13000','BRT莲溪站、茅岗站：B1、B5、B5快、B15、B16、B17、B20、B24、B26、B27、B28 3、公交莲溪站、茅岗站、珠吉路口站','银行：农业银行黄埔区支行塘口办事处、农行塘口支行、广州农村信用社珠村分社，广州市商业银行（蟹山西路）\r\n超市：富顺货仓商场珠村店（广州）、伟业百货、美华超市\r\n学校：茅岗小学、广州市第八十六中学，广州港幼儿园，天河明珠中英文学校，前进幼儿园，前进小学\r\n医院：康益医疗门诊部、天河同仁医疗门诊部、长泰医疗健康超市门诊部（广州）、广吉康医疗门诊部、广东全球通（康益医疗门诊部北） 、港湾医院&#8206;、黄埔区中医院&#8206;\r\n交通：BRT莲溪、茅岗站；公交莲溪站、茅岗站、珠吉路口站；地铁鱼珠站\r\n其他：鱼珠邮所，中山大道东邮局，茅岗加油站，黄浦区教育局，来来娱乐城，程氏宗祠，沙井程村娱乐室 ','饮食：聚景酒店，旭景唐朝酒楼&#8206;，南岗海鲜港分店&#8206;\r\n','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','23','24408','24408','洋房','简装','广州市腾飞物业管理有限公司','1.38','30%','434','400-888-2200 转 13718','广州市中山大道东189号天虹花园2期阳光雅筑营销中心','东城区','在售');
INSERT INTO `hh_house_content_5` VALUES ('6','12','5','1','&nbsp; 　 1）环市东麓湖畔的尊贵豪宅。<br />\r\n<br />\r\n　　2）纯住宅高尚小区，全日制严密保安。<br />\r\n<br />\r\n　　3）独有双层隔音玻璃设计，安逸宁静。坐拥广州市中心后 花园。','广州市辉煌房地产发展有限公司','越秀区麓苑路39号','2011-04-07','23000','省第二中医院站，途经线路包括109路、110路、111路、184路、245路、297路、546路、547路、706路(原523A路)、883路','小区内部：2500㎡平台花园、3层多功能会所 \r\n学校：广州大学、广州大学科技干部学院、广东广播电视大学、广州市职工大学、广州市建筑总公司职工大学、广州市城建职工大学、广州市第二十一中学、广州市执信中学、中星小学、东山区建设六马路小学、协和小学、环市路小学、市规划局幼儿园、珠江实业公司幼儿园、竹丝幼儿园 \r\n医院：广州市眼科医院、广州市东山区骨伤科医院、广东省交通医院、广州国宾健康检查中心、第三医院华乐分院（淘金北）、广东省第二中医院（淘金路）、广东省银行医院、淘金宠物医院 \r\n银行：中国银行、中国建设银行、中国工商银行、广州市商业银行、恒生银行、渣打银行、星展银行 \r\n饮食：阿里山台湾料理、星巴克、蕉叶、潮濠其他：丽柏广场、广州友谊商店、广州世界贸易中心、好又多淘金分店、越秀区人民政府华乐街道办事处、华乐派出所、花园酒店、白云宾馆、广东国际大酒店、亚洲国际大酒店、中国电信淘金路营业厅、中国移动淘金路营业厅 \r\n','酒家、洲济岛韩国料理 \r\n娱乐：麓湖公园、钱柜KTV、音乐风暴KTV、华泰保龄球馆 \r\n','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','4','7.20万','1.02万','洋房','简装','广州高力国际物业服务有限公司','2.5','82.50%','545','020-83578888','越秀区麓苑路39号','朝阳区','在售');
INSERT INTO `hh_house_content_5` VALUES ('7','13','5','1','&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 都市绿洲：20000平方米绿化面积<br />\r\n<br />\r\n　　尊尚会所：倾城豪华会所、奥林匹克园林泳池<br />\r\n<br />\r\n　　商务中心：天河、环市东、东风东中心商圈交汇处，三大主干道环绕<br />\r\n<br />\r\n　　名门之选：一、二期已全面入住，需求持续上扬，仅售7168元/平方米起<br />\r\n<br />\r\n　　东风广场住宅的总体规划，是八栋呈半月形分布的高层，四期丽豪阁、丽雅阁，为两栋34层高层，是最后一期住宅，靠近环市路。四期共有413套货量，一房有62套；两房有139套；三房有186套；五房复式有10套。<br />\r\n<br />\r\n　　四期产品三梯七户，一房、两房中小户型主要在北边，靠近环市路，发展商特意装了三层隔音玻璃。南向三房大户型，从平面图来看，所有户型都是方正的。<br />\r\n<br />\r\n　　省一级学校东风东路小学已正式落户东风广场，目前正在动工，东风东路小学新校区位于东风广场小区内第三期和第四期之间，紧邻环市东路。学校将于2006年5月底建成并移交给教育局，2006年9月份开始招生。建成后，教学大楼将命名为&ldquo;林百欣教育楼&rdquo;以纪念已故香港丽新集团董事局主席林百欣。 ','广州丽兴房地产开发有限公司','东山东风东路787号（梅花路口）','2011-04-09','13000','多路公交车','会所、泳池，学校、 东风东路小学','会所、泳池','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','43','54354354','5435433','洋房','简装','丽兴房地产开发有限公司','2','25%','43','020-5435435','东山东风东路787号（梅花路口','朝阳区','在售');
INSERT INTO `hh_house_content_5` VALUES ('8','14','5','1','&nbsp;&nbsp;&nbsp; 南国奥林匹克花园位于广州华南板块,南奥占地1000亩，总建筑面积75万平方米，占地面积67万平方米,由洛杉矶奥运村、卡萨布兰卡奥运村、雅典奥运村、悉尼奥运村、北京奥运村五个组团构成。<br />\r\n<br />\r\n　　南奥自成功开盘以来，屡获殊荣，连续得了以下荣誉：广州十佳楼盘，中国第一名盘，中国房地产品牌企业，全国金牌教育社区，全国优秀运动主题社区。<br />\r\n<br />\r\n南奥距地铁三号线汉溪站出口仅350米，准点巴士穿梭往返，都市生活零距离；北师大实验学校及幼儿园、成人教育机制荟萃。区内有大型综合超市、高尔夫酒店，星级服务配套；攀岩、游泳、篮球、羽毛球、健身等设施齐全，多功能运动会所，激情任挥洒。<br />\r\n<br />\r\n升级版的多层洋房&ldquo;生活果岭&rdquo;，总货量约4百套共4万多平方米；将是南国奥园的最后一期多层洋房，户型将以110平方米左右的三房大户为主打。<br />\r\n<br />\r\n第二期小高层洋房主打产品是&ldquo;生活果岭&rdquo;，是小高层和高层的过渡产品。<br />\r\n<br />\r\n南国奥园最高档次的豪宅产品&mdash;&mdash;&mdash;高尔夫球场边的悉尼区新组团，总货量也将有4万多平方米，户型以大户为主，高尔夫球场边的小高层、高层洋房位于南国奥园的最心脏地段，与南奥的百亩永久高尔夫球场相连一体，生态景观绝佳。作为悉尼区的全新组团，该期产品完全以&ldquo;豪宅&rdquo;标准来打造，户型、装修等各方面都将作全面创新，品质也将是同区的最高标准，户型上将有更大面积的多套房产品。<br />\r\n','广州番禺奥林匹克房地产开发有限公司','广州番禺汉溪大道','2011-04-07','18000','距离汉溪长隆地铁站步行约10分钟左右','南国奥园小区外配套：长隆欢乐世界、长隆旅游渡假区、长隆高尔夫练习中心、番禺天河城广场、沃尔玛山姆店、广州国际家居博览中心等。','南国奥园小区内配套：会所、医务所、宏城超市、便利店、幼儿园、北师附属南奥实验学校、奥东酒店、永久高尔夫球场、汉隆酒楼、小资天堂商业街等','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','43','45354','5435','洋房','简装','中国奥园地产集团股份有限公司','3','18%','434','400-888-2200 转 12197','广州番禺汉溪大道','朝阳区','在售');
INSERT INTO `hh_house_content_5` VALUES ('9','15','5','1','&nbsp; 　　银汇华庭位于天河区五山路与天河龙怡路交汇处，整个项目是座北朝南，南面临龙怡路，北面临广园路，东面临五山路，西面临天河北穗园生活小区。项目总占地面积是25925㎡，总建筑面积11万多㎡，总共分两期开发，一期已经入住，现在全新开发二期，包括3栋小高层住宅、1栋32层公寓和1栋29层写字楼。目前先推3栋10层小高层住宅，首层为商铺，2-10层为住宅，共54户，户型面积130-177㎡，一梯两户带入户花园，南北对流，通风采光一流。小区有发展商精心打造的两个主题水景园林，为业主提供一种休闲、安静的生活氛围，更设有泳池和会所，是天河北一线路段绝无仅有的大型园林小区。<br />\r\n<br />\r\n　　项目地理位置优越，附近有十几部公交车经过，地铁华师站E出口就在项目旁边，您只需步行几分钟即可到达，交通十分快捷方便；周边更有华工、华农、华师等高校簇拥，学府气息浓厚，聚合龙脉灵气，是一个罕见的风水宝地，是实至名归的一线天河北 地铁旁 学府华宅。 ','广州市英强房地产有限公司','天河区龙怡路113号(地铁华师站E出口)','2011-04-09','23000','公交：6，20，22，41，78，130，135，191等十多路车','小区内部配套：水景园林,泳池,架空会所,1450平方米文化广场\r\n中小学：广州市113中学,广州市龙口西小学\r\n幼儿园：金太阳幼儿园\r\n综合商场：万佳,百佳\r\n邮局：天润路邮局\r\n其他：林和苑肉菜市场 ','银行：中行,建行,交通银行,光大银行,深发行\r\n医院：广州博爱医院,中山大学附属第三人民医院\r\n','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','43','435435','543543','洋房','豪装','广州星瑞物业管理有限公司','2.3','60%','534','400-888-2200 转 13630','天河区龙怡路113号(地铁华师站E出口)','朝阳区','待售');
INSERT INTO `hh_house_content_5` VALUES ('10','16','5','1','&nbsp;　　逸彩新世界位于珠江大桥脚，总占地面积逾37万平方米，总建筑面积逾120万平方米，共分三期发展，是目前荔湾中心规模最大的&ldquo;首席社区&rdquo;。历经数年开发建设，以国际级建筑品质，超10万平米国际风情园林，高福利全程名校教育体系，完善成熟的各种生活配套体系成为新荔湾的大型居住社区。<br />\r\n<br />\r\n　　项目与中山八路仅一桥之隔，是地铁五号线的上盖物业，地铁五号线途径环市东商圈和珠江新城商圈，被誉为广州市最具价值的地铁线路，而且全线设有5个转乘站，交通十分便利。项目占地37万平方米，总建筑面积达120平方米，是目前荔湾区最大、最成熟、配套设施最完备的园林社区。项目分3个地块进行开发（分别指向3个地块），包括临江地块、即将开发的花卉市场地块、和最成熟，已经有2500余户入住，离地铁站最近的逸彩小区。<br />\r\n<br />\r\n　　逸彩新世界率先享受&ldquo;新荔湾&rdquo;大生活：<br />\r\n<br />\r\n　　大规划：120万平方米超大规模与配套，超宽楼距、低容积率、高绿化率、自然通风采光、室内空气循环等。<br />\r\n<br />\r\n　　大关怀：率先引入国外人性化建筑及户型设计概念，厅房双向采光，南北对流，户户不对望设计，保证绝对私密性。<br />\r\n<br />\r\n　　大绿化：逾10000平方米的中心水景园林，风格崇尚自然，与过百种的植物花草融合活水，达到完美组合。绿化率高达35.5%。<br />\r\n<br />\r\n　　大人文：三位一体的教育体系，从逸彩幼儿园、真光中英文小学到华师附中新世界学校，环环相扣，名校教育链大成集结，形成孩子成长无忧的教育体系。<br />\r\n<br />\r\n　　大配套：五星级会所&ldquo;逸彩花乡&rdquo;，凝聚2800平方米的高尚悠闲，集豪华VIP宴会室、中西餐厅、户外园林泳池、水力按摩池、健身室、桑拿室、乒乓球室、桌球室、舞蹈室等。<br />\r\n<br />\r\n　　大前景：真正的地铁上盖物业，地铁5号线贯穿城市东西走向，直驳中央商务区。内环路延伸工程即将完工，立体式交通网络，辐射四面八方。珠江大桥拓宽工程完工，年底全面通车。<br />\r\n<br />\r\n','广州新世界地产发展有限公司','新世界西区销售中心（荔湾区芳村大道西236号）','2011-04-16','23000','公交：222、19、124、206、34、233、236、206、61路公交车','教育配套：逸彩中英文幼儿园、真光中英文小学（省一级）、华师附中新世界学校；重点中学：真光中学（省一级）；重点大学：暨南大学、华南师范大学、华南理工大学等高校林立\r\n商业配套：即将开业有8000多平方米的商业场所，好又多、家乐福、宏城便民超市\r\n交通配套：周边有30多条公交汽车线路经过，紧邻窖口客运站、中山八路、芳村大道西、广佛路口，珠江大桥上内环出入口。毗领最有价值的地铁五号线，并有市政天桥将小区和地铁月台连接','泳池、健身室、桌球室、缓跑径、乒乓球场、桑拿浴室、餐饮、儿童乐园、绿色迷宫、金紫荆广场，多处的水景园林等\r\n','','23','1200000','580000','洋房','豪装','广州锦日物业管理有限公司','2','35.50％','677','400-888-2200','新世界西区销售中心（荔湾区芳村大道西236号）','朝阳区','售罄');
INSERT INTO `hh_house_content_5` VALUES ('11','17','5','1','&nbsp;　　广州亚运城总建筑面积达147.8万平方米，其中供居住的面积达110多万平方米。其&ldquo;三大村&rdquo;一共包含96栋住宅楼，共8078套单位，户型非常丰富，有70平方米到180平方米等多种户型，基本能满足市民们的多种购房需求。据广州市重点项目办有关负责人介绍，亚运城&ldquo;三大村&rdquo;将分别主攻小、中、大户型，其建筑装修风格多样，分别采用现代、古典、异域风情等不同风格。<br />\r\n<br />\r\n<br />\r\n<br />\r\n　　亚运城北面和东面分别是莲花山风景区、小浮莲山、海鸥岛生态旅游区和珠江入海口；项目内水网密布，河水清澈，环境宜人，绿化率高达54％，是广州绿化率最高的社区；内外环境造就&rdquo;云山珠水&ldquo;缩影，生态环境宜人。<br />\r\n<br />\r\n<br />\r\n<br />\r\n　　1、亚运城低碳特色：<br />\r\n<br />\r\n　　2、综合管沟<br />\r\n<br />\r\n　　3、真空垃圾收集系统<br />\r\n<br />\r\n　　4、分质供水及雨水综合利用<br />\r\n<br />\r\n　　5、新能源－太阳能及水源热泵<br />\r\n<br />\r\n　　6、建筑节能<br />\r\n<br />\r\n　　7、数字化社区及智能家居<br />\r\n<br />\r\n　　8、三维虚拟现实仿真系统<br />\r\n<br />\r\n　　9、绿色交通<br />\r\n<br />\r\n　　10、人文环境营造－岭南水乡 ','广州利合房地产开发有限公司','东方宾馆、花园酒店、科尔海悦酒店、富力中心、富力盈信大厦、白云机场','2011-04-01','10000','地铁4号线海傍站','学校：广东教育学院 \r\n商场:一佳平价百货 \r\n医院：石楼人民医院、化龙医院、广州医学院第四附属医院 \r\n银行：中国建设银行番禺莲花山办事处、广州市莲花山邮政储蓄所 \r\n饮食：威尼斯西餐厅(石楼镇规划国土建设办公室东)、阳光快餐店 \r\n娱乐：莲花山 、海鸥岛\r\n其他：加油站(怡乐海鲜楼西) ','住宿服务中心、社区服务中心、储藏中心、运行支持中心、公共餐厅、综合体育馆、主媒体中心、国际区\r\n','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','32','5432423','545444','洋房','豪装','利合房地产开发有限公司','3','25%','434','020-675756765','番禺区 石楼镇清河东路以南地段','东城区','待售');
INSERT INTO `hh_house_content_5` VALUES ('12','18','5','1','&nbsp; 　　该项目由西湾路东西地块组成，总占地面积达26万平方米，建筑面积达65万平方米，是一个集住宅、商场、写字楼等一体的大型综合性项目。<br />\r\n<br />\r\n　　西边地块共有11栋住宅楼宇，若以规划中的中央园林为界，北侧有6栋，南侧有5栋，现场正在施工的，便是北侧的6栋楼宇。11栋楼宇都是32层高，整体呈&ldquo;C&rdquo;形布局，中央是超过3万平方米的园林。<br />\r\n<br />\r\n　　预计2009年第三季度开盘。<br />\r\n','越秀城建地产','西湾路中段','2011-04-16','23000','20多公车路线近在门口，有 17 、62、71、80、134、175、176、179、196、212、215、225、228、238、241、524、543、545、832、夜2、夜15、夜21路车','1、商业：东区商业地块近30万平方米商贸城及公寓、写字楼。另外周边配套完善、银行、酒楼、大型超市、便利店等样样齐全。\r\n2、交通：20多公车路线近在门口，有 17 、62、71、80、134、175、176、179、196、212、215、225、228、238、241、524、543、545、832、夜2、夜15、夜21路车。地铁五号线近在家门，5分钟即可步行到西村站，30分钟皆可到达天河商务办公区。交通便捷，5分钟可达站西及南岸专业市场商圈，10分钟即可到达广园路及中山八路，15分钟皆可到上下九步行街。\r\n3、教育：区内教学配套完善，区内自有幼儿园、小学、中学一条龙教育配套，周边名校林立，协和小学（省一级）、协和中学（省一级）、广雅中学（省一级）等多所名校。\r\n4、生活：项目配套完善，会所、市场、派出所、邮政所一应俱全。\r\n','会所、市场、派出所、邮政所一应俱全','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','34','5435555','666555','洋房','豪装','城建物业管理','3','45%','444','020-5888888','荔湾区 西湾路中段','朝阳区','售罄');
INSERT INTO `hh_house_content_5` VALUES ('13','19','5','1','&nbsp; 　　锦绣半岛&mdash;&mdash;广州超大型城市半岛江景社区，是广州市区绝无仅有的江景资源与都市繁华完美结合的至大型都市都市半岛生活社区。独享自然天赋的1500米私家江岸线，南、西、北三面临江。视野开阔，可望一线浩瀚珠江江景，远眺荔湾，壮观景象尽收眼底。<br />\r\n<br />\r\n　　锦绣半岛坐拥的南浦岛，有广州&ldquo;新二沙岛&rdquo;的美誉。位于广州南拓核心地段，是新火车站物流圈、亚运新城产业圈、洛溪商业圈及地铁二号线延长线、地铁7号线的交汇点。随着东沙大桥的即将开通，番禺荔湾将会紧密相连。通过洛溪大桥、新光大桥、东新高速等交通网络，便可畅达大广州，尽享都市成熟配套。<br />\r\n<br />\r\n　　锦绣半岛首期占地面积超过6万平方米，全部由18－25、26层的高层洋房组成。有关负责人介绍，该盘仍沿用WY建筑设计顾问公司为建筑规划设计，楼盘外立面是浪漫的法式建筑风格，主色调为米黄色。<br />\r\n','广州比华利庄园有限公司','广州市番禺区洛浦街南浦环岛西路','2011-04-07','15000','公交系统：地铁2、7号线，公交13路','大型购物街、天河城偶莱斯名牌折扣店、禺山折扣店、番禺友谊中心、番禺广场地下商场、番山商贸城等特色商店美食街；国泰卡拉OK娱乐城、丽江明珠歌剧院、市桥文化中心等；银行、幼儿园、中小学校、密集交通网络等生活配套一应俱全。 ','银行、幼儿园、中小学校','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','43','444000','90000','洋房','豪装','比华利庄园有限公司','2.2','25%','400','020-5444111','广州市番禺区洛浦街南浦环岛西路','东城区','待售');
INSERT INTO `hh_house_content_5` VALUES ('14','20','5','1','&nbsp; 　　恒大绿洲位于珠江上游，定位为恒大地产&ldquo;最高端市中心江景豪宅大盘&rdquo;，总用地面积约14.4万平方米，总建筑面积近48万平方米，分为南区和北区，北区产品为天际别墅和情景洋房，整体面积区间为183-410平方米；南区为82-182平方米的11层精致三房。情景洋房采用层层退台式的设计，达到移步换景的效。一线江景，360度园林景观，展开式的视觉享受。项目主力户型为两梯两户的板式设计，保证了绝大部分户型的南北朝向和整体均好的观景效果。社区大部分首层建筑均采用架空层设计，与社区叠错式园景相互呼应。<br />\r\n<br />\r\n　　恒大绿洲的另一大亮点是世界级园林，由新加坡格美国际大师亲自执笔，整个项目呈矩形，环抱着8万平方米的夏威夷风情园林、20000平方米的主题景观湖，设有下叠式叠水园林广场及1500平米空中花园。并有大型皇家运动中心、国际双语幼儿园及小学、大型商业中心等齐全的生活配套，5分钟直达环市路、东风路、中山路商圈。<br />\r\n','广州恒大地产集团','位于金沙洲大桥以南','2011-04-23','18000','4座大桥联通：金沙洲大桥、白沙河大桥、沉香沙大桥、大坦沙大桥','小区配套：大型皇家运动中心、国际双语幼儿园及小学、大型商业中心、医疗中心、户外运动场、室内外双泳池设计\r\n银行：中国工商银行、中国农业银行\r\n','肉菜市场：沙凤村、横沙村、新社区的大型肉菜市场 ','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','23','45000','30000','洋房','豪装','戴德梁行(广州)物业管理有限公司','2','35%','350','020-88444555','位于金沙洲大桥以南','宣武区','在售');
INSERT INTO `hh_house_content_5` VALUES ('15','21','5','1','&nbsp; 　　东银广场位于东晓路与前进路交界，横跨前进路与万寿路，地处海珠区商业文化中心，与中山大学、广州美术学院、晓港公园相邻，除了令住户置身于成熟生活配套外，更有旺中带静的优势。<br />\r\n<br />\r\n　　东银广场由四栋高层组成，宽达80米的楼距，是海珠区中心大型综合商住小区。项目的交通十分便捷，与&ldquo;河北&rdquo;商业旺地仅一桥之隔，多达十几条公交线路、内环路及地铁二号线使住户可方便出行。周边包括购物中心、娱乐休闲场所林立，小区更自设万佳超市、综合商场及地下停车场，各种生活配套应有尽有。<br />\r\n<br />\r\n　　东银广场特聘国际一流的东亚物业管理公司为业主提供酒店式服务，硬件方面配备成熟的智能化管理系统，以求为住户提供优越的生活服务。<br />\r\n<br />\r\n　　主推户型由74~108平方米不等，间隔包括两房、三房单位，户户间隔方正实用，通风采光理想，而且全部含豪华装修。 ','广州市东银房地产有限公司','海珠区东晓路38号（明珠花园对面','2011-04-23','15000','公共汽车线路： 夜4路 11路 18路 高峰快线27路 35路 44路 80路 184路 188路 192路 208路 264路 287路 542路 546路 548路 811路 813路 864路','生活、商业、商务综合体——多个大型商场（现时华润万家商场、三、四期裙楼商场等）、一栋酒店级商务公寓（二期）、两栋国际住宅（三、四期）、后现代三维立体空中园林、泛会所、商务中心（二期配套）\r\n购物：项目自身多个商场、万国广场、歌哥商场（金谷潮流购物广场）、万松园市场、好又多超市\r\n交通：晓港地铁站、市二宫地铁站、内环路、数十条公交线路连通珠江两岸\r\n娱乐：自身金矿、玉珑泉，晓港公园、海印公园（海印桥旁）\r\n教育：四十一中，东山名校区，前进路小学\r\n','餐饮：项目自身的尚馆、小肥羊、周边全市著名餐饮名店有南苑、炳盛等\r\n','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','324','444000','30000','洋房','豪装','东亚物业管理（广州）有限公司','1.96','40%','300','020-88774445','海珠区东晓路38号（明珠花园对面）','石景山区','在售');
INSERT INTO `hh_house_content_5` VALUES ('16','22','5','1','&nbsp; 　　港安银座位于南沙中心城区最核心地段，交通方便；扼守南沙中轴主干道进港大道、接驳虎门高速公路、南部快速干线、东部快速干线;距地铁四号线金洲站和蕉门站步行约二十五分钟;公交线路方便,有多条线路途径此站并接驳到市桥、洛溪、广州流花车站等地；项目所在地是南沙商业、居住中心，周边有成熟大型社区南沙碧桂园，周边多个成熟居住楼盘环绕。<br />\r\n<br />\r\n<br />\r\n<br />\r\n　　港安银座设计力图突破传统的平面布局，在高密度的城市环境中塑造出一个品质优良、富有强烈时代特征的动静结合的建筑群体。建筑形体以点、线、面为构成的三要素，注意总体形态的起伏变化，重点突出建筑外观简洁明快、新颖大方的特征，做到建筑与环境高度融合。<br />\r\n','港安房地产开发有限公司','广州南沙进港大道珠电路口','2011-04-14','20000','扼守南沙中轴主干道进港大道、接驳虎门高速公路','南沙第二中学，南沙中心医院，今洲地铁站，今洲市场，今洲邮局，中国银行，中国工商银行，中国建设银行，广州农村商业银行等等\r\n','地上十九层,地下一层,裙楼三层(局部四层) ,5 - 1 9层塔楼定位为星级酒店式公寓,裙楼三层(局部四层)， 一、二层定位品牌店式商铺，三、四层为购物商场和餐饮娱乐业态 ','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','3','700000','400000','洋房','豪装','房地产开发有限公司','2','45%','500','020-554400','广州南沙进港大道珠电路口','崇文区','待售');
INSERT INTO `hh_house_content_5` VALUES ('17','23','5','1','&nbsp; 　　2002年度中国名盘50强、广州市民十大最喜爱楼盘、中国文化名盘、最佳人居环境金奖、广州十大明星楼盘、最佳园林景观金奖。<br />\r\n<br />\r\n　　星河湾位于华南板块华南快速干线南出口，占地面积1200亩，首期总投资8亿人民币，建筑面积共30多万平方米，居住户数1900余户，由六大充满异域风情的水景园林社区组合而成。星河湾首期拥有1个美仑美奂的会所，另有8个&ldquo;组团客厅&rdquo;式的私家型休闲会所散落于社区中，同时引进省级经典名校执信中学，星河湾商业联盟将汇聚上百家各种领域的商家，为业主全面提供尊贵和优惠的各种服务。<br />\r\n<br />\r\n　　拥有一江两河四湖六大泳池、四十六大园林水景及独有的天然活水生态循环系统，组合成拥有六大充满异域风情的水景园林社区，向人们展现了一个亚热带人居环境的典范。同时，星河湾还具有1800米长的全线江景，铺建近2公里长的滨江架空木地板景观休闲长廊','广州宏富房地产有限公司','广州番禺迎宾路沙溪大桥南岸','2011-04-09','16000','紧邻地铁3号线、华南快速干','周边配套：星河湾酒店、商铺、超市、餐饮及康体娱乐中心、数百间豪华客房、多功能会议室及国际标准网球场\r\n小区配套：特色鱼池、地下车库、儿童游乐场、特色乔木、热带棕榈园、休闲木道、特色水景、热带园林、太极广场等 ','星河湾海怡半岛即将在9月底推出，该项目将成为星河湾在广州开发的最高端豪宅项目。一期由6栋22～27层的高层建筑组成，楼距比广州星河湾更开阔。户型以250平方米左右的大单位为主，配备少量300～500平方米的超大户型以及部分90平方米的紧凑户型','http://player.youku.com/player.php/sid/XMTU0MjA4NTEy/v.swf','34','600000','500000','洋房','豪装','宏富房地产有限公司','4','50%','200','020-8877444','广州番禺迎宾路沙溪大桥南岸','昌平区','待售');
INSERT INTO `hh_house_content_6` VALUES ('2','34','6','1','我的地产感言 我知道，社会对地产经纪行业的美誉度普遍不高，对地产经纪这个职业也存有偏见。<br />\r\n<br />\r\n但是，正因为此，我们多了一份奋斗的使命：尽最大的努力，令我们的职业象其他专业人士一样受人尊重。<br />\r\n<br />\r\n在此逐利，我宣誓，不管其他行家有怎样违反操守、忘义的行为，我一定恪守职业道德，履行优质服务的诺言，用最专业、最诚信、最透明、最高效的服务赢得客户，像给自己买房一样服务好客户，像对待自己的家一样珍惜业主的房产，努力做到成交前令客户开心、满意，成交后能与客户成为朋友。让有满堂红人的城市，买房、卖房都成为一件轻松开心的事！郑重承诺：为您的来电保密，以免您接到过多的骚扰电话。透明交易不吃差价。<br />\r\n<br />\r\n严格控制交易过程，将客户风险降到最低。 打造满堂红权威真实房源网上店 从你我做起 祈福新村房地产满堂红网络经纪人 杨志雄','朝阳区','满堂红','hh_house_/6/1_20110416210413_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','三年');
INSERT INTO `hh_house_content_6` VALUES ('3','35','6','1','　&nbsp;&nbsp; 本人姓陈名字一个荣，工龄两年多，善于沟通与交流，真诚、<br />\r\n<br />\r\n专业的服务，积极上进的学习态度，为好口碑而努力，望多多支持！！！&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<br />\r\n在番禺区(洛溪新城)这边10多年，熟悉这边各个小区所有的楼盘，也见到了这边发展潜力和升值空间!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<br />\r\n<br />\r\n<strong>希望第一时间帮到您！ </strong>','海淀区/丰台区','中原地产','hh_house_/6/1_20110416210401_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','两年');
INSERT INTO `hh_house_content_6` VALUES ('4','36','6','1','&nbsp; 高远的目标不会让我望而且畏，虽然在达到目标以前可能屡受挫折。摔倒了，再爬起来，我不灰心，因为每个人在抵达目标前都会受到挫折。只有小爬虫不必担心摔倒。我不是小爬虫，不是洋葱，不是绵羊。我是一个人。让别人作他们的粘土造洞穴吧，我只要造一座城堡。','通州区','满堂红','hh_house_/6/1_20110416210447_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','两年');
INSERT INTO `hh_house_content_6` VALUES ('5','37','6','1','　&nbsp;&nbsp; 本人从事房地产3年，对二手物业的操作流程及政策税费非常熟悉。本人在芳村区从事地产3年，对芳村区发展规划非常了解。本人工作认真负责.态度诚恳并对周边楼市非常了解，以贴身的服务希望能尽我所能，帮你找到满意的房子。 欢迎各位致电咨询！','海淀区/丰台区','满堂红','hh_house_/6/1_20110416210435_MTNhOGY1NjJjYWQ0NDRiMzg2ODYzYTM4ZTgyMzlmMWM=.jpg','两年');
INSERT INTO `hh_house_content_6` VALUES ('6','38','6','1','&nbsp; 祖籍梅州，客家人，毕业于华南农业大学，性格开朗，乐观，乐于助人，喜欢和志同道合的人交朋友！<br />\r\n<br />\r\n选择做销售，是因为有一句话，后悔的事莫过于没有在年轻的时候奋斗过！宁愿辛苦一阵子，也不愿辛苦一辈子！做事先做人！<br />\r\n&mdash;&mdash;原则<br />\r\n<br />\r\n所以，无论现在的生活工作有多苦，我都会坚持下去！您要别人怎么样对待您，您也要怎样待别人！我的手机号码永久有效，亲爱的朋友，买房卖房，租赁写字楼，找我，没错，我将竭诚为您服务，愿我们不单纯是中介和客户的关系，更是好朋友！进入满堂红，需要勇气，也需要有底气，很多人说辛苦，但是我觉得，这点辛苦算什么呢？我宁愿现在辛苦点，也不愿到老的时候还是在持续上班，现在的付出是为了以后活得精彩！相信我会为你找到最适合你心水的写字楼！<br />\r\n<br />\r\n我将全心为您服务！ ','海淀区/丰台区','美之居','hh_house_/6/1_20110416210443_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','一年');
INSERT INTO `hh_house_content_6` VALUES ('7','39','6','1','&nbsp;从2007年8月到现在，从一个见习物业顾问到营业主任，满堂红在我这张白纸上画出了五彩缤纷的景色。&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;<br />\r\n当然，有得必有失！以前总是坚持着不把工作当作生活的全部，而现在不得不把工作当作生活的全部，无论是什么时候客户有需要，我们都得放下自己的事情去处理。很累！慢慢的适应了，也学会了以一种轻松、积极的心态去面对工作，所以我过得很充实，也很快乐！&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<br />\r\n在领导眼中我是一个肯学、听话、悟性高的人；在客户眼中我是一个勤劳、细心、认真的人。<br />\r\n<br />\r\n这些日子最开心的就是有了一些回头客！给了我更大的信心和动力，同时也很有成就感！&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n<br />\r\n我是天河区、越秀区写字楼租赁专家，希望大家多多关照与指教！','丰台区/西城区','我爱我家','hh_house_/6/1_20110416210427_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','三年');
INSERT INTO `hh_house_db` VALUES ('13','5','1','1');
INSERT INTO `hh_house_db` VALUES ('11','5','1','1');
INSERT INTO `hh_house_db` VALUES ('8','5','1','1');
INSERT INTO `hh_house_db` VALUES ('34','6','1','1');
INSERT INTO `hh_house_db` VALUES ('12','5','1','1');
INSERT INTO `hh_house_db` VALUES ('9','5','1','1');
INSERT INTO `hh_house_db` VALUES ('10','5','1','1');
INSERT INTO `hh_house_db` VALUES ('14','5','1','1');
INSERT INTO `hh_house_db` VALUES ('15','5','1','1');
INSERT INTO `hh_house_db` VALUES ('16','5','1','1');
INSERT INTO `hh_house_db` VALUES ('17','5','1','1');
INSERT INTO `hh_house_db` VALUES ('18','5','1','1');
INSERT INTO `hh_house_db` VALUES ('19','5','1','1');
INSERT INTO `hh_house_db` VALUES ('20','5','1','1');
INSERT INTO `hh_house_db` VALUES ('21','5','1','1');
INSERT INTO `hh_house_db` VALUES ('22','5','1','1');
INSERT INTO `hh_house_db` VALUES ('23','5','1','1');
INSERT INTO `hh_house_db` VALUES ('24','2','1','1');
INSERT INTO `hh_house_db` VALUES ('25','2','1','1');
INSERT INTO `hh_house_db` VALUES ('26','2','1','1');
INSERT INTO `hh_house_db` VALUES ('27','2','1','1');
INSERT INTO `hh_house_db` VALUES ('28','2','1','1');
INSERT INTO `hh_house_db` VALUES ('29','1','1','1');
INSERT INTO `hh_house_db` VALUES ('30','1','1','1');
INSERT INTO `hh_house_db` VALUES ('31','1','1','1');
INSERT INTO `hh_house_db` VALUES ('32','1','1','1');
INSERT INTO `hh_house_db` VALUES ('33','1','1','1');
INSERT INTO `hh_house_db` VALUES ('35','6','1','1');
INSERT INTO `hh_house_db` VALUES ('36','6','1','1');
INSERT INTO `hh_house_db` VALUES ('37','6','1','1');
INSERT INTO `hh_house_db` VALUES ('38','6','1','1');
INSERT INTO `hh_house_db` VALUES ('39','6','1','1');
INSERT INTO `hh_house_db` VALUES ('40','3','1','1');
INSERT INTO `hh_house_db` VALUES ('41','3','1','1');
INSERT INTO `hh_house_db` VALUES ('42','3','1','1');
INSERT INTO `hh_house_db` VALUES ('43','4','1','1');
INSERT INTO `hh_house_db` VALUES ('44','4','1','1');
INSERT INTO `hh_house_db` VALUES ('45','4','1','1');
INSERT INTO `hh_house_db` VALUES ('46','3','1','1');
INSERT INTO `hh_house_field` VALUES ('1','1','详情','content','mediumtext','0','11','ieedit','600','150','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('2','1','性质','sortid','int','3','20','radio','0','0','1|中介\r\n2|个人','','','','0','1','1','1','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('24','2','室内布局','room_type','varchar','30','18','select','0','0','两室一厅\r\n两室两厅\r\n三室一厅\r\n三室两厅\r\n一室一厅\r\n一居室\r\n三室以上\r\n别墅','','','','0','0','1','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('23','2','价格','price','int','8','19','text','12','0','','','万元','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('22','2','性质','sortid','int','3','20','radio','0','0','1|中介\r\n2|个人','','','','0','1','1','1','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('21','2','详情','content','mediumtext','0','11','ieedit','600','150','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('9','5','楼盘介绍','content','mediumtext','0','0','ieedit','600','150','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('77','6','从业经验','my_234','varchar','50','0','radio','0','0','一年\r\n两年\r\n三年\r\n四年以上','','','','0','0','1','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('11','6','个人介绍','content','mediumtext','0','0','ieedit','400','150','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('12','6','服务区域','fuwu_zone','varchar','50','0','checkbox','0','0','朝阳区\r\n海淀区\r\n丰台区\r\n西城区\r\n通州区\r\n东城区\r\n昌平区\r\n宣武区\r\n崇文区\r\n石景山区\r\n其他区县','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('13','1','价格','price','int','8','19','text','12','0','','','元/月','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('14','1','室内布局','room_type','varchar','30','18','select','0','0','两室一厅\r\n两室两厅\r\n三室一厅\r\n三室两厅\r\n一室一厅\r\n一居室\r\n三室以上\r\n别墅','','','','0','0','1','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('15','1','配套设施','peitao','varchar','150','17','checkbox','0','0','水\r\n电\r\n电话\r\n宽带\r\n管道煤气\r\n电梯\r\n家具','水/电','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('16','1','面积','acreage','varchar','12','16','text','5','0','','','平方米','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('17','1','装修情况','fitment','varchar','15','15','radio','0','0','普通装修\r\n精装修\r\n豪华装修\r\n毛坯房','普通装修','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('18','1','所在楼层','floor','varchar','12','14','text','4','0','','','楼','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('19','1','附近公交站','station','varchar','100','13','text','200','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('20','1','公交路线','bus','varchar','50','12','text','255','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('25','2','配套设施','peitao','varchar','150','17','checkbox','0','0','水\r\n电\r\n电话\r\n宽带\r\n管道煤气\r\n电梯\r\n家具','水/电','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('26','2','面积','acreage','varchar','12','16','text','5','0','','','平方米','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('27','2','装修情况','fitment','varchar','15','15','radio','0','0','普通装修\r\n精装修\r\n豪华装修\r\n毛坯房','普通装修','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('28','2','所在楼层','floor','varchar','12','14','text','4','0','','','楼','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('29','2','附近公交站','station','varchar','100','13','text','200','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('30','2','公交路线','bus','varchar','50','12','text','255','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('31','3','要求简述','content','mediumtext','0','11','textarea','400','50','','','','如对小区/楼层/位置/总价/租金/装修/朝向等方面的要求','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('33','3','期望价格','price','varchar','20','19','text','50','0','','','元/月','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('34','3','期望布局','room_type','varchar','30','18','select','0','0','两室一厅\r\n两室两厅\r\n三室一厅\r\n三室两厅\r\n一室一厅\r\n一居室\r\n三室以上\r\n别墅','','','','0','0','1','1','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('36','3','期望面积','acreage','varchar','20','16','text','50','0','','','平方米','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('37','3','期望装修情况','fitment','varchar','15','15','radio','0','0','普通装修\r\n精装修\r\n豪华装修','普通装修','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('38','3','期望楼层','floor','varchar','30','14','text','30','0','','','楼','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('41','4','要求简述','content','mediumtext','0','11','textarea','400','50','','如对小区/楼层/位置/总价/租金/装修/朝向等方面的要求','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('43','4','期望价格','price','varchar','20','19','text','50','0','','','万元','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('44','4','期望布局','room_type','varchar','30','18','select','0','0','两室一厅\r\n两室两厅\r\n三室一厅\r\n三室两厅\r\n一室一厅\r\n一居室\r\n三室以上\r\n别墅','','','','0','0','1','1','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('46','4','期望面积','acreage','varchar','20','16','text','40','0','','','平方米','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('47','4','期望装修情况','fitment','varchar','15','15','radio','0','0','普通装修\r\n精装修\r\n豪华装修\r\n毛坯房','普通装修','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('48','4','期望楼层','floor','varchar','12','14','text','30','0','','','楼','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('51','5','开发商','seller','varchar','100','0','text','200','0','','','','','0','1','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('52','5','地址','address','varchar','150','0','text','400','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('53','5','开盘时间','star_sell','varchar','20','0','time','0','0','','','','','0','1','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('54','5','楼盘均价','price','int','5','0','text','100','0','','','元/平米','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('55','5','周边交通','bus','varchar','250','0','text','300','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('56','5','周边配套','out_peitao','mediumtext','0','0','textarea','300','150','','学校:\r\n购物:\r\n医院:\r\n银行:\r\n餐饮:\r\n其它:','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('57','5','小区配套','in_peitao','mediumtext','0','0','textarea','300','150','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('59','5','楼盘视频','videourl','varchar','100','0','text','400','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('60','5','楼盘形态与栋数','house_num','varchar','30','0','text','100','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('61','5','总占地面积','total_area','varchar','10','0','text','10','0','','','平方米','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('62','5','总建筑面积','room_area','varchar','10','0','text','10','0','','','平方米','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('63','5','楼盘类型','roomtype','varchar','50','0','checkbox','0','0','洋房\r\n公寓\r\n别墅','洋房','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('64','5','装修情况','fitment','varchar','30','0','radio','0','0','毛坯\r\n简装\r\n豪装','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('65','5','物业公司','my_134','varchar','100','0','text','250','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('66','5','物业管理费','my_523','varchar','4','0','text','8','0','','','元','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('67','5','绿化率','my_755','varchar','20','0','text','20','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('68','5','车位数','my_898','varchar','20','0','text','30','0','','','个','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('69','5','售楼电话','my_208','varchar','40','0','text','100','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('70','5','售楼处地址','sell_address','varchar','100','0','text','200','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('71','5','区域','zone_area','varchar','30','0','select','0','0','朝阳区\r\n海淀区\r\n丰台区\r\n西城区\r\n通州区\r\n东城区\r\n昌平区\r\n宣武区\r\n崇文区\r\n石景山区\r\n其他区县','','','','0','0','1','0','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('72','5','销售状态','my_432','varchar','20','0','select','0','0','在售\r\n待售\r\n售罄','','','','0','0','1','1','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('73','6','所属门店','store','varchar','50','0','select','100','0','满堂红\r\n美之居\r\n中原地产\r\n我爱我家\r\n其它','','','','0','0','1','1','','','','','31','');
INSERT INTO `hh_house_field` VALUES ('76','6','头像','face','varchar','150','0','upfile','0','0','','','','','0','0','0','0','','','','','31','');
INSERT INTO `hh_house_module` VALUES ('1','0','出租','0','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','','0','0','a:4:{s:4:\"list\";s:14:\"list_chuzu.htm\";s:4:\"show\";s:18:\"bencandy_chuzu.htm\";s:4:\"post\";s:14:\"post_chuzu.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_house_module` VALUES ('2','0','出售','0','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','','0','0','a:4:{s:4:\"list\";s:13:\"list_sell.htm\";s:4:\"show\";s:17:\"bencandy_sell.htm\";s:4:\"post\";s:13:\"post_sell.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_house_module` VALUES ('3','0','求租','0','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','','0','0','a:4:{s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:4:\"post\";s:0:\"\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_house_module` VALUES ('4','0','求购','0','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','','0','0','a:4:{s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:4:\"post\";s:0:\"\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_house_module` VALUES ('5','0','楼盘','0','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"1\";}}','','0','0','a:4:{s:4:\"list\";s:15:\"list_xiaoqu.htm\";s:4:\"show\";s:19:\"bencandy_xiaoqu.htm\";s:4:\"post\";s:15:\"post_xiaoqu.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_house_module` VALUES ('6','0','中介','0','','a:1:{s:9:\"moduleSet\";a:1:{s:6:\"useMap\";s:1:\"0\";}}','','0','0','a:4:{s:4:\"list\";s:17:\"list_zhongjie.htm\";s:4:\"show\";s:21:\"bencandy_zhongjie.htm\";s:4:\"post\";s:17:\"post_zhongjie.htm\";s:6:\"search\";s:0:\"\";}');
INSERT INTO `hh_house_pic` VALUES ('117','2','2','0','1','0','qb_house_/2/1_20110325160349_M183Tlg0Z25JeE1wMzM=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('118','2','2','0','1','0','qb_house_/2/1_20110325160349_OEZGNUEwMjJGNUI0NDQxQ0IxNDA4NkJDNjYzMDQ0NUMyMDA2MDgwMjE3NTI=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('119','3','5','0','1','0','qb_house_/5/1_20110325170316_M19wYzNJV1V5SFduNkU=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('120','3','5','0','1','0','qb_house_/5/1_20110325170316_NkQwM0ZDQjdEMTZGNDIwNTk5RjBFOTYyQTcyQzI2Q0UyMDA2MDgwMzExNDc=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('121','4','6','0','1','0','qb_house_/6/1_20110331100342_M19wYzNJV1V5SFduNkU=.jpg','4房');
INSERT INTO `hh_house_pic` VALUES ('122','4','6','0','1','0','qb_house_/6/1_20110331100342_MDZfejk3UjBUWFlIQU5U.jpg','3房');
INSERT INTO `hh_house_pic` VALUES ('123','4','6','0','1','0','qb_house_/6/1_20110331150359_OF9za1JybHVYdEE3S2w=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('124','4','6','0','1','0','qb_house_/6/1_20110331150359_N185a1BwN3E1dTFRc3c=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('125','4','6','0','1','0','qb_house_/6/1_20110331150359_MDAz.jpg','');
INSERT INTO `hh_house_pic` VALUES ('126','5','2','0','1','0','qb_house_/2/1_20110331160311_NkQwM0ZDQjdEMTZGNDIwNTk5RjBFOTYyQTcyQzI2Q0UyMDA2MDgwMzExNDc=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('127','5','2','0','1','0','qb_house_/2/1_20110331160312_MV9IaVlwM2hnUzF0NWM=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('128','1','1','0','1','0','qb_house_/1/1_20110407170429_M183Tlg0Z25JeE1wMzM=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('129','8','5','0','1','0','qb_house_/5/1_20110408110400_MQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('130','8','5','0','1','0','qb_house_/5/1_20110408110400_Mg==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('131','8','5','0','1','0','qb_house_/5/1_20110408110400_Mw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('132','9','5','0','1','0','qb_house_/5/1_20110408110419_NA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('133','9','5','0','1','0','qb_house_/5/1_20110408110419_NQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('134','9','5','0','1','0','qb_house_/5/1_20110408110419_Ng==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('135','10','5','0','1','0','qb_house_/5/1_20110408110419_Nw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('136','10','5','0','1','0','qb_house_/5/1_20110408110419_OA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('137','10','5','0','1','0','qb_house_/5/1_20110408110420_OQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('138','11','5','0','1','0','qb_house_/5/1_20110408110434_MQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('139','11','5','0','1','0','qb_house_/5/1_20110408110435_Mg==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('140','11','5','0','1','0','qb_house_/5/1_20110408110435_Mw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('141','12','5','0','1','0','qb_house_/5/1_20110408140444_MDA=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('142','12','5','0','1','0','qb_house_/5/1_20110408120423_NQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('143','13','5','0','1','0','qb_house_/5/1_20110408120434_Ng==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('144','13','5','0','1','0','qb_house_/5/1_20110408120434_Nw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('145','13','5','0','1','0','qb_house_/5/1_20110408120434_OA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('146','14','5','0','1','0','qb_house_/5/1_20110408120403_MQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('147','14','5','0','1','0','qb_house_/5/1_20110408120403_Mg==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('148','14','5','0','1','0','qb_house_/5/1_20110408120403_Mw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('149','15','5','0','1','0','qb_house_/5/1_20110408140429_MA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('150','15','5','0','1','0','qb_house_/5/1_20110408130403_NQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('151','15','5','0','1','0','qb_house_/5/1_20110408130404_Ng==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('152','16','5','0','1','0','qb_house_/5/1_20110408130413_Nw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('153','16','5','0','1','0','qb_house_/5/1_20110408130413_OA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('154','16','5','0','1','0','qb_house_/5/1_20110408130413_OQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('155','17','5','0','1','0','qb_house_/5/1_20110408130455_MQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('156','17','5','0','1','0','qb_house_/5/1_20110408130456_Mg==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('157','17','5','0','1','0','qb_house_/5/1_20110408130456_Mw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('158','18','5','0','1','0','qb_house_/5/1_20110408130418_NA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('159','18','5','0','1','0','qb_house_/5/1_20110408130418_NQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('160','18','5','0','1','0','qb_house_/5/1_20110408130418_Ng==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('161','19','5','0','1','0','qb_house_/5/1_20110408130441_Nw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('162','19','5','0','1','0','qb_house_/5/1_20110408130441_OA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('163','19','5','0','1','0','qb_house_/5/1_20110408130442_OQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('164','20','5','0','1','0','qb_house_/5/1_20110408130406_MQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('165','20','5','0','1','0','qb_house_/5/1_20110408130406_Mg==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('166','20','5','0','1','0','qb_house_/5/1_20110408130406_Mw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('167','21','5','0','1','0','qb_house_/5/1_20110408130439_NA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('168','21','5','0','1','0','qb_house_/5/1_20110408130439_NQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('169','21','5','0','1','0','qb_house_/5/1_20110408130439_Ng==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('170','22','5','0','1','0','qb_house_/5/1_20110408130457_Nw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('171','22','5','0','1','0','qb_house_/5/1_20110408130457_OA==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('172','22','5','0','1','0','qb_house_/5/1_20110408130457_OQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('173','23','5','0','1','0','qb_house_/5/1_20110408130430_MQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('174','23','5','0','1','0','qb_house_/5/1_20110408130431_Mg==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('175','23','5','0','1','0','qb_house_/5/1_20110408130431_Mw==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('176','24','2','0','1','0','hh_house_/2/1_20110416210427_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('177','24','2','0','1','0','hh_house_/2/1_20110416210427_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','');
INSERT INTO `hh_house_pic` VALUES ('178','25','2','0','1','0','hh_house_/2/1_20110416210403_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('179','25','2','0','1','0','hh_house_/2/1_20110416210403_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('180','26','2','0','1','0','hh_house_/2/1_20110416210444_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('181','26','2','0','1','0','hh_house_/2/1_20110416210445_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','');
INSERT INTO `hh_house_pic` VALUES ('182','27','2','0','1','0','hh_house_/2/1_20110416210415_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('183','27','2','0','1','0','hh_house_/2/1_20110416210415_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('184','28','2','0','1','0','hh_house_/2/1_20110416210421_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','');
INSERT INTO `hh_house_pic` VALUES ('185','28','2','0','1','0','hh_house_/2/1_20110416210421_MTI4MjIwODAzMDY3MQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('186','29','1','0','1','0','hh_house_/1/1_20110416210430_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','');
INSERT INTO `hh_house_pic` VALUES ('187','29','1','0','1','0','hh_house_/1/1_20110416210430_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','');
INSERT INTO `hh_house_pic` VALUES ('188','30','1','0','1','0','hh_house_/1/1_20110416210414_MzZCOGJ1SFcyRDQ0QzIwMTAwOTIw.jpg','');
INSERT INTO `hh_house_pic` VALUES ('189','30','1','0','1','0','hh_house_/1/1_20110416210414_MTNhOGY1NjJjYWQ0NDRiMzg2ODYzYTM4ZTgyMzlmMWM=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('190','31','1','0','1','0','hh_house_/1/1_20110416210455_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('191','31','1','0','1','0','hh_house_/1/1_20110416210455_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','');
INSERT INTO `hh_house_pic` VALUES ('192','32','1','0','1','0','hh_house_/1/1_20110416210426_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('193','32','1','0','1','0','hh_house_/1/1_20110416210426_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('194','33','1','0','1','0','hh_house_/1/1_20110416210410_MTI4MjIwODAzMDY3MQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('195','33','1','0','1','0','hh_house_/1/1_20110416210411_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('196','40','3','0','1','0','hh_house_/3/1_20110416210430_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','');
INSERT INTO `hh_house_pic` VALUES ('197','40','3','0','1','0','hh_house_/3/1_20110416210431_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','');
INSERT INTO `hh_house_pic` VALUES ('198','41','3','0','1','0','hh_house_/3/1_20110416210415_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('199','41','3','0','1','0','hh_house_/3/1_20110416210417_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','');
INSERT INTO `hh_house_pic` VALUES ('200','42','3','0','1','0','hh_house_/3/1_20110416210451_MTAzMjBfMTU2MTg1XzMwZDM3Mjc4MjM5NDYzMQ==.jpg','');
INSERT INTO `hh_house_pic` VALUES ('201','42','3','0','1','0','hh_house_/3/1_20110416210452_MTAzMjBfMTU2MTg1XzJhZjBmYmQ3ZjlmYWE4Nw==.png','');
INSERT INTO `hh_house_pic` VALUES ('202','43','4','0','1','0','hh_house_/4/1_20110416210408_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','');
INSERT INTO `hh_house_pic` VALUES ('203','43','4','0','1','0','hh_house_/4/1_20110416210408_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','');
INSERT INTO `hh_house_pic` VALUES ('204','44','4','0','1','0','hh_house_/4/1_20110416210453_MTNhOGY1NjJjYWQ0NDRiMzg2ODYzYTM4ZTgyMzlmMWM=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('205','44','4','0','1','0','hh_house_/4/1_20110416210454_MTNhOGY1NjJjYWQ0NDRiMzg2ODYzYTM4ZTgyMzlmMWM=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('206','45','4','0','1','0','hh_house_/4/1_20110416210439_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','');
INSERT INTO `hh_house_pic` VALUES ('207','45','4','0','1','0','hh_house_/4/1_20110416210439_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg','');
INSERT INTO `hh_house_pic` VALUES ('208','39','6','0','1','0','qb_house_/6/1_20110409140437_NTI=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('209','39','6','0','1','0','qb_house_/6/1_20110409140437_NTE=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('210','38','6','0','1','0','qb_house_/6/1_20110409140400_NTA=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('211','38','6','0','1','0','qb_house_/6/1_20110409140400_NDk=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('212','37','6','0','1','0','qb_house_/6/1_20110409140430_NDg=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('213','37','6','0','1','0','qb_house_/6/1_20110409140431_NDc=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('214','36','6','0','1','0','qb_house_/6/1_20110409140452_NDY=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('215','36','6','0','1','0','qb_house_/6/1_20110409140452_NDU=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('216','35','6','0','1','0','qb_house_/6/1_20110409140412_NDQ=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('217','35','6','0','1','0','qb_house_/6/1_20110409140412_NDM=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('218','34','6','0','1','0','qb_house_/6/1_20110409140442_NDI=.jpg','');
INSERT INTO `hh_house_pic` VALUES ('219','34','6','0','1','0','qb_house_/6/1_20110409140442_NDE=.jpg','');
INSERT INTO `hh_house_sort` VALUES ('1','0','出租','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_house_sort` VALUES ('2','0','出售','2','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_house_sort` VALUES ('3','0','求租','3','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_house_sort` VALUES ('4','0','求购','4','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_house_sort` VALUES ('5','0','楼盘','5','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','','0','','','','','0','a:2:{s:7:\"is_html\";N;s:11:\"field_value\";N;}','0','0','','xiaoqu','0');
INSERT INTO `hh_house_sort` VALUES ('6','0','中介','6','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_config` VALUES ('module_id','31','');
INSERT INTO `hh_hr_config` VALUES ('Info_webname','人才招聘','');
INSERT INTO `hh_hr_config` VALUES ('Info_metakeywords','找工作,就上地方生活门网','');
INSERT INTO `hh_hr_config` VALUES ('module_pre','hr_','');
INSERT INTO `hh_hr_config` VALUES ('module_close','0','');
INSERT INTO `hh_hr_content` VALUES ('59','ollklk','1','7','人力资源','2','0','1303192639','1303192639','1','admin','','0','1','','0','0','0','','127.0.0.1','0','','0','0','0','1303192648','1');
INSERT INTO `hh_hr_content_1` VALUES ('11','59','7','1','','100','1','1','1','-1','北京');
INSERT INTO `hh_hr_content_2` VALUES ('2','2','14','美术','26','2','何人珠','187','2','华南理工大学','2002','15874125478','52145687','vcdsfd@dsa.cn','fdsa@dfa.cn','小学:西联小学\r\n中学:星江中学\r\n大学:北京大学','第一年,网易主编\r\n第二年,搜狐缟工','我是一个牛人哦\r\n是不是呀','踢珠\r\n打饭','没有什么,更好的.','广州','2','随时','修理工','qb_hr_/0/14_20101009111006_gfye0.jpg','1');
INSERT INTO `hh_hr_field` VALUES ('147','2','身高','height','int','4','14','text','50','0','','','厘米','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('150','2','毕业学校','alma_mater','varchar','30','11','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('86','2','专业','speciality','varchar','50','12','text','50','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('84','2','年龄','age','int','2','17','text','50','0','','','岁','','0','1','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('151','2','毕业年份','graduate_time','varchar','10','10','text','50','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('168','2','到岗日期','worktime','varchar','20','3','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('79','2','性别','sex','int','1','18','radio','50','0','1|男\r\n2|女','1','','','0','1','1','1','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('78','2','姓名','truename','varchar','20','20','text','100','0','','','','','0','1','0','0','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('149','2','学历','school_age','int','3','13','select','0','0','1|小学\r\n2|初中\r\n3|高中\r\n4|中专\r\n5|大专\r\n6|本科\r\n7|研究生\r\n9|博士','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('152','2','手机号码','mobphone','varchar','11','9','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('153','2','QQ号码','qq','varchar','11','8','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('154','2','常用邮箱','email','varchar','50','7','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('155','2','MSN帐号','msn','varchar','50','6','text','100','0','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('167','2','工作年限','workyear','int','2','4','select','0','0','0|应届毕业生\r\n1|一年\r\n2|两年\r\n3|三年以上','0','','','0','1','0','1','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('166','2','期望工作城市','lifeplace','varchar','50','5','text','100','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('158','2','教育背景','education','mediumtext','0','-1','textarea','400','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('159','2','工作经验','work','mediumtext','0','-2','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('160','2','自我评价','introduce','mediumtext','0','-3','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('161','2','技能特长','skill','mediumtext','0','-4','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('162','2','体育爱好','interest','mediumtext','0','-5','textarea','500','100','','','','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('164','1','详情','content','mediumtext','0','-1','textarea','500','120','','','','','0','0','0','0','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('170','1','招聘人数','nums','int','5','0','text','50','0','','','人','','0','0','0','0','','','','','1','');
INSERT INTO `hh_hr_field` VALUES ('171','1','工作经验要求','wageyear','int','1','0','select','0','0','1|一年以上\r\n2|两年以上\r\n3|三年以上','','','','0','1','1','1','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('172','1','性别要求','asksex','int','1','0','radio','0','0','1|男性\r\n2|女性','','','','0','0','0','0','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('173','1','学历要求','schoo_age','int','2','0','select','0','0','1|小学以上\r\n2|中学以上\r\n3|中专以上\r\n4|高中以上\r\n5|大专以上\r\n6|本科以上\r\n7|硕士以上\r\n8|博士以上','','','','0','1','1','1','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('174','1','薪水待遇','wage','int','2','0','select','0','0','-1|面议\r\n1|800~1500元\r\n2|1500~2500元\r\n3|2500~3500元\r\n4|3500元以上','','','','0','1','1','1','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('175','1','工作城市','workplace','varchar','50','10','text','150','0','','','','','1','0','0','0','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('176','2','期望职位','hope_job','varchar','200','21','text','300','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('177','2','相片','facephoto','varchar','100','0','onepic','0','0','','','','','0','0','0','0','','','','','0','');
INSERT INTO `hh_hr_field` VALUES ('178','2','期望待遇','wage','int','2','10','select','0','0','-1|面议\r\n1|800~1500元\r\n2|1500~2500元\r\n3|2500~3500元\r\n4|3500元以上','','','','0','0','0','0','','','','','0','');
INSERT INTO `hh_hr_module` VALUES ('1','0','职位模型','0','','N;','','0','0','');
INSERT INTO `hh_hr_module` VALUES ('2','0','简历模型','0','','a:1:{s:9:\"moduleSet\";N;}','','1','0','a:6:{s:4:\"list\";s:14:\"personlist.htm\";s:10:\"admin_list\";s:0:\"\";s:11:\"member_list\";s:0:\"\";s:4:\"show\";s:14:\"personshow.htm\";s:4:\"post\";s:10:\"person.htm\";s:6:\"search\";s:16:\"personsearch.htm\";}');
INSERT INTO `hh_hr_sort` VALUES ('1','0','计算机/互联网/通信/电子','1','1','0','1','','10','0','','','','','N;','','0','','','','0','','','','','0','','0','104','','','0');
INSERT INTO `hh_hr_sort` VALUES ('3','0','人事/行政/高级管理','1','1','0','1','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('2','0','销售/客服/技术支持','1','1','0','1','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('4','1','计算机硬件','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('5','1','计算机软件','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('6','1','互联网开发及应用','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('7','3','人力资源','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('8','3','高级管理','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('9','3','行政/后勤','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('10','2','销售人员','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hr_sort` VALUES ('11','2','客服及技术支持','1','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_company` VALUES ('17','广州协天软件科技有限公司','','螺纹钢,普线,带钢,热板卷,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷','1','admin','3','0','0','1282284007','0','0','homepage/logo/1/1_20101102091111_ybuoq.gif','','1','','1282284007','616','1','1282719160','0','<p>\r\n	&nbsp;&nbsp;&nbsp;<strong>&nbsp;</strong><strong>齐博CMS</strong>是中国领先的开源CMS平台与服务提供商，长期专注于互联网高性能平台及技术解决方案的研发，公司人员70%以上为技术人员，拥有中国专业的Web应用平台技术研发团队，齐博CMS拥有广泛的社会影响力，为国内应用最广泛的系统之一，也是中国南方PHP领域最大的开源系统提供方。<br />\r\n	<br />\r\n	<a style=\"font-weight: bold; font-size: 14px; color: #990000\">发展历程</a><br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;自2003年10月齐博CMS V1.0面世至今，已形成面向广大站长的V系列和面向媒体报刊门户、政府电子政务的Sharp系列（简称S系列），S系列以千万级海量数据应用媒体报刊、政府站群应用中形成良好的品牌口碑，以&ldquo;核心+系统+模块+插件&rdquo;架构体系，成为国内高性能、模块化的开源PHP系统。涉及政府电子政务、媒体新闻门户、大型企业信息化、站群系统、电子商务B2B及企业内部OA等海量数据高端互联网应用，已为三十余万用户提供了应用平台。</p>\r\n','0','1','0','0','个人独资企业','服务型','100','2007-10-02','广东省广州市天河区','1111','000222','CMS整站程序 电子商务程序 地方门户程序 分类信息系统','PHP人才','数码、电脑及网络配件','张生','总裁','0','020','15920222222','0106665555','0342@fdsg.cn','http://112','65284322','125@erw.cn','','1451','','0','1','company/renzheng/1_20101016111001_krbfo.jpg','company/renzheng/1_20101016111026_ienzi.jpg','company/renzheng/1_20101016111030_dbedh.jpg','company/renzheng/1_20101016111032_g2s7m.jpg','company/renzheng/1_20101016111035_nlvue.jpg','39.95231950026053,116.51824951171875','2','1294128153');
INSERT INTO `hh_hy_company` VALUES ('22','瑞安市锻造实业公司','','螺纹钢,带钢,冷轧板,模具板,无缝管,H型钢,焊线,不锈板卷','27','test1','0','0','0','1288661741','0','0','homepage/logo/1/27_20101102091141_e1uuj.jpg','','1','','1288661741','5','1','1288663982','0','    公司创办于1992年，占地5000平方米，建筑面积8900平方米，以复杂机械零件的精密模锻件锻造生产为主,并进行锻件的机械加工和硬质合金工具的钎焊。   供应机械零件（汽摩配）锻件、起重吊钩、五金工具、钎焊硬质合金工具。如随车工具、G字夹、汽车摩托车齿轮及叉臂轴类锻件。','0','1','0','0','个体经营','生产型','999','2010-11-03','广东省','','','钢材','钢','机械及行业设备','张生','','0','020555444','','','gfds@afds.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('23','宁波市鄞州塘溪红龙五金工具厂','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','28','test2','0','0','0','1288662180','0','0','homepage/logo/1/logo_28_20101102091100_6jeu7.jpg','','1','','1288662180','1','1','1288663984','0','    本厂是一家拥有十多年历史，专业生产园林工具刀片（系列修枝机刀片）的厂家 。  本厂依靠科技进步，通过本厂技术人员的刻苦攻关，现开发出多款具有先进水平的高硬度，高韧性的系列产品。基本解决了国内刀片厂家有韧性没硬度，有硬度没韧性的技术困局，大大提高了刀片的使用寿命。 得到很多国内外客商的首肯，直接出口欧洲和美国。  本厂产品由进料到成品基本做到全线产品一体生产，所有零配件无外加工。质量，产能得到了最高最大化。现竭诚邀请您来电，来函。我们将以最大的热情期待您的光临。','0','1','0','0','个体经营','生产型','900','2010-11-13','宁波','','','钢索','钢','机械及行业设备','牛生','','0','0205544447','','','fds@ds.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('24','南京绿友纸浆模塑有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','29','test3','0','0','0','1288662327','0','0','homepage/logo/1/29_20101102091127_bcl6e.jpg','','1','','1288662327','3','1','1288663984','0','   南京绿友纸浆模塑有限公司是由中国包装新技术开发包宁公司改制组建而成，继续从事包宁公司的纸浆模塑技术研究、设备制造、新品推广的专业公司，具有独立法人资格、科、工、贸一体化、外向型股份制企业。   公司围绕纸浆模塑技术开发设有技术开发部、模具中心、机械加工厂、新品示范厂、工程安装部等部门，从事纸塑技术开发的专业工程技术人员占35%，高级工程师3人(其中一名因在纸浆模塑方面有特殊贡献、享受国务院特殊津贴并颁发证书)，工程师8人，技术力量雄厚，设施齐全，具有独立自主的开发研究、试验示范、生产销售的经济实体。绿友公司集中了包宁公司最优秀的人才，全面继承、加速研究、全面开发了纸浆模塑技术，因此，在纸浆模塑领域保持了技术最全面、设备最先进、品种最齐全的优势！','0','1','0','0','个体经营','生产型','600','2010-11-06','上海','','','玻璃幕墙','玻璃','机械及行业设备','黄生','','0','0204448554','','','fdsg@sda.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('25','上海烈力轴承制造有限公司','','螺纹钢,普线,带钢,热板卷,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷','30','test4','0','0','0','1288662567','0','0','homepage/logo/1/30_20101102091127_ibn2r.jpg','','1','','1288662567','3','1','1288663985','0','    浙江双飞无油轴承有限公司，是中国专业生产滑动轴承系列产品的龙头企业；浙江省“AAA”级守合同、重信用企业；浙江省高新技术企业；ISO9001和QS9000质量体系认证单位。 公司有一支强劲的新产品研发队伍和完善的试验设施，被列为浙江省技术中心。产品50%以上出口德国、意大利、日本、新加坡、美国、加拿大、台湾等20多个国家和地区， 已经创造了良好的国际信誉。   公司目前主要产品有：SF系列无油润滑轴承、JF双金属轴承、FB青铜轴承、JDB镶嵌固体润滑轴承等12个系列16000多个品种，适应：高温、高速等各种场合的使用。公司有完善的检测设备，保证100%的合格产品提供给顾客，让每位“ZOB”','0','1','0','0','个体经营','生产型','600','2010-11-04','上海','','','生铁','铁','机械及行业设备','李生','','0','02054477877','','','fds@sda.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('26','温州天旺五金有限公司','','螺纹钢,普线,带钢,冷轧板,船板,H型钢,焊线,不锈板卷,矿石','31','test5','0','0','0','1288662786','0','0','homepage/logo/1/31_20101102091106_ijzou.jpg','','1','','1288662786','1','1','1288663985','0','    我司是专业生产日用五金、机电配件、塑胶制品、紧固件等产品的出口外向型企业，是中国较早开发DIY家用五金组合系列产品的知名企业。企业创立至今始终坚持走质量效益型之路，强化全面管理和有效经营，注重企业形象和产品形象，产品远销世界各地，深得国内外客户信赖和赞誉。在纷繁复杂的市场竟争中，始终坚守诚信、勇于创新。  我司根据自身发展需求和市场发展趋势，将制造、生产的日用五金、标准件、非标准件、紧固件、塑胶制品、机电配件等产品，分为两大市场板块，其中DIY家用五金套装已形成30个系列近1000个品种，凭借严格质量管理和出众的设计理念，产品在国际市场（尤其是欧美、东南亚市场）形成良好的销售势头，市场占有','0','1','0','0','个体经营','生产型','300','2010-11-06','深圳','','','布','灰布','机械及行业设备','何生','','0','0204544744','','','fds@fsa.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('27','常州市武进天力电动工具厂','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','32','test6','0','0','0','1288662947','0','0','homepage/logo/1/32_20101102091147_9pqhn.jpg','','1','','1288662947','3','1','1288663986','0','  浙江双飞无油轴承有限公司，是中国专业生产滑动轴承系列产品的龙头企业；浙江省“AAA”级守合同、重信用企业；浙江省高新技术企业；ISO9001和QS9000质量体系认证单位。 公司有一支强劲的新产品研发队伍和完善的试验设施，被列为浙江省技术中心。产品50%以上出口德国、意大利、日本、新加坡、美国、加拿大、台湾等20多个国家和地区， 已经创造了良好的国际信誉。   公司目前主要产品有：SF系列无油润滑轴承、JF双金属轴承、FB青铜轴承、JDB镶嵌固体润滑轴承等12个系列16000多个品种，适应：高温、高速等各种场合的使用。公司有完善的检测设备，保证100%的合格产品提供给顾客，让每位“ZOB”的顾客满意。   我们严格按照 ISO-TS16949 的质量体系，从原材料投入、模具制造、成形、烧结…等直到服务，全过程加以控制。操作工首先进行自检，专职检验人员进行巡回检，每道工序都进行严格把关，每道工序都做到有据可查。同时以先进的检测设备保证了产品100%的出厂合格率！','0','1','0','0','个体经营','生产型','300','2010-11-04','','','','','','机械及行业设备','刘生','','0','020544777','','','fda@dsa.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('28','丽图数码科技（深圳）有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','33','test7','0','0','0','1288663129','0','0','homepage/logo/1/33_20101102091149_ofqqf.jpg','','1','','1288663129','2','1','1288663987','0','   专业从事一体化速印机印刷耗材设计开发和制造的外商独资企业，公司享有独立的进出口权，提供了和外商直接自由的贸易平台。公司拥有5000平方米的现代化厂房，配合全封闭的无尘、恒温、恒湿的生产车间。生产设备全部采用电脑化自动控制。先进的生产工艺流程，保证了产品卓越的品质，并率先于2003年通过了ISO9001-2000质量管理体系认证。公司始终遵循“以客户为本，以品质取胜，以服务领先”的发展理念。坚持产品的专业化，细致化的经营模拟。通过不断努力，不懈追求，充分满足客户的个性化要求，赢得了客户的充分认可与肯定，使公司成为国内同行中最具知名度的供应商。','0','1','0','0','个体经营','生产型','600','2010-11-13','深圳','','','','','机械及行业设备','何生','','0','02087744454','','','dfsafs@dsa.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('29','深圳市大中实业发展有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','34','test8','0','0','0','1288663299','0','0','homepage/logo/1/34_20101102101139_apfdl.jpg','','1','','1288663299','11','1','1288663987','0','    一家集产品开发、设计、生产与销售于一体，较早从事五金、弹簧、消费电子类研发、生产与销售，拥有进出口经营权的高科技民营企业。公司实力雄厚，研发技术成熟，采用国际先进的管理模式，产品质量过硬、销售网络完善，售后服务优质。 　　本公司现拥有厂房面积600平方米，固定资产500多万元，员工60多人，其中工程技术人员有10人，年销售额500多万元，公司已通过ISO9001-2000质量体系认证，并在目前已推广ISO/TS16949-2002体系的运行。有一套完备的产品质量检测设备和检验员队伍，确保产品质量的稳定可靠，在用户中有较高的质量信誉。 ','0','1','0','0','个体经营','生产型','100','','深圳市','','','五金','弹簧','机械及行业设备','黄生','','0','02054787741','','','fsgfd@dsa.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('30','海盐中凌铸造有限责任公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','35','test9','0','0','0','1288663462','0','0','homepage/logo/1/35_20101102101122_jvufs.jpg','','1','','1288663462','47','1','1288663988','0','    海盐中凌铸造有限责任公司地处浙江省海盐县，东依上海80公里，西距杭州65公里，南邻风景秀丽的南北湖风景区，北连嘉兴市区，离沪杭高速公路王店出口处7公里，水陆交通十分便利。公司在全体员工十多年来的默默耕耘下，讫今已拥有资产300万美元，占地面积30000平方米，其中厂房20000多平方米，各类生产设备120余台套，有齐全的理化检测设备及先进的质量管理体系，主要设备有250KG中频电炉3套及熔模精密铸造流水线三条，10吨级铸钢件热处理炉三个，各类机加工设备80余台。目前企业员工130名，其中各类工程技术人员38名','0','1','0','0','个体经营','生产型','300','2010-11-06','浙江省海盐县','','','铁','生铁','机械及行业设备','黄生','','0','02045789654','','','safsa@dfsa.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('31','东莞市华尔赛弹簧制造有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','36','test10','0','0','0','1288663617','0','0','homepage/logo/1/36_20101102101157_jugc3.jpg','','1','','1288663617','5','1','1288663988','0','     是一家集生产、研发、销售和服务于一体的综合型弹簧生产企业。公司位于广东省东莞市黄江镇，距莞深高速公路3公里，东莞火车站10公里左右，交通十分便捷。公司占地2000平方米，拥有全套一流的生产、检测设备，有目前国内最选进的十毫米以下的CNC数控自动弹簧机，可生产弹簧线径最小0.08MM-10MM，是东莞市首家拥有可以生产10mm以下线径的CNC弹簧机械；弹簧处理网带式连续回火炉，清洗机。弹簧检测设备仪器齐全，如：二次元投影仪、扭力测试机、压拉力测试机、盐雾测试机等，全面有效地控制了弹簧的质量。华尔赛主导产品有各类精密弹簧，车件，铆钉，螺丝，五金冲压件。产品广泛用于电子、电器、玩具、锁具、文具、童车、自行车、礼品、工艺品、厨卫具、照相机、打印机、办公设备、精密设备、各类交通工具等。现我司的生产的弹簧产品如：离合器弹簧、复合弹簧、启动弹簧、回位弹簧、座垫弹簧等 已迈入汽车行业。','0','1','0','0','个体经营','生产型','350','2010-11-04','东莞市','','','钢材','钢','机械及行业设备','刘生','','0','02054484444','','','fsdafd@sa.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company` VALUES ('32','广州金栢叶床具制品有限公司','','螺纹钢,带钢,冷轧板,船板,无缝管,H型钢,焊线,不锈板卷,矿石,硅铁','37','test11','0','0','0','1288663816','0','0','homepage/logo/1/37_20101102101116_xmwaa.jpg','','1','','1288663816','34','1','1288663989','0','    前身“广州恒基（床垫）弹簧厂”，是专业生产床垫、床垫弹簧网的厂家。风雨十五年，一步一脚印，发展至今天，拥有厂房五千多平方米，多条先进的弹簧、床垫生产线及压缩设备。 大批技艺超群的生产技术工人，产品开发研究人员 ，严格的质量体系。严格按照ISO9001：2000质量体系，ISO14000环境体系标准运行，产品通过中国国家质量认证，美国CFR1633标准及英国BS5852标准，为生产世界级品牌产品有坚实保证。目前，金栢叶公司生产的床垫、床垫芯产品可经压缩包装处理，方便世界各地客商的运输及仓储。凭借多年生产床垫弹簧出口世界各地的经验，集全球多家名牌床垫之技术精华，经研究人员精心研究设计，创造出纯中国制造的高端品牌床垫——“金栢叶”系列产品。','0','1','0','0','个体经营','生产型','200','2010-11-04','广州','','','猪油','生猪油','机械及行业设备','林生','','0','0205447777','','','dfsaf@dsa.cn','','','','','','','0','1','','','','','','','0','0');
INSERT INTO `hh_hy_company_fid` VALUES ('1','11');
INSERT INTO `hh_hy_company_fid` VALUES ('1','12');
INSERT INTO `hh_hy_company_fid` VALUES ('1','21');
INSERT INTO `hh_hy_company_fid` VALUES ('1','22');
INSERT INTO `hh_hy_company_fid` VALUES ('1','33');
INSERT INTO `hh_hy_company_fid` VALUES ('1','46');
INSERT INTO `hh_hy_company_fid` VALUES ('1','59');
INSERT INTO `hh_hy_company_fid` VALUES ('1','73');
INSERT INTO `hh_hy_company_fid` VALUES ('1','87');
INSERT INTO `hh_hy_company_fid` VALUES ('1','105');
INSERT INTO `hh_hy_company_fid` VALUES ('27','11');
INSERT INTO `hh_hy_company_fid` VALUES ('27','21');
INSERT INTO `hh_hy_company_fid` VALUES ('27','33');
INSERT INTO `hh_hy_company_fid` VALUES ('27','48');
INSERT INTO `hh_hy_company_fid` VALUES ('27','59');
INSERT INTO `hh_hy_company_fid` VALUES ('27','73');
INSERT INTO `hh_hy_company_fid` VALUES ('27','87');
INSERT INTO `hh_hy_company_fid` VALUES ('27','105');
INSERT INTO `hh_hy_company_fid` VALUES ('28','11');
INSERT INTO `hh_hy_company_fid` VALUES ('28','21');
INSERT INTO `hh_hy_company_fid` VALUES ('28','33');
INSERT INTO `hh_hy_company_fid` VALUES ('28','46');
INSERT INTO `hh_hy_company_fid` VALUES ('28','59');
INSERT INTO `hh_hy_company_fid` VALUES ('28','73');
INSERT INTO `hh_hy_company_fid` VALUES ('28','87');
INSERT INTO `hh_hy_company_fid` VALUES ('28','105');
INSERT INTO `hh_hy_company_fid` VALUES ('28','119');
INSERT INTO `hh_hy_company_fid` VALUES ('28','136');
INSERT INTO `hh_hy_company_fid` VALUES ('29','11');
INSERT INTO `hh_hy_company_fid` VALUES ('29','21');
INSERT INTO `hh_hy_company_fid` VALUES ('29','33');
INSERT INTO `hh_hy_company_fid` VALUES ('29','46');
INSERT INTO `hh_hy_company_fid` VALUES ('29','59');
INSERT INTO `hh_hy_company_fid` VALUES ('29','73');
INSERT INTO `hh_hy_company_fid` VALUES ('29','87');
INSERT INTO `hh_hy_company_fid` VALUES ('29','105');
INSERT INTO `hh_hy_company_fid` VALUES ('29','119');
INSERT INTO `hh_hy_company_fid` VALUES ('29','136');
INSERT INTO `hh_hy_company_fid` VALUES ('30','11');
INSERT INTO `hh_hy_company_fid` VALUES ('30','12');
INSERT INTO `hh_hy_company_fid` VALUES ('30','21');
INSERT INTO `hh_hy_company_fid` VALUES ('30','22');
INSERT INTO `hh_hy_company_fid` VALUES ('30','33');
INSERT INTO `hh_hy_company_fid` VALUES ('30','46');
INSERT INTO `hh_hy_company_fid` VALUES ('30','59');
INSERT INTO `hh_hy_company_fid` VALUES ('30','73');
INSERT INTO `hh_hy_company_fid` VALUES ('30','87');
INSERT INTO `hh_hy_company_fid` VALUES ('30','105');
INSERT INTO `hh_hy_company_fid` VALUES ('31','11');
INSERT INTO `hh_hy_company_fid` VALUES ('31','12');
INSERT INTO `hh_hy_company_fid` VALUES ('31','21');
INSERT INTO `hh_hy_company_fid` VALUES ('31','33');
INSERT INTO `hh_hy_company_fid` VALUES ('31','46');
INSERT INTO `hh_hy_company_fid` VALUES ('31','73');
INSERT INTO `hh_hy_company_fid` VALUES ('31','87');
INSERT INTO `hh_hy_company_fid` VALUES ('31','105');
INSERT INTO `hh_hy_company_fid` VALUES ('31','119');
INSERT INTO `hh_hy_company_fid` VALUES ('32','11');
INSERT INTO `hh_hy_company_fid` VALUES ('32','21');
INSERT INTO `hh_hy_company_fid` VALUES ('32','33');
INSERT INTO `hh_hy_company_fid` VALUES ('32','46');
INSERT INTO `hh_hy_company_fid` VALUES ('32','59');
INSERT INTO `hh_hy_company_fid` VALUES ('32','73');
INSERT INTO `hh_hy_company_fid` VALUES ('32','87');
INSERT INTO `hh_hy_company_fid` VALUES ('32','105');
INSERT INTO `hh_hy_company_fid` VALUES ('32','119');
INSERT INTO `hh_hy_company_fid` VALUES ('32','136');
INSERT INTO `hh_hy_company_fid` VALUES ('33','11');
INSERT INTO `hh_hy_company_fid` VALUES ('33','21');
INSERT INTO `hh_hy_company_fid` VALUES ('33','33');
INSERT INTO `hh_hy_company_fid` VALUES ('33','46');
INSERT INTO `hh_hy_company_fid` VALUES ('33','59');
INSERT INTO `hh_hy_company_fid` VALUES ('33','73');
INSERT INTO `hh_hy_company_fid` VALUES ('33','87');
INSERT INTO `hh_hy_company_fid` VALUES ('33','105');
INSERT INTO `hh_hy_company_fid` VALUES ('33','119');
INSERT INTO `hh_hy_company_fid` VALUES ('33','136');
INSERT INTO `hh_hy_company_fid` VALUES ('34','11');
INSERT INTO `hh_hy_company_fid` VALUES ('34','21');
INSERT INTO `hh_hy_company_fid` VALUES ('34','33');
INSERT INTO `hh_hy_company_fid` VALUES ('34','46');
INSERT INTO `hh_hy_company_fid` VALUES ('34','59');
INSERT INTO `hh_hy_company_fid` VALUES ('34','73');
INSERT INTO `hh_hy_company_fid` VALUES ('34','87');
INSERT INTO `hh_hy_company_fid` VALUES ('34','105');
INSERT INTO `hh_hy_company_fid` VALUES ('34','119');
INSERT INTO `hh_hy_company_fid` VALUES ('34','136');
INSERT INTO `hh_hy_company_fid` VALUES ('35','11');
INSERT INTO `hh_hy_company_fid` VALUES ('35','21');
INSERT INTO `hh_hy_company_fid` VALUES ('35','33');
INSERT INTO `hh_hy_company_fid` VALUES ('35','46');
INSERT INTO `hh_hy_company_fid` VALUES ('35','59');
INSERT INTO `hh_hy_company_fid` VALUES ('35','73');
INSERT INTO `hh_hy_company_fid` VALUES ('35','87');
INSERT INTO `hh_hy_company_fid` VALUES ('35','105');
INSERT INTO `hh_hy_company_fid` VALUES ('35','119');
INSERT INTO `hh_hy_company_fid` VALUES ('35','136');
INSERT INTO `hh_hy_company_fid` VALUES ('36','11');
INSERT INTO `hh_hy_company_fid` VALUES ('36','21');
INSERT INTO `hh_hy_company_fid` VALUES ('36','33');
INSERT INTO `hh_hy_company_fid` VALUES ('36','46');
INSERT INTO `hh_hy_company_fid` VALUES ('36','59');
INSERT INTO `hh_hy_company_fid` VALUES ('36','73');
INSERT INTO `hh_hy_company_fid` VALUES ('36','87');
INSERT INTO `hh_hy_company_fid` VALUES ('36','105');
INSERT INTO `hh_hy_company_fid` VALUES ('36','119');
INSERT INTO `hh_hy_company_fid` VALUES ('36','136');
INSERT INTO `hh_hy_company_fid` VALUES ('37','11');
INSERT INTO `hh_hy_company_fid` VALUES ('37','21');
INSERT INTO `hh_hy_company_fid` VALUES ('37','33');
INSERT INTO `hh_hy_company_fid` VALUES ('37','46');
INSERT INTO `hh_hy_company_fid` VALUES ('37','59');
INSERT INTO `hh_hy_company_fid` VALUES ('37','73');
INSERT INTO `hh_hy_company_fid` VALUES ('37','87');
INSERT INTO `hh_hy_company_fid` VALUES ('37','105');
INSERT INTO `hh_hy_company_fid` VALUES ('37','119');
INSERT INTO `hh_hy_company_fid` VALUES ('37','136');
INSERT INTO `hh_hy_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_hy_config` VALUES ('sort_layout','1,5#3,8,7#2,4,6#','');
INSERT INTO `hh_hy_config` VALUES ('module_id','16','');
INSERT INTO `hh_hy_config` VALUES ('gg_map_api','ABQIAAAAlNgPp05cAGeYiuhUaYZaQxT2hWcVQgqOjltVi_oi0-IXnv8sfRRB0xK-_hJ6X9fvCiWkheAw1gnL8Q','');
INSERT INTO `hh_hy_config` VALUES ('vipselfdomain','','');
INSERT INTO `hh_hy_config` VALUES ('vipselfdomaincannot','','');
INSERT INTO `hh_hy_config` VALUES ('creat_home_money','0','');
INSERT INTO `hh_hy_config` VALUES ('module_pre','hy_','');
INSERT INTO `hh_hy_config` VALUES ('Index_listsortnum','3','');
INSERT INTO `hh_hy_config` VALUES ('module_close','0','');
INSERT INTO `hh_hy_config` VALUES ('Info_webname','黄页模块','');
INSERT INTO `hh_hy_dianping` VALUES ('3','1','0','1','0','1','admin','1290066331','太好了!!','127.0.0.1','0','1','1','3','5','4','0','0','0','52','','','');
INSERT INTO `hh_hy_dianping` VALUES ('4','1','0','1','0','1','admin','1290495895','好商家,很讲诚信!','127.0.0.1','0','1','1','1','2','4','2','0','0','23','','','');
INSERT INTO `hh_hy_home` VALUES ('1','admin','vip_1','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";s:1:\"4\";s:7:\"visitor\";s:2:\"10\";s:8:\"newslist\";s:2:\"10\";s:10:\"friendlink\";s:2:\"10\";s:10:\"Mguestbook\";s:2:\"10\";s:9:\"Mnewslist\";s:2:\"10\";s:8:\"Mvisitor\";s:2:\"40\";}','','','0','0	127.0.0.1	1289819988\r\n9	fdsafsdw	1282633598','616','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('30','test4','vip_3','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','1	admin	1294819247','3','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('29','test3','vip_2','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	220.181.108.93	1303097357\r\n1	admin	1288845790','3','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('28','test2','vip_1','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','','1','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('27','test1','vip_3','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";s:1:\"4\";s:7:\"visitor\";s:2:\"10\";s:8:\"newslist\";s:2:\"10\";s:10:\"friendlink\";s:2:\"10\";s:10:\"Mguestbook\";s:2:\"10\";s:9:\"Mnewslist\";s:2:\"10\";s:8:\"Mvisitor\";s:2:\"40\";}','','','0','','5','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('31','test5','vip_1','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','1	admin	1294819245','1','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('32','test6','vip_2','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','1	admin	1294819254','3','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('33','test7','vip_3','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','1	admin	1302511142','2','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('34','test8','vip_1','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','1	admin	1302340269','11','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('35','test9','vip_2','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	220.181.108.156	1302978306\r\n1	admin	1302509330','47','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('36','test10','vip_3','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','1	admin	1302509281','5','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_home` VALUES ('37','test11','vip_1','base,tongji,news,ck','info','a:7:{s:9:\"guestbook\";i:4;s:7:\"visitor\";i:10;s:8:\"newslist\";i:10;s:10:\"friendlink\";i:10;s:10:\"Mguestbook\";i:10;s:8:\"Mvisitor\";i:40;s:9:\"Mnewslist\";i:10;}','','left','0','0	220.181.108.99	1302934475\r\n1	admin	1294819233','34','a:9:{i:0;a:4:{s:5:\"title\";s:8:\"商家首页\";s:3:\"url\";s:1:\"?\";s:5:\"order\";s:2:\"10\";s:6:\"ifshow\";i:1;}i:1;a:4:{s:5:\"title\";s:8:\"商家介绍\";s:3:\"url\";s:7:\"?m=info\";s:5:\"order\";s:1:\"9\";s:6:\"ifshow\";i:1;}i:2;a:4:{s:5:\"title\";s:8:\"商家新闻\";s:3:\"url\";s:7:\"?m=news\";s:5:\"order\";s:1:\"8\";s:6:\"ifshow\";i:1;}i:11;a:4:{s:5:\"title\";s:8:\"商家产品\";s:3:\"url\";s:7:\"?m=shop\";s:5:\"order\";s:1:\"7\";s:6:\"ifshow\";i:1;}i:12;a:4:{s:5:\"title\";s:8:\"促销信息\";s:3:\"url\";s:9:\"?m=coupon\";s:5:\"order\";s:1:\"5\";s:6:\"ifshow\";i:1;}i:13;a:4:{s:5:\"title\";s:8:\"招聘信息\";s:3:\"url\";s:6:\"?m=job\";s:5:\"order\";s:1:\"4\";s:6:\"ifshow\";i:1;}i:4;a:4:{s:5:\"title\";s:8:\"图片展示\";s:3:\"url\";s:7:\"?m=pics\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:14;a:4:{s:5:\"title\";s:8:\"顾客点评\";s:3:\"url\";s:11:\"?m=dianping\";s:5:\"order\";s:1:\"2\";s:6:\"ifshow\";i:1;}i:8;a:4:{s:5:\"title\";s:8:\"联系方式\";s:3:\"url\";s:12:\"?m=contactus\";s:5:\"order\";s:1:\"1\";s:6:\"ifshow\";i:1;}}');
INSERT INTO `hh_hy_picsort` VALUES ('1','0','产品图库','记录产品多方面图片资料','27','test1','0','1288661741','2','');
INSERT INTO `hh_hy_picsort` VALUES ('2','0','资质说明','荣誉证书，获奖证书，营业执照','27','test1','0','1288661741','1','');
INSERT INTO `hh_hy_picsort` VALUES ('3','0','产品图库','记录产品多方面图片资料','28','test2','0','1288662180','2','');
INSERT INTO `hh_hy_picsort` VALUES ('4','0','资质说明','荣誉证书，获奖证书，营业执照','28','test2','0','1288662180','1','');
INSERT INTO `hh_hy_picsort` VALUES ('5','0','产品图库','记录产品多方面图片资料','29','test3','0','1288662327','2','');
INSERT INTO `hh_hy_picsort` VALUES ('6','0','资质说明','荣誉证书，获奖证书，营业执照','29','test3','0','1288662327','1','');
INSERT INTO `hh_hy_picsort` VALUES ('7','0','产品图库','记录产品多方面图片资料','30','test4','0','1288662567','2','');
INSERT INTO `hh_hy_picsort` VALUES ('8','0','资质说明','荣誉证书，获奖证书，营业执照','30','test4','0','1288662567','1','');
INSERT INTO `hh_hy_picsort` VALUES ('9','0','产品图库','记录产品多方面图片资料','31','test5','0','1288662786','2','');
INSERT INTO `hh_hy_picsort` VALUES ('10','0','资质说明','荣誉证书，获奖证书，营业执照','31','test5','0','1288662786','1','');
INSERT INTO `hh_hy_picsort` VALUES ('11','0','产品图库','记录产品多方面图片资料','32','test6','0','1288662947','2','');
INSERT INTO `hh_hy_picsort` VALUES ('12','0','资质说明','荣誉证书，获奖证书，营业执照','32','test6','0','1288662947','1','');
INSERT INTO `hh_hy_picsort` VALUES ('13','0','产品图库','记录产品多方面图片资料','33','test7','0','1288663129','2','');
INSERT INTO `hh_hy_picsort` VALUES ('14','0','资质说明','荣誉证书，获奖证书，营业执照','33','test7','0','1288663129','1','');
INSERT INTO `hh_hy_picsort` VALUES ('15','0','产品图库','记录产品多方面图片资料','34','test8','0','1288663299','2','');
INSERT INTO `hh_hy_picsort` VALUES ('16','0','资质说明','荣誉证书，获奖证书，营业执照','34','test8','0','1288663299','1','');
INSERT INTO `hh_hy_picsort` VALUES ('17','0','产品图库','记录产品多方面图片资料','35','test9','0','1288663462','2','');
INSERT INTO `hh_hy_picsort` VALUES ('18','0','资质说明','荣誉证书，获奖证书，营业执照','35','test9','0','1288663462','1','');
INSERT INTO `hh_hy_picsort` VALUES ('19','0','产品图库','记录产品多方面图片资料','36','test10','0','1288663617','2','');
INSERT INTO `hh_hy_picsort` VALUES ('20','0','资质说明','荣誉证书，获奖证书，营业执照','36','test10','0','1288663617','1','');
INSERT INTO `hh_hy_picsort` VALUES ('21','0','产品图库','记录产品多方面图片资料','37','test11','0','1288663816','2','');
INSERT INTO `hh_hy_picsort` VALUES ('22','0','资质说明','荣誉证书，获奖证书，营业执照','37','test11','0','1288663816','1','');
INSERT INTO `hh_hy_sort` VALUES ('1','0','餐饮美食','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('2','0','休闲娱乐','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('3','0','旅游酒店','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('4','0','便民服务','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('5','0','美容保健','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('6','0','房产家居','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('7','0','购物','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('8','0','医疗健康','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('9','0','咨询中介','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('10','0','教育培训','0','1','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('11','1','西餐厅','0','2','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('12','1','牛排馆','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('13','1','韩国料理','0','2','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('14','1','火锅/砂锅','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('15','1','日本料理','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('16','1','自助餐厅','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('17','1','海鲜','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('18','1','土菜/农家菜','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('19','1','快餐/小吃','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('20','1','批萨/意大利菜','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('21','2','歌舞厅','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('22','2','KTV','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('23','2','体育场所','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('24','2','音乐厅','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('25','2','休闲娱乐场所','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('26','3','旅馆/旅社/宿舍','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('27','3','签证服务','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('28','3','景点景区','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('29','3','住宿预订','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('30','3','连锁型宾馆酒店','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('31','4','电脑/数码维修维护','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('32','4','二手/回收','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('33','4','婚庆服务','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('34','4','摄影/摄像/冲洗','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('35','4','营业厅','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('36','4','婚庆庆典/摄影摄像','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('37','4','搬家/搬运','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('38','5','成人用品','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('39','5','保健品','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('40','5','美甲','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('41','5','减肥','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('42','6','照明灯饰','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('43','6','装修装璜服务','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('44','6','家居店','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('45','6','商铺','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('46','6','商务房产','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('47','7','鞋帽/箱包/皮具','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('48','7','综合市场','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('49','7','批发和零售','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('50','7','婴幼儿用品','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('51','7','服装市场','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('52','7','超市便利','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('53','7','礼品/工艺品','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('54','8','妇幼医院','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('55','8','心理咨询','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('56','8','女性健康','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('57','8','整容整形','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('58','10','教育培训学校','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('59','10','电脑培训','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('60','10','驾校/陪练','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('61','10','辅导班','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('62','10','学术/科研','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('63','10','成人教育','0','2','0','0','','0','0','','','','','N;','','0','','','','0','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('64','9','中介服务咨询服务','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('65','9','鉴定中心/评估','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('66','9','出国/移民','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('67','9','留学','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('68','9','招聘服务','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('69','9','婚介/交友','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('70','9','工商代理','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('71','9','会计师事务所','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_hy_sort` VALUES ('72','9','法律咨询/诉讼','0','2','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `hh_jfabout` VALUES ('6','2','发表文章可得{$webdb[postArticleMoney]}个积分','只有审核后的文章才可得积分,没审核的文章不得积分.','0');
INSERT INTO `hh_jfabout` VALUES ('7','2','删除文章扣除{$webdb[deleteArticleMoney]}个积分','','0');
INSERT INTO `hh_jfabout` VALUES ('5','1','用户注册可得{$webdb[regmoney]}个积分','','0');
INSERT INTO `hh_jfabout` VALUES ('8','2','文章被设置为精华可得{$webdb[comArticleMoney]}个积分','','0');
INSERT INTO `hh_jfabout` VALUES ('9','1','每个点卡可兑换{$webdb[MoneyRatio]}个积分,点卡可以通过在线充值获得.','','0');
INSERT INTO `hh_jfsort` VALUES ('1','会员中心','0');
INSERT INTO `hh_jfsort` VALUES ('2','文章中心','0');
INSERT INTO `hh_label` VALUES ('1','','0','0','show_right_top_picad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/a_d/a_d_s.php?job=js&ad_id=show_right_top_picad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"110\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893892','3','0','0','0','default');
INSERT INTO `hh_label` VALUES ('2','','0','0','show_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/a_d/a_d_s.php?job=js&ad_id=show_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893880','3','0','0','0','default');
INSERT INTO `hh_label` VALUES ('312','','0','0','hr_ad_1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161234_b9rha.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"316\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006228','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('4','','0','0','article_list','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/a_d/a_d_s.php?job=js&ad_id=article_list\'> </SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"263\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893832','2','0','0','0','default');
INSERT INTO `hh_label` VALUES ('5','','0','0','article_list_tag','code','0','广告位','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279418','2','0','0','0','default');
INSERT INTO `hh_label` VALUES ('6','','0','0','bbsifmark_tag','code','0','论坛优秀贴','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `hh_label` VALUES ('7','','0','0','bbsifmark','pwbbs','1','a:28:{s:13:\"tplpart_1code\";s:162:\"<div style=\"padding-top:6px;\">·<A HREF=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" target=\'_blank\'  style=\"$fontcolor;$fontweight\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"pwbbs\";s:6:\"digest\";s:3:\"all\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"ifmark\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:176:\" SELECT T.*,T.tid AS id,T.author AS username,T.authorid AS uid,T.subject AS title,T.postdate AS posttime FROM pw_threads T  WHERE 1  ORDER BY T.ifmark DESC,T.tid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:3:\"282\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240202279','2','0','0','0','default');
INSERT INTO `hh_label` VALUES ('8','','0','0','article_show','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/a_d/a_d_s.php?job=js&ad_id=article_show\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893904','3','0','0','0','default');
INSERT INTO `hh_label` VALUES ('9','','0','0','article_show_tag','code','0','广告位','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279430','3','0','0','0','default');
INSERT INTO `hh_label` VALUES ('10','','0','0','view_article_bbs_tag','code','0','论坛推荐图文','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','0','0','0','default');
INSERT INTO `hh_label` VALUES ('11','','0','0','view_article_bbs','pwbbs','1','a:28:{s:13:\"tplpart_1code\";s:370:\"<div  class=\"listpic\"> \r\n              <p class=img><a href=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\"text-align:center;\"><A HREF=\"$webdb[passport_url]/read.php?tid=$tid&page=1\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"pwbbs\";s:6:\"digest\";s:3:\"all\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"tid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:252:\" SELECT T.*,T.tid AS id,T.author AS username,T.authorid AS uid,T.subject AS title,T.postdate AS posttime,A.attachurl FROM pw_attachs A LEFT JOIN pw_threads T ON A.tid=T.tid  WHERE 1  AND A.type=\'img\' GROUP BY tid ORDER BY T.tid DESC,T.tid DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:3:\"650\";s:5:\"div_h\";s:3:\"100\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893928','3','0','0','0','default');
INSERT INTO `hh_label` VALUES ('12','','0','0','list_page_mv','article','1','a:31:{s:13:\"tplpart_1code\";s:195:\"(mv,290,210,false)$mvurl(/mv)\r\n<div style=\"line-height:170%;text-align:center;padding-top:8px;\"><A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\" title=\'$full_title\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','1','0','default');
INSERT INTO `hh_label` VALUES ('13','','0','0','list_top_ad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/a_d/a_d_s.php?job=js&ad_id=AD_list_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:2:\"51\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893857','2','0','0','0','default');
INSERT INTO `hh_label` VALUES ('225','','0','0','shop_a2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:93:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"180\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839803','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('226','','0','0','shop_a3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:655:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtb\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                        <span class=\"prica\">市场价：<strike>￥{$market_price}</strike></span>\r\n                        <span class=\"pricb\">本店价：<em>￥{$price}</em></span>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"430\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839796','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('220','','0','0','shop_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"480\";s:6:\"height\";s:3:\"150\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101029141056_pgxoy.jpg\";i:2;s:32:\"label/1_20101029141000_syjv2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288332865','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('221','','0','0','shop_hot','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"500\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294298029','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('222','','0','0','shop_new','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"500\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839863','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('223','','0','0','shop_news','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666668','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('224','','0','0','shop_a1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:532:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"list1\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <div>现价:<span>￥{$price}</span>元</div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839893','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('20','','0','0','list_page_mv','article','1','a:31:{s:13:\"tplpart_1code\";s:195:\"(mv,290,210,false)$mvurl(/mv)\r\n<div style=\"line-height:170%;text-align:center;padding-top:8px;\"><A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\" title=\'$full_title\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240292096','2','0','0','0','default');
INSERT INTO `hh_label` VALUES ('21','','1','0','news_1','article','1','a:33:{s:13:\"tplpart_1code\";s:67:\" <div class=\"s\"><A HREF=\"{$url}\" target=\'_blank\'>{$title}</a></div>\";s:13:\"tplpart_2code\";s:66:\"<div class=\"b\"><A HREF=\"{$url}\" target=\'_blank\'>{$title}</a></div>\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:136:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"387\";s:5:\"div_h\";s:2:\"87\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294667371','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('22','','1','0','news_1_1','article','1','a:32:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:25:\"/common_title/title_i.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"372\";s:5:\"div_h\";s:3:\"112\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054038','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('23','','1','0','news_1_2','article','1','a:32:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:25:\"/common_title/title_i.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054045','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('24','','1','0','news_1_3','article','1','a:32:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054051','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('25','','1','0','news_1_4','article','1','a:32:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054056','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('26','','1','0','news_2_0','article','1','a:32:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\"><a href=\"{$url}\" target=\"_blank\">{$title}</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"24\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054062','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('27','','1','0','news_2_1','article','1','a:32:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\"><a href=\"{$url}\" target=\"_blank\">{$title}</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054074','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('28','','1','0','news_3','article','1','a:32:{s:13:\"tplpart_1code\";s:69:\"<div class=\"l$i\"><a href=\"{$url}\" target=\"_blank\">{$title}</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054068','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('29','','1','0','news_4','article','1','a:32:{s:13:\"tplpart_1code\";s:543:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtv\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"60\" height=\"50\" border=\"0\"/></a></td>\r\n                    <td class=\"word\">\r\n                <div><a href=\"$url\" target=\"_blank\">{$title}</a></div>\r\n                <div>关注度: <span>{$hits}</span> 人次</div></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:164:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"188\";s:5:\"div_h\";s:3:\"111\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292053917','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('30','','1','0','news_5','article','1','a:32:{s:13:\"tplpart_1code\";s:538:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listzt\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"75\" border=\"0\"/></a></td>\r\n                    \r\n              <td class=\"word\"><a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n                $content<a href=\"$url\" target=\"_blank\">[详细]</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:225:\" SELECT A.*,A.aid AS id,R.content FROM hh_article A LEFT JOIN hh_reply R ON A.aid=R.aid   WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"30\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054087','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('31','','1','0','news_6','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054080','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('32','','1','0','news_7','article','1','a:32:{s:13:\"tplpart_1code\";s:83:\"<div class=\"l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>$hits</span></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054675','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('33','','1','0','news_8_1','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054693','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('34','','1','0','news_8_2','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054763','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('35','','1','0','news_8_3','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054770','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('36','','1','0','news_8_4','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054717','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('37','','1','0','news_8_5','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `hh_label` VALUES ('38','','1','0','news_9','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:535:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnew\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n                $content <a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\r\n                \";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:195:\" SELECT A.*,A.aid AS id,R.content FROM hh_article A LEFT JOIN hh_reply R ON A.aid=R.aid   WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:207:\" SELECT A.*,A.aid AS id,R.content FROM hh_article A LEFT JOIN hh_reply R ON A.aid=R.aid  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"65\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054702','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('39','','1','0','news_10','article','1','a:32:{s:13:\"tplpart_1code\";s:236:\"<div class=\"listpic\"> <a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"150\" height=\"120\" border=\"0\"/></a> \r\n        <a href=\"$url\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:164:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054727','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('40','','1','0','news_0','code','0',' <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">餐饮美食</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">火锅\\砂锅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">韩国料理</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">庭院餐厅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">石锅拌饭</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">调价信息</a></dd>\r\n        </dl>        \r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">休闲娱乐</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">KTV俱乐部</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">酸菜鱼</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">酒吧/SPA馆</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">庭院餐厅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">日本料理</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">旅游酒店</a></dt>        \r\n            <dd><a href=\"#\" target=\"_blank\">洗浴桑拿</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">农家菜</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">足浴按摩</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">海鲜自助餐</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">儿童摄影</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">便民服务</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">玩乐影院</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">油爆虾</a></dd>        \r\n            <dd><a href=\"#\" target=\"_blank\">出厂价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">瑜伽馆</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">桌游吧</a></dd>\r\n        </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"800\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292050226','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('41','','1','0','news_11','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054738','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('42','','1','0','news_12','article','1','a:32:{s:13:\"tplpart_1code\";s:66:\"<div class=\"liste\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:502:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnewa\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"110\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>　$content<a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:195:\" SELECT A.*,A.aid AS id,R.content FROM hh_article A LEFT JOIN hh_reply R ON A.aid=R.aid   WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:207:\" SELECT A.*,A.aid AS id,R.content FROM hh_article A LEFT JOIN hh_reply R ON A.aid=R.aid  WHERE A.yz=1 AND city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292054733','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('43','','1','0','news_13','article','1','a:32:{s:13:\"tplpart_1code\";s:66:\"<div class=\"liste\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:502:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnewa\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"110\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>　$content<a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:196:\" SELECT A.*,A.aid AS id,R.content FROM hh_article A LEFT JOIN hh_reply R ON A.aid=R.aid   WHERE A.yz=1 AND A.city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";s:208:\" SELECT A.*,A.aid AS id,R.content FROM hh_article A LEFT JOIN hh_reply R ON A.aid=R.aid  WHERE A.yz=1 AND A.city_id=\'$GLOBALS[city_id]\'  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"340\";s:5:\"div_h\";s:3:\"220\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292057933','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('298','','0','0','hy_15','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"178\";s:5:\"div_h\";s:2:\"44\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666747','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('297','','0','0','hy_10','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:737:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtable table1\">\r\n                  <tr>\r\n                    \r\n                <td class=\"img\"><span>$i</span><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"45\" border=\"0\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<div class=\"t\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\r\n                        <div class=\"c\">关注度 <span>$hits</span> 次</div>\r\n                        <div class=\"c\">点评数 {$dianping}  条</div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:90:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY rid DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"180\";s:5:\"div_h\";s:3:\"262\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292061088','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('296','','0','0','hy_11','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:106:\"   <div class=\"listb l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m} -{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:212:\"<div class=\"lista l0\">\r\n                        <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                        <div class=\"c\">$content</div>\r\n                    </div>\r\n                 \";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_zh_pic/zh_pc.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:167:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"100\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"303\";s:5:\"div_h\";s:3:\"249\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666735','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('73','','1','0','news_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"1\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"276\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018161028_pjjzu.jpg\";i:2;s:32:\"label/1_20101018161051_jfeu1.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:24:\"家电折扣季品牌家电32元起\";i:2;s:20:\"百元以下烘焙烤箱详解\";}}','a:3:{s:5:\"div_w\";s:3:\"328\";s:5:\"div_h\";s:3:\"274\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292053991','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('294','','0','0','hy_7','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:327:\"<div class=\"listcompany\">\r\n			<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" border=\"0\"/></a> \r\n              <a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"t\">$title</a>\r\n			  </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:91:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"24\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"762\";s:5:\"div_h\";s:3:\"256\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292061082','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('288','','0','0','hy_1','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"170\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101123121104_vcrd7.jpg\";i:2;s:32:\"label/1_20101123121109_ud6ep.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"248\";s:5:\"div_h\";s:3:\"168\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290488506','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('289','','0','0','hy_2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101123121155_ihnbv.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"115\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"113\";s:5:\"div_h\";s:2:\"58\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290488513','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('290','','0','0','hy_3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101123121111_d03vt.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"115\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"113\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290488521','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('291','','0','0','hy_4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101123131120_6g6lw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"176\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:2:\"89\";s:5:\"div_h\";s:2:\"59\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290488536','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('292','','0','0','hy_5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101123131113_owuft.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"176\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"177\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290491294','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('293','','0','0','hy_6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101123131157_sdv3g.png\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"176\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"176\";s:5:\"div_h\";s:2:\"58\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290491303','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('295','','0','0','hy_8','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:543:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr>\r\n                    \r\n                <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"45\" border=\"0\"/></a></td>\r\n                    <td>\r\n                    	<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                        <div class=\"c\">$content</div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_zh_pic/zh_pc.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:167:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:180:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"30\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"173\";s:5:\"div_h\";s:3:\"207\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666722','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('247','','0','0','life_t1','code','0','<div class=\"list\"><a href=\"#\" target=\"_blank\"><u>提升团队招生咨询和成交法宝</u></a></div>\r\n<div class=\"list\"><a href=\"#\" target=\"_blank\"><u>如何打造学校高水平招生团队</u></a></div>\r\n<div class=\"list\"><a href=\"#\" target=\"_blank\"><u>求学择校，充电培训，请进！</u></a></div>\r\n<div class=\"list\"><a href=\"#\" target=\"_blank\"><u>首页文字链火热招商进行中！</u></a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"145\";s:5:\"div_h\";s:2:\"86\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047550','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('248','','0','0','life_t2','code','0','<div class=\"list\"><a href=\"#\" target=\"_blank\"><u>中国打破了世界软件巨头规则</u></a></div>\r\n        <div class=\"list\"><a href=\"#\" target=\"_blank\"><u>轻松点击择校网未来前途无忧</u></a></div>\r\n        <div class=\"list\"><a href=\"#\" target=\"_blank\"><u>９大名师揭秘２０１１年高考</u></a></div>\r\n        <div class=\"list\"><a href=\"#\" target=\"_blank\"><u>２０１１高考-如何突破600分</u></a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"159\";s:5:\"div_h\";s:2:\"78\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291883695','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('249','','0','0','life_t3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101102201154_6s95f.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"640\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('250','','0','0','life_t4','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"175\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101102201151_zxdvu.jpg\";i:2;s:32:\"label/1_20101102201157_a9ie2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('251','','0','0','life_t5','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:77:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a>　　$content</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:167:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"130\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"400\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666269','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('252','','0','0','life_t6','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:534:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"lista\">\r\n                          <tr>\r\n                            <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                            <td class=\"word\">\r\n                            	<a href=\"$url\" target=\"_blank\">$title</a>　　$content\r\n                            </td>\r\n                          </tr>\r\n                        </table> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:197:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"270\";s:5:\"div_h\";s:3:\"130\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666327','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('253','','0','0','life_t7','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:234:\"<div class=\"list\"><a href=\"$list_url\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                        <a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <span>{$time_m}-{$time_d}</span>\r\n                    </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.hits DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"410\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666285','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('254','','0','0','life_t8','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:234:\"<div class=\"list\"><a href=\"$list_url\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                        <a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <span>{$time_m}-{$time_d}</span>\r\n                    </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:113:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.hits ASC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"410\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666298','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('255','','0','0','life_t9','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:79:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\" class=\"title\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"204\";s:5:\"div_h\";s:2:\"83\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666363','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('160','','1','0','news_k1','code','0','推荐新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047266','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('161','','1','0','news_k2','code','0','成功故事','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `hh_label` VALUES ('162','','1','0','news_k3','code','0','美食资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047289','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('163','','1','0','news_k4','code','0','旅游资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047302','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('164','','1','0','news_k5','code','0','热门资料','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `hh_label` VALUES ('165','','1','0','news_k7','code','0','本地行情','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047324','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('166','','1','0','news_k8','code','0','购物街','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047338','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('167','','1','0','news_k9','code','0','今日促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047427','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('168','','1','0','news_k10','code','0','新品上市','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047445','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('169','','1','0','news_k11','code','0','打折促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047521','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('170','','1','0','news_k12','code','0','购物要领','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047503','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('171','','1','0','news_k13','code','0','美食推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047468','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('172','','1','0','news_k14','code','0','促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047359','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('173','','1','0','news_k15','code','0','美容','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047373','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('174','','1','0','news_k16','code','0','留学','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047384','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('175','','1','0','news_k17','code','0','服装','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047399','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('176','','1','0','news_k18','code','0','装修','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047409','0','0','0','0','default');
INSERT INTO `hh_label` VALUES ('177','','1','0','news_k19','code','0','不锈钢','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `hh_label` VALUES ('178','','1','0','news_banner1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287475674','0','0','0','0','yellow');
INSERT INTO `hh_label` VALUES ('179','','1','0','news_banner2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','yellow');
INSERT INTO `hh_label` VALUES ('180','','0','99','head_menu','code','0','<a href=\"http://www_qibosoft_com/member/?main=http://www_qibosoft_com/hy/member/homepage_ctrl.php?atn=info\" target=\"_blank\">管理商铺</a> \r\n<a href=\"http://www_qibosoft_com/member/?main=http://www_qibosoft_com/sell/member/post_choose.php\" target=\"_blank\">发布产品</a> \r\n<a href=\"http://www_qibosoft_com/member/?main=http://www_qibosoft_com/buy/member/post_choose.php\" target=\"_blank\">发布求购</a> \r\n<a href=\"http://www_qibosoft_com/buy/\" target=\"_blank\">寻找商机</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"300\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554487','9','0','0','0','default');
INSERT INTO `hh_label` VALUES ('181','','0','99','head_topmenu','code','0','<a href=\"http://www_qibosoft_com/do/jf.php\" target=\"_blank\">如何赚积分</a> | <a href=\"http://www_qibosoft_com/do/list.php?fid=43\" target=\"_blank\">新手入门</a> \r\n| <a href=\"http://www_qibosoft_com/guestbook/\" target=\"_blank\">访问留言</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"200\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554775','9','0','0','0','default');
INSERT INTO `hh_label` VALUES ('182','','0','99','head_tel','code','0','400-45874147','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287554818','9','0','0','0','default');
INSERT INTO `hh_label` VALUES ('183','','0','0','gift_left1','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:455:\"<div class=\"lista\"> <a href=\"$url\" class=\"img\" target=\"_blank\"><img src=\"$picurl\" onError=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"75\" height=\"75\" border=\"0\"></a> \r\n            <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n            <span class=\"price\">原价{$mart_price}元</span> <span class=\"zf\">需{$money}{$webdb[MoneyName]}</span> \r\n            <a href=\"$url\" class=\"goto\" target=\"_blank\">去看看</a> \r\n          </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:67:\"SELECT * FROM hh_gift_content  WHERE 1  ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `hh_label` VALUES ('184','','0','0','gift_pic1','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:507:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"120\"></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <div><span>￥{$mart_price}</span><em>$money</em>积分兑换</div>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"butter\"><img src=\"$webdb[www_url]/images/yellow/gift_butter.gif\"></a>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:68:\"SELECT * FROM hh_gift_content  WHERE 1  ORDER BY list DESC LIMIT 15 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `hh_label` VALUES ('185','','0','0','gift_news','code','0',' <div class=\"l1\"><a >免费注册一个帐号</a></div>\r\n                <div class=\"l2\"><a >努力通过各种方式赚积分</a></div>\r\n                <div class=\"l3\"><a >挑选礼品,申请兑换</a></div>\r\n                <div class=\"l4\"><a >等待审核,发放礼品</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"225\";s:5:\"div_h\";s:3:\"111\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047567','0','26','0','0','default');
INSERT INTO `hh_label` VALUES ('186','','0','0','gift_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:3:\"220\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025121017_53fhc.jpg\";i:2;s:32:\"label/1_20101025121026_yiimn.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `hh_label` VALUES ('187','','0','0','tuangou_news','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"listb\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"181\";s:5:\"div_h\";s:3:\"133\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666829','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('188','','0','0','tuangou_hot','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:99:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}-{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:96:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"28\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"189\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047586','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('189','','0','0','tuangou_xz1','code','0','推荐活动','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('190','','0','0','tuangou_xz2','code','0','推荐活动','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('191','','0','0','tuangou_vz1','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:97:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:96:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"232\";s:5:\"div_h\";s:3:\"185\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047602','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('192','','0','0','tuangou_xz3','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:263:\" <div class=\"listpic\"> <a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" border=\"0\"></a> \r\n            <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:108:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839994','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('193','','0','0','tuangou_hy1','pic','0','a:4:{s:6:\"imgurl\";s:65:\"http://i05.c.aliimg.com/news/upload/0831/116x58_1250072543719.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('194','','0','0','tuangou_hy2','pic','0','a:4:{s:6:\"imgurl\";s:72:\"http://i05.c.aliimg.com/news/upload/5003817/114x56love_1262239807514.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('195','','0','0','tuangou_hy3','pic','0','a:4:{s:6:\"imgurl\";s:66:\"http://i04.c.aliimg.com/news/upload/!!!!!!/92-60_1280974834710.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('196','','0','0','tuangou_hy4','pic','0','a:4:{s:6:\"imgurl\";s:71:\"http://i02.c.aliimg.com/news/upload/rain/banner114x56_1258530967195.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('197','','0','0','tuangou_hy0','code','0','赞助商','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('198','','0','0','tuangou_main','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:890:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tablelist\">\r\n          <tr>\r\n            <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"></a></td>\r\n            <td class=\"word\">\r\n            	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                &nbsp;&nbsp;$content\r\n            </td>\r\n            <td class=\"info\">\r\n            	<div>\r\n                	<a href=\"$webdb[www_url]/member/?main=$GLOBALS[Murl]/member/join.php?fid=$fid&cid=$id\" target=\"_blank\">我要报名</a>\r\n                    <span>参加人数:<em>{$totaluser}人</em></span>\r\n                    <span>发起时间:<em>{$time_Y}-{$time_m}-{$time_d}</em></span>\r\n                    <span>浏览人数:<em>{$hits}次</em></span>\r\n                </div>\r\n            </td>\r\n          </tr>\r\n        </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:3:\"120\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:108:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"700\";s:5:\"div_h\";s:3:\"550\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839999','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('199','','0','0','tuangou_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"420\";s:6:\"height\";s:3:\"182\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025161030_dn3nk.jpg\";i:2;s:32:\"label/1_20101025161027_ybvq3.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"413\";s:5:\"div_h\";s:3:\"189\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047657','0','28','0','0','default');
INSERT INTO `hh_label` VALUES ('200','','0','0','coupon_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"650\";s:6:\"height\";s:3:\"190\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101025161019_tkw1v.jpg\";i:2;s:32:\"label/1_20101025161026_bvtim.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287998816','0','27','0','0','default');
INSERT INTO `hh_label` VALUES ('201','','0','0','coupon_new1','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:419:\"<div class=\"listpic\">\r\n                	<div class=\"t\"><a href=\"$url\" target=\"_blank\" class=\"title\">$title</a></div>\r\n                    <div class=\"m\">原价:<strike>{$mart_price}元</strike> 优惠价:{$price}元</div>\r\n                	<div class=\"p\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"170\" height=\"125\"></a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:106:\"SELECT * FROM hh_coupon_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 9\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"650\";s:5:\"div_h\";s:3:\"580\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839908','0','27','0','0','default');
INSERT INTO `hh_label` VALUES ('202','','0','0','coupon_new23','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:123:\"<div class=\"list\"><span>$username</span>于<em>{$time_m}-{$time_d}</em>发布了<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:68:\"SELECT * FROM hh_coupon_content  WHERE 1  ORDER BY list DESC LIMIT 5\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','27','0','0','default');
INSERT INTO `hh_label` VALUES ('203','','0','0','fenlei_a1','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:130:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"28\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839635','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('204','','0','0','fenlei_a2','code','0','今日<br/>推荐信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('205','','0','0','fenlei_a3','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:67:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">·$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:130:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"620\";s:5:\"div_h\";s:2:\"48\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292061034','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('206','','0','0','fenlei_a4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666607','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('207','','0','0','fenlei_a5','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:593:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listp_title\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\" border=\"0\"/></a></td>\r\n                    \r\n              <td class=\"word\"> <a href=\"$url\" target=\"_blank\">$title</a> \r\n                <a href=\"$list_url\" target=\"_blank\" class=\"sort\">$fname</a> <span>{$posttime} </span> </td>\r\n                  </tr>\r\n                </table>\r\n                \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:142:\"(SELECT * FROM hh_fenlei_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"233\";s:5:\"div_h\";s:3:\"223\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839711','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('208','','0','0','fenlei_a6','code','0','赞助商','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('209','','0','0','fenlei_a7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171018_bzfar.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288170047','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('210','','0','0','fenlei_a8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171006_q2b2q.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('211','','0','0','fenlei_a9','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171021_fndoi.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"100\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('212','','0','0','fenlei_a10','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171047_wrbq9.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"485\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"65\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('213','','0','0','fenlei_a11','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171005_mcr01.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"65\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('214','','0','0','fenlei_b1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171059_0i0zi.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"720\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"720\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288170330','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('215','','0','0','fenlei_b2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171042_twc8g.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"250\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('216','','0','0','fenlei_b3','code','0','图文信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('217','','0','0','fenlei_b4','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:272:\"<div class=\"list_fpic\">\r\n        	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n            <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"16\";s:3:\"sql\";s:143:\"(SELECT * FROM hh_fenlei_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 16 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"970\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839702','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('218','','0','0','fenlei_ab11','code','0','最新信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('219','','0','0','fenlei_ab5','code','0','热门信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','default');
INSERT INTO `hh_label` VALUES ('227','','0','0','shop_a4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666691','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('228','','0','0','shop_b1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:494:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tbb\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <div>￥{$price}元</div>\r\n                    </td>\r\n                  </tr></table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839881','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('229','','0','0','shop_x1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:94:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"300\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839811','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('230','','0','0','shop_x2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:77:\"SELECT * FROM hh_shop_content  WHERE city_id=\'1\'  ORDER BY list ASC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338001','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('231','','0','0','shop_x3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:78:\"SELECT * FROM hh_shop_content  WHERE city_id=\'1\'  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('232','','0','0','shop_tt1','code','0','商城公告','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('233','','0','0','shop_tt2','code','0','今日推荐商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('234','','0','0','shop_tt3','code','0','促销商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('235','','0','0','shop_tt4','code','0','注意事项','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('236','','0','0','shop_tt5','code','0','热门商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('237','','0','0','shop_tt7','code','0','最新商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('238','','0','0','shop_tt8','code','0','热销榜','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('239','','0','0','shop_tt9','code','0','家用电器','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('240','','0','0','shop_tt10','code','0','化妆品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('241','','0','0','shop_tt11','code','0','生活用品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('242','','0','0','shop_m1','code','0','<a href=\"listall.php?ordertype=hits\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290068633','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('243','','0','0','shop_m2','code','0','<a href=\"listall.php?ordertype=id\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290068648','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('244','','0','0','shop_m3','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('245','','0','0','shop_m4','code','0','<a href=\"listall.php?ordertype=levelstime\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290068671','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('246','','0','0','shop_m5','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','default');
INSERT INTO `hh_label` VALUES ('256','','0','0','life_a1','code','0','<a href=\"#\" target=\"_blank\">最新信息</a> \r\n            <a href=\"#\" target=\"_blank\">推荐信息</a> <a href=\"#\" target=\"_blank\">热门信息</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('257','','0','0','life_a2','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:192:\"<div class=\"list\">\r\n                    <a href=\"$list_url\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"$url\" target=\"_blank\">{$title}</a>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:105:\"(SELECT * FROM hh_fenlei_content  WHERE 1  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"700\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288768210','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('258','','0','0','life_a3','mysql','1','a:22:{s:13:\"tplpart_1code\";s:114:\"<div class=\"list\"><a href=\"f/list.php?&fid=$fid\" target=\"_blank\" class=\"t$i\">$title</a><span>{$NUM}条</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"mysql\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"newhour\";N;s:7:\"hothits\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"stype\";s:1:\"4\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:145:\"SELECT COUNT( * ) AS NUM, fname AS title, fid FROM `hh_fenlei_content` WHERE city_id=\'$GLOBALS[city_id]\' GROUP BY fid ORDER BY NUM DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"230\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294632521','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('259','','0','0','life_a4','code','0','<a href=\"#\" target=\"_blank\">最新信息</a> <a href=\"#\" target=\"_blank\">推荐信息</a> <a href=\"#\" target=\"_blank\">热门信息</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('260','','0','0','life_a5','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:320:\"<div class=\"listpic\">\r\n                	<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"130\" height=\"60\"/></a>\r\n                    <a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:90:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY rid DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"720\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292059800','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('261','','0','0','life_a6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101103141157_dxj9d.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"62\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('262','','0','0','life_a7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101103141119_huh4r.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"62\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('263','','0','0','life_a8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101103141136_ewaqs.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"62\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('264','','0','0','life_a9','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:741:\"<div class=\"listpic_info\">\r\n                	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tr>\r\n                        <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></td>\r\n                        <td class=\"info\">\r\n                        	活动名称：<a href=\"$url\" target=\"_blank\" style=\"color:#3074C1;\">$title</a><br/>\r\n                            集合时间：$jointime<br/>\r\n                            截止时间：$end_time<br/>\r\n                            活动地点：$place\r\n                        </td>\r\n                      </tr>\r\n                    </table>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:108:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"48\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"700\";s:5:\"div_h\";s:3:\"230\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288838997','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('265','','0','0','life_a10','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:583:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpic_word\">\r\n                  <tr>\r\n                    <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                    \r\n    <td class=\"word\"> <a href=\"$url\" target=\"_blank\">$title</a> \r\n	市场售价:<font color=\"#3074C1\"><strike>￥{$mart_price} 元</strike></font> \r\n       <br>\r\n      所需积分:<font color=\"#FF9900\">{$money}</font> 点 </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:67:\"SELECT * FROM hh_gift_content  WHERE 1  ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288768133','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('266','','0','0','life_a11','code','0','<a href=\"#\" target=\"_blank\">最新信息</a> <a href=\"#\" target=\"_blank\">推荐信息</a> <a href=\"#\" target=\"_blank\">热门信息</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('267','','0','0','life_a12','code','0','<a href=\"#\" target=\"_blank\">最新信息</a> <a href=\"#\" target=\"_blank\">推荐信息</a> <a href=\"#\" target=\"_blank\">热门信息</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('268','','0','0','life_a13','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:340:\"<div class=\"listpic_pric\">\r\n                	<a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <div>现售价: <span>￥{$price} 元</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:106:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"720\";s:5:\"div_h\";s:3:\"270\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839434','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('269','','0','0','life_a14','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:447:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listdp\">\r\n                  <tr>\r\n                    <td class=\"td$i\">\r\n                    	<a href=\"coupon/bencandy.php?fid=$fid&id=$id\" target=\"_blank\" class=\"title\">$title</a><br/>\r\n                        原价：<strike>{$mart_price}元</strike> 促销价: <font color=\"#FF9900\">￥{$price}元</font>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:94:\"SELECT * FROM hh_coupon_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY list DESC LIMIT 6\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"300\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839514','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('270','','0','0','life_a15','code','0','<div class=\"list1\"><a href=\"#\" target=\"_blank\">想要出国留学吗？请致电：</a> <span>2854547474</span></div>\r\n               \r\n <div class=\"list2\">想找个好家教吗？请致电：010-88888888</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288768089','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('271','','0','0','life_a16','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101103141131_2ie4w.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('272','','0','0','life_a20','code','0','旅游资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('273','','0','0','life_a21','code','0','饮食资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('274','','0','0','life_a22','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:245:\" <div class=\"list\">\r\n                    <a href=\"$list_url\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span>{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:512:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpic_word\">\r\n                  <tr>\r\n                    <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></td>\r\n                    <td class=\"word\">\r\n                        <a href=\"$url\" target=\"_blank\">$title</a>　$content\r\n                        \r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:167:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:180:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"96\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"340\";s:5:\"div_h\";s:3:\"210\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666455','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('275','','0','0','life_a23','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:245:\" <div class=\"list\">\r\n                    <a href=\"$list_url\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"$url\" target=\"_blank\">$title</a>\r\n                    <span>{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:512:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpic_word\">\r\n                  <tr>\r\n                    <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></td>\r\n                    <td class=\"word\">\r\n                        <a href=\"$url\" target=\"_blank\">$title</a>　$content\r\n                        \r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:167:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.hits DESC LIMIT 6 \";s:4:\"sql2\";s:180:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1 ORDER BY A.hits DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"96\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"27\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"340\";s:5:\"div_h\";s:3:\"210\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666401','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('276','','0','0','life_a24','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('277','','0','0','life_a25','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('278','','0','0','life_a30','code','0','<a href=\"http://www_qibosoft_com/news/bencandy.php?&fid=45&id=950\" class=\"a1\" target=\"_blank\">火车票查询</a> \r\n<a href=\"http://www_qibosoft_com/news/bencandy.php?&fid=45&id=951\" class=\"a2\" target=\"_blank\">天气预报</a> \r\n<a href=\"http://www_qibosoft_com/news/bencandy.php?&fid=45&id=952\" class=\"a3\" target=\"_blank\">机票查询</a> \r\n<a href=\"http://www_qibosoft_com/news/bencandy.php?&fid=45&id=953\" class=\"a4\" target=\"_blank\">公交查询</a> \r\n<a href=\"http://www_qibosoft_com/f/job.php?job=ip\" class=\"a5\" target=\"_blank\">IP查询</a> \r\n<a href=\"http://www_qibosoft_com/news/bencandy.php?fid=45&id=954\" class=\"a6\" target=\"_blank\">交通违章</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"199\";s:5:\"div_h\";s:3:\"129\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1295009810','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('279','','0','0','life_a31','code','0','<SCRIPT LANGUAGE=\"JavaScript\">\r\ndocument.write(\'<span id=\"sellstelephone\"><img alt=\"内容加载中,请稍候...\" src=\"http://www_qibosoft_com/images/default/ico_loading3.gif\"></span>\');\r\nAJAX.get(\"sellstelephone\",\"do/hack.php?hack=sell_telephone&job=js\",1);\r\n</SCRIPT>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"120\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1295314169','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('280','','0','0','life_a32','code','0','	<div class=\"tel\">热线电话:<span>010-88888888</span></div>\r\n                <div class=\"qq\">客服QQ1:<a href=\"#\">88888888</a></div>\r\n                <div class=\"qq\">客服QQ2:<a href=\"#\">88888888</a></div>\r\n                <div class=\"qq1\">QQ群:<a href=\"#\">88888888</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"180\";s:5:\"div_h\";s:3:\"121\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288767979','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('281','','0','0','hr_adbr','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019141007_zo1nz.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"65\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287470269','0','31','0','0','yellow');
INSERT INTO `hh_label` VALUES ('282','','0','0','hr_aod1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101102101125_x0cdr.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"100\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('283','','0','0','hr_k2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019141047_fthry.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"715\";s:6:\"height\";s:2:\"88\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','yellow');
INSERT INTO `hh_label` VALUES ('284','','0','0','hr_news1','code','0','求职经验','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','yellow');
INSERT INTO `hh_label` VALUES ('285','','0','0','hr_news2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:47:\"·<a href=\"$url\" target=\"_blank\">$title</a><br>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294667004','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('286','','0','0','hr_news3','code','0','热门职位','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','yellow');
INSERT INTO `hh_label` VALUES ('287','','0','0','hr_nrws4','Info_hr_','1','a:28:{s:13:\"tplpart_1code\";s:48:\"·<a href=\"$url\" target=\"_blank\" >$title</a><br>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:3:\"hr_\";s:9:\"noReadMid\";i:1;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"A.id\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:206:\"SELECT A.*,B.*,C.title AS companyname FROM hh_hr_content A LEFT JOIN hh_hr_content_1 B ON A.id=B.id LEFT JOIN hh_hy_company C ON A.uid=C.uid  WHERE A.city_id=\'$GLOBALS[city_id]\'  ORDER BY A.id DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"199\";s:5:\"div_h\";s:3:\"129\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293008748','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('299','','0','0','hy_16','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"180\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666767','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('300','','0','0','hy_17','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:113:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list ASC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"179\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666782','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('301','','0','0','hy_18','code','0','	<div><a href=\"#\" target=\"_blank\">客户服务中心</a></div>\r\n            <div><a href=\"#\" target=\"_blank\">在线提问</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"87\";s:5:\"div_h\";s:2:\"40\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290491723','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('302','','0','0','hy_19','code','0','商家资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('303','','0','0','hy_20','code','0','最新商家','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('304','','0','0','hy_21','code','0','今日公告','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('305','','0','0','hy_22','code','0','商情快报','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('306','','0','0','hy_23','code','0','商家新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('307','','0','0','hy_25','member','1','a:20:{s:9:\"tplpart_1\";s:637:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtable table1\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"45\" height=\"45\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<div class=\"t\"><a href=\"$webdb[blog_url]/index.php?uid=$uid\" target=\"_blank\">$username</a></div>\r\n                        <div class=\"c\">注册日期:$posttime</div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_1code\";s:637:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtable table1\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"45\" height=\"45\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<div class=\"t\"><a href=\"$webdb[blog_url]/index.php?uid=$uid\" target=\"_blank\">$username</a></div>\r\n                        <div class=\"c\">注册日期:$posttime</div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:7:\"group_1\";s:0:\"\";s:7:\"group_2\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"regdate\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:157:\" SELECT D.*,D.username AS title,D.icon AS picurl,D.introduce AS content,D.regdate AS posttime FROM hh_memberdata D  WHERE 1  ORDER BY D.regdate DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"180\";s:5:\"div_h\";s:3:\"238\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290494104','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('308','','0','0','hy_26','code','0','会员动态','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('309','','0','0','hy_30','mysql','1','a:22:{s:13:\"tplpart_1code\";s:116:\"<div class=\"list l$i\"><span><a href=\"/f/list.php?&fid=$fid\" target=\"_blank\">$title</a></span><em>{$NUM}条</em></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"mysql\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"newhour\";N;s:7:\"hothits\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"stype\";s:1:\"4\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:144:\"SELECT COUNT( * ) AS NUM, fname AS title, fid FROM `hh_fenlei_content` WHERE city_id=\'$GLOBALS[city_id]\' GROUP BY fid ORDER BY NUM DESC LIMIT 10\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:3:\"176\";s:5:\"div_h\";s:3:\"220\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294650255','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('310','','0','0','hy_31','code','0','分类热门栏目','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `hh_label` VALUES ('311','','0','99','head_menus','code','0','<div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>\r\n        <div class=\"listm\"><a href=\"#\">空白链接</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"958\";s:5:\"div_h\";s:2:\"46\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291883687','8','0','0','0','default');
INSERT INTO `hh_label` VALUES ('313','','0','0','hr_ad_4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161249_h3kz4.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"154\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006235','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('314','','0','0','hr_ad_7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161201_bczen.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"155\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006241','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('315','','0','0','hr_ad_2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161202_cbypv.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"316\";s:5:\"div_h\";s:2:\"58\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006247','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('316','','0','0','hr_ad_5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161241_vew3t.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"156\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006253','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('317','','0','0','hr_ad_3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161202_3hyal.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"315\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006266','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('318','','0','0','hr_ad_6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161214_labun.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"153\";s:5:\"div_h\";s:2:\"59\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006272','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('319','','0','0','hr_ad_8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161225_9ols0.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"156\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006260','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('320','','0','0','hr_ad_9','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161237_kliyb.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"155\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293006278','0','31','0','0','default');
INSERT INTO `hh_label` VALUES ('321','','0','0','personglist','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101222161237_kliyb.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','4','31','0','0','default');
INSERT INTO `hh_label` VALUES ('322','','0','0','shop_a2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:93:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"180\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839803','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('323','','0','0','shop_a3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:655:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtb\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                        <span class=\"prica\">市场价：<strike>￥{$market_price}</strike></span>\r\n                        <span class=\"pricb\">本店价：<em>￥{$price}</em></span>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"430\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839796','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('324','','0','0','shop_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"480\";s:6:\"height\";s:3:\"150\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101029141056_pgxoy.jpg\";i:2;s:32:\"label/1_20101029141000_syjv2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288332865','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('325','','0','0','shop_hot','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"500\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839790','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('326','','0','0','shop_new','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"470\";s:5:\"div_h\";s:3:\"500\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839863','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('327','','0','0','shop_news','article','1','a:32:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"106\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1  AND A.mid=\'106\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338897','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('328','','0','0','shop_a1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:532:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"list1\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <div>现价:<span>￥{$price}</span>元</div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839893','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('352','','0','0','shoptg_a4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"225\";s:5:\"div_h\";s:3:\"217\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294667333','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('330','','0','0','shop_b1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:494:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tbb\">\r\n                  <tr>\r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" target=\"_blank\">$title</a>\r\n                        <div>￥{$price}元</div>\r\n                    </td>\r\n                  </tr></table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839881','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('331','','0','0','shop_x1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:94:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"300\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288839811','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('332','','0','0','shop_x2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:77:\"SELECT * FROM hh_shop_content  WHERE city_id=\'1\'  ORDER BY list ASC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1288338001','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('333','','0','0','shop_x3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:223:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"tb$i\">\r\n                  <tr>\r\n                    <td><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:78:\"SELECT * FROM hh_shop_content  WHERE city_id=\'1\'  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('334','','0','0','shop_tt1','code','0','商城公告','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('335','','0','0','shop_tt2','code','0','今日推荐商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('336','','0','0','shop_tt3','code','0','促销商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('353','','0','0','shoptg_tt4','code','0','注意事项','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('338','','0','0','shop_tt5','code','0','热门商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('339','','0','0','shop_tt7','code','0','最新商品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('340','','0','0','shop_tt8','code','0','热销榜','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('341','','0','0','shop_tt9','code','0','家用电器','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('342','','0','0','shop_tt10','code','0','化妆品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('343','','0','0','shop_tt11','code','0','生活用品','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('344','','0','0','shop_m1','code','0','<a href=\"listall.php?ordertype=hits\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290068633','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('345','','0','0','shop_m2','code','0','<a href=\"listall.php?ordertype=id\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290068648','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('346','','0','0','shop_m3','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('347','','0','0','shop_m4','code','0','<a href=\"listall.php?ordertype=levelstime\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290068671','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('354','','0','0','shoptg_m5','code','0','<a href=\"#\" target=\"_blank\">更多</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('349','','0','0','shoptg_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101228121201_roifx.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"274\";s:6:\"height\";s:3:\"112\";}','a:3:{s:5:\"div_w\";s:3:\"274\";s:5:\"div_h\";s:3:\"109\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293512165','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('350','','0','0','shoptg_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101228121236_ljffn.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"375\";s:6:\"height\";s:3:\"112\";}','a:3:{s:5:\"div_w\";s:3:\"374\";s:5:\"div_h\";s:3:\"111\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293512157','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('351','','0','0','shoptg_ad13','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101228121218_clmme.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"311\";s:6:\"height\";s:3:\"112\";}','a:3:{s:5:\"div_w\";s:3:\"314\";s:5:\"div_h\";s:3:\"111\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293512151','0','37','0','0','default');
INSERT INTO `hh_label` VALUES ('355','','0','0','red_indexslide','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"420\";s:6:\"height\";s:3:\"190\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101102201151_zxdvu.jpg\";i:2;s:32:\"label/1_20101102201157_a9ie2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('356','','0','0','index_redlisttitle1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:259:\"<div class=\"list l$i\">\r\n<span class=\"p\"><a href=\"$url\"><img src=\"$picurl\" width=\"70\" height=\"55\"/></a></span>\r\n<span class=\"f\"><a href=\"$list_url\">[{$fname}]</a></span>\r\n<span class=\"t\"><a href=\"$url\">$title</a></span>\r\n<span class=\"c\">$content</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:197:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294824043','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('357','','0','0','red_indexwebinfo','code','0','<SCRIPT LANGUAGE=\"JavaScript\">\r\n<!--\r\ndocument.write(\'<span id=\"siteinfo\"><img alt=\"内容加载中,请稍候...\" src=\"http://www_qibosoft_com/images/default/ico_loading3.gif\"></span>\');\r\ndocument.write(\'<div style=\"display:none;\"><iframe src=\"http://www_qibosoft_com/do/job.php?job=webinfo&iframeID=siteinfo\" width=0 height=0></iframe></div>\');\r\n//-->\r\n</SCRIPT>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('358','','0','0','red_indexnote','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:85:\"<div class=\"listnote\"><a href=\"$url\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294824054','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('359','','0','0','index_redlisthead1','code','0','<span class=\"fl\">本地资讯</span><span class=\"fr\"><a href=\"/news/\" target=\"_blank\">更多</a></span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('360','','0','0','red_indexnoteh','code','0','<span class=\"fl\">网站公告</span><span class=\"fr\"><a href=\"/do/list.php?fid=40\" target=\"_blank\">更多</a></span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('361','','0','0','red_indexfenlie','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:102:\"<div class=\"listfenlie\"><a href=\"$list_url\" class=\"f\">[{$fname}]</a> | <a href=\"$url\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:131:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('362','','0','0','red_indexfenliehot','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:67:\"<div class=\"list\">·<A HREF=\"$url\" target=\'_blank\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:130:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY hits DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('363','','0','0','red_indexfenlieimg','code','0','<a href=\"http://www_qibosoft_com/images/red/lenovo.gif\"><img src=\"http://www_qibosoft_com/images/red/lenovo.gif\"></a>\r\n<a href=\"http://www_qibosoft_com/images/red/kela.bmp\"><img src=\"http://www_qibosoft_com/images/red/kela.bmp\"></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('364','','0','0','red_indexhy','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:289:\"<div class=\"listpic\">\r\n<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"130\" height=\"60\"/></a>\r\n<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"t\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:90:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY rid DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294126378','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('365','','0','0','red_indexhyhot','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:94:\"<div class=\"list\">·<A HREF=\"$webdb[www_url]/home/?uid=$uid\" target=\'_blank\' >$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:91:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY hits DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('366','','0','0','red_indexhyimg','code','0','<a href=\"http://www_qibosoft_com/images/red/hybmp.bmp\"><img src=\"http://www_qibosoft_com/images/red/hybmp.bmp\" width=\"260\" height=\"90\" /></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('367','','0','0','index_redbannerad','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/red/banner_ad.gif\";s:7:\"imglink\";s:19:\"http://www.sudu.cn/\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294824154','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('368','','0','0','red_indextg','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:424:\"<div class=\"listtg\">\r\n<div class=\"img\">\r\n<a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n</div>\r\n<div class=\"word\">\r\n<div class=\"t\">活动名称：<a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div class=\"c\">集合时间：$jointime</div>\r\n<div class=\"c\">截止时间：$end_time</div>\r\n<div class=\"c\">活动地点：$place</div>	\r\n</div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:108:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('369','','0','0','red_indextghot','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:134:\"<div class=\"lista\"><A HREF=\"$list_url\" class=\"f\">[{$fname}]</A><A HREF=\"$url\" target=\'_blank\' >$title</a></div>                     \r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:28:\"/common_fname/time_fname.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:96:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY hits DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294129143','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('370','','0','0','red_indextgtz','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:114:\"<div class=\"lista\"><A HREF=\"$list_url\" class=\"f\">[{$fname}]</A><A HREF=\"$url\" target=\'_blank\' >$title</a></div>   \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"levelstime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:102:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY levelstime DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('371','','0','0','red_indexshop','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:285:\"<div class=\"listshop\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a>\r\n<a href=\"$url\" target=\"_blank\" class=\"t\">$title</a>\r\n<div>现售价: <span>￥{$price} 元</span></div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:106:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('372','','0','0','red_indexcouponcont','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:243:\"<div class=\"listcoupon list$i\">\r\n<div class=\"t\"><a href=\"coupon/bencandy.php?fid=$fid&id=$id\" target=\"_blank\" class=\"title\">$title</a></div>\r\n<div class=\"m\">原价：<strike>{$mart_price}元</strike> 促销价: <span>￥{$price}元</span></div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:94:\"SELECT * FROM hh_coupon_content  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY list DESC LIMIT 6\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','red');
INSERT INTO `hh_label` VALUES ('373','','0','0','red_hyrightad','code','0','<a href=\"http://www_qibosoft_com/images/red/hy/rad.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/images/red/hy/rad.gif\"></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','red');
INSERT INTO `hh_label` VALUES ('374','','0','0','red_fenlei_a10','code','0','<a href=\"http://www_qibosoft_com/images/red/f/fad1.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/images/red/f/fad1.gif\" width=\"990\" height=\"100\"></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294222376','0','36','0','0','red');
INSERT INTO `hh_label` VALUES ('375','','1','0','red_news_banner1','code','0','<a href=\"http://www_qibosoft_com/Tmp_updir/label/1_20101019161034_jrzm7.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/Tmp_updir/label/1_20101019161034_jrzm7.gif\" width=\"990\" height=\"80\"></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','red');
INSERT INTO `hh_label` VALUES ('376','','1','0','red_news_banner2','code','0','<a href=\"http://www_qibosoft_com/Tmp_updir/label/1_20101019161034_jrzm7.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/Tmp_updir/label/1_20101019161034_jrzm7.gif\" width=\"990\" height=\"80\"></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','red');
INSERT INTO `hh_label` VALUES ('377','','0','0','red_shoptg_ad1','code','0','<a href=\"http://www_qibosoft_com/images/red/shoptg/ad1.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/images/red/shoptg/ad1.gif\" width=\"280\" height=\"112\" /></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','red');
INSERT INTO `hh_label` VALUES ('378','','0','0','red_shoptg_ad2','code','0','<a href=\"http://www_qibosoft_com/images/red/shoptg/ad2.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/images/red/shoptg/ad2.gif\" width=\"380\" height=\"112\" /></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','red');
INSERT INTO `hh_label` VALUES ('379','','0','0','red_shoptg_ad13','code','0','<a href=\"http://www_qibosoft_com/images/red/shoptg/ad3.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/images/red/shoptg/ad3.gif\" width=\"310\" height=\"112\" /></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','37','0','0','red');
INSERT INTO `hh_label` VALUES ('380','','0','0','red_stg_bad1','code','0','<a href=\"http://www_qibosoft_com/images/red/shoptg/ad1.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/images/red/shoptg/ad1.gif\" width=\"280\" height=\"112\" /></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','37','0','0','red');
INSERT INTO `hh_label` VALUES ('381','','0','0','red_stg_bad2','code','0','<a href=\"http://www_qibosoft_com/images/red/shoptg/ad2.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/images/red/shoptg/ad2.gif\" width=\"380\" height=\"112\" /></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','37','0','0','red');
INSERT INTO `hh_label` VALUES ('382','','0','0','red_stg_bad3','code','0','<a href=\"http://www_qibosoft_com/images/red/shoptg/ad3.gif\" target=\"_blank\"><img src=\"http://www_qibosoft_com/images/red/shoptg/ad3.gif\" width=\"310\" height=\"112\" /></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','37','0','0','red');
INSERT INTO `hh_label` VALUES ('383','','0','0','news_0','code','0',' <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">餐饮美食</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">火锅\\砂锅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">韩国料理</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">庭院餐厅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">石锅拌饭</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">调价信息</a></dd>\r\n        </dl>        \r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">休闲娱乐</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">KTV俱乐部</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">酸菜鱼</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">酒吧/SPA馆</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">庭院餐厅</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">日本料理</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">旅游酒店</a></dt>        \r\n            <dd><a href=\"#\" target=\"_blank\">洗浴桑拿</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">农家菜</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">足浴按摩</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">海鲜自助餐</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">儿童摄影</a></dd>\r\n        </dl>\r\n        <dl>\r\n            <dt><a href=\"#\" target=\"_blank\">便民服务</a></dt>\r\n            <dd><a href=\"#\" target=\"_blank\">玩乐影院</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">油爆虾</a></dd>        \r\n            <dd><a href=\"#\" target=\"_blank\">出厂价格</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">瑜伽馆</a></dd>\r\n            <dd><a href=\"#\" target=\"_blank\">桌游吧</a></dd>\r\n        </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"800\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292050226','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('384','','0','0','news_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:67:\" <div class=\"s\"><A HREF=\"{$url}\" target=\'_blank\'>{$title}</a></div>\";s:13:\"tplpart_2code\";s:66:\"<div class=\"b\"><A HREF=\"{$url}\" target=\'_blank\'>{$title}</a></div>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"381\";s:5:\"div_h\";s:2:\"76\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665299','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('385','','0','0','news_10','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:236:\"<div class=\"listpic\"> <a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"150\" height=\"120\" border=\"0\"/></a> \r\n        <a href=\"$url\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"973\";s:5:\"div_h\";s:3:\"129\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666113','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('386','','0','0','news_11','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"189\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666101','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('387','','0','0','news_12','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"liste\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:502:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnewa\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"110\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>　$content<a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:167:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:180:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"339\";s:5:\"div_h\";s:3:\"185\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666090','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('388','','0','0','news_13','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"liste\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:502:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnewa\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"110\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>　$content<a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:166:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";s:179:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"90\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"340\";s:5:\"div_h\";s:3:\"220\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666027','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('389','','0','0','news_1_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_title/title_i.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"372\";s:5:\"div_h\";s:3:\"112\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665351','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('390','','0','0','news_1_2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_title/title_i.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:113:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list ASC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:3:\"102\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666232','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('391','','0','0','news_1_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"364\";s:5:\"div_h\";s:3:\"114\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666240','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('392','','0','0','news_1_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:260:\"<div class=\"list\">\r\n                    <a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">[{$fname}]</a>\r\n                    <a href=\"{$url}\" target=\"_blank\">{$title}</a>\r\n                    <span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"346\";s:5:\"div_h\";s:2:\"73\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666197','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('393','','0','0','news_2_0','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\"><a href=\"{$url}\" target=\"_blank\">{$title}</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"24\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"313\";s:5:\"div_h\";s:2:\"94\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666221','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('394','','0','0','news_2_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\"><a href=\"{$url}\" target=\"_blank\">{$title}</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665747','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('395','','0','0','news_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:69:\"<div class=\"l$i\"><a href=\"{$url}\" target=\"_blank\">{$title}</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"284\";s:5:\"div_h\";s:2:\"95\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666208','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('396','','0','0','news_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:543:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtv\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"60\" height=\"50\" border=\"0\"/></a></td>\r\n                    <td class=\"word\">\r\n                <div><a href=\"$url\" target=\"_blank\">{$title}</a></div>\r\n                <div>关注度: <span>{$hits}</span> 人次</div></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"188\";s:5:\"div_h\";s:3:\"111\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665317','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('397','','0','0','news_5','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:538:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listzt\">\r\n                  <tr>\r\n                    \r\n              <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"75\" border=\"0\"/></a></td>\r\n                    \r\n              <td class=\"word\"><a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n                $content<a href=\"$url\" target=\"_blank\">[详细]</a></td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:197:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"30\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"209\";s:5:\"div_h\";s:3:\"179\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666172','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('398','','0','0','news_6','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665814','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('399','','0','0','news_7','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:83:\"<div class=\"l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>$hits</span></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"218\";s:5:\"div_h\";s:3:\"230\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666153','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('400','','0','0','news_8_1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"334\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666142','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('401','','0','0','news_8_2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665875','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('402','','0','0','news_8_3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665922','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('403','','0','0','news_8_4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294665901','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('404','','0','0','news_8_5','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM hh_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `hh_label` VALUES ('405','','0','0','news_9','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listzta\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:535:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listnew\">\r\n                  <tr>\r\n                    \r\n              <td> <a href=\"$url\" class=\"img\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"70\" border=\"0\"/></a> \r\n                <a href=\"$url\" target=\"_blank\">$title</a><br/>\r\n                $content <a href=\"$url\" target=\"_blank\">[详细]</a> \r\n              </td>\r\n                  </tr>\r\n                </table>\r\n                \";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:167:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:180:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"65\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"209\";s:5:\"div_h\";s:3:\"221\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294666130','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('406','','0','0','news_banner1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1287475674','0','20','0','0','yellow');
INSERT INTO `hh_label` VALUES ('407','','0','0','news_banner2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101019161034_jrzm7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"980\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `hh_label` VALUES ('408','','0','0','news_k1','code','0','推荐新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047266','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('409','','0','0','news_k10','code','0','新品上市','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047445','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('410','','0','0','news_k11','code','0','打折促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047521','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('411','','0','0','news_k12','code','0','购物要领','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047503','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('412','','0','0','news_k13','code','0','美食推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047468','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('413','','0','0','news_k14','code','0','促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047359','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('414','','0','0','news_k15','code','0','美容','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047373','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('415','','0','0','news_k16','code','0','留学','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047384','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('416','','0','0','news_k17','code','0','服装','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047399','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('417','','0','0','news_k18','code','0','装修','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047409','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('418','','0','0','news_k19','code','0','不锈钢','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `hh_label` VALUES ('419','','0','0','news_k2','code','0','成功故事','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `hh_label` VALUES ('420','','0','0','news_k3','code','0','美食资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047289','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('421','','0','0','news_k4','code','0','旅游资讯','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047302','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('422','','0','0','news_k5','code','0','热门资料','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','yellow');
INSERT INTO `hh_label` VALUES ('423','','0','0','news_k7','code','0','本地行情','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047324','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('424','','0','0','news_k8','code','0','购物街','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047338','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('425','','0','0','news_k9','code','0','今日促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292047427','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('426','','0','0','news_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"1\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"276\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101018161028_pjjzu.jpg\";i:2;s:32:\"label/1_20101018161051_jfeu1.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:24:\"家电折扣季品牌家电32元起\";i:2;s:20:\"百元以下烘焙烤箱详解\";}}','a:3:{s:5:\"div_w\";s:3:\"328\";s:5:\"div_h\";s:3:\"274\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292053991','0','20','0','0','default');
INSERT INTO `hh_label` VALUES ('427','','0','0','blue_indexad1','pic','0','a:4:{s:6:\"imgurl\";s:22:\"../images/blue/ad1.gif\";s:7:\"imglink\";s:22:\"../images/blue/ad1.gif\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('428','','0','0','blue_indexad2','pic','0','a:4:{s:6:\"imgurl\";s:22:\"../images/blue/ad2.gif\";s:7:\"imglink\";s:22:\"../images/blue/ad2.gif\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('429','','0','0','blue_indexad3','pic','0','a:4:{s:6:\"imgurl\";s:22:\"../images/blue/ad3.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('430','','0','0','blue_indexad4','pic','0','a:4:{s:6:\"imgurl\";s:22:\"../images/blue/ad4.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('431','','0','0','blue_indexad5','pic','0','a:4:{s:6:\"imgurl\";s:22:\"../images/blue/ad5.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('432','','0','0','blue_indextodaytz','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:64:\"<span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"52\";s:5:\"div_h\";s:2:\"29\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1303025931','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('433','','0','0','blue_indexweather','code','0','<iframe src=\"http://m.weather.com.cn/m/pn4/weather.htm \" width=\"160\" height=\"20\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('434','','0','0','blue_middlead1','pic','0','a:4:{s:6:\"imgurl\";s:22:\"../images/blue/ad2.gif\";s:7:\"imglink\";s:23:\"http://www.qibosoft.com\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('435','','0','0','blue_indexflist1','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:117:\"<div class=\"list\">[<A HREF=\"$list_url\"  class=\"f\">{$fname}</A>] | <A HREF=\"$url\" target=\'_blank\' >$title</a></div>   \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:28:\"/common_fname/time_fname.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:131:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('436','','0','0','blue_indexflist2','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:117:\"<div class=\"list\">[<A HREF=\"$list_url\"  class=\"f\">{$fname}</A>] | <A HREF=\"$url\" target=\'_blank\' >$title</a></div>   \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"levelstime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:137:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY levelstime DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('437','','0','0','blue_indexflist3','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:117:\"<div class=\"list\">[<A HREF=\"$list_url\"  class=\"f\">{$fname}</A>] | <A HREF=\"$url\" target=\'_blank\' >$title</a></div>   \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:131:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY hits DESC LIMIT 12 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('438','','0','0','blue_indexhylist2','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:266:\"<div class=\"listhy\">\r\n<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"130\" height=\"60\"/></a>\r\n<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"levelstime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:97:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY levelstime DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294991544','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('439','','0','0','blue_indexhylist3','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:266:\"<div class=\"listhy\">\r\n<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"130\" height=\"60\"/></a>\r\n<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:91:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY hits DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1294991576','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('440','','0','0','blue_indexhylist1','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:266:\"<div class=\"listhy\">\r\n<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"130\" height=\"60\"/></a>\r\n<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:90:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY rid DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('441','','0','0','blue_mainadr1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101103141157_dxj9d.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('442','','0','0','blue_mainadr2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101103141119_huh4r.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('443','','0','0','blue_indexgiftlist1','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:382:\"<div class=\"listgift\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n<div class=\"word\">\r\n<div>活动名称：<a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div>集合时间：$jointime</div>\r\n<div>截止时间：$end_time</div>\r\n<div>活动地点：$place</div>	\r\n</div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:108:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('444','','0','0','blue_indexgiftlist2','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:382:\"<div class=\"listgift\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n<div class=\"word\">\r\n<div>活动名称：<a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div>集合时间：$jointime</div>\r\n<div>截止时间：$end_time</div>\r\n<div>活动地点：$place</div>	\r\n</div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"levelstime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY levelstime DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('445','','0','0','blue_indexgiftlist3','Info_tuangou_','1','a:28:{s:13:\"tplpart_1code\";s:382:\"<div class=\"listgift\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n<div class=\"word\">\r\n<div>活动名称：<a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div>集合时间：$jointime</div>\r\n<div>截止时间：$end_time</div>\r\n<div>活动地点：$place</div>	\r\n</div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:8:\"tuangou_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:108:\"SELECT * FROM hh_tuangou_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY hits DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('446','','0','0','blue_middlead2','pic','0','a:4:{s:6:\"imgurl\";s:22:\"../images/blue/ad3.gif\";s:7:\"imglink\";s:23:\"http://www.qibosoft.com\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('447','','0','0','blue_indexshoplist1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:321:\"<div class=\"listshop\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb\r\n\r\n[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a></div>\r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div class=\"p\">现售价: <span>￥{$price} 元</span></div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:106:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('448','','0','0','blue_indexshoplist2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:321:\"<div class=\"listshop\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb\r\n\r\n[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a></div>\r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div class=\"p\">现售价: <span>￥{$price} 元</span></div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"levelstime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:112:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY levelstime DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('449','','0','0','blue_indexshoplist3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:321:\"<div class=\"listshop\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb\r\n\r\n[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a></div>\r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div class=\"p\">现售价: <span>￥{$price} 元</span></div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:106:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY hits DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('450','','0','0','blue_middlead3','pic','0','a:4:{s:6:\"imgurl\";s:22:\"../images/blue/ad4.gif\";s:7:\"imglink\";s:23:\"http://www.qibosoft.com\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','8','0','0','0','blue');
INSERT INTO `hh_label` VALUES ('451','','0','0','blue_shoptex1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:294:\"<div class=\"listshop\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"60\" height=\"40\"/></a></div>\r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div class=\"p\">￥{$price}元</div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('452','','0','0','blue_shopsidelad1','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/blue/shop/sad1.gif\";s:7:\"imglink\";s:23:\"http://www.qibosoft.com\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('453','','0','0','blue_shopsidelad2','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/blue/shop/sad2.gif\";s:7:\"imglink\";s:23:\"http://www.qibosoft.com\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('454','','0','0','blue_shoplist1','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:402:\"<div class=\"listpic\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n<a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n<span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n<span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"levelstime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:111:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY levelstime DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('455','','0','0','blue_shoplist2','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:402:\"<div class=\"listpic\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n<a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n<span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n<span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:105:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY hits DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('456','','0','0','blue_shoplist3','Info_shop_','1','a:28:{s:13:\"tplpart_1code\";s:495:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <span class=\"pric\">原价<strike>￥{$market_price}</strike> 现价<em>￥{$price}</em></span>\r\n                    <span class=\"goto\"><a href=\"$url\" target=\"_blank\">查看详情</a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"shop_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";a:4:{i:0;s:2:\"21\";i:1;s:2:\"22\";i:2;s:2:\"23\";i:3;s:2:\"64\";}s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:131:\"SELECT * FROM hh_shop_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  AND fid IN (21,22,23,64)  ORDER BY list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1295246366','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('457','','0','0','blue_maction1','code','0','<dt>新手上路</dt>\r\n<dd><a href=\"#\" target=\"_blank\">如何下单</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">配送与运费</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">付款方式</a></dd>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('458','','0','0','blue_maction2','code','0','<dt>业务合作</dt>\r\n<dd><a href=\"#\" target=\"_blank\">网店代理</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">代理规则</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">批发规则</a></dd>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('459','','0','0','blue_maction3','code','0','<dt>服务保证</dt>\r\n<dd><a href=\"#\" target=\"_blank\">服务保证</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">退换货</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">发票制度</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">隐私保护</a></dd>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('460','','0','0','blue_maction4','code','0','<dt>帮助工具</dt>\r\n<dd><a href=\"#\" target=\"_blank\">数据转换</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">支付宝使用说明</a></dd>\r\n<dd><a href=\"#\" target=\"_blank\">财会通使用说明</a></dd>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','29','0','0','blue');
INSERT INTO `hh_label` VALUES ('461','','0','0','blue_gifthavezf','code','0','<dt>如何快速获得积分</dt>\r\n<dd>\r\n<a href=\"#\" target=\"_blank\">获取积分</a> |\r\n<a href=\"#\" target=\"_blank\">兑换礼品</a>\r\n</dd>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','blue');
INSERT INTO `hh_label` VALUES ('462','','0','0','blue_giftlist2','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:507:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"120\"></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <div><span>￥{$mart_price}</span><em>$money</em>积分兑换</div>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"butter\"><img src=\"$webdb[www_url]/images/yellow/gift_butter.gif\"></a>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:68:\"SELECT * FROM hh_gift_content  WHERE 1  ORDER BY hits DESC LIMIT 15 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','blue');
INSERT INTO `hh_label` VALUES ('463','','0','0','blue_giftlist3','Info_gift_','1','a:27:{s:13:\"tplpart_1code\";s:507:\"<div class=\"listpic\">\r\n                	<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"120\"></a>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"title\">$title</a>\r\n                    <div><span>￥{$mart_price}</span><em>$money</em>积分兑换</div>\r\n                    <a href=\"$url\" target=\"_blank\" class=\"butter\"><img src=\"$webdb[www_url]/images/yellow/gift_butter.gif\"></a>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"gift_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"levelstime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:74:\"SELECT * FROM hh_gift_content  WHERE 1  ORDER BY levelstime DESC LIMIT 15 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','blue');
INSERT INTO `hh_label` VALUES ('464','','0','0','blue_coupon1','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:525:\"<div class=\"listcoupon\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"></a></div>\r\n<div class=\"word\">\r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div class=\"price\">原价:<strike>{$mart_price}元</strike> 优惠价:{$price}元</div>\r\n<div class=\"d\">发布日期:{$posttime}</div>\r\n<div class=\"d\">结束日期:{$end_time}</div>\r\n</div>\r\n<div class=\"see\"><a href=\"$url\" target=\"_blank\">查看详情</a></div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:2:\"id\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:104:\"SELECT * FROM hh_coupon_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY id DESC LIMIT 5\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1295413910','0','27','0','0','blue');
INSERT INTO `hh_label` VALUES ('465','','0','0','blue_hrad1','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad1.gif\";s:7:\"imglink\";s:23:\"http://www.qibosoft.com\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"67\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('466','','0','0','blue_coupon2','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:525:\"<div class=\"listcoupon\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"></a></div>\r\n<div class=\"word\">\r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div class=\"price\">原价:<strike>{$mart_price}元</strike> 优惠价:{$price}元</div>\r\n<div class=\"d\">发布日期:{$posttime}</div>\r\n<div class=\"d\">结束日期:{$end_time}</div>\r\n</div>\r\n<div class=\"see\"><a href=\"$url\" target=\"_blank\">查看详情</a></div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:106:\"SELECT * FROM hh_coupon_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY hits DESC LIMIT 5\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','27','0','0','blue');
INSERT INTO `hh_label` VALUES ('467','','0','0','blue_coupon3','Info_coupon_','1','a:29:{s:13:\"tplpart_1code\";s:525:\"<div class=\"listcoupon\">\r\n<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"></a></div>\r\n<div class=\"word\">\r\n<div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div class=\"price\">原价:<strike>{$mart_price}元</strike> 优惠价:{$price}元</div>\r\n<div class=\"d\">发布日期:{$posttime}</div>\r\n<div class=\"d\">结束日期:{$end_time}</div>\r\n</div>\r\n<div class=\"see\"><a href=\"$url\" target=\"_blank\">查看详情</a></div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"coupon_\";s:7:\"typefid\";N;s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"levelstime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:112:\"SELECT * FROM hh_coupon_content  WHERE city_id=\'$GLOBALS[city_id]\' AND ispic=1  ORDER BY levelstime DESC LIMIT 5\";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','27','0','0','blue');
INSERT INTO `hh_label` VALUES ('468','','0','0','blue_hrhotlist','Info_hr_','1','a:28:{s:13:\"tplpart_1code\";s:138:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\" class=\"t\">$title</a><a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">{$fname}</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:3:\"hr_\";s:9:\"noReadMid\";i:1;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:208:\"SELECT A.*,B.*,C.title AS companyname FROM hh_hr_content A LEFT JOIN hh_hr_content_1 B ON A.id=B.id LEFT JOIN hh_hy_company C ON A.uid=C.uid  WHERE A.city_id=\'$GLOBALS[city_id]\'  ORDER BY A.hits DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1295839893','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('469','','0','0','blue_hrnewlist','Info_hr_','1','a:28:{s:13:\"tplpart_1code\";s:138:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\" class=\"t\">$title</a><a href=\"{$list_url}\" target=\"_blank\" class=\"sort\">{$fname}</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:3:\"hr_\";s:9:\"noReadMid\";i:1;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"A.id\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:206:\"SELECT A.*,B.*,C.title AS companyname FROM hh_hr_content A LEFT JOIN hh_hr_content_1 B ON A.id=B.id LEFT JOIN hh_hy_company C ON A.uid=C.uid  WHERE A.city_id=\'$GLOBALS[city_id]\'  ORDER BY A.id DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('470','','0','0','blue_hrad2','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad2.gif\";s:7:\"imglink\";s:23:\"http://www.qibosoft.com\";s:5:\"width\";s:3:\"485\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('471','','0','0','blue_hrad3','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad3.gif\";s:7:\"imglink\";s:23:\"http://www.qibosoft.com\";s:5:\"width\";s:3:\"485\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('472','','0','0','blue_hrad4','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad4.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('473','','0','0','blue_hrad5','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad5.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('474','','0','0','blue_hrad6','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad6.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('475','','0','0','blue_hrad7','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad7.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('476','','0','0','blue_hrad8','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad8.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('477','','0','0','blue_hrad9','pic','0','a:4:{s:6:\"imgurl\";s:27:\"../images/blue/hr/hrad9.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('478','','0','0','blue_hrad10','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/blue/hr/hrad10.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('479','','0','0','blue_hrad11','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/blue/hr/hrad11.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"40\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('480','','0','0','blue_listjob','Info_hr_','1','a:28:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:3:\"hr_\";s:9:\"noReadMid\";i:1;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"A.id\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:206:\"SELECT A.*,B.*,C.title AS companyname FROM hh_hr_content A LEFT JOIN hh_hr_content_1 B ON A.id=B.id LEFT JOIN hh_hy_company C ON A.uid=C.uid  WHERE A.city_id=\'$GLOBALS[city_id]\'  ORDER BY A.id DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('481','','0','0','blue_hrad12','pic','0','a:4:{s:6:\"imgurl\";s:28:\"../images/blue/hr/hrad12.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"245\";s:6:\"height\";s:3:\"100\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('482','','0','0','blue_hrnews','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:82:\"<div class=\"list$i\"><span>$i</span><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"35\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1295923134','0','31','0','0','blue');
INSERT INTO `hh_label` VALUES ('483','','0','0','blue_newsad1','pic','0','a:4:{s:6:\"imgurl\";s:31:\"../images/blue/news/newsad1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"46\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('484','','0','0','blue_newstzs','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:228:\"<div class=\"list\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"120\" height=\"90\"/></a>\r\n<a href=\"$url\" target=\"_blank\">{$title}</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.hits DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"25\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297734980','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('485','','0','0','blue_newsother','code','0','<div class=\"list\"><a href=\"#\">为什么要申请金牌会员?</a></div>\r\n<div class=\"list\"><a href=\"#\">注册普通会员要收费吗?</a></div>\r\n<div class=\"list\"><a href=\"#\">忘记登录名和密码?</a></div>\r\n<div class=\"list\"><a href=\"#\">如何发布供应信息?</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('486','','0','0','blue_newstzs1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:62:\"<div class=\"t\"><A HREF=\"$url\" target=\'_blank\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('487','','0','0','blue_topnewest','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:103:\"<div class=\"list$i\">\r\n<A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297739640','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('488','','0','0','blue_othernewest','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:166:\"\r\n<div class=\"list$i\">\r\n<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n<span>{$time_Y}-{$time_m}-{$time_d}</span>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:28:\"/common_fname/time_fname.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"20\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 20 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"25\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297739766','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('489','','0','0','blue_morenest','code','0','<a href=\"#\">09:17 中英携手低碳合作</a> <a href=\"#\">寒冷天气还将持续</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('490','','0','0','blue_hotnews','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:92:\"<div class=\"list$i\"><A HREF=\"$url\" target=\'_blank\' >$title</a><span>{$hits}次</span></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:30:\"/common_title/1title_noico.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.hits DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297747186','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('491','','0','0','blue_sortnewhead1','code','0','<a href=\"list.php?fid=33\">饮食文化</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297751160','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('492','','0','0','blue_sortnewhead2','code','0','<a href=\"list.php?fid=31\">旅游文化</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297750526','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('493','','0','0','blue_sortimg1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:422:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"list\">\r\n<tr>                    \r\n<td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"75\" border=\"0\"/></a></td>\r\n<td class=\"word\"><div><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n$content<a href=\"$url\" target=\"_blank\">[详细]</a></td>\r\n</tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:5:\"37,39\";s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:219:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.fid IN (37,39)  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"30\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297752214','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('494','','0','0','blue_sortword1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"list\"><A HREF=\"$url\" target=\'_blank\' >$title</a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:5:\"37,39\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:136:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.fid IN (37,39)   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297748652','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('495','','0','0','blue_sortimg2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:422:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"list\">\r\n<tr>                    \r\n<td class=\"img\"><a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"95\" height=\"75\" border=\"0\"/></a></td>\r\n<td class=\"word\"><div><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n$content<a href=\"$url\" target=\"_blank\">[详细]</a></td>\r\n</tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:11:\"31,32,33,34\";s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:225:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.fid IN (31,32,33,34)  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"30\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297752266','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('496','','0','0','blue_sortword2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:68:\"<div class=\"list\"><A HREF=\"$url\" target=\'_blank\' >$title</a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('497','','0','0','blue_newsimages','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:232:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"120\" height=\"90\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('498','','0','0','blue_ntitle1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:232:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"100\" height=\"75\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"10\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297763469','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('499','','0','0','blue_ntitle2','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\">·<A HREF=\"$url\" target=\'_blank\' >$title</a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297763790','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('500','','0','0','blue_ntitle3','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:120:\"<div class=\"list\">\r\n·<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('501','','0','0','blue_showh1','code','0','美容','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('502','','0','0','blue_showh2','code','0','留学','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('503','','0','0','blue_showh3','code','0','服装','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('504','','0','0','blue_showh4','code','0','装修','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('505','','0','0','blue_ntitle8','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:231:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"90\" height=\"70\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.hits DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('506','','0','0','blue_ntitle4','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:231:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"90\" height=\"70\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.hits DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('507','','0','0','blue_ntitle6','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:231:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"90\" height=\"70\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('508','','0','0','blue_ntitle10','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:231:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"90\" height=\"70\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('509','','0','0','blue_ntitle5','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:120:\"<div class=\"list\">\r\n·<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.hits DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('510','','0','0','blue_ntitle7','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:120:\"<div class=\"list\">\r\n·<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('511','','0','0','blue_ntitle9','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:120:\"<div class=\"list\">\r\n·<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:8:\"31,32,33\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:139:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.fid IN (31,32,33)   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('512','','0','0','blue_ntitle11','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:120:\"<div class=\"list\">\r\n·<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('513','','0','0','blue_ntitle12','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:232:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"100\" height=\"75\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('514','','0','0','blue_ntitle13','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list\">·<A HREF=\"$url\" target=\'_blank\' >$title</a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"25\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('515','','0','0','blue_ntitle14','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:120:\"<div class=\"list\">\r\n·<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('516','','0','0','blue_ntitle15','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:72:\"<div class=\"list\">\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297841841','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('517','','0','0','blue_ntitle16','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:72:\"<div class=\"list\">\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297841867','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('518','','0','0','blue_nrightad','pic','0','a:4:{s:6:\"imgurl\";s:31:\"../images/blue/news/newsad2.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297841956','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('519','','0','0','blue_ntitle17','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:176:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"100\" height=\"75\"/></a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('520','','0','0','blue_ntitle19','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:176:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"100\" height=\"75\"/></a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.hits DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('521','','0','0','blue_ntitle18','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:118:\"<div class=\"list\">\r\n<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"25\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297848180','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('522','','0','0','blue_ntitle20','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:118:\"<div class=\"list\">\r\n<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"25\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297844086','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('523','','0','0','blue_ntitle21','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:232:\"<div class=\"listpic\"> \r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" src=\"{$picurl}\" width=\"100\" height=\"75\"/></a> \r\n<a href=\"$url\" target=\"_blank\">$title</a> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:144:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('524','','0','0','blue_ntitle22','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:120:\"<div class=\"list\">\r\n·<A HREF=\"$list_url\" class=\"f\">[{$fname}]</A>\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:115:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('525','','0','0','blue_nrightad2','pic','0','a:4:{s:6:\"imgurl\";s:31:\"../images/blue/news/newsad3.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('526','','0','0','blue_nrightad3','pic','0','a:4:{s:6:\"imgurl\";s:31:\"../images/blue/news/newsad4.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"78\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297850609','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('527','','0','0','blue_ntitle23','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:72:\"<div class=\"list\">\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.hits DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297850552','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('528','','0','0','blue_ntitle24','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:72:\"<div class=\"list\">\r\n<A HREF=\"$url\" target=\'_blank\' >$title</a>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1297850531','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('529','','0','0','blue_newsth1','code','0','焦点新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('530','','0','0','blue_newsth2','code','0','推荐新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('531','','0','0','blue_newsth4','code','0','<span>最热</span>新闻排行','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('532','','0','0','blue_newsth3','code','0','最新要闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('533','','0','0','blue_newsth5','code','0','<span>图说</span>新闻','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('534','','0','0','blue_newsth7','code','0','<span>渡假生活</span><a href=\"list.php?fid=32\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('535','','0','0','blue_newsth6','code','0','本地行情','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('536','','0','0','blue_newsth9','code','0','<div class=\"tag\">社区生活</div>\r\n<div class=\"more\">\r\n<a href=\"#\" class=\"s\">价格</a> |\r\n<a href=\"#\" class=\"s\">政策</a> |\r\n<a href=\"#\" class=\"s\">技术</a> |\r\n<a href=\"#\" class=\"s\">服务</a> |\r\n<a href=\"#\">更多&gt;&gt;</a>                \r\n</div> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('537','','0','0','blue_newsth8','code','0','报价促销','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('538','','0','0','blue_newsth10','code','0','<span>今日新闻</span><a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('539','','0','0','blue_newsth11','code','0','<span>今日新闻</span><a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('540','','0','0','blue_newsth12','code','0','新品上市','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('541','','0','0','blue_newsth13','code','0','<span>渡假生活</span><a href=\"list.php?fid=32\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('542','','0','0','blue_newsth14','code','0','<div class=\"tag\">报价促销</div>\r\n<div class=\"more\">\r\n<a href=\"#\" class=\"s\">价格</a> |\r\n<a href=\"#\" class=\"s\">政策</a> |\r\n<a href=\"#\" class=\"s\">服务</a> |\r\n<a href=\"#\">更多&gt;&gt;</a>                \r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('543','','0','0','blue_newsth15','code','0','<div class=\"tag\">社区生活</div>\r\n<div class=\"more\">\r\n<a href=\"#\" class=\"s\">价格</a> |\r\n<a href=\"#\" class=\"s\">政策</a> |\r\n<a href=\"#\" class=\"s\">技术</a> |\r\n<a href=\"#\" class=\"s\">服务</a> |\r\n<a href=\"#\">更多&gt;&gt;</a>                \r\n</div> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('544','','0','0','blue_newsth16','code','0','<span>今日新闻</span><a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('545','','0','0','blue_newsth17','code','0','<span>今日新闻</span><a href=\"#\">更多&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','20','0','0','blue');
INSERT INTO `hh_label` VALUES ('546','','0','0','blue_fenliead1','pic','0','a:4:{s:6:\"imgurl\";s:25:\"../images/blue/f/fad1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"45\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('547','','0','0','blue_fenlieh1','code','0','今日推荐','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('548','','0','0','blue_fenliet1','code','0','<div class=\"list\"><a href=\"#\">12.20阿里旺旺2011beta1版上线</a></div>\r\n<div class=\"list\"><a href=\"#\">12.17我的信用服务全面升级至工作平台</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('549','','0','0','blue_fenliet4','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:427:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpw\">\r\n<tr>\r\n<td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n<td>\r\n<div><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n<div><a href=\"$list_url\" target=\"_blank\" class=\"sort\">$fname</a></div>\r\n<div>{$posttime}</div>\r\n</td>\r\n</tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:142:\"(SELECT * FROM hh_fenlei_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1298014120','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('550','','0','0','blue_fenliet2','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:226:\"<div class=\"listpic\">\r\n<a href=\"$url\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"72\"/></a>\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:142:\"(SELECT * FROM hh_fenlei_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1298013038','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('551','','0','0','blue_fenliet3','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:115:\"<div class=\"list\">\r\n<a HREF=\"$list_url\" class=\"f\">[{$fname}]</a>\r\n<a HREF=\"$url\" target=\'_blank\'>$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:28:\"/common_fname/time_fname.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:130:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('552','','0','0','blue_fenlieh2','code','0','最新信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('553','','0','0','blue_fenliem2','code','0','<a href=\"#\" target=\"_blank\">生活服务</a> |\r\n<a href=\"#\" target=\"_blank\">跳蚤市场</a> |\r\n<a href=\"#\" target=\"_blank\">办公商务</a> |\r\n<a href=\"#\" target=\"_blank\">教育培训</a> |\r\n<a href=\"#\" target=\"_blank\">宠物用品</a> |\r\n<a href=\"#\" target=\"_blank\">旅游签证</a> |\r\n<a href=\"#\" target=\"_blank\">交友征婚</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('554','','0','0','blue_fenlieh3','code','0','热门信息','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('555','','0','0','blue_fenlieh4','code','0','分类栏目','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('556','','0','0','blue_fenliem4','code','0','<a href=\"post.php\" target=\"_blank\">免费发布</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('557','','0','0','blue_fenlieh5','code','0','信息关注排行榜','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('558','','0','0','blue_fenlieh6','code','0','赞助商','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('559','','0','0','blue_fenliet5','Info_fenlei_','1','a:29:{s:13:\"tplpart_1code\";s:117:\"<div class=\"list$i\">\r\n<a HREF=\"$list_url\" class=\"f\">[{$fname}]</a>\r\n<a HREF=\"$url\" target=\'_blank\'>$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:7:\"fenlei_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:131:\"(SELECT * FROM hh_fenlei_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\' ) ORDER BY hits DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('560','','0','0','blue_fenliead2','pic','0','a:4:{s:6:\"imgurl\";s:25:\"../images/blue/f/fad2.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('561','','0','0','blue_fenliead3','pic','0','a:4:{s:6:\"imgurl\";s:25:\"../images/blue/f/fad3.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('562','','0','0','blue_fenliead4','pic','0','a:4:{s:6:\"imgurl\";s:25:\"../images/blue/f/fad4.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('563','','0','0','blue_fenliead5','pic','0','a:4:{s:6:\"imgurl\";s:25:\"../images/blue/f/fad5.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('564','','0','0','blue_fenlielistad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"../images/yellow/fenlie_adr1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('565','','0','0','blue_fenlielistad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"../images/yellow/fenlie_adr2.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('566','','0','0','blue_fenlielistad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"../images/yellow/fenlie_adr1.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('567','','0','0','blue_fenlie_bad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"../images/yellow/fenlie_adr3.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:2:\"65\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','36','0','0','blue');
INSERT INTO `hh_label` VALUES ('568','','0','0','blue_hynoticetitle','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:66:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:114:\" SELECT A.* FROM hh_news_content A  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','blue');
INSERT INTO `hh_label` VALUES ('569','','0','0','blue_hylistpic2','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:327:\"<div class=\"listcompany\">\r\n			<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" border=\"0\"/></a> \r\n              <a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"t\">$title</a>\r\n			  </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  AND levels=1  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1298526319','0','16','0','0','blue');
INSERT INTO `hh_label` VALUES ('570','','0','0','blue_hylistpic1','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:327:\"<div class=\"listcompany\">\r\n			<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" border=\"0\"/></a> \r\n              <a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"t\">$title</a>\r\n			  </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:90:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY rid ASC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','blue');
INSERT INTO `hh_label` VALUES ('571','','0','0','blue_hyhotsort','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:109:\"<div class=\"list$i\"><span>$i</span><A HREF=\"$webdb[www_url]/home/?uid=$uid\" target=\'_blank\' >$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:90:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY rid DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1298532146','0','16','0','0','blue');
INSERT INTO `hh_label` VALUES ('572','','0','0','blue_hyrightad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101123131157_sdv3g.png\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"190\";s:6:\"height\";s:2:\"62\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1298532756','0','16','0','0','blue');
INSERT INTO `hh_label` VALUES ('573','','0','0','blue_hylisttzcompany','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:92:\"<div class=\"list\"><A HREF=\"$webdb[www_url]/home/?uid=$uid\" target=\'_blank\' >$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:91:\"SELECT * FROM hh_hy_company  WHERE city_id=\'$GLOBALS[city_id]\'  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','16','0','0','blue');
INSERT INTO `hh_label` VALUES ('574','','0','0','house_show_sell','pic','0','a:4:{s:6:\"imgurl\";s:45:\"http://life.net/images/yellow/house/adimg.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:3:\"148\";s:5:\"div_h\";s:2:\"91\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1301298638','3','38','0','0','default');
INSERT INTO `hh_label` VALUES ('575','','0','0','house_ad1','pic','0','a:4:{s:6:\"imgurl\";s:55:\"label/1_20110416200407_NjNWNjJuMlU4M1o0MTIwMTEwMjE1.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"172\";s:6:\"height\";s:2:\"79\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302956834','0','38','0','0','blue');
INSERT INTO `hh_label` VALUES ('576','','0','0','house_ad2','pic','0','a:4:{s:6:\"imgurl\";s:51:\"label/1_20110416200417_MjAyMTEwNDZfMDJfMTAyMDE4.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"172\";s:6:\"height\";s:2:\"79\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302956898','0','38','0','0','blue');
INSERT INTO `hh_label` VALUES ('577','','0','0','house_ad3','pic','0','a:4:{s:6:\"imgurl\";s:43:\"label/1_20110416200432_MDI1OTU2XzY0MTg=.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302957215','0','38','0','0','blue');
INSERT INTO `hh_label` VALUES ('578','','0','0','house_st1','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:86:\"<div class=\"list\">{$time_m}.{$time_d}<a href=\"$url\" target=\'_blank\'>$title</a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:4;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:142:\"(SELECT * FROM hh_house_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'4\' ) ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327691','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('579','','0','0','house_st2','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:103:\"<div class=\"list\">{$time_m}.{$time_d}<a href=\"$url\" target=\'_blank\'>$title</a> 均价:{$price}元/方</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:5;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:141:\"(SELECT * FROM hh_house_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'5\' ) ORDER BY list ASC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327738','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('580','','0','0','house_st3','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:86:\"<div class=\"list\">{$time_m}.{$time_d}<a href=\"$url\" target=\'_blank\'>$title</a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:1;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:142:\"(SELECT * FROM hh_house_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'1\' ) ORDER BY hits DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327749','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('581','','0','0','house_title1','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:201:\"<div class=\"list$i\"><a href=\"{$list_url}\"  class=\"f\" target=\"_black\">{$fname}|</a><a href=\"$url\"  class=\"t\" target=\"_black\">$title</a><span>$content</span><em>{$time_Y}-{$time_m}-{$time_d}</em></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:155:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\'   ORDER BY A.hits ASC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1301738750','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('582','','0','0','house_slide','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"170\";s:6:\"picurl\";a:2:{i:1;s:51:\"http://www_qibosoft_com/images/yellow/house/sl1.jpg\";i:2;s:51:\"http://www_qibosoft_com/images/yellow/house/sl2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1301738027','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('583','','0','0','house_title2','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:109:\"<div class=\"list\"><A HREF=\"$url\" target=\'_blank\'>$title</a><span>{$time_Y}-{$time_m}-{$time_d}</span></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:1;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:142:\"(SELECT * FROM hh_house_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'1\' ) ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327679','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('584','','0','0','house_ad4','pic','0','a:4:{s:6:\"imgurl\";s:43:\"label/1_20110416200420_MDI1OTU2XzY0MTg=.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302957445','0','38','0','0','blue');
INSERT INTO `hh_label` VALUES ('585','','0','0','house_title3','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:181:\"<div class=\"list\">\r\n<a href=\"$url\" target=\'_blank\'>$title</a>\r\n<span class=\"city\">{$GLOBALS[zone_DB][name][$zone_id]}</span>\r\n<span class=\"price\"><em>$price</em>元/方</span>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:5;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"16\";s:3:\"sql\";s:143:\"(SELECT * FROM hh_house_content  WHERE city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'5\' ) ORDER BY hits DESC LIMIT 16 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"169\";s:5:\"div_h\";s:3:\"409\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327580','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('586','','0','0','house_title4','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:387:\"<div class=\"listpic\">\r\n	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"100\" onError=\"this.src=\'http://life.net/images/default/nopic.jpg\'\"></a></div>\r\n    <div>{$GLOBALS[zone_DB][name][$zone_id]}-<a href=\"$url\" title=\'$full_title\' target=\"_blank\">$title</a></div>\r\n    <div>{$room_type}，{$acreage}平米</div>\r\n    <div class=\"price\">￥{$price}万元</div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:2;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:154:\"(SELECT * FROM hh_house_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'2\' ) ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"704\";s:5:\"div_h\";s:3:\"156\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327498','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('587','','0','0','house_title5','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:388:\"<div class=\"listpic\">\r\n	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"100\" onError=\"this.src=\'http://life.net/images/default/nopic.jpg\'\"></a></div>\r\n    <div>{$GLOBALS[zone_DB][name][$zone_id]}-<a href=\"$url\" title=\'$full_title\' target=\"_blank\">$title</a></div>\r\n    <div>{$room_type}，{$acreage}平米</div>\r\n    <div class=\"price\">￥{$price}元/月</div>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:1;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:154:\"(SELECT * FROM hh_house_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'1\' ) ORDER BY list DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"694\";s:5:\"div_h\";s:3:\"147\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327613','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('588','','0','0','house_ad5','pic','0','a:4:{s:6:\"imgurl\";s:47:\"label/1_20110416200420_MTI4MjIwODAwNDkyMQ==.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302957502','0','38','0','0','blue');
INSERT INTO `hh_label` VALUES ('589','','0','0','house_ad6','pic','0','a:4:{s:6:\"imgurl\";s:43:\"label/1_20110416200401_MDExNTI3Xzg3MDc=.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302957544','0','38','0','0','blue');
INSERT INTO `hh_label` VALUES ('590','','0','0','house_st5','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:518:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpic\">\r\n  <tr>\r\n    <td class=\"img\">\r\n    <div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" height=\"70\" onError=\"this.src=\'http://life.net/images/default/nopic.jpg\'\"></a></div>\r\n    </td>\r\n    <td class=\"word\">\r\n    <div><a href=\"$url\" title=\'$full_title\' target=\"_blank\">$title</a> {$room_type} {$acreage}</div>\r\n    <div>期望价格：<span>{$price}</span>万元</div>\r\n    <div>{$time_Y}-{$time_m}-{$time_d}</div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:4;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:154:\"(SELECT * FROM hh_house_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'4\' ) ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"149\";s:5:\"div_h\";s:3:\"236\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327649','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('591','','0','0','house_st7','mysql','1','a:22:{s:13:\"tplpart_1code\";s:626:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpic\">\r\n  <tr>\r\n    <td class=\"img\">\r\n    <div><a href=\"bencandy.php?&fid=$fid&id=$id\" target=\"_blank\"><img src=\"$picurl\" height=\"110\" onError=\"this.src=\'http://life.net/images/default/noface.gif\'\"></a></div>\r\n    </td>\r\n    <td class=\"word\">\r\n    <div><a href=\"bencandy.php?&fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">$title</a></div>\r\n    <div>{$store}</div>\r\n    <div>服务：{$fuwu_zone}</div>\r\n    <div class=\"goto\"><a href=\"bencandy.php?&fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">点击进入</a></div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"mysql\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"newhour\";N;s:7:\"hothits\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"stype\";s:1:\"p\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:203:\"SELECT A.*,B.*,B.face AS picurl FROM hh_house_content A LEFT JOIN hh_house_content_6 B ON A.id=B.id  WHERE A.city_id=\'$GLOBALS[city_id]\'  AND A.fid=\'6\'  AND A.levels=1 ORDER BY A.levelstime DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302328184','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('592','','0','0','house_st6','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:519:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpic\">\r\n  <tr>\r\n    <td class=\"img\">\r\n    <div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" height=\"70\" onError=\"this.src=\'http://life.net/images/default/nopic.jpg\'\"></a></div>\r\n    </td>\r\n    <td class=\"word\">\r\n    <div><a href=\"$url\" title=\'$full_title\' target=\"_blank\">$title</a> {$room_type} {$acreage}</div>\r\n    <div>期望价格：<span>{$price}</span>元/月</div>\r\n    <div>{$time_Y}-{$time_m}-{$time_d}</div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:3;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:154:\"(SELECT * FROM hh_house_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'3\' ) ORDER BY list DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"185\";s:5:\"div_h\";s:3:\"236\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302327660','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('593','','0','0','house_st8','mysql','1','a:22:{s:13:\"tplpart_1code\";s:628:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listpic\">\r\n  <tr>\r\n    <td class=\"img\">\r\n    <div><a href=\"bencandy.php?&fid=$fid&id=$id\" target=\"_blank\"><img src=\"{$picurl}\" height=\"110\" onError=\"this.src=\'http://life.net/images/default/noface.gif\'\"></a></div>\r\n    </td>\r\n    <td class=\"word\">\r\n    <div><a href=\"bencandy.php?&fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">$title</a></div>\r\n    <div>{$store}</div>\r\n    <div>服务：{$fuwu_zone}</div>\r\n    <div class=\"goto\"><a href=\"bencandy.php?&fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">点击进入</a></div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:5:\"mysql\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"newhour\";N;s:7:\"hothits\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"stype\";s:1:\"p\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:180:\"SELECT A.*,B.*,B.face AS picurl FROM hh_house_content A LEFT JOIN hh_house_content_6 B ON A.id=B.id  WHERE A.city_id=\'$GLOBALS[city_id]\'  AND A.fid=\'6\'  ORDER BY A.id DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302328831','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('594','','0','0','house_title7','Info_news_','1','a:35:{s:13:\"tplpart_1code\";s:97:\"<div class=\"list\"><a href=\"$url\" target=\'_blank\'>$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:368:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n  <tr>\r\n    <td class=\"img\"><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" border=\"0\" width=\"70\"/></a></div></td>\r\n    <td class=\"word\">\r\n    	<h3><a href=\"$url\" target=\"_blank\">$title</a></h3>\r\n        <div>{$content}<a href=\"$url\" target=\"_blank\">[详细]</a></div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:5:\"news_\";s:9:\"noReadMid\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";N;s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:167:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:180:\" SELECT A.*,R.content FROM hh_news_content A LEFT JOIN hh_news_content_1 R ON A.id=R.id  WHERE A.city_id=\'$GLOBALS[city_id]\' AND A.yz=1  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"62\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302241079','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('595','','0','0','house_title8','Info_house_','1','a:29:{s:13:\"tplpart_1code\";s:314:\"<div class=\"listtz\">\r\n<dl>\r\n<dt><div><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onError=\"this.src=\'http://life.net/images/default/nopic.jpg\'\"  width=\"70\"/></a></div></dt>\r\n<dd>\r\n<h3><a href=\"$url\" target=\"_blank\">$title</a></h3>\r\n<div>均价:￥{$price}元/平米</div>\r\n<div>$seller</div>\r\n</dd>\r\n</dl>\r\n</div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:6:\"wninfo\";s:6:\"house_\";s:7:\"typefid\";N;s:6:\"cityId\";s:17:\"$GLOBALS[city_id]\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:3:\"fid\";i:2;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:154:\"(SELECT * FROM hh_house_content  WHERE ispic=1 AND city_id=\'$GLOBALS[city_id]\'  AND city_id=\'$GLOBALS[city_id]\'  AND fid=\'2\' ) ORDER BY list DESC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"703\";s:5:\"div_h\";s:3:\"201\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302960972','0','38','0','0','blue');
INSERT INTO `hh_label` VALUES ('596','','0','0','house_head1','code','0','房产分类','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('597','','0','0','house_sort1','code','0','<div><a href=\"list.php?fid=1\" target=\"_blank\">出租信息</a></div> \r\n<div><a href=\"list.php?fid=2\" target=\"_blank\">出售信息</a></div>\r\n<div><a href=\"list.php?fid=3\" target=\"_blank\">求租信息</a></div>\r\n<div><a href=\"list.php?fid=4\" target=\"_blank\">求购信息</a></div>\r\n<div class=\"ck1\"><a href=\"list.php?fid=5\" target=\"_blank\">楼盘信息</a></div>\r\n<div class=\"ck2\"><a href=\"list.php?fid=6\" target=\"_blank\">中介信息</a></div> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('598','','0','0','house_head2','code','0','<div class=\"tag\">热门房产</div><div class=\"more\"><a href=\"listall.php?fid=1\" target=\"_blank\" >更多</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1302253684','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('599','','0','0','house_heads2','code','0','<div id=\"Span1\" onmouseover=\"ShowTab(1,1,4)\">求购信息</div>\r\n<div id=\"Span2\" onmouseover=\"ShowTab(2,1,4)\">楼盘信息</div>\r\n<div id=\"Span3\" onmouseover=\"ShowTab(3,1,4)\">出租信息</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('600','','0','0','house_head3','code','0','<div class=\"tag\">楼市资讯</div><div class=\"more\"><a href=\"#\" target=\"_blank\" >更多</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('601','','0','0','house_head4','code','0','<div class=\"tag\">最新房产信息</div><div class=\"more\"><a href=\"#\" target=\"_blank\" >更多</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('602','','0','0','house_head5','code','0','热销楼盘','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('603','','0','0','house_head6','code','0','<div class=\"tag\"><span>出售房源</span></div>\r\n<div class=\"more\">\r\n     <a href=\"#\" target=\"_blank\">精选出售</a>\r\n      <a href=\"#\" target=\"_blank\">最新出售</a>\r\n       <a href=\"#\" target=\"_blank\">紧急出售</a>\r\n        <a href=\"post.php?fid=2\" target=\"_blank\" class=\"post\">|发布出售</a>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('604','','0','0','house_head7','code','0','<div class=\"tag\"><span>出租房源</span></div>\r\n<div class=\"more\">\r\n    <a href=\"#\" target=\"_blank\">精选出租</a>\r\n    <a href=\"#\" target=\"_blank\">最新出租</a>\r\n    <a href=\"#\" target=\"_blank\">紧急出租</a>\r\n    <a href=\"post.php?fid=1\" target=\"_blank\" class=\"post\">|发布出租</a>\r\n</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('605','','0','0','house_head8','code','0','<div class=\"tag\">楼市政策</div><div class=\"more\"><a href=\"#\" target=\"_blank\" >更多</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('606','','0','0','house_head9','code','0','<div class=\"tag\"><span>推荐楼盘</span></div>\r\n<div class=\"more\"><a href=\"listall.php?fid=5\" target=\"_blank\" class=\"post\">|更多</a></div>\r\n','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('607','','0','0','house_head10','code','0','<div id=\"Span5\" onmouseover=\"ShowTab(5,5,7)\">求购信息</div>\r\n<div id=\"Span6\" onmouseover=\"ShowTab(6,5,7)\">求租信息</div>\r\n','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_label` VALUES ('608','','0','0','house_head11','code','0','<div id=\"Span7\" onmouseover=\"ShowTab(7,7,9)\">推荐经纪人</div>\r\n<div id=\"Span8\" onmouseover=\"ShowTab(8,7,9)\">最新经纪人</div>\r\n','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','38','0','0','default');
INSERT INTO `hh_limitword` VALUES ('1','造反','造**');
INSERT INTO `hh_limitword` VALUES ('2','法轮功','法**功');
INSERT INTO `hh_memberdata` VALUES ('1','admin','','3','1','','1','0','','336','0','109712910','4672173','1303646334','127.0.0.1','1253678332','127.0.0.1','1','1890-00-00','http://v7.com/upload_files/icon/1.jpg','','166','1303006830','888888','','','54325@qq.com','0','1','cvbnmmm','','13399999999','','','张学友','a:1:{s:7:\"endtime\";s:0:\"\";}','5','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('37','test11','','8','1','','1','0','','5','0','10658','0','1288663688','127.0.0.1','1288663688','127.0.0.1','0','0000-00-00','','','1','1303003962','','','','test11@dew.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('36','test10','','8','1','','1','0','','5','0','14283','0','1288663488','127.0.0.1','1288663488','127.0.0.1','0','0000-00-00','','','0','0','','','','test10@dsa.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('35','test9','','8','1','','1','0','','5','0','13302','0','1288663331','127.0.0.1','1288663331','127.0.0.1','0','0000-00-00','','','0','0','','','','test9@dsa.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('34','test8','','8','1','','1','0','','5','0','10725','0','1288663154','127.0.0.1','1288663154','127.0.0.1','0','0000-00-00','','','0','0','','','','test8@dsa.cm','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('33','test7','','8','1','','1','0','','5','0','12667','0','1288663028','127.0.0.1','1288663028','127.0.0.1','0','0000-00-00','','','0','0','','','','test7@es.cm','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('32','test6','','8','1','','1','0','','5','0','144578','0','1288662836','127.0.0.1','1288662836','127.0.0.1','0','0000-00-00','','','0','0','','','','test6@dsa.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('31','test5','','8','1','','1','0','','5','0','107377','208','1288662640','127.0.0.1','1288662633','127.0.0.1','0','0000-00-00','','','0','0','','','','test5@ds.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('30','test4','','8','1','','1','0','','5','0','17044','0','1288662370','127.0.0.1','1288662370','127.0.0.1','0','0000-00-00','','','0','0','','','','test4@qq.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('29','test3','','8','1','','1','0','','5','0','160010','0','1288662223','127.0.0.1','1288662223','127.0.0.1','0','0000-00-00','','','0','0','','','','test3@qq.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('28','test2','','8','1','','1','0','','5','0','80741','180','1288666915','127.0.0.1','1288661813','127.0.0.1','0','0000-00-00','','','0','0','','','','test2@qq.cn','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('27','test1','','8','1','','1','0','','5','0','106781','7443','1292989515','127.0.0.1','1288661559','127.0.0.1','0','0000-00-00','','','1','1288668776','','','','test1@qq.com','0','0','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('38','flyggcm','','4','0','','1','0','','5','0','0','430','1303103893','117.28.100.149','1303009241','117.28.100.149','0','1991-01-29','','','1','1303009301','','','','qq410227893@yahoo.cn','0','1','','','','','','','a:1:{s:7:\"endtime\";s:0:\"\";}','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('39','aajac','','8','0','','1','0','','5','0','0','234','1303092844','120.85.187.38','1303092747','120.85.187.38','0','0000-00-00','','','0','0','','','','aajac@126.com','0','1','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('40','admin1','','8','0','','1','0','','5','0','0','1367','1303093601','112.233.144.153','1303093408','112.233.144.153','0','1967-11-27','','','0','0','123','','','admin@admi.com','0','1','','','','','','','','0','0','0','0');
INSERT INTO `hh_memberdata` VALUES ('41','123zxc','','8','0','','1','0','','7','0','0','658','1303103777','117.28.100.149','1303103726','117.28.100.149','0','1967-03-27','','','0','0','','','','10391181@qq.com','0','1','','','','','','','','0','0','0','0');
INSERT INTO `hh_members` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3');
INSERT INTO `hh_members` VALUES ('27','test1','42b72f913c3201fc62660d512f5ac746');
INSERT INTO `hh_members` VALUES ('28','test2','48b83a2a920f7284c9f0e1bf03012b68');
INSERT INTO `hh_members` VALUES ('29','test3','e12234d4575a12bfd61d61294f32b086');
INSERT INTO `hh_members` VALUES ('30','test4','e125db4ab2e60069409c5857be05d01d');
INSERT INTO `hh_members` VALUES ('31','test5','5b25f8c229db5db622a1b29f1ef97c34');
INSERT INTO `hh_members` VALUES ('32','test6','8ae9db4d88e6b21cfadffbf909a2c6b1');
INSERT INTO `hh_members` VALUES ('33','test7','cb7127945eb632e244223d3befccd92a');
INSERT INTO `hh_members` VALUES ('34','test8','63a8d0a081205ac5966769ad0b50b218');
INSERT INTO `hh_members` VALUES ('35','test9','cdc10f414c38f0b165c8aef0eb57f7fd');
INSERT INTO `hh_members` VALUES ('36','test10','3960033ed2f9e184af7e5c8cc99d062c');
INSERT INTO `hh_members` VALUES ('37','test11','16617490bce8593838933c93db5218eb');
INSERT INTO `hh_members` VALUES ('38','flyggcm','15e024e55f3495e6018545d73b034292');
INSERT INTO `hh_members` VALUES ('39','aajac','40b6b766db18614ec546518157a8d4cf');
INSERT INTO `hh_members` VALUES ('40','admin1','4297f44b13955235245b2497399d7a93');
INSERT INTO `hh_members` VALUES ('41','123zxc','e10adc3949ba59abbe56e057f20f883e');
INSERT INTO `hh_menu` VALUES ('60','0','商家黄页','/hy','','0','0','0','0','16');
INSERT INTO `hh_menu` VALUES ('52','0','资讯','/news/','','0','0','0','0','19');
INSERT INTO `hh_menu` VALUES ('51','0','网站首页','/','','0','0','0','0','20');
INSERT INTO `hh_menu` VALUES ('55','0','礼品','/gift/','','0','0','0','0','12');
INSERT INTO `hh_menu` VALUES ('56','0','团购活动','/tg/','','0','0','0','0','15');
INSERT INTO `hh_menu` VALUES ('57','0','优惠促销','/coupon/','','0','0','0','0','14');
INSERT INTO `hh_menu` VALUES ('58','0','同城网购','/shop/','','0','0','0','0','17');
INSERT INTO `hh_menu` VALUES ('59','0','分类信息','/f/','','0','0','0','0','18');
INSERT INTO `hh_menu` VALUES ('61','0','求职招聘','/hr/','','0','0','0','0','13');
INSERT INTO `hh_menu` VALUES ('62','0','官方团','/shoptg/','','0','0','0','0','0');
INSERT INTO `hh_menu` VALUES ('63','0','房产','/house/','','0','0','0','0','0');
INSERT INTO `hh_module` VALUES ('16','2','黄页店铺','hy_','hy','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','101','','','0');
INSERT INTO `hh_module` VALUES ('18','2','留言本','guestbook_','guestbook','','','','0','','','0');
INSERT INTO `hh_module` VALUES ('21','2','万能表单','form_','form','','','','0','','','0');
INSERT INTO `hh_module` VALUES ('23','2','投票系统','vote_','vote','','','','0','','','0');
INSERT INTO `hh_module` VALUES ('24','2','广告系统','ad_','a_d','','','','0','','','0');
INSERT INTO `hh_module` VALUES ('26','2','礼品兑换','gift_','gift','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','75','','','0');
INSERT INTO `hh_module` VALUES ('27','2','优惠促销','coupon_','coupon','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','74','','','0');
INSERT INTO `hh_module` VALUES ('28','2','团购活动','tuangou_','tg','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','78','','','0');
INSERT INTO `hh_module` VALUES ('29','2','商城系统','shop_','shop','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','79','','','0');
INSERT INTO `hh_module` VALUES ('36','2','分类系统','fenlei_','f','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','80','','','0');
INSERT INTO `hh_module` VALUES ('31','2','人才招聘','hr_','hr','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','76','','','0');
INSERT INTO `hh_module` VALUES ('37','2','官方团购','shoptg_','shoptg','','','','77','','','0');
INSERT INTO `hh_module` VALUES ('20','2','资讯频道','news_','news','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','102','','','0');
INSERT INTO `hh_module` VALUES ('38','2','房产频道','house_','house','','','a:7:{s:12:\"list_PhpName\";s:18:\"list.php?&fid=$fid\";s:12:\"show_PhpName\";s:29:\"bencandy.php?&fid=$fid&id=$id\";s:8:\"MakeHtml\";N;s:14:\"list_HtmlName1\";N;s:14:\"show_HtmlName1\";N;s:14:\"list_HtmlName2\";N;s:14:\"show_HtmlName2\";N;}','73','','','0');
INSERT INTO `hh_moneylog` VALUES ('1','1','2','','1301040811');
INSERT INTO `hh_moneylog` VALUES ('2','1','-2','','1301040827');
INSERT INTO `hh_moneylog` VALUES ('3','1','1','发表文章通过审核奖分<A HREF=\'http://8888.ly.cm/do/bencandy.php?fid=31&id=966\' target=_blank>kkkk</A>','1302934247');
INSERT INTO `hh_moneylog` VALUES ('4','38','5','注册得分','1303009241');
INSERT INTO `hh_moneylog` VALUES ('5','1','-10','购买普通广告位','1303009377');
INSERT INTO `hh_moneylog` VALUES ('6','1','-1000','购买普通广告位','1303009848');
INSERT INTO `hh_moneylog` VALUES ('7','39','5','注册得分','1303092747');
INSERT INTO `hh_moneylog` VALUES ('8','40','5','注册得分','1303093408');
INSERT INTO `hh_moneylog` VALUES ('9','41','5','注册得分','1303103726');
INSERT INTO `hh_moneylog` VALUES ('10','41','2','','1303103761');
INSERT INTO `hh_moneylog` VALUES ('11','1','1','发表文章通过审核奖分<A HREF=\'http://127.0.0.1/v16/do/bencandy.php?fid=31&id=967\' target=_blank>法国古城第戎 红酒古堡相辉映</A>','1303192951');
INSERT INTO `hh_news_comments` VALUES ('3','962','31','1','1','admin','1294713096','[quote]引用ID编号为2,称呼为admin于2011-01-11 10:26:46发表的  :<br>tetre[/quote]<br>rrrrrrrrr','127.0.0.1','0','1','0','0','0');
INSERT INTO `hh_news_comments` VALUES ('4','962','31','1','1','admin','1294713228','fdsa','127.0.0.1','0','1','0','0','0');
INSERT INTO `hh_news_comments` VALUES ('5','962','31','1','1','admin','1294713239','dddddddd','127.0.0.1','0','1','0','0','0');
INSERT INTO `hh_news_config` VALUES ('Info_ShowCommentRows','0','');
INSERT INTO `hh_news_config` VALUES ('Info_PassCommentType','1','');
INSERT INTO `hh_news_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_news_config` VALUES ('Info_adminfen','','');
INSERT INTO `hh_news_config` VALUES ('GroupPostjumpurl','3,4','');
INSERT INTO `hh_news_config` VALUES ('GroupPostIframe','3,4','');
INSERT INTO `hh_news_config` VALUES ('Info_PostCommentType','1','');
INSERT INTO `hh_news_config` VALUES ('module_id','20','');
INSERT INTO `hh_news_config` VALUES ('UseArea','0','');
INSERT INTO `hh_news_config` VALUES ('Info_forbidOutPost','0','');
INSERT INTO `hh_news_config` VALUES ('Info_closeWhy','','');
INSERT INTO `hh_news_config` VALUES ('module_pre','news_','');
INSERT INTO `hh_news_config` VALUES ('GroupPostYZ','3,4,8','');
INSERT INTO `hh_news_config` VALUES ('Info_GroupPostYZ','3,4','');
INSERT INTO `hh_news_config` VALUES ('allowGroupPost','3,4,8','');
INSERT INTO `hh_news_config` VALUES ('module_close','0','');
INSERT INTO `hh_news_config` VALUES ('Info_metakeywords','','');
INSERT INTO `hh_news_config` VALUES ('Info_webname','资讯频道','');
INSERT INTO `hh_news_content` VALUES ('940','为什么要申请金牌会员?','','44','0','新手入门指导','11','1','0','1287391687','1287391687','1','admin','','','','','0','','0','1','','0','1','1294648671','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1295005878','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('941','注册普通会员要收费吗？','','44','0','新手入门指导','2','1','0','1287452794','1287452794','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1302933414','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('942','注册后忘记登录名和密码怎么办？','','44','0','新手入门指导','3','1','0','1287452845','1287452845','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1294796019','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('955','与营养师吃饭 美味与健康','','39','0','饮食文化','5','1','0','1292983367','1292983367','1','admin','','','','','0','http://food.gznet.com/Admin/Upfile/Image/20101221/1292890344785.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1298948607','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('956','养生滋味 姜蒜排骨焖茄子','','37','0','快乐饮食','2','1','0','1292986247','1292986247','1','admin','','','','','0','http://food.gznet.com/Admin/Upfile/Image/20101221/1292889944588.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303025978','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('957','凉拌鲜鱿 爽脆鲜嫩又醒胃','','37','0','快乐饮食','3','1','0','1292986403','1292986403','1','admin','','','','','0','http://food.gznet.com/Admin/Upfile/Image/20101216/1292457561893.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303192460','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('958','一藕两食 煲汤炒片各精彩','','37','0','快乐饮食','4','1','0','1292986473','1292986473','1','admin','','','','','0','http://food.gznet.com/Admin/Upfile/Image/20101215/1292376497141.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303027248','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('959','头抽姜葱炒鳝片 养血强精','','39','0','饮食文化','0','1','0','1292986534','1292986534','1','admin','','','','','0','http://food.gznet.com/Admin/Upfile/Image/20101207/1291681868746.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','0','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('960','虫草花鸡汁焖豆腐 益肝肾','','39','0','饮食文化','1','1','0','1292986577','1292986577','1','admin','','','','','0','http://food.gznet.com/Admin/Upfile/Image/20101209/1291870424250.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1302338996','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('961','蚝自远方来 鲜甜美味难挡','','39','0','饮食文化','2','1','0','1292986635','1292986635','1','admin','','','','','0','http://food.gznet.com/Admin/Upfile/Image/20101117/1289956817840.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1294308895','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('962','6年走遍广州 绘出徒步地图','','31','0','旅游文化','20','1','3','1292986709','1292986709','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303021938','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('963','寒冷天气还将持续 欧洲机场继续瘫痪','','32','0','渡假生活','29','1','0','1292986746','1683119616','1','admin','','','','','0','','0','1','','0','1','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303192586','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('964','圣诞玩什么?香港快乐混搭 澳门葡式浪漫','','33','0','旅游保险','4','1','0','1292986787','1292986787','1','admin','','','','','0','http://travel.gznet.com/dgga/dgga_zx/201012/W020101216351691288154.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1294663508','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('965','法国古城第戎 红酒古堡相辉映','','34','0','自助游','31','1','0','1292986837','1292986837','1','admin','','','','','0','http://travel.gznet.com/hysj/hysj_zx/201012/W020101214347112605162.jpg','1','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303030301','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('943','如何发布供应信息？','','44','0','新手入门指导','1','1','0','1287452874','1287452874','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1294795927','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('944','如何发布求购信息？','','44','0','新手入门指导','2','1','0','1287452913','1287452913','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303030805','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('945','如何加入钢铁网“公司库”？','','44','0','新手入门指导','2','1','0','1287452960','1287452960','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1302330673','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('946','如何申请商铺?','','44','0','新手入门指导','5','1','0','1287466830','1287466830','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1294796066','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('947','金牌会员开通流程','','44','0','新手入门指导','3','1','0','1287467237','1287467237','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1294796064','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('948','在线申请开通金牌会员','','44','0','新手入门指导','3','1','0','1287467259','1287467259','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1294796051','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('949','金牌会员服务介绍','','44','0','新手入门指导','3','1','0','1287467280','1287467280','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1294796044','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('950','火车票查询','','45','0','生活信息查询','11','1','0','1290405701','1290405701','1','admin','','','','','0','','0','1','','0','0','0','','','http://search.huochepiao.com/','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303194227','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('951','天气预报查询','','45','0','生活信息查询','7','1','0','1290405834','1290405834','1','admin','','','','','0','','0','1','','0','0','0','','','http://www.nmc.gov.cn/publish/forecast/AGD/guangzhou.html','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303194232','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('952','机票查询','','45','0','生活信息查询','9','1','0','1290405915','1290405915','1','admin','','','','','0','','0','1','','0','0','0','','','http://flight.elong.com/index_cn.html','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303194237','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('953','坐车查询','','45','0','生活信息查询','7','1','0','1290405979','1290405979','1','admin','','','','','0','','0','1','','0','1','1294648673','','','http://www.zuoche.com/','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1295314035','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('954','全国车辆交通违章查询表','','45','0','生活信息查询','6','1','0','1290406047','1290406047','1','admin','','','','','0','','0','1','','0','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','0','','0','0','','','','','','0','0','0','','1303021654','0','0','0','0','','','1');
INSERT INTO `hh_news_content` VALUES ('967','法国古城第戎 红酒古堡相辉映','','31','1','旅游文化','0','0','0','1303192951','1303192951','1','admin','','','','','0','','0','1','','0','0','0','','','','','','0','127.0.0.1','0','0','','','','','','0','0','0','','0','0','0','0','0','','','1');
INSERT INTO `hh_news_content_1` VALUES ('73','','0','0','0','0','<p>&nbsp;&nbsp; 诸位站长、企业用户及关注齐博CMS的同仁朋友： <br />\r\n&nbsp;&nbsp; 欢迎使用齐博CMS整站系统,目前默认安装的系统,虽然标题不一样.但内容都是一样的.这仅仅是演示数据而已,请不要误会系统出了问题。</p>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('934','','940','44','1','1','好处多多!','0');
INSERT INTO `hh_news_content_1` VALUES ('935','','941','44','1','1','选择成为普通会员是完全免费的！<br />\r\n注册成为普通会员后就能享受以下服务：<br />\r\n·发布公司介绍<br />\r\n·建立产品展台 <br />\r\n·免费加入中国最大的钢铁搜索引擎!<br />\r\n想让你的销售电话变成销售热线吗？想让你的产品销量提高5倍吗？来看看我们为您定做的VIP金牌会员服务。','0');
INSERT INTO `hh_news_content_1` VALUES ('936','','942','44','1','1','您可以拨打我们的客服热线 0500-87382000，我们对您的身份进行核对过后可以将帐号和密码以确认的方式通知您。<br />\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('937','','943','44','1','1','注册成为会员后，都可以发布供求信息，具体操作如下：<br />\r\n如果您还不是会员，请先注册会员，已是会员继续下一步操作；<br />\r\n在首页右边的“会员登录”处登录后，进入“会员商务室”；<br />\r\n选择该页面左边部分的 “发布供求信息”，点击进入；<br />\r\n选择买卖方向及最合适的行业类别；<br />\r\n按要求正确填写内容并发送表格。<br />\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('938','','944','44','1','1','是钢铁网会员：<br />\r\n注册成为会员后就可以发布求购信息，具体操作步骤如下：<br />\r\n登录到会员商务室，点击左栏的“发布供求商机”链接；<br />\r\n选择买卖方向为“买”及最合适的分类；<br />\r\n正确填写内容并“提交该条信息”。 <br />\r\n<br />\r\n非钢铁网会员：<br />\r\n点击首页 求购信息 旁边的 “发布采购信息” 按钮，直接发布信息。','0');
INSERT INTO `hh_news_content_1` VALUES ('939','','945','44','1','1','首先要注册成为钢铁网会员；<br />\r\n登录到会员商务室，在“公司介绍”栏目里按提示一步一步详细填写；<p>&nbsp;</p>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('940','','946','44','1','1','首先要注册,然后进会员中心就可以申请','0');
INSERT INTO `hh_news_content_1` VALUES ('941','','947','44','1','1','先注册','0');
INSERT INTO `hh_news_content_1` VALUES ('942','','948','44','1','1','<p>先注册</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('943','','949','44','1','1','<p>先注册</p>\r\n<p>&nbsp;</p>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('949','','955','39','1','1','<p>　　与营养师吃饭？会不会像兔子一样只吃青菜？然而，在与广州体育学院运动与健康系运动营养学专家王姝玉吃了简单的一顿饭后，却彻底颠覆了记者“好吃的就不健康”的想法。王姝玉说，营养健康与美味，如同鱼和熊掌一样兼得，关键在于学会食物的搭配以及营养膳食的吃法，这样一来，鸡、鸭、鱼、肉均都可吃。专家还强调，健康不是一个片段，更不是一两顿，吃得健康的理念一定要贯穿在生活方式中，才能得到坚持。 </p>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('950','','956','37','1','1','<p>&nbsp;</p>\r\n<p>　　维生素p有保持人体血管壁弹性的作用，每100克茄子中便含有维生素p750毫克。笔者不赞成以高温油炸的手法炮制茄子，这样会导致其维生素损失量达50%之多。这次推荐以姜、蒜和排骨配搭焖制，当中加入少许辣椒碎，起到点缀和御寒作用。</p>\r\n<p>　　材料：茄子200克、排骨250克、姜粒15克、蒜头（拍碎）15克、葱花10克、红辣椒15克，盐、糖、胡椒粉、生抽、花生油适量。</p>\r\n<p>　　做法：排骨洗净斩件，以盐、生抽、胡椒粉、花生油拌匀备用；辣椒去籽，洗净切碎备用；茄子洗净，切成条状，以平底锅煎香备用；开锅下油，爆香拍蒜、姜粒和辣椒碎，下排骨大火翻炒，攒米酒，加入适量水和茄子、生抽，以盐、糖、胡椒粉调味，中火焖至材料熟透，上碟后撒上葱花即成。</p>\r\n<p>&nbsp;</p>\r\n<p><br />\r\n</p>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('951','','957','37','1','1','<p>　　养生滋味</p>\r\n<p>　　在此向大家推荐一下凉拌鲜鱿的吃法。鲜鱿的最佳口感是爽脆、鲜嫩，要达到这个效果，除了原料的因素之外，还有一个重要环节就是切花刀。凉拌的做法更需要大火飞水后放入冰水冷却，而至于佐料则是各施各法，这次加上青芥辣作为佐料，是一种醒胃的吃法。</p>\r\n<p>　　材料：鲜鱿300克、芫茜30克、葱段30克、炸花生10克、红椒丝10克、炸蒜片5克、白芝麻少许，盐、鱼露、青芥辣、豉油、花生油各适量。</p>\r\n<p>　　做法：鲜鱿洗净切小块，划刀花后大火灼熟，立即取出放入冰水中冷却，然后再取出放入器皿内，加入芫茜、葱段、红椒丝、盐、鱼露、青芥辣、豉油和花生油拌匀，最后撒入炸花生、白芝麻和炸蒜片即成。<br />\r\n</p>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('952','','958','37','1','1','<span style=\"color:rgb(0,0,0);font-size:medium;font-family:Simsun;font-weight:normal;font-style:normal;\"><span style=\"color:rgb(106,106,106);font-size:14px;font-family:宋体;\"><p>番禺万顷沙十八涌出产著名的新垦莲藕。藕筒圆润，藕皮较厚，色泽较浓，含淀粉多，吃起来甜中带粉。莲藕性平寒而味甘，富含铁、钙等微量元素。那天，先生带回来一条大莲藕，我马上来个“一藕两食”，煲老火莲藕靓汤；炒藕片，各自精彩。&nbsp;</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://food.gznet.com/Admin/Upfile/Image/20101215/1292376497141.jpg\" width=\"500\" height=\"331\" /></p>\r\n<p>　　莲藕绿豆煲猪肉</p>\r\n<p>　　原料：莲藕筒600克、瘦猪肉250克、绿豆130克、生姜2片、红枣5个。&nbsp;</p>\r\n<p>　　做法：1、先将莲藕洗干净；2、猪肉洗净后飞水；3、绿豆浸泡30分钟；4、将藕筒上面开个口，将绿豆放入藕筒里，然后用牙签将口封好，剩下的绿豆放入煲里；&nbsp;5、所有材料放进瓦煲内加水，大火煲滚后，改为小火煲2小时，下盐便可饮用；&nbsp;6、将莲藕取出，用刀切片上碟。&nbsp;</p>\r\n</span></span>','0');
INSERT INTO `hh_news_content_1` VALUES ('953','','959','39','1','1','<span style=\"color:rgb(0,0,0);font-size:medium;font-family:Simsun;font-weight:normal;font-style:normal;\"><span style=\"color:rgb(106,106,106);font-size:14px;font-family:宋体;\"><p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://food.gznet.com/Admin/Upfile/Image/20101207/1291681868746.jpg\" width=\"300\" height=\"264\" /></p>\r\n<p>　　养生滋味</p>\r\n<p>　　鳝鱼肉嫩味鲜营养高，每100克鳝鱼中含有蛋白质18克以及多种人体必须维生素，有补中益气、养血强精的食效。鳝鱼炒、爆、炸、烧皆可，这次推荐以姜葱佐之爆炒，再加入少许头抽吊味，弄一款养生的滋味小菜。吃鳝鱼需注意搭配，与菠菜同食会致腹泻，与狗肉同食则易使久病复发。</p>\r\n<p>　　材料：鳝鱼500克、姜片20克、葱段20克、蒜头（去衣拍碎）15克，盐、糖、生粉、头抽、胡椒粉、米酒、花生油各适量。</p>\r\n<p>　　做法：鳝鱼宰好去内脏，煮开清水至80℃，把鳝放入烫30秒，然后取出，用刀刮去鳝身上的白色黏液，用清水冲洗干净，切片备用；开锅下油，爆香拍蒜、姜片和葱段，下鳝片大火翻炒，然后加入少许姜汁、酒和头抽继续翻炒，调味勾薄芡即成。</p>\r\n</span></span>','0');
INSERT INTO `hh_news_content_1` VALUES ('954','','960','39','1','1','<span style=\"color:rgb(0,0,0);font-size:medium;font-family:Simsun;font-weight:normal;font-style:normal;\"><span style=\"color:rgb(106,106,106);font-size:14px;font-family:宋体;\"><p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://food.gznet.com/Admin/Upfile/Image/20101209/1291870424250.jpg\" width=\"300\" height=\"278\" /></p>\r\n<p>　　养生滋味</p>\r\n<p>　　秋冬时节有不同的时令小菜，笔者近日就品尝到一款“虫草花鸡汁焖煮豆腐”。虫草花作为膳食材料的宠儿，有益肝肾、补精髓的食效。它多用于炖汤，但以之焖煮亦为一种独特的风格。虫草花和豆腐是一种和谐的配搭，两者组合营养相宜，口感和顺。</p>\r\n<p>　　材料：豆腐4块、虫草花5克、冬菇（水发后）50克、肉丝50克、葱段15克、蒜头（去衣拍碎）15克，盐、糖、蚝油、浓缩鸡汁（支装）、花生油各适量。</p>\r\n<p>　　做法：虫草花洗净备用；豆腐切小块，以平底锅将其煎至金黄备用；冬菇切片备用；开锅下油，爆香拍蒜、葱段和肉丝，放入豆腐小心翻炒，然后加入适量水、浓缩鸡汁和虫草花、冬菇、蚝油，调味后中火焖煮5分钟至豆腐入味即成。</p>\r\n</span></span>','0');
INSERT INTO `hh_news_content_1` VALUES ('955','','961','39','1','1','<span style=\"color:rgb(0,0,0);font-size:medium;font-family:Simsun;font-weight:normal;font-style:normal;\"><span style=\"color:rgb(106,106,106);font-size:14px;font-family:宋体;\"><p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://food.gznet.com/Admin/Upfile/Image/20101117/1289956817840.jpg\" width=\"480\" height=\"365\" /><br />\r\n姜葱局美国珍宝蚝</p>\r\n<p>　　文/羊城晚报记者&nbsp;王敏&nbsp;&nbsp;实习生&nbsp;陈绮平&nbsp;图/王敏</p>\r\n<p>　　俗谚云：“冬至到清明，蚝肉肥晶晶。”每年的11月到来年的4月，是蚝丰收的季节。这时候的蚝，为了准备度过漫长的寒冬，努力囤积身体内的养分和油脂，把自己养得丰满肥腴、汁水充足，孰知正好给了人们大饱口福的机会。</p>\r\n<p>　　而长隆酒店麒麟中餐厅的“蚝宴”，&nbsp;在这个时候进入我们的视野，这顿可见不寻常。</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://food.gznet.com/Admin/Upfile/Image/20101117/1289956849260.jpg\" width=\"480\" height=\"333\" /><br />\r\n无国界生蚝刺身</p>\r\n<p>　　<strong><font color=\"#800000\">不同产地&nbsp;&nbsp;吃序有讲究</font></strong></p>\r\n<p>　　据这次“蚝宴”的大厨介绍，就我们品尝到的这顿蚝宴，选用的生蚝来自世界各地，锐意要在烹“蚝”之法上做文章。</p>\r\n<p>　　其中澳洲的生蚝最适合入门级蚝客，它肉质爽口，有着最清淡又不失海洋气息的鲜味。而令大多数蚝客无比推崇的，则是产在咸淡水交接的法国贝隆河口的蚝王，它的鲜味来自于丰富的矿物质，这连菜鸟级的蚝客都能轻易辨别出来。如果论实惠，美国的生蚝是让人吃着最带劲的，肉质鲜嫩，可以大啖其肉。</p>\r\n<p>　　吃生蚝除了讲究时令外，还应注意顺序。由淡至浓，这样才能领略到不同蚝的独特滋味。这里的浓淡取决于蚝所在海域的海水咸度，因而最佳的顺序，应是先吃美国、日本等蚝，然后到南非、苏格兰、爱尔兰蚝，最后轮到法国蚝。</p>\r\n<p>　　餐厅中最吸引的一道吃法－－“无国界生蚝刺身”，只见侍者端着一船形器皿走了进来，只见器皿内盛满了碎冰，5只生蚝分布在冰上。这一盘荟萃的正是美国熊本蚝、旧金山蚝、爱尔兰蚝、法国白珍珠蚝、法国蚝皇。观其外形，这些蚝比国产蚝的个头要小许多，但其壳表较平滑、纹理规整，完全不同于国产蚝凹凸不平的壳表。会吃的你，应该知道从哪边开始享受了吧！</p>\r\n</span></span>','0');
INSERT INTO `hh_news_content_1` VALUES ('956','','962','31','1','1','<p>　“广州是最适合走路的城市。”</p>\r\n<p>　　“只要一走街串巷，你就会爱上广州。穿越2000多年历史的广州城，小街巷、城中村等埋藏着很多耐人寻味的民风和传统，能探寻到最质朴的东西。”</p>\r\n<p>　　人物档案：</p>\r\n<p>　　人物：Karl Fjellstrom (卡尔费)</p>\r\n<p>&nbsp;　　国籍：澳大利亚</p>\r\n<p>　　Karl 的家乡是澳大利亚的布里斯班，他离开那个宁静的城市来到热闹的广州，已经快六年了。作为世界银行和亚洲发展银行交通专家，同时是美国一间非营利性环保组织ITDP（美国交通与发展政策研究所）在中国地区的执行副总裁，Karl致力于研究与促进可持续交通与城市公共空间发展的相关项目。广州的BRT工程、公共自行车等方面都有Karl办公室提供的大量技术支援。Karl对一切“绿色环保交通”的话题都非常感冒。和工作相得益彰的是，Karl自己也是个颇为喜爱环保旅行的人。</p>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('957','','963','32','1','1','<span style=\"color:rgb(0,0,0);font-size:medium;font-family:Simsun;font-weight:normal;font-style:normal;\"><span style=\"font-size:14px;font-family:Verdana, Arial, Helvetica, sans-serif;\"><p>　据新华社电&nbsp;“爸爸，我们到阿根廷了吗？”在英国伦敦希思罗机场，一个小朋友哭闹着向他父亲发问。为打发候机时间，父亲给他买了童话书、三明治和扑克牌。</p>\r\n<p>　　类似场景，随着滞留旅客的增加，12月19日继续在欧洲多座交通枢纽上演。</p>\r\n<p>　　受强降雪影响，欧洲一些主要机场当天依旧“瘫痪”，或者“半瘫”；而一些体育赛事、音乐会等原本属于这个圣诞时节的活动，则被相继取消。</p>\r\n<p>　　降雪、低温、事故……连日来充斥着欧洲媒体的版面。</p>\r\n<p>　　19日，英国中西部珀肖尔地区最低气温达到零下19摄氏度；克罗地亚北部小镇察科韦茨出现零下21摄氏度低温；比利时部分地区当天迎来自11月初以来的第18个降雪日。</p>\r\n<p>　　英国气象局说，12月英国降雪强度堪比1981年12月。英国气象局预测，寒冷天气还将持续；法国气象部门说，巴黎20日仍将出现降雪，法国人可能要在冰雪世界中度过圣诞节。</p>\r\n<p>　　就欧洲整体而言，冷空气有南下趋势，但在未来一周时间内，寒冷仍将唱响整个欧洲大陆的天气主旋律。</p>\r\n</span></span>','0');
INSERT INTO `hh_news_content_1` VALUES ('958','','964','33','1','1','<span style=\"color:rgb(0,0,0);font-size:medium;font-family:Simsun;font-weight:normal;font-style:normal;\"><span style=\"font-size:12px;font-family:Verdana, Arial, Helvetica, sans-serif;\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"590\"><tbody><tr><td style=\"font-size:12px;\">&nbsp;</td></tr><tr><td align=\"left\" style=\"font-size:14px;\"><p>　　总说“广州城，香港地，澳门街”，但在即将到来的圣诞假期里，最有气氛的地方就是香港和澳门了。购物我们已经说得太多太多，当轰炸式的折扣已经不给力时，圣诞节去香港、澳门，我们还能玩什么？</p>\r\n<p>　　香港：快乐混搭</p>\r\n<p>　　圣诞假期叹香港，并不只有购物那么简单。特别是在找不到血拼激情时，去香港一样可以在五彩斑斓的街灯下、鳞次栉比的圣诞树旁，感受这个国际大都市的动感和快乐；喧嚣过后，和香港人一样若无其事地逃到长洲岛，或悠闲徒步，或大吃海鲜，体验地道的港式圣诞假期。</p>\r\n<p>　　圣诞灯饰下的夜生活</p>\r\n<p>　　圣诞节赏灯向来是香港人庆祝节日的重要方式，每到圣诞节，你只要在维多利亚港的某一个角落出没，就能在绵延灯海下、火树银花中，被香港人好动爱玩的天性所感染。漫步在尖沙咀星光大道，总有艺人在表演，或唱歌、或跳舞，气氛浓烈。</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://travel.gznet.com/dgga/dgga_zx/201012/W020101216351691288154.jpg\" width=\"400\" height=\"271\" /><br />\r\n香港兰桂坊异国风情。</p>\r\n<p>　　窥探香港圣诞节的全貌，酒吧不能不去。喜欢闹腾的人可去兰桂坊一带，那里平日就是老外们活动的热门区域，平安夜里，每一家酒吧都装扮得格外漂亮。爱玩情调的话，推荐去半岛酒店顶楼的Felix，那里是香港人心中最高档的酒吧，不仅社会名流会出现，许多国际明星也会慕名而去。这间酒吧有着香港酒吧最好的视野，透过玻璃窗，维多利亚湾波光粼粼的夜景映入眼帘。如果你向往平民化式圣诞，推荐去庙街夜市，这个看似杂乱无章的地方，其实是香港人挑选廉价商品的风水宝地，服饰、电子产品、玩具、激光唱片等无所不有；饿了，随意在小摊贩前坐下，便能吃到鲜美的海鲜和熟食小吃，风味极佳。</p>\r\n<p>　　逃逸长洲岛徒步</p>\r\n<p>　　看惯了鳞次栉比的高楼大厦，厌烦了波涛汹涌的人潮，不妨也和香港人一样逃逸到长洲岛去。</p>\r\n<p>　　关于长洲岛，有两件事不能不知：这里是每年农历四月初八传统“抢包山”活动的竞技场，还是风帆运动爱好者的圣地，香港奥运滑浪风帆金牌得主就在这里出生长大。</p>\r\n<p align=\"center\"><img onload=\'if(this.width>600)makesmallpic(this,600,1800);\' src=\"http://travel.gznet.com/dgga/dgga_zx/201012/W020101216351691298094.jpg\" width=\"400\" height=\"248\" /><br />\r\n香港长洲岛。</p>\r\n<p>　　小小的长洲岛，禁止汽车通行，窄窄的街道食肆林立，两旁的铺子售卖海产及杂货；海湾里有小艇穿梭来往，还有纯净的蓝天、柔和的海风、绿绿的山野。很多人一早抵达后，便从洪圣庙开始往海傍街方向徒步，奇石异花、海滩风帆、庙宇佛像一一展现在眼前。面对码头的海鲜街上，以“老友记”和“荣记”最出名，两家店里常常坐满大啖海鲜的香港人。下午茶时间，一定不能错过“故乡茶寮”，那是一位日本人在长洲定居后开的一间极具东瀛风情的茶馆，红豆饼 很好吃，10港元3个，通常12点出炉，下午就卖完了。</p>\r\n<p>　　新鲜报：12月23日去听俄罗斯民歌</p>\r\n<p>　　俄罗斯国家交响合唱团于1991年成立，是由浦利晏斯基指挥的苏联国家室内合唱团。合唱团以丰厚的音色、灵活的分句、高贵的感情表达、完美无瑕的合唱技巧风靡全世界。</p>\r\n<p>　　地点：元朗剧院演艺厅</p>\r\n<p>　　门票：240/160/100港元</p>\r\n</td></tr></tbody></table>\r\n</span></span>','0');
INSERT INTO `hh_news_content_1` VALUES ('959','','965','34','1','1','<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<p>\r\n					　　第戎作为法国知名的酒乡，有&ldquo;上等葡萄酒之乡&rdquo;的美誉，厌倦了过年传统惯例的你何不飞往第戎，在红白相间的葡萄田中寻找最香醇浓郁的美酒。从小城出发，一路是一望无际的葡萄园，各式旧时的洗衣小屋及小教堂点缀其间，勾勒出一幅动人而甜蜜的欧洲田园风情画，轻易地让人沉醉其中，忘却心中烦恼，轻松过新年。</p>\r\n				<p>\r\n					　　推荐玩法：</p>\r\n				<p>\r\n					　　第戎的酒庄一个接着一个，好客的庄主会热情地邀请你到酒窖大品美酒，这些不贴标签的酒喝上一口香醇有劲、回味悠长。如果想品尝勃艮第代表性的葡萄酒，则不妨到第戎的葡萄酒市场，从桑特奈和帕玛尔等较为熟悉的葡萄酒试饮；如果申请的话还可以参观从1911年开始藏酒，延续使用到现在的酒窖。</p>\r\n				<p>\r\n					<img onload=\"if(this.width /&gt;600)makesmallpic(this,600,1800);\" src=\"http://travel.gznet.com/hysj/hysj_zx/201012/W020101214347112605162.jpg\" /></p>\r\n				<p>\r\n					　　第戎保留了许多以前贵族的豪华宫殿、古堡，以及砖砌的街道。当闲庭信步于陌生的古城，在曲径通幽的石板路上边走边看，仿佛就能领略其中的风土人情和历史故事。你也可来到瑞士边境小镇安讷西，感受阿尔卑斯山山脚小城的典雅悠静。充足的阳光足以让您度过一段悠闲时光，细细品味欧洲的小桥流水般的生活。</p>\r\n				<p>\r\n					　　旅游贴士：</p>\r\n				<p>\r\n					　　第戎乃是法国的美食天堂之一，地道的名产是蜗牛和勃艮第葡萄酒。购物当属芥末和勃艮第的葡萄酒，而猫头鹰图案的小装饰品最适合作为带给朋友的小礼物。</p>\r\n				<p>\r\n					　　推荐线路：法国品古堡红酒、意大利、阿尔卑斯山10天。（南湖国旅&middot;西部假期咨询热线：83322222）</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('944','','950','45','1','1','','0');
INSERT INTO `hh_news_content_1` VALUES ('945','','951','45','1','1','','0');
INSERT INTO `hh_news_content_1` VALUES ('946','','952','45','1','1','','0');
INSERT INTO `hh_news_content_1` VALUES ('947','','953','45','1','1','','0');
INSERT INTO `hh_news_content_1` VALUES ('948','','954','45','1','1','<p align=\"center\"><strong><span><font color=\"#339900\" size=\"4\">全国车辆交通违章查询表</font></span></strong> </p>\r\n<table border=\"1\" cellspacing=\"1\" cellpadding=\"4\" width=\"770\"><tbody><tr><td><strong><font color=\"#ffffff\">直辖市交通违章查询</font></strong> </td><td><strong><font color=\"#ffffff\">陕西省交通违章查询</font></strong></td><td><a href=\"http://www.jg7777.com:8080/\"><strong><font color=\"#ffffff\">河北省交通违章查询</font></strong></a></td></tr><tr><td><a href=\"http://www.bjjtgl.gov.cn/publish/portal0/tab72/\"><font color=\"#1c5f82\">北京</font></a></td><td><a href=\"http://www.xianjj.com/index.aspx\"><font color=\"#1c5f82\">西安</font></a></td><td><a href=\"http://jgxx.hengshui.com/\"><font color=\"#1c5f82\">衡水</font></a></td></tr><tr><td><a href=\"http://www.shjtaq.com/\"><font color=\"#1c5f82\">上海</font></a></td><td><a href=\"http://www.tc122.com/\"><font color=\"#1c5f82\">铜川</font></a></td><td><a href=\"http://www.hdjj.gov.cn/\"><font color=\"#1c5f82\">邯郸</font></a></td></tr><tr><td><a href=\"http://www.tjits.cn/wfcx/index.asp\"><font color=\"#1c5f82\">天津</font></a></td><td><a href=\"http://gaj.baoji.gov.cn/clcx.asp\"><font color=\"#1c5f82\">宝鸡</font></a></td><td><a href=\"http://www.zjkjjw.com.cn/\"><font color=\"#1c5f82\">张家口</font></a></td></tr><tr><td><a href=\"http://www.cqjg.gov.cn/DriverFind.html\"><font color=\"#1c5f82\">重庆</font></a></td><td><a href=\"http://www.xyjjzd.gov.cn/\"><font color=\"#1c5f82\">咸阳</font></a></td><td><a href=\"http://ts.jdcjsr.com/\"><font color=\"#1c5f82\">唐山</font></a></td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.hzjjd.com/weifachaxun/Index.asp\"><font color=\"#1c5f82\">汉中</font></a></td><td><a href=\"http://www.qhdjtgl.com.cn/\"><font color=\"#1c5f82\">秦皇岛</font></a></td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.0912158.com/jtwz/index.html\"><font color=\"#1c5f82\">榆林</font></a></td><td><a href=\"http://www.jdcjsr.com/cheliangweizhang/cdweizhang.aspx\"><font color=\"#1c5f82\">承德</font></a></td></tr><tr><td>&nbsp;</td><td><a href=\"http://cx.akjjzd.gov.cn/\"><font color=\"#1c5f82\">安康</font></a></td><td><a href=\"http://www.jdcjsr.com/weizhang.aspx\"><font color=\"#1c5f82\">石家庄</font></a></td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.yajjzd.com/Index.asp\"><font color=\"#1c5f82\">延安</font></a></td><td><a href=\"http://www.bdjiaojing.cn/\"><font color=\"#1c5f82\">保定</font></a></td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.wnsjj.cn/\"><font color=\"#1c5f82\">渭南</font></a></td><td><a href=\"http://www.jdcjsr.com/cheliangweizhang/czweizhang.aspx\"><font color=\"#1c5f82\">沧州</font></a></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td><a href=\"http://www.xtjdcjsr.com/\"><font color=\"#1c5f82\">邢台</font></a></td></tr><tr><td><strong><a href=\"http://www.gdga.gov.cn/service/jjwzcx/index.jsp\"><font color=\"#ffffff\">广东省交通违章查询</font></a></strong></td><td><strong><a href=\"http://cgs.lnga.gov.cn:9080/lngg/indexjdc.jsp\"><font color=\"#ffffff\">辽宁省交通违章查询</font></a></strong></td><td><strong><a href=\"http://find.96911.com/jxj/\"><font color=\"#ffffff\">江苏省交通违章查询</font></a></strong></td></tr><tr><td><a href=\"http://www.gzjd.gov.cn/jiaotong/transgressQuery_jsp_catid_61_69.html\"><font color=\"#1c5f82\">广州</font></a></td><td><a href=\"http://www.sygajj.gov.cn/\"><font color=\"#1c5f82\">沈阳</font></a></td><td><a href=\"http://www.njjg.net/\"><font color=\"#1c5f82\">南京</font></a></td></tr><tr><td><a href=\"http://www.stc.gov.cn/search/vehicle_peccacy.asp\"><font color=\"#1c5f82\">深圳</font></a></td><td><a href=\"http://www.zgcy.gov.cn/car_seek/\"><font color=\"#1c5f82\">朝阳</font></a></td><td><a href=\"http://58.210.126.206:9091/QueryVD/\"><font color=\"#1c5f82\">苏州</font></a></td></tr><tr><td><a href=\"http://mzjj.meizhou.net/\"><font color=\"#1c5f82\">梅州</font></a></td><td><a href=\"http://www.dlutc.gov.cn/\"><font color=\"#1c5f82\">大连</font></a></td><td><a href=\"http://czjxj.czinfo.net/dzjccx.htm\"><font color=\"#1c5f82\">常州</font></a></td></tr><tr><td><a href=\"http://wz.zhga.gov.cn/\"><font color=\"#1c5f82\">珠海</font></a></td><td><a href=\"http://www.ykjj.gov.cn/wfcx.php\"><font color=\"#1c5f82\">营口</font></a></td><td><a href=\"http://www.ntjxj.com/InternetWeb/\"><font color=\"#1c5f82\">南通</font></a></td></tr><tr><td><a href=\"http://weizhang.jmjgj.gov.cn/\"><font color=\"#1c5f82\">江门</font></a></td><td><a href=\"http://jjd.panjin.gov.cn/index.php\"><font color=\"#1c5f82\">盘锦</font></a></td><td><a href=\"http://www.sqjg.net/wzcx/TipInfo.aspx\"><font color=\"#1c5f82\">宿迁</font></a></td></tr><tr><td><a href=\"http://www.hzinfo168.com/v2new/result2.asp\"><font color=\"#1c5f82\">惠州</font></a></td><td><a href=\"http://www.tlga.gov.cn/jdc.jsp?name1=list_jdc.jsp&name2=kb.html?lb=2\"><font color=\"#1c5f82\">铁岭</font></a></td><td><a href=\"http://jxj.wuxi.gov.cn/\"><font color=\"#1c5f82\">无锡</font></a></td></tr><tr><td><a href=\"http://www.0662.com.cn/police/index.asp\"><font color=\"#1c5f82\">阳江</font></a></td><td><a href=\"http://www.bxgaggfwpt.gov.cn/\"><font color=\"#1c5f82\">本溪</font></a></td><td><a href=\"http://www.xzjgw.com/\"><font color=\"#1c5f82\">徐州</font></a></td></tr><tr><td><a href=\"http://www.fsga.gov.cn/Main/Common/QueryPage.aspx?formID=D8928000CDCD4566A001C4554628F3F1&parentName=572R5LiK6K2m5Yqh\"><font color=\"#1c5f82\">佛山</font></a></td><td><a href=\"http://www.dd122.com/pages/xxcx.asp\"><font color=\"#1c5f82\">丹东</font></a></td><td><a href=\"http://www.zjcgs.com/\"><font color=\"#1c5f82\">镇江</font></a></td></tr><tr><td><a href=\"http://www.gddg110.cn/publicfiles/business/htmlfiles/dgjch/s14385/list.htm\"><font color=\"#1c5f82\">东莞</font></a></td><td><a href=\"http://www.jzgajx.com/homepart/default2.aspx\"><font color=\"#1c5f82\">锦州</font></a></td><td><a href=\"http://www.lygjg.net/traffic.aspx\"><font color=\"#1c5f82\">连云港</font></a></td></tr><tr><td><a href=\"http://mmjj.maoming.gov.cn/\"><font color=\"#1c5f82\">茂名</font></a></td><td><a href=\"http://www.liaoyang.gov.cn/moban/wsfw/wscx07.asp\"><font color=\"#1c5f82\">辽阳</font></a></td><td><a href=\"http://www.tzpolice.gov.cn/\"><font color=\"#1c5f82\">泰州</font></a></td></tr><tr><td><a href=\"http://www.gdst110.gov.cn/\"><font color=\"#1c5f82\">汕头</font></a></td><td><a href=\"http://www.hldgajjzd.com/sjcx/Index.asp\"><font color=\"#1c5f82\">葫芦岛</font></a></td><td><a href=\"http://www.ycjxj.cn/InfoSearch.asp\"><font color=\"#1c5f82\">盐城</font></a></td></tr><tr><td><a href=\"http://www.zqga.gov.cn/\"><font color=\"#1c5f82\">肇庆</font></a></td><td><a href=\"http://www.asgajj.com/\"><font color=\"#1c5f82\">鞍山</font></a></td><td><a href=\"http://www.ntjxj.com/InternetWeb/\"><font color=\"#1c5f82\">南通</font></a></td></tr><tr><td><a href=\"http://www.cztp.gov.cn/news/4.asp\"><font color=\"#1c5f82\">潮州</font></a></td><td>&nbsp;</td><td><a href=\"http://0517b2c.oicp.net/default.asp\"><font color=\"#1c5f82\">淮安</font></a></td></tr><tr><td><a href=\"http://www.jyjj.gov.cn/wzcxjg.asp\"><font color=\"#1c5f82\">揭阳</font></a></td><td>&nbsp;</td><td><a href=\"http://www.yangzhou.gov.cn/jtcx/index.php\"><font color=\"#1c5f82\">扬州</font></a></td></tr><tr><td><a href=\"http://www.qyga.gov.cn/qysms20/wfclxx/wfywcx.jsp\"><font color=\"#1c5f82\">清远</font></a></td><td><strong><font color=\"#ffffff\">山东省交通违章查询</font></strong></td><td><b><a href=\"http://s.jljj.cn/\"><font color=\"#ffffff\">吉林省交通违章查询</font></a></b></td></tr><tr><td><a href=\"http://www.gdsw110.gov.cn/\"><font color=\"#1c5f82\">汕尾</font></a></td><td><a href=\"http://www.jnjj.com/\"><font color=\"#1c5f82\">济南</font></a></td><td><a href=\"http://www.ybjg.gov.cn/wzch/index.asp?Modid=013001\"><font color=\"#1c5f82\">延吉</font></a></td></tr><tr><td><a href=\"http://www.sgjjzd.gov.cn/jdcwf.aspx\"><font color=\"#1c5f82\">韶关</font></a></td><td><a href=\"http://www.ytjj.gov.cn/\"><font color=\"#1c5f82\">烟台</font></a></td><td><a href=\"http://fw.0437.gov.cn/wz/\"><font color=\"#1c5f82\">辽源</font></a></td></tr><tr><td><a href=\"http://www.zjjj.gov.cn/\"><font color=\"#1c5f82\">湛江</font></a></td><td><a href=\"http://traffic.qingdaomedia.com/122/dzjc-cx.asp\"><font color=\"#1c5f82\">青岛</font></a></td><td><a href=\"http://www.ccjg.gov.cn/\"><font color=\"#1c5f82\">长春</font></a></td></tr><tr><td><a href=\"http://www.gdzs110.gov.cn/\"><font color=\"#1c5f82\">中山</font></a></td><td><a href=\"http://www.zbjj.gov.cn/\"><font color=\"#1c5f82\">淄博</font></a></td><td><a href=\"http://www.ybjg.gov.cn/wzch/index.asp?Modid=013001\"><font color=\"#1c5f82\">延边</font></a></td></tr><tr><td><a href=\"http://www.gdhy110.gov.cn/cms/index.htm#\"><font color=\"#1c5f82\">河源</font></a></td><td><a href=\"http://www.sdzzjj.com/veh/index.htm\"><font color=\"#1c5f82\">枣庄</font></a></td><td><a href=\"http://221.8.71.21/dhjl/site/dhjlcms/wssc/tonghua.html\"><font color=\"#1c5f82\">通化</font></a></td></tr><tr><td><a href=\"http://www.yfga.gov.cn/website/newdeptemps/gaj/index.jsp?topid=009001054\"><font color=\"#1c5f82\">云浮</font></a></td><td><a href=\"http://www.jnjj.gov.cn/\"><font color=\"#1c5f82\">济宁</font></a></td><td><a href=\"http://www.bcjjzd.com/web/qx/cl.asp\"><font color=\"#1c5f82\">白城</font></a></td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.whdzjc.com/\"><font color=\"#1c5f82\">威海</font></a></td><td><a href=\"http://www.jlzxz.com/c/\"><font color=\"#1c5f82\">白山</font></a></td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.rzjj.com.cn:8810/\"><font color=\"#1c5f82\">日照</font></a></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.laiwu.gov.cn/car/weizhang_search.asp\"><font color=\"#1c5f82\">莱芜</font></a></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.hzjjxx.cn/\"><font color=\"#1c5f82\">菏泽</font></a></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.dzjiaojing.com/zbhm/WT_index.aspx\"><font color=\"#1c5f82\">德州</font></a></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><a href=\"http://119.191.61.214:9080/wsgg/jdccx.do\"><font color=\"#1c5f82\">潍坊</font></a></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.dygajj.gov.cn:9080/jncmp/html/jdcwf/jdcwf2.html\"><font color=\"#1c5f82\">东营</font></a></td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.lcjxj.com/\"><font color=\"#1c5f82\">聊城</font></a></td><td>&nbsp;</td></tr><tr><td><a href=\"http://www.hnjj.gov.cn/query/xxcx1.jsp\"><strong><font color=\"#ffffff\">湖南省交通违章查询</font></strong></a></td><td><strong><a href=\"http://www.jxhld.gov.cn/\"><font color=\"#ffffff\">江西省交通违章查询</font></a></strong></td><td><strong><font color=\"#ffffff\">浙江省</font><font color=\"#ffffff\">交通违章查询</font></strong></td></tr><tr><td><a href=\"http://www.hncsjj.gov.cn/DefaultIE.aspx\"><font color=\"#1c5f82\">长沙</font></a></td><td><a href=\"http://ncjj.nc.gov.cn/infos.asp\"><font color=\"#1c5f82\">南昌</font></a></td><td><a href=\"http://www.hzti.com/service/qry/peccancy.aspx?type=2&node=248\"><font color=\"#1c5f82\">杭州</font></a></td></tr><tr><td><a href=\"http://www.cz110.gov.cn/\"><font color=\"#1c5f82\">郴州</font></a></td><td><a href=\"http://www.gz0797.com/122/auto.asp\"><font color=\"#1c5f82\">赣州</font></a></td><td><a href=\"http://wf.nbjj.gov.cn/\"><font color=\"#1c5f82\">宁波</font></a></td></tr><tr><td><a href=\"http://www.hnhyjj.gov.cn/HYJJXXW/\"><font color=\"#1c5f82\">衡阳</font></a></td><td><a href=\"http://www.jjjj.com.cn/\"><font color=\"#1c5f82\">九江</font></a></td><td><a href=\"http://www.jhjxj.gov.cn/find/\"><font color=\"#1c5f82\">金华</font></a></td></tr><tr><td><a href=\"http://www.cdjjzd.gov.cn/\"><font color=\"#1c5f82\">常德</font></a></td><td><a href=\"http://www.jdzxx.com/\"><font color=\"#1c5f82\">景德镇</font></a></td><td><a href=\"http://www.wzsjj.cn/\"><font color=\"#1c5f82\">温州</font></a></td></tr><tr><td><a href=\"http://so.jtjc.cn/\"><font color=\"#1c5f82\">益阳</font></a></td><td><a href=\"http://www.jxyjb.com/\"><font color=\"#1c5f82\">新余</font></a></td><td><a href=\"http://www.police.zhoushan.gov.cn/Services_Illegal.asp\"><font color=\"#1c5f82\">舟山</font></a></td></tr><tr><td><a href=\"http://www.sysgajj.gov.cn/\"><font color=\"#1c5f82\">邵阳</font></a></td><td><a href=\"http://www.jxfzjj.cn/web/jdc_search.asp\"><font color=\"#1c5f82\">抚州</font></a></td><td><a href=\"http://www.hzgaj.gov.cn/\"><font color=\"#1c5f82\">湖州</font></a></td></tr><tr><td><a href=\"http://www.hnloudi.gov.cn/Category_811/index.aspx\"><font color=\"#1c5f82\">娄底</font></a></td><td><a href=\"http://www.ycsga.gov.cn/\"><font color=\"#1c5f82\">宜春</font></a></td><td><a href=\"http://www.zjjxjj.gov.cn/\"><font color=\"#1c5f82\">嘉兴</font></a></td></tr><tr><td>&nbsp;</td><td><a href=\"http://www.jagajj.gov.cn/\"><font color=\"#1c5f82\">吉安</font></a></td><td><a href=\"http://gaj.qz.gov.cn/eleclist.asp\"><font color=\"#1c5f82\">衢州</font></a></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td><a href=\"http://www.tzga.gov.cn/\"><font color=\"#1c5f82\">台州</font></a></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td><a href=\"http://61.153.62.58/\"><font color=\"#1c5f82\">丽水</font></a></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td><a href=\"http://122.224.38.212/\"><font color=\"#1c5f82\">绍兴</font></a></td></tr><tr><td><b><a href=\"http://www.135000.com/\"><font color=\"#ffffff\">河南省交通违章查询</font></a></b></td><td><strong><a href=\"http://www.ahjtxx.com/query.aspx\"><font color=\"#ffffff\">安徽省交通违章查询</font></a></strong></td><td><a href=\"http://www.scjj.gov.cn/\"><font color=\"#ffffff\"><b>四川省交通违章查询</b></font></a></td></tr><tr><td><a href=\"http://www.zzcgs.com.cn/peccancy/search_info.jsp\"><font color=\"#1c5f82\">郑州</font></a></td><td><a href=\"http://www.hfjjzd.gov.cn/List.asp?Class=1\"><font color=\"#1c5f82\">合肥</font></a></td><td><a href=\"http://www.cdjg.gov.cn/\"><font color=\"#1c5f82\">成都</font></a></td></tr><tr><td><a href=\"http://www.nydzjc.com/\"><font color=\"#1c5f82\">南阳</font></a></td><td><a href=\"http://218.22.27.66:8888/Main.aspx?fzjg=B\"><font color=\"#1c5f82\">芜湖</font></a></td><td><a href=\"http://www.myjtaq.com/newsmore.asp?ClassID=29\"><font color=\"#1c5f82\">绵阳</font></a></td></tr><tr><td><a href=\"http://www.jzga.gov.cn/wzcx/lookup.aspx\"><font color=\"#1c5f82\">焦作</font></a></td><td><a href=\"http://www.ahhnjj.net/\"><font color=\"#1c5f82\">淮南</font></a></td><td><a href=\"http://www.122114.com/\"><font color=\"#1c5f82\">自贡</font></a></td></tr><tr><td><a href=\"http://www.lyjjzd.com/\"><font color=\"#1c5f82\">洛阳</font></a></td><td><a href=\"http://jjzd.mas.gov.cn/\"><font color=\"#1c5f82\">马鞍山</font></a></td><td><a href=\"http://www.sclzjj.gov.cn/t_Search.aspx\"><font color=\"#1c5f82\">泸州</font></a></td></tr><tr><td><a href=\"http://cx.395.cn/wzcx/\"><font color=\"#1c5f82\">漯河</font></a></td><td><a href=\"http://www.chga.gov.cn/jtwfcx/jtwfcx.asp\"><font color=\"#1c5f82\">巢湖</font></a></td><td><a href=\"http://www.pzh122.com/\"><font color=\"#1c5f82\">攀枝花</font></a></td></tr><tr><td><a href=\"http://www.puyang.gov.cn/wmjdcwz.asp\"><font color=\"#1c5f82\">濮阳</font></a></td><td><a href=\"http://bzjj.bz163.net/Index.asp\"><font color=\"#1c5f82\">亳州</font></a></td><td><a href=\"http://dzjj.dz169.net/\"><font color=\"#1c5f82\">达州</font></a></td></tr><tr><td><a href=\"http://www.sqradio.com/old945/jdccx.htm\"><font color=\"#1c5f82\">商丘</font></a></td><td><a href=\"http://www.ahczjj.gov.cn/\"><font color=\"#1c5f82\">滁州</font></a></td><td><a href=\"http://www.scgajj.gov.cn/TrafficSeach.aspx\"><font color=\"#1c5f82\">广安</font></a></td></tr><tr><td><a href=\"http://wzcx.smx.shangdu.com/\"><font color=\"#1c5f82\">三门峡</font></a></td><td><a href=\"http://www.bbjj.gov.cn/maincx.php\"><font color=\"#1c5f82\">蚌埠</font></a></td><td><a href=\"http://www.bzjjdd.com/Index.html\"><font color=\"#1c5f82\">巴中</font></a></td></tr><tr><td><a href=\"http://www.ayjjw.net.cn/allSearch/\"><font color=\"#1c5f82\">安阳</font></a></td><td><a href=\"http://www.aqjj.gov.cn/AQWebQuery/Default.aspx\"><font color=\"#1c5f82\">安庆</font></a></td><td><a href=\"http://www.scnjjj.gov.cn/\"><font color=\"#1c5f82\">内江</font></a></td></tr><tr><td><a href=\"http://www.xxcgs.com/infosearchs.aspx\"><font color=\"#1c5f82\">新乡</font></a></td><td><a href=\"http://www.ahszjj.gov.cn/\"><font color=\"#1c5f82\">宿州</font></a></td><td><a href=\"http://www.sczyjj.gov.cn/\"><font color=\"#1c5f82\">资阳</font></a></td></tr><tr><td><a href=\"http://www.xcjjw.gov.cn/\"><font color=\"#1c5f82\">许昌</font></a></td><td><a href=\"http://www.huangshan.gov.cn/wsbs/MotoPecc.aspx\"><font color=\"#1c5f82\">黄山</font></a></td><td><a href=\"http://www.lsiptv.cn/traffic/\"><font color=\"#1c5f82\">凉山</font></a></td></tr><tr><td><a href=\"http://www.pds122.com/\"><font color=\"#1c5f82\">平顶山</font></a></td><td><a href=\"http://218.22.27.66:8888/Main.aspx?fzjg=F\"><font color=\"#1c5f82\">淮北</font></a></td><td><a href=\"http://www.dyjj.gov.cn/InfoQuery.aspx\"><font color=\"#1c5f82\">德阳</font></a></td></tr><tr><td><a href=\"http://www.kfpolice.com/\"><font color=\"#1c5f82\">开封</font></a></td><td><a href=\"http://218.23.49.250/wfcx/Main.aspx?fzjg=G\"><font color=\"#1c5f82\">铜陵</font></a></td><td><a href=\"http://www.scgyjj.gov.cn/Default.aspx\"><font color=\"#1c5f82\">广元</font></a></td></tr><tr><td><a href=\"http://www.zkga.gov.cn/\"><font color=\"#1c5f82\">周口</font></a></td><td><a href=\"http://www.lajjzd.gov.cn/frmVehVio.aspx\"><font color=\"#1c5f82\">六安</font></a></td><td>&nbsp;</td></tr><tr><td><a href=\"http://www.zhumadian.gov.cn/Traffic/index.asp\"><font color=\"#1c5f82\">驻马店</font></a></td><td><a href=\"http://www.chizhou.gov.cn/channels/1086.html\"><font color=\"#1c5f82\">池州</font></a></td><td>&nbsp;</td></tr><tr><td><strong><font color=\"#ffffff\">新疆交通违章查询</font></strong></td><td><a href=\"http://hainanjj.gov.cn/index/index.html\"><strong><font color=\"#ffffff\">海南省交通违章查询</font></strong></a></td><td><strong><font color=\"#ffffff\">西藏交通违章查询</font></strong></td></tr><tr><td><a href=\"http://bbs.hm169.com/wzcx/wz.aspx\"><font color=\"#1c5f82\">哈密</font></a></td><td><a href=\"http://www.hkjxj.gov.cn/php/wei_zcx.php\"><font color=\"#1c5f82\">海口</font></a></td><td><a href=\"http://www.xzlzysgs.com/Service/\"><font color=\"#1c5f82\">林芝</font></a></td></tr><tr><td><a href=\"http://www.xjbzjj.com/default.asp\"><font color=\"#1c5f82\">巴音郭楞</font></a></td><td><a href=\"http://www.syjtjc.gov.cn/\"><font color=\"#1c5f82\">三亚</font></a></td><td>&nbsp;</td></tr><tr><td><strong><font color=\"#ffffff\">云南省交通违章查询</font></strong></td><td><a href=\"http://gsgajt.gov.cn:9080/GajtInter/InfoSerch/vehinfo.jsp\"><strong><font color=\"#ffffff\">甘肃省交通违章查询</font></strong></a></td><td><a href=\"http://www.gzjjzd.gov.cn/subindex.asp?leftname=subleft7&rightname=jtwfcx/hphm_cx\"><b><font color=\"#ffffff\">贵州省交通违章查询</font></b></a></td></tr><tr><td><a href=\"http://www.km122.cn/q/query.html\"><font color=\"#1c5f82\">昆明</font></a></td><td><a href=\"http://www.lzgajj.gov.cn/web/index.do\"><font color=\"#1c5f82\">兰州</font></a></td><td><a href=\"http://jjzd.gygov.gov.cn/jjzd/2380434977553645568/\"><font color=\"#1c5f82\">贵阳</font></a></td></tr><tr><td><a href=\"http://www.yxjjzd.gov.cn/\"><font color=\"#1c5f82\">玉溪</font></a></td><td><a href=\"http://www.tsjjzd.com/\"><font color=\"#1c5f82\">天水</font></a></td><td><a href=\"http://gaj.zunyi.gov.cn/cms/cms/website/gongan/jsp/index.jsp?channelId=1476\"><font color=\"#1c5f82\">遵义</font></a></td></tr><tr><td><a href=\"http://www.dhjjxx.com/\"><font color=\"#1c5f82\">德宏</font></a></td><td><a href=\"http://byjj.baiyin.cn/\"><font color=\"#1c5f82\">白银</font></a></td><td><a href=\"http://58.16.136.34/\"><font color=\"#1c5f82\">安顺</font></a></td></tr><tr><td><a href=\"http://www.hb122.org/xxcx/xxcx.jsp\"><strong><font color=\"#ffffff\">湖北省交通违章查询</font></strong></a></td><td><strong><font color=\"#ffffff\">内蒙古交通违章查询</font></strong></td><td><b><a href=\"http://www.fjjj.gov.cn/\"><font color=\"#ffffff\">福建省交通违章查询</font></a></b></td></tr><tr><td><a href=\"http://wh122.cjn.cn/\"><font color=\"#1c5f82\">武汉</font></a></td><td><a href=\"http://www.cfauto.cn/cgs/wzcx.asp\"><font color=\"#1c5f82\">赤峰</font></a></td><td><a href=\"http://www.fzjj.net/lyb/result.php\"><font color=\"#1c5f82\">福州</font></a></td></tr><tr><td><a href=\"http://www.hsjj.gov.cn/\"><font color=\"#1c5f82\">黄石</font></a></td><td><a href=\"http://www.btjj.gov.cn/\"><font color=\"#1c5f82\">包头</font></a></td><td><a href=\"http://www.0597car.com/weizhang.aspx\"><font color=\"#1c5f82\">龙岩</font></a></td></tr><tr><td><a href=\"http://jmapp.jingmen.gov.cn/jiaojing/\"><font color=\"#1c5f82\">荆门</font></a></td><td><a href=\"http://cgs.hhhtgajt.com/\"><font color=\"#1c5f82\">呼和浩特</font></a></td><td><a href=\"http://www.xmjj.gov.cn/\"><font color=\"#1c5f82\">厦门</font></a></td></tr><tr><td><a href=\"http://xfwfcx.com/wf.asp\"><font color=\"#1c5f82\">襄樊</font></a></td><td><a href=\"http://www.whcgs.gov.cn/\"><font color=\"#1c5f82\">乌海</font></a></td><td><a href=\"http://www.fjsmjj.com/\"><font color=\"#1c5f82\">三明</font></a></td></tr><tr><td><a href=\"http://www.ez122.org/\"><font color=\"#1c5f82\">鄂州</font></a></td><td><a href=\"http://www.tlcgs.com/\"><font color=\"#1c5f82\">通辽</font></a></td><td><a href=\"http://npjjzd.net/wfcx/index.asp\"><font color=\"#1c5f82\">南平</font></a></td></tr><tr><td><a href=\"http://www.hbxgjj.com/_index.asp\"><font color=\"#1c5f82\">孝感</font></a></td><td><a href=\"http://www.bsgajj.gov.cn/\"><font color=\"#1c5f82\">巴彦淖尔</font></a></td><td><a href=\"http://www.fcgjj.com/\"><font color=\"#1c5f82\">防城港</font></a></td></tr><tr><td><a href=\"http://www.yichang.gov.cn/col/col3062/\"><font color=\"#1c5f82\">宜昌</font></a></td><td>&nbsp;</td><td><a href=\"http://www.lb122.com/\"><font color=\"#1c5f82\">来宾</font></a></td></tr><tr><td><a href=\"http://www.es122.com.cn/\"><font color=\"#1c5f82\">恩施</font></a></td><td>&nbsp;</td><td><a href=\"http://gaj.liuzhou.gov.cn/\"><font color=\"#1c5f82\">柳州</font></a></td></tr><tr><td><a href=\"http://www.hbsycg.com/\"><font color=\"#1c5f82\">十堰</font></a></td><td>&nbsp;</td><td><a href=\"http://www.gg122.com/Index.html\"><font color=\"#1c5f82\">贵港</font></a></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td><a href=\"http://www.gxqzjj.cn/\"><font color=\"#1c5f82\">钦州</font></a></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td><a href=\"http://www.beihaijj.com/\"><font color=\"#1c5f82\">北海</font></a></td></tr><tr><td><b><font color=\"#ffffff\">山西省交通违章查询</font></b></td><td><b><a href=\"http://www.966096.com/\"><font color=\"#ffffff\">广西省交通违章查询</font></a></b></td><td><a href=\"http://www.hlj122.com/search/jdc_search.asp\"><b><font color=\"#ffffff\">黑龙江省交通违章查询</font></b></a></td></tr><tr><td><a href=\"http://www.sxdt.net.cn/clwz.asp\"><font color=\"#1c5f82\">大同</font></a></td><td><a href=\"http://www.nn122.com/wfsx.aspx\"><font color=\"#1c5f82\">南宁</font></a></td><td><a href=\"http://www.hrbgaj.gov.cn/wzcx/index.php\"><font color=\"#1c5f82\">哈尔滨</font></a> <a href=\"http://www.hrbjtwf.com/wzseachxxx4.ASP\"><font color=\"#1c5f82\">电子交警</font></a></td></tr><tr><td><a href=\"http://wzcx.jconline.cn/\"><font color=\"#1c5f82\">晋城</font></a></td><td><a href=\"http://www.glga.gov.cn:8085/jjzd/\"><font color=\"#1c5f82\">桂林</font></a></td><td><a href=\"http://www.dqjj.gov.cn/\"><font color=\"#1c5f82\">大庆</font></a></td></tr><tr><td><a href=\"http://www.tyjj.gov.cn/\"><font color=\"#1c5f82\">太原</font></a></td><td><a href=\"http://www.gg122.com/Index.html\"><font color=\"#1c5f82\">贵港</font></a></td><td><a href=\"http://www.jtaqxx.com/\"><font color=\"#1c5f82\">齐齐哈尔</font></a></td></tr><tr><td><a href=\"http://www.ycjjzd.com/index_gb.asp\"><font color=\"#1c5f82\">运城</font></a></td><td>&nbsp;</td><td><a href=\"http://www.jidongche.com/\"><font color=\"#1c5f82\">鹤岗</font></a></td></tr><tr><td><a href=\"http://www.sxszjj.gov.cn/\"><font color=\"#1c5f82\">朔州</font></a></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td><a href=\"http://www.sxxzjj.gov.cn/\"><font color=\"#1c5f82\">忻州</font></a></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td><a href=\"http://www.nxjj.gov.cn/\"><b><font color=\"#ffffff\">宁夏省交通违章查询</font></b></a></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td><a href=\"http://www.nx.cninfo.net/zhuanti/wz/index.html\"><font color=\"#1c5f82\">银川</font></a></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td><a href=\"http://www.zwjj.net/\"><font color=\"#1c5f82\">中卫</font></a></td><td>&nbsp;</td></tr></tbody></table>\r\n','0');
INSERT INTO `hh_news_content_1` VALUES ('961','','967','31','1','1','第戎作为法国知名的酒乡，有&ldquo;上等葡萄酒之乡&rdquo;的美誉，厌倦了过年传统惯例的你何不飞往第戎，在红白相间的葡萄田中寻找最香醇浓郁的美酒。从小城出发，一路是一望无际的葡萄园，各式旧时的洗衣小屋及小教堂点缀其间，勾勒出一幅动人而甜蜜的欧洲田园风情画，轻易地让人沉醉其中，忘却心中烦恼，轻松过新年。\r\n<p>\r\n	　　推荐玩法：</p>\r\n<p>\r\n	　　第戎的酒庄一个接着一个，好客的庄主会热情地邀请你到酒窖大品美酒，这些不贴标签的酒喝上一口香醇有劲、回味悠长。如果想品尝勃艮第代表性的葡萄酒，则不妨到第戎的葡萄酒市场，从桑特奈和帕玛尔等较为熟悉的葡萄酒试饮；如果申请的话还可以参观从1911年开始藏酒，延续使用到现在的酒窖。</p>\r\n<p>\r\n	<img onload=\"if(this.width /&gt;600)makesmallpic(this,600,1800);\" src=\"http://travel.gznet.com/hysj/hysj_zx/201012/W020101214347112605162.jpg\" /></p>\r\n<p>\r\n	　　第戎保留了许多以前贵族的豪华宫殿、古堡，以及砖砌的街道。当闲庭信步于陌生的古城，在曲径通幽的石板路上边走边看，仿佛就能领略其中的风土人情和历史故事。你也可来到瑞士边境小镇安讷西，感受阿尔卑斯山山脚小城的典雅悠静。充足的阳光足以让您度过一段悠闲时光，细细品味欧洲的小桥流水般的生活。</p>\r\n<p>\r\n	　　旅游贴士：</p>\r\n<p>\r\n	　　第戎乃是法国的美食天堂之一，地道的名产是蜗牛和勃艮第葡萄酒。购物当属芥末和勃艮第的葡萄酒，而猫头鹰图案的小装饰品最适合作为带给朋友的小礼物。</p>\r\n<p>\r\n	　　推荐线路：法国品古堡红酒、意大利、阿尔卑斯山10天。（南湖国旅&middot;西部假期咨询热线：83322222）</p>\r\n','0');
INSERT INTO `hh_news_sort` VALUES ('1','0','0','旅游资讯','1','4','1','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','0','','','','','0','a:13:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:14:\"label_bencandy\";s:0:\"\";s:10:\"channelDir\";s:4:\"nnew\";s:13:\"channelDomain\";s:0:\"\";s:10:\"label_list\";s:2:\"33\";s:15:\"ListShowBigType\";s:13:\"bigsort_tpl/4\";s:7:\"is_html\";N;s:11:\"field_value\";N;}','','','','');
INSERT INTO `hh_news_sort` VALUES ('43','0','106','客服中心','1','2','1','','-1','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:7:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";}','','','','');
INSERT INTO `hh_news_sort` VALUES ('44','43','106','新手入门指导','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `hh_news_sort` VALUES ('31','1','0','旅游文化','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:9:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";N;s:7:\"is_html\";N;s:11:\"field_value\";N;}','','','','');
INSERT INTO `hh_news_sort` VALUES ('32','1','0','渡假生活','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:9:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";N;s:7:\"is_html\";N;s:11:\"field_value\";N;}','','','','');
INSERT INTO `hh_news_sort` VALUES ('33','1','0','旅游保险','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `hh_news_sort` VALUES ('34','1','0','自助游','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/2\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `hh_news_sort` VALUES ('36','0','0','饮食资讯','1','2','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:7:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";}','','','','');
INSERT INTO `hh_news_sort` VALUES ('37','36','0','快乐饮食','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `hh_news_sort` VALUES ('39','36','0','饮食文化','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/8\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `hh_news_sort` VALUES ('45','43','0','生活信息查询','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:7:\"is_html\";N;s:11:\"field_value\";N;}','','','','');
INSERT INTO `hh_news_sort` VALUES ('46','0','1','','1','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `hh_olpay` VALUES ('33','0','08nyzxrb9a','10','0','1284605041','1','admin','1','0','0','yeepay','0');
INSERT INTO `hh_pm` VALUES ('1','1','','0','SYSTEM','rebox','1','你有客户下订单了','1293249656','请尽快查看<A HREF=\'http://life.net/shoptg/member/joinshow.php?fid=1&id=1\' target=\'_blank\'>http://life.net/shoptg/member/joinshow.php?fid=1&id=1</A>');
INSERT INTO `hh_pm` VALUES ('2','1','','0','SYSTEM','rebox','1','你有客户下订单了','1293250543','请尽快查看<A HREF=\'http://life.net/shoptg/member/joinshow.php?fid=1&id=2\' target=\'_blank\'>http://life.net/shoptg/member/joinshow.php?fid=1&id=2</A>');
INSERT INTO `hh_pm` VALUES ('3','1','','0','SYSTEM','rebox','0','你有客户下订单了','1293250630','请尽快查看<A HREF=\'http://life.net/shoptg/member/joinshow.php?fid=1&id=1\' target=\'_blank\'>http://life.net/shoptg/member/joinshow.php?fid=1&id=1</A>');
INSERT INTO `hh_pm` VALUES ('4','1','','0','SYSTEM','rebox','0','你有客户下订单了','1293251298','请尽快查看<A HREF=\'http://life.net/shoptg/member/joinshow.php?fid=1&id=2\' target=\'_blank\'>http://life.net/shoptg/member/joinshow.php?fid=1&id=2</A>');
INSERT INTO `hh_purse` VALUES ('1','a:14:{s:9:\"yeepay_id\";s:0:\"\";s:10:\"yeepay_key\";s:0:\"\";s:9:\"tenpay_id\";s:0:\"\";s:10:\"tenpay_key\";s:0:\"\";s:9:\"alipay_id\";s:0:\"\";s:10:\"alipay_key\";s:0:\"\";s:14:\"alipay_partner\";s:0:\"\";s:14:\"alipay_service\";s:29:\"create_partner_trade_by_buyer\";s:16:\"alipay_transport\";s:5:\"https\";s:8:\"pay99_id\";s:0:\"\";s:9:\"pay99_key\";s:0:\"\";s:9:\"norm_send\";s:0:\"\";s:8:\"ems_send\";s:0:\"\";s:9:\"slow_send\";s:0:\"\";}');
INSERT INTO `hh_sell_telephone` VALUES ('12','1','admin','1292053191','0','1300693191','5000','1','1','010-58787878','送水上门服务','送水上门服务');
INSERT INTO `hh_sell_telephone` VALUES ('3','1','admin','1290404210','0','1321508210','18000','1','1','020-24754563','代充煤气服务','');
INSERT INTO `hh_sell_telephone` VALUES ('4','1','admin','1290404247','0','1321508247','18000','1','1','020-23654125','快递上门服务','');
INSERT INTO `hh_sell_telephone` VALUES ('5','1','admin','1290404276','0','1321508276','18000','1','1','020-21254785','上门修理家电','');
INSERT INTO `hh_sell_telephone` VALUES ('6','1','admin','1290404345','0','1321508345','18000','1','1','020-25632563','家政月嫂服务','');
INSERT INTO `hh_sell_telephone` VALUES ('7','1','admin','1290404447','0','1321508447','18000','1','1','020-85214521','快餐全天预定','');
INSERT INTO `hh_sell_telephone` VALUES ('8','1','admin','1290404470','0','1321508470','18000','1','1','010-21254541','酒店预定服务','');
INSERT INTO `hh_sell_telephone` VALUES ('9','1','admin','1290404503','0','1321508503','18000','1','1','020-21212125','打折机票订购','');
INSERT INTO `hh_sell_telephone` VALUES ('10','1','admin','1290404525','0','1321508525','18000','1','1','020-21212145','火 车 票订购','');
INSERT INTO `hh_sell_telephone` VALUES ('11','1','admin','1290404585','0','1321508585','18000','1','1','020-21236541','学车 9折优惠','');
INSERT INTO `hh_shop_config` VALUES ('sort_layout','1,75#2,4#71,65#5,54#3#','');
INSERT INTO `hh_shop_config` VALUES ('showNoPassComment','0','');
INSERT INTO `hh_shop_config` VALUES ('Info_ShowNoYz','1','');
INSERT INTO `hh_shop_config` VALUES ('PostInfoMoney','10','');
INSERT INTO `hh_shop_config` VALUES ('Info_index_cache','','');
INSERT INTO `hh_shop_config` VALUES ('Info_list_cache','','');
INSERT INTO `hh_shop_config` VALUES ('Info_allowGuesSearch','1','');
INSERT INTO `hh_shop_config` VALUES ('Info_TopNum','10','');
INSERT INTO `hh_shop_config` VALUES ('Info_TopDay','10','');
INSERT INTO `hh_shop_config` VALUES ('Info_TopMoney','10','');
INSERT INTO `hh_shop_config` VALUES ('Info_TopColor','#FF0000','');
INSERT INTO `hh_shop_config` VALUES ('module_pre','shop_','');
INSERT INTO `hh_shop_config` VALUES ('Info_webOpen','1','');
INSERT INTO `hh_shop_config` VALUES ('Info_metakeywords','商城','');
INSERT INTO `hh_shop_config` VALUES ('module_close','0','');
INSERT INTO `hh_shop_config` VALUES ('Info_webname','商城系统','');
INSERT INTO `hh_shop_config` VALUES ('module_id','29','');
INSERT INTO `hh_shop_config` VALUES ('UpdatePostTime','1','');
INSERT INTO `hh_shop_config` VALUES ('order_send_msg','1','');
INSERT INTO `hh_shop_config` VALUES ('order_send_mail','1','');
INSERT INTO `hh_shop_config` VALUES ('Info_ReportDB','违法信息\r\n过期信息\r\n垃圾信息','');
INSERT INTO `hh_shop_content` VALUES ('1','13.3寸上网本笔记本苹果风格13.4寸笔记本电脑 凌动N450/N455','1','21','电脑','2','0','1288753253','1288753253','1','admin','','http://img03.taobaocdn.com/imgextra/i3/T1uXBuXctRXXcqqtMV_020223.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1292918765','1','1','1260');
INSERT INTO `hh_shop_content` VALUES ('2','三星 N148-DP03 全新套餐 特惠巨献 机打发票 包邮 三星笔记本','1','21','电脑','3','0','1288753418','1288753418','1','admin','','http://img03.taobaocdn.com/imgextra/i7/T1VwlwXaFFXXbSH0E8_100145.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1293174382','1','1','2000');
INSERT INTO `hh_shop_content` VALUES ('3','宏基/acer AO532h 超薄10寸上网本N450 笔记本全国联保','1','21','电脑','2','0','1288753647','1288753647','1','admin','','http://img03.taobaocdn.com/bao/uploaded/i3/T1j3xAXeNBXXa35wg3_050109.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288753679','1','2','6000');
INSERT INTO `hh_shop_content` VALUES ('4','才990克 军工 原装正品松下 T1 T2 迅驰 二手笔记本电脑 秒上网本','1','21','电脑','1','0','1288753828','1288753828','1','admin','','http://img06.taobaocdn.com/bao/uploaded/i6/T1W2NuXallXXaaewYa_120947.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288753830','1','1','3000');
INSERT INTO `hh_shop_content` VALUES ('5','高贵LG KG90/KG800 巧克力手机滑盖触摸特价','1','22','手机','1','0','1288753985','1288753985','1','admin','','http://img02.taobaocdn.com/bao/uploaded/i2/T1V_VIXiJeXXXpNbzb_122917.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1288753987','1','1','300');
INSERT INTO `hh_shop_content` VALUES ('6','掌上电脑 旋屏手机 触屏 +JAVA +QQ后台 +甩歌','1','22','手机','3','0','1288754067','1288754067','1','admin','','http://img03.taobaocdn.com/bao/uploaded/i7/T15QFHXnFOXXcFBFs2_042705.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1302581055','1','1','600');
INSERT INTO `hh_shop_content` VALUES ('7','数码相机 Canon/佳能A495 1000万像素 全新原装','1','23','相机','2','0','1288754153','1288754153','1','admin','','http://img03.taobaocdn.com/bao/uploaded/i3/T1JVFNXg8lXXaIVbM0_034419.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1303009403','1','1','600');
INSERT INTO `hh_shop_content` VALUES ('8','数码相机 三星ST60 1200万像素 超薄 全新原装','1','23','相机','2','0','1288754209','1288754209','1','admin','','http://img02.taobaocdn.com/bao/uploaded/i6/T1v.hDXbJpXXcCiQHX_115806.jpg_310x310.jpg','1','1','0','0','','127.0.0.1','0','0','','0','0','1293194370','1','1','900');
INSERT INTO `hh_shop_content` VALUES ('9','富士S1600 富士S1770 长焦数码相机 3寸 1019元包邮送红包','1','23','相机','4','0','1288754323','1288754323','1','admin','','http://img02.taobaocdn.com/bao/uploaded/i2/T1JmtAXlplXXbjcuI2_043649.jpg_310x310.jpg','1','1','1','1290143981','','127.0.0.1','0','0','','0','0','1292982045','1','1','2000');
INSERT INTO `hh_shop_content` VALUES ('10','S0NY高贵华丽之选 MP4/MP5 16G 5.0寸 滑动 触摸屏 一拍就送大礼','1','64','MP3/MP4/iPod/录音笔','8','0','1288754600','1288754600','1','admin','','http://img03.taobaocdn.com/bao/uploaded/i3/T1RTtGXiBDXXa0jpU__075239.jpg_310x310.jpg','1','1','1','1290143980','','127.0.0.1','0','0','','0','0','1294649515','1','3','600');
INSERT INTO `hh_shop_content_1` VALUES ('1','1','21','1','<li>品牌: Apple/苹果</li><li>系列: MacBook Air</li><li>MacBook Air 系列配置: 其它MacBook Air 系列...</li><li>成色: 99新及展示机</li><li>CPU平台: Atom/凌动</li><li>凌动处理器型号: N455</li><li>CPU频率量级: 1.66GHz</li><li>CPU电压规格: 标准版电压</li><li>内存容量: 1G</li><li>硬盘容量: 160G</li><li>显卡类型: 集成</li><li>集成显卡型号: Intel GMA X3150</li><li>显存容量: 256M以上</li><li>光驱类型: 无</li><li>屏幕比例: 宽屏16：10</li><li>屏幕尺寸: 13寸</li><li>重量: 1-1.5公斤</li><li>电池类型: 4芯锂电池</li><li>摄像头功能: 有</li><li>3G上网功能: 无</li><li>售后服务: 其它售后服务</li><li>上市时间: 2009年</li><li>颜色分类: 顶级升级版N450黑色...</li><li>笔记本套餐: 套餐一&nbsp;标准套餐...</li><li>笔记本定位: 便携定位</li><li>笔记本价格区间: 3000元以下 </li>','3000','N455','0');
