<?php
require("global.php");

//������
@include(Mpath."data/guide_fid.php");

if(!$cid){
	showerr('ID������!');
}
$mid=2;
$field_db = $module_DB[$mid]['field'];

$Lrows=10;
$showpage=getpage("{$_pre}person A","WHERE A.cid=$cid","?cid=$cid",$Lrows);	
unset($listdb);

if($page<1){
	$page=1;
}
$min=($page-1)*$Lrows;

$query = $db->query("SELECT A.*,B.*,C.* FROM {$_pre}person A LEFT JOIN {$_pre}content_$mid C ON A.id=C.id LEFT JOIN {$pre}memberdata B ON A.uid=B.uid WHERE A.cid='$cid' ORDER BY A.posttime DESC LIMIT $min,$Lrows");
while($rs = $db->fetch_array($query)){
	$Module_db->showfield($field_db,$rs,'list');
	$rs[username] || $rs[username] = $rs[ip];
	$rs[picurl] = tempdir($rs[icon]);
	$rs[posttime] = date("Y-m-d H:i:s",$rs[posttime]);
	$listdb[]=$rs;
}


require(ROOT_PATH."inc/head.php");
require(getTpl("list_$mid"));
require(ROOT_PATH."inc/foot.php");
?>