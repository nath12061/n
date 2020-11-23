<?php  
include 'crypt.php';
include 'db.php';

$request = htmlspecialchars($_REQUEST["p"], ENT_QUOTES);
$request = mb_substr($request, 0, mb_strlen($request));
$request = decrypt($request,cryptKey);

# uncomment for debug
# $request = "0000011111|http://php.net/manual/ru/function.file-put-contents.php;http://kino_govno.com/;https://regex101.com/;";
$massivReq = explode("|", $request);
$IMEI = $massivReq[0]; 
$text_log = $massivReq[1];
$urls = explode(";", $massivReq[1]);
$safe_dir = "logs/hist/";

function checkHist($url='', $mysqli){
	# we need to parse domain from url, because url maybe too large
	//var_dump($url);
	$pattern = "/http(s)?:\/\/[\w-.]*/";
	preg_match($pattern, $url, $matches);
	//var_dump($matches[0]);
	if ($matches[0]){
		$domain = $matches[0];
		$search_url_sql = "SELECT * FROM `stat_hist` WHERE `domain` LIKE '$domain'";
		$search_url_sql_res = $mysqli->query($search_url_sql);

		if ($search_url_sql_res->num_rows){
			# echo "update row in db";
			$increment_count_sql = "UPDATE `stat_hist` SET `count` = `count` + 1 WHERE `domain` = '$domain'";
			$increment_count_sql_res = $mysqli->query($increment_count_sql);
		} else {
			# echo "set new row into db";
			$insert_new_app = "INSERT INTO `stat_hist` (`id`, `domain`, `count`) VALUES (NULL, '$domain', '1')";
			$insert_new_app_res = $mysqli->query($insert_new_app);
		}
	}
}

if(($IMEI != "") && ($text_log != "")){
	$data = '';
	foreach ($urls as $url) {
		$data .= "$url\n";
		checkHist($url, $mysqli);

		# send history to database
		if ($url != ''){
			$hist_sql = "INSERT INTO `client_history` (`IMEI`, `link`) VALUES ('$IMEI', '$url')";
			$insert_hist_sql_res = $mysqli->query($hist_sql);
		}
		
	}
	file_put_contents("$safe_dir$IMEI.log", $data);
}
?>