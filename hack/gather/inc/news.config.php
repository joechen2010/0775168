<?php 
// ��������ͼ
if ($picurl && !strpos($picurl, "none.")) {
	$picurl_dir = "picurl";
	if (!is_dir($WEB_PATH . "$webdb[updir]/$picurl_dir")) {
		makepath($WEB_PATH . "$webdb[updir]/$picurl_dir");
	} 
	$picurl_name = "$picurl_dir/" . time() . ".gif";
	if ($picurl_content = sockOpenUrl($picurl)) {
		write_file($WEB_PATH . "$webdb[updir]/{$picurl_name}", $picurl_content);
	} else {
		copy($picurl, $WEB_PATH . "$webdb[updir]/{$picurl_name}");
	} 
	$picurl = $picurl_name;
} else {
	$picurl = "" ;
} 

$hits = rand(5, 200); //��������
$onlineip = rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255); //�������IP	

$author = $author?filtrate($author):$username; //�ɼ���������,���Ϊ����Ĭ��Ϊ�ɼ��û�
$copyfrom = $copyfrom?filtrate($copyfrom):"����"; //������Դ,���Ϊ����Ĭ����ԴΪ ���� 
$hits = intval($hits); 
// ��ȡʱ��
$posttime = get_time($posttime);

$yz = 1;

$restags = ""; //���������ֶ��в���Ҫ���˵�HTML���(������connent) ����:$restags="<img> <p>"; �м��ð�ǿո���


?>