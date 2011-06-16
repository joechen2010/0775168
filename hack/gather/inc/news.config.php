<?php 
// 处理缩略图
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

$hits = rand(5, 200); //随机点击数
$onlineip = rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255) . "." . rand(0, 255); //发布随机IP	

$author = $author?filtrate($author):$username; //采集文章作者,如果为空则默认为采集用户
$copyfrom = $copyfrom?filtrate($copyfrom):"网络"; //文章来源,如果为空则默认来源为 网络 
$hits = intval($hits); 
// 获取时间
$posttime = get_time($posttime);

$yz = 1;

$restags = ""; //设置所有字段中不需要过滤的HTML标记(不包含connent) 例如:$restags="<img> <p>"; 中间用半角空格间隔


?>