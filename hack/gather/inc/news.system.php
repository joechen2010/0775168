<?php
if($rsdb[type]=='iframe'){//�����滢
	$content="<A HREF='$curl' target='_blank'>$curl</A>";
}

//���ƴ���
if($iframeurl){
	$content="<A HREF='$iframeurl' target='_blank'>$iframeurl</A>";
}

$content=mysql_escape_string($content);
if( eregi("@@",$title) )
{
	list($title,$picurl)=explode("@@",$title);
}
$title=@preg_replace('/<([^>]*)>/is',"",$title);	//��HTML������˵�
$title=mysql_escape_string($title);

//����Ҫ�ɼ�������ͬ������
$ForbidAdd='';
if($rsdb[gatherthesame]&&!$morepage){
	$ForbidAdd=$db->get_one("SELECT id FROM {$pre}news_content WHERE title='$title' ORDER BY id DESC LIMIT 1");
}


if(!$picurl&&is_array($Filedb)){
	foreach( $Filedb AS $key=>$value){
		if(eregi("(\.png|\.jpg|\.gif)$",$value)){
			$picurl=$value;
			break;
		}
	}
}

//����ɼ��ر��غ�.��Ҫ��Դ��ַ������
if($Filedb&&$getfile&&!$ForbidAdd){
	foreach( $Filedb AS $key=>$fileurl){
		$content=str_replace($oldFileDB[$key],tempdir("$fileurl"),$content);
		if( eregi("(jpg|gif|png)$",$fileurl) && ($webdb[if_gdimg]) ){
			//��������ͼ
			if( !$havemakesmallpic ){
				$Newpicpath=$WEB_PATH."$webdb[updir]/$fileurl.gif";
				gdpic($WEB_PATH."$webdb[updir]/$fileurl",$Newpicpath,300,225,$webdb[autoCutSmallPic]?array('fix'=>1):'');

				gdpic($WEB_PATH."$webdb[updir]/$fileurl","$Newpicpath.jpg",225,300,$webdb[autoCutSmallPic]?array('fix'=>1):'');

				gdpic($WEB_PATH."$webdb[updir]/$fileurl","$Newpicpath.jpg.jpg",300,300,$webdb[autoCutSmallPic]?array('fix'=>1):'');

				if( filesize($Newpicpath)>1024*3 ){
					$picurl="$fileurl.gif";
					$havemakesmallpic++;
				}else{
					unlink($Newpicpath);
				}
			}
			//ͼƬ��ˮӡ
			if($webdb[is_waterimg]){
				include_once($WEB_PATH."inc/waterimage.php");
				imageWaterMark($WEB_PATH."$webdb[updir]/$fileurl",$webdb[waterpos],$WEB_PATH.$webdb[waterimg]);
			}
		}
	}
}elseif($Filedb){
	foreach( $Filedb AS $key=>$fileurl){
		$content=str_replace($oldFileDB[$key],"$fileurl",$content);
	}
}

//������ַ������
$content=En_TruePath($content);

//���ϵͳû�����Զ���������ͼ.��ȡ��
//$webdb[autoGetSmallPic] || $picurl='';


if($picurl){
	$ispic=1;
}else{
	$ispic=0;
}
//������ͬʱ.����һ��BUG
if($morepage&&$rs=$db->get_one("SELECT id FROM {$pre}news_content WHERE title='$title' ORDER BY id DESC LIMIT 1"))
{
	$db->query(" UPDATE {$pre}news_content SET pages=pages+1 WHERE id='$rs[id]' ");
	$db->query("INSERT INTO `{$pre}news_content_1` (  `id` , `fid` ,uid,  `content`) VALUES ( '$rs[id]', '$fid','$uid', '$content')");

	@extract($db->get_one("SELECT rid FROM {$pre}news_content_1 WHERE id='$rs[id]' ORDER BY rid DESC LIMIT 1 "));
}
elseif(!$ForbidAdd)
{
	$fidDB=$db->get_one(" SELECT A.name,A.config,A.mid FROM {$pre}news_sort  A  WHERE A.fid='$fid' ");
	$fname=$fidDB[name];
	
	$rs=$userDB->get_info($username,'name');
	$uid=$rs[uid];

	//�����Զ���ɼ�����
	if (!file_exists( "$fixsystem.config.php")) {
		include( "$fixsystem.config.php");
	}
	$db->query("
	INSERT INTO `{$pre}news_content` 
	( `title`, `mid`,  `fid`, `fname`, `pages`, `posttime`, `list`, `uid`, `username`,`copyfrom`, `copyfromurl`,  `picurl`,`ispic`, `yz`, `keywords`, `jumpurl`, `iframeurl`, `ip`,`author`,`hits`,`city_id`) 
	VALUES
	('$title','1','$fid','$fname','1','$posttime','$posttime','$uid','$username','$copyfrom','$curl','$picurl','$ispic','$yz','$keywords','$jumpurl','$iframeurl','$onlineip','$author','$hits','$city_id')
	");
	
	$rs=$db->get_one("SELECT id FROM {$pre}news_content ORDER BY id DESC LIMIT 1 ");

	$db->query("INSERT INTO `{$pre}news_content_1` (  `id` , `fid` ,`uid` ,  `content` ,topic) VALUES ( '$rs[id]', '$fid','$uid', '$content',1)");
	
}
?>