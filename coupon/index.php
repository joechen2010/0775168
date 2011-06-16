<?php
if(is_file('install.php')){
	header("location:install.php");exit;
}elseif(is_file('upgrade.php')){
	header("location:upgrade.php");
	exit;
}

require(dirname(__FILE__)."/global.php");


//SEO
$titleDB['title'] = "{$city_DB[name][$city_id]} $webdb[Info_webname]";
$titleDB['keywords']	= "{$city_DB[name][$city_id]} $webdb[Info_metakeywords]";
$titleDB['description'] = "{$city_DB[name][$city_id]}$webdb[Info_description]?$webdb[Info_description] : $webdb[description]";

/**
*标签使用
**/
$ch_fid	= $ch_pagetype = 0;
$ch_module = $webdb[module_id]?$webdb[module_id]:99;	//系统特定ID参数,每个系统不能雷同
require(ROOT_PATH."inc/label_module.php");


require(ROOT_PATH."inc/head.php");
require(getTpl("index",$index_tpl));
require(ROOT_PATH."inc/foot.php");


?>