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

$html = '';
$html_table = '';

# search 
if (isset($_REQUEST["imei"])) {
    if ($_REQUEST["imei"] != ''){
        $imei_req = $mysqli->real_escape_string($_REQUEST["imei"]);
        $imei_query_sql = "WHERE `IMEI` REGEXP '$imei_req'";
    }
}
if (isset($_REQUEST["text"])) {
    if ($_REQUEST["text"] != ''){
        $imei_req = $mysqli->real_escape_string($_REQUEST["text"]);
        $imei_query_sql = "WHERE `text` REGEXP '$imei_req'";
    }
}
if (isset($_REQUEST["imei"]) and isset($_REQUEST["text"])) {
    if (($_REQUEST["text"] != '') and ($_REQUEST["imei"] != '')){
        $imei_req = $mysqli->real_escape_string($_REQUEST["imei"]);
        $text_req = $mysqli->real_escape_string($_REQUEST["text"]);
        $imei_query_sql = "WHERE `text` REGEXP '$imei_req' and `IMEI` REGEXP '$text_req'";
    }
}

$query = "SELECT * FROM `logs` $imei_query_sql";
$result = $mysqli->query($query);
$total = $result->num_rows;

foreach($mysqli->query($query) as $comm){
    $IMEI = $comm['IMEI'];
    $text = $comm['text'];
    $date = gmdate("Y-m-d H:i:s", $comm['date']);
    $html_table .= "<tr>";
    $html_table .= "<td>$IMEI</td><td>$text</td><td>$date</td>";
    $html_table .= "</tr>";
}

$table1 = displayAnswerRules($mysqli, $_REQUEST["imei"]);

$html = file_get_contents("templates/bot_logs.tpl");
$html = str_replace('%%PLACE_TOTAL_ITEMS_HERE%%', $total, $html);
$html = str_replace('%%PLACE_TABLE_HERE%%', $html_table, $html);
$html = str_replace('%%PLACE_TABLE1_HERE%%', $table1, $html);

$html = str_replace('%%PLACE_BOTTOM_LINKS_HERE%%', pages_bottom("bot_logs",$total,$p,$sort), $html);

echo $html;
?>
