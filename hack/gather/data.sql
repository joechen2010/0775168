INSERT INTO `qb_hack` (`keywords`, `name`, `isclose`, `author`, `config`, `htmlcode`, `hackfile`, `hacksqltable`, `adminurl`, `about`, `class1`, `class2`, `list`, `linkname`, `isbiz`) VALUES ('gather_list', '采集规则管理', 0, '', '', '', '', '', 'index.php?lfj=gather&job=list', '', 'other', '数据采集器', 2, '', 0);
INSERT INTO `qb_hack` (`keywords`, `name`, `isclose`, `author`, `config`, `htmlcode`, `hackfile`, `hacksqltable`, `adminurl`, `about`, `class1`, `class2`, `list`, `linkname`, `isbiz`) VALUES ('gather_list_sort', '采集规则分类管理', 0, '', '', '', '', '', 'index.php?lfj=gather&job=listsort', '', 'other', '数据采集器', 1, '', 0);

--
-- 表的结构 `qb_gather_rule`
--

DROP TABLE IF EXISTS `qb_gather_rule`;
CREATE TABLE IF NOT EXISTS `qb_gather_rule` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL DEFAULT '0',
  `fixsystem` varchar(30) NOT NULL DEFAULT '',
  `filetype` varchar(50) NOT NULL DEFAULT '',
  `webname` varchar(150) NOT NULL DEFAULT '',
  `listurl` varchar(150) NOT NULL DEFAULT '',
  `firstpage` varchar(150) NOT NULL DEFAULT '',
  `page_begin` int(10) NOT NULL DEFAULT '0',
  `page_end` int(10) NOT NULL DEFAULT '0',
  `page_step` int(10) NOT NULL DEFAULT '0',
  `title_minleng` smallint(5) NOT NULL DEFAULT '0',
  `listmoreurl` text NOT NULL,
  `link_include_word` text NOT NULL,
  `link_noinclude_word` text NOT NULL,
  `link_replace_word` text NOT NULL,
  `title_replace_word` text NOT NULL,
  `list_begin_code` text NOT NULL,
  `list_end_code` text NOT NULL,
  `list_begin_preg` text NOT NULL,
  `list_end_preg` text NOT NULL,
  `gatherthesame` tinyint(1) NOT NULL DEFAULT '0',
  `show_begin_preg` text NOT NULL,
  `show_end_preg` text NOT NULL,
  `show_endfile_preg` text NOT NULL,
  `show_begin_code` text NOT NULL,
  `show_end_code` text NOT NULL,
  `show_replace_word` text NOT NULL,
  `show_morepage` varchar(100) NOT NULL DEFAULT '',
  `show_firstpage` varchar(100) NOT NULL DEFAULT '',
  `show_spe2page` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `copypic` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(4) NOT NULL DEFAULT '0',
  `file_type` varchar(50) NOT NULL DEFAULT '',
  `file_minleng` mediumint(6) NOT NULL DEFAULT '0',
  `file_minsize` int(9) NOT NULL DEFAULT '0',
  `file_includeword` text NOT NULL,
  `file_noincludeword` text NOT NULL,
  `file_explode` text NOT NULL,
  `file_picwidth` int(8) NOT NULL DEFAULT '0',
  `file_star_string` varchar(150) NOT NULL DEFAULT '',
  `title_rule` text NOT NULL,
  `content_rule` text NOT NULL,
  `save_rule` text,
  `title_morepage_rull` text NOT NULL,
  `content_morepage_rull` text NOT NULL,
  `charset_type` tinyint(1) NOT NULL DEFAULT '0',
  `lastgathertime` int(10) DEFAULT '0',
  `lastgatherstatus` tinyint(2) DEFAULT '0',
  `lastgathernum` int(8) DEFAULT '0',
  `ifauto` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM;


DROP TABLE IF EXISTS `qb_gather_sort`;
CREATE TABLE `qb_gather_sort` (
  `fid` mediumint(6) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `fup` mediumint(6) NOT NULL default '0',
  `class` smallint(4) NOT NULL default '0',
  `type` tinyint(1) NOT NULL default '0',
  `list` mediumint(5) NOT NULL default '0',
  `allowpost` varchar(255) NOT NULL default '',
  `sons` smallint(4) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) ENGINE=MyISAM;

