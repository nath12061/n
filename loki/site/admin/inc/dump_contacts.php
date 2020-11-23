<?php 
session_start();
include '../../db.php';


if (!(isset($_SESSION['user_id']))){
    header("Location: ../index.php"); 
    return; 
}

//if (isset($_REQUEST['data'])) {$data = $_REQUEST['data'];} else {return;}
//$settings = json_decode($data);

$limit = "";

if ($_REQUEST["limit"]) $limit = "DESC LIMIT ".$mysqli->real_escape_string($_REQUEST["limit"]);

header('Content-disposition: attachment; filename=gen.txt');
header('Content-type: text/plain');


$html = '';
$separator = $mysqli->real_escape_string($_REQUEST["separator"]);
#$search_sql = "SELECT * FROM `contacts` WHERE 1";
$search_sql = $mysqli->real_escape_string("SELECT * FROM `contacts` ORDER BY `phone` $limit");
$search_sql_res = $mysqli->query($search_sql);
//var_dump($search_sql);
while ($contact = mysqli_fetch_assoc($search_sql_res)){
    if ($_REQUEST["out_imei"]=='true') $html .= $contact['IMEI'].$separator;
	if ($_REQUEST["out_name"]=='true') $html .= $contact['name'].$separator;
	if ($_REQUEST["out_country"]=='true') $html .= $contact['country'].$separator;
	if ($_REQUEST["out_phone"]=='true') $html .= $contact['phone'].$separator;
	if ($_REQUEST["out_ename"]=='true') $html .= $contact['e_name'].$separator;
	if ($_REQUEST["out_email"]=='true') $html .= $contact['email'].$separator;
	$html = rtrim($html, $separator);
	$html .= "\r\n";
}

echo "$html";
//echo " you could generate content here, instead.";

?>