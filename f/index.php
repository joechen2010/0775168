<?php
require(dirname(__FILE__)."/global.php");


//����
$Cache_FileName=Mpath."cache/index/$city_id/index.php";
if(!$jobs&&!$MakeIndex&&$webdb[Info_index_cache]&&(time()-filemtime($Cache_FileName))<($webdb[Info_index_cache]*60)){
	echo read_file($Cache_FileName);
	exit;
}


//SEO
$titleDB['title'] = "{$city_DB[name][$city_id]} $webdb[Info_webname]";
$titleDB['keywords']	= "{$city_DB[name][$city_id]} $webdb[Info_metakeywords]";
$titleDB['description'] = "{$city_DB[name][$city_id]}$webdb[Info_description]?$webdb[Info_description] : $webdb[description]";



/**
*��ǩʹ��
**/
$chdb[main_tpl] = getTpl("index",$index_tpl);
$ch_fid	= $ch_pagetype = 0;
$ch_module = $webdb[module_id]?$webdb[module_id]:99;	//ϵͳ�ض�ID����,ÿ��ϵͳ������ͬ
require(ROOT_PATH."inc/label_module.php");


/**
*�Ƽ�����Ŀ����ҳ��ʾ
**/
$listdb_moresort=Info_ListMoreSort($webdb[InfoIndexCSRow],$webdb[InfoIndexCSLeng],$city_id);

//ÿ����Ŀ����Ϣ��
$InfoNum=get_infonum($city_id);
require(Mpath."inc/head.php");
require(getTpl("index",$index_tpl));
require(Mpath."inc/foot.php");


if(!$jobs&&!$MakeIndex&&$webdb[Info_index_cache]&&(time()-filemtime($Cache_FileName))>($webdb[Info_index_cache]*60)){
	if(!is_dir(dirname($Cache_FileName))){
		makepath(dirname($Cache_FileName));
	}
	write_file($Cache_FileName,$content);
}elseif($jobs=='show'){
	@unlink($Cache_FileName);
}

?>