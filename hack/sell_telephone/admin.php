<?php
!function_exists('html') && exit('ERR');

if($job=="list"&&$Apower[sell_telephone])
{
	$SQL=" 1 ";

	$rows=20;
	if($page<1){
		$page=1;
	}
	$min=($page-1)*$rows;

	$showpage=getpage("{$pre}sell_telephone"," WHERE $SQL","?job=$job","");

	$query=$db->query("SELECT * FROM {$pre}sell_telephone WHERE $SQL ORDER BY id DESC LIMIT $min,$rows");
	while($rs=$db->fetch_array($query))
	{
		$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
		$rs[endtime]=date("Y-m-d H:i:s",$rs[endtime]);
		$listdb[$rs[id]]=$rs;
	}

	hack_admin_tpl('list');
}

elseif($action=="del"&&$Apower[sell_telephone])
{
	$db->query("DELETE FROM `{$pre}sell_telephone` WHERE id='$id'");
	header("location:$FROMURL");
	exit;
}
elseif($job=='set'&&$Apower[sell_telephone])
{
	hack_admin_tpl('set');
}
elseif($action=="set"&&$Apower[sell_telephone])
{
	write_config_cache($webdbs);
	jump("�޸ĳɹ�",$FROMURL);
}

?>