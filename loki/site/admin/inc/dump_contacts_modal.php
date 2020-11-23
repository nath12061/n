<?php 
session_start();
include '../../db.php';


if (!(isset($_SESSION['user_id']))){
    header("Location: ../index.php");  
    return;
}

//if (isset($_REQUEST['data'])) {$data = $_REQUEST['data'];} else {return;}
//$settings = json_decode($data);

$imeis = $mysqli->real_escape_string($_REQUEST["imeis"]);

# $imeis=":000000011111222:174a7c2b653bcbc3";

header('Content-disposition: attachment; filename=gen.txt');
header('Content-type: text/plain');


$html = '';

$where_sql = "";
foreach (explode(":", $imeis) as $imei) {
	$where_sql .= "'$imei',";
}
$where_sql = rtrim($where_sql, ",");
$search_sql = $mysqli->real_escape_string("SELECT * FROM `contacts` WHERE `IMEI` IN ($where_sql) ORDER BY `IMEI`");
#var_dump($search_sql);
$search_sql_res = $mysqli->query($search_sql);
$separator = ":";
//var_dump($search_sql);
while ($contact = mysqli_fetch_assoc($search_sql_res)){
    $html .= $contact['IMEI'].$separator;
	$html .= $contact['name'].$separator;
	$html .= $contact['country'].$separator;
	$html .= $contact['phone'].$separator;
	$html .= $contact['e_name'].$separator;
	$html .= $contact['email'].$separator;
	$html = rtrim($html, $separator);
	$html .= "\r\n";
}

echo "$html";
//echo " you could generate content here, instead.";

?>