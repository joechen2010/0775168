<?php 
// ��ȡԶ������ ����: gurl,gsort,sleep,isproxy
//������Ѱ�Ļ�ȡԶ�����ݵĺ��������Ѱ��ȡ���ݺ�����֧�������ɼ�������α����ɼ���������·���Զ���cookie�ȵȹ��ܣ�ȫ��ͻ��ĳЩ��վ�ķ��ɼ����ã�
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
			//58�����˷��ɼ����ã���Ѱ治�ṩ�ƽⷽ��
		} else {
			$show_content = LaneLead_GetContents($gurl);
		} 
	} else {
		die("parse is illegal");
		return false;
	} 
	return $show_content;
} 
// sock��ʽ��Զ���ļ�
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
 * ���ļ�����
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
 * д�ļ�����
 */
function LaneLead_write_file($filename, $data, $method = "rb+", $iflock = 1) {
	@touch($filename);
	$handle = @fopen($filename, $method);
	if (!$handle) {
		echo "���ļ�����д:$filename";
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