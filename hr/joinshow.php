<?php
require("global.php");

//������
@include(Mpath."data/guide_fid.php");

$mid=2;

/**
*��ȡ��Ϣ���ĵ�����
**/
$SQL = $id?"A.id='$id'":"A.uid='$uid'";
$rsdb=$db->get_one("SELECT A.*,B.*,M.icon FROM `{$_pre}person` A LEFT JOIN `{$_pre}content_$mid` B ON A.id=B.id LEFT JOIN {$pre}memberdata M ON A.uid=M.uid WHERE $SQL");
$id = $rsdb[id];

if(!$rsdb){
	showerr("����������");
}elseif(!$web_admin&&$rsdb[uid]!=$lfjuid&&$rsdb[cuid]!=$lfjuid){
	//showerr("����Ȩ�鿴");
}

$rsdb[picurl] = tempdir($rsdb[icon]);


$rsdb[C]=$db->get_one("SELECT * FROM {$_pre}content WHERE id='$rsdb[cid]'");


$field_db = $module_DB[$mid]['field'];

/**
*����Ϣ�����ֶεĴ���
**/
$Module_db->hidefield=true;
$Module_db->classidShowAll=true;
$Module_db->showfield($field_db,$rsdb,'show');


$rsdb[posttime]=date("Y-m-d H:i:s",$rsdb[posttime]);

$fav_num = 0;
extract($db->get_one("SELECT COUNT(*) AS fav_num FROM {$_pre}collection WHERE memberuid='$rsdb[uid]'"));

require(ROOT_PATH."inc/head.php");
require(getTpl("bencandy_$mid"));
require(ROOT_PATH."inc/foot.php");
?>