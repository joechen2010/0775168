<?php 
// 获取远程内容 参数: gurl,gsort,sleep,isproxy
//这是免费版的获取远程内容的函数；付费版获取内容函数，支持真代理采集、虚拟伪代理采集、虚拟来路、自定义cookie等等功能，全面突破某些网站的防采集设置！
function LaneLead_GetContents($gurl, $gsort = "content", $sleep, $isproxy) {
	if ($gsort == "content") {
		if (!$show_content) {
			if ($show_content = file_get_contents($gurl)) {
			} elseif ($show_content = file($gurl)) {
				$show_content = implode("", $show_content);
			} elseif (copy($gurl, $WEB_PATH . "cache/gather_cache.php")) {
				$show_content = LaneLead_read_file($WEB_PATH . "cache/gather_cache.php");
			} elseif ($show_content = LaneLead_sockOpenUrl($gurl)) {
			} else {
				return false;
			} 
		} 
	} elseif ($gsort == "title") {
		if (strpos($gurl, "58.com")) {
			//58网做了防采集设置，免费版不提供破解方法
		} else {
			$show_content = LaneLead_GetContents($gurl);
		} 
	} else {
		die("parse is illegal");
		return false;
	} 
	return $show_content;
} 
// sock方式打开远程文件
function LaneLead_sockOpenUrl($url, $method = 'GET', $postValue = '') {
	$method = strtoupper($method);
	if (!$url) {
		return '';
	} elseif (!ereg("://", $url)) {
		$url = "http://$url";
	} 
	$urldb = parse_url($url);
	$port = $urldb[port]?$urldb[port]:80;
	$host = $urldb[host];
	$query = '?' . $urldb[query];
	$path = $urldb[path]?$urldb[path]:'/';
	$method = $method == 'GET'?"GET":'POST';

	$fp = fsockopen($host, 80, $errno, $errstr, 30);
	if (!$fp) {
		echo "$errstr ($errno)<br />\n";
	} else {
		$out = "$method $path$query HTTP/1.1\r\n";
		$out .= "Host: $host\r\n";
		$out .= "Cookie: c=1;c2=2\r\n";
		$out .= "Referer: $url\r\n";
		$out .= "Accept: */*\r\n";
		$out .= "Connection: Close\r\n";
		if ($method == "POST") {
			$out .= "Content-Type: application/x-www-form-urlencoded\r\n";
			$length = strlen($postValue);
			$out .= "Content-Length: $length\r\n";
			$out .= "\r\n";
			$out .= $postValue;
		} else {
			$out .= "\r\n";
		} 
		fwrite($fp, $out);
		while (!feof($fp)) {
			$file .= fgets($fp, 256);
		} 
		fclose($fp);
		if (!$file) {
			return '';
		} 
		$ck = 0;
		$string = '';
		$detail = explode("\r\n", $file);
		foreach($detail AS $key => $value) {
			if ($value == '') {
				$ck++;
				if ($ck == 1) {
					continue;
				} 
			} 
			if ($ck) {
				$stringdb[] = $value;
			} 
		} 
		$string = implode("\r\n", $stringdb); 
		// $string=preg_replace("/([\d]+)(.*)0/is","\\2",$string);
		return $string;
	} 
} 
/**
 * 读文件函数
 */
function LaneLead_read_file($filename, $method = "rb") {
	if ($handle = @fopen($filename, $method)) {
		@flock($handle, LOCK_SH);
		$filedata = @fread($handle, @filesize($filename));
		@fclose($handle);
	} 
	return $filedata;
} 
/**
 * 写文件函数
 */
function LaneLead_write_file($filename, $data, $method = "rb+", $iflock = 1) {
	@touch($filename);
	$handle = @fopen($filename, $method);
	if (!$handle) {
		echo "此文件不可写:$filename";
		return 0;
	} 
	if ($iflock) {
		@flock($handle, LOCK_EX);
	} 
	@fputs($handle, $data);
	if ($method == "rb+") @ftruncate($handle, strlen($data));
	@fclose($handle);
	@chmod($filename, 0777);
	if (is_writable($filename)) {
		return 1;
	} else {
		return 0;
	} 
} 
function LaneLead_dump($data) {
	print("<pre>");
	print_r($data);
	print("</pre>");
} 
// echo GetContents("http://www.baidu.com");

?>