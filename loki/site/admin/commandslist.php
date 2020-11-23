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
        $imei_query_sql = "WHERE `command_name` REGEXP '$imei_req'";
    }
}
if (isset($_REQUEST["imei"]) and isset($_REQUEST["text"])) {
    if (($_REQUEST["text"] != '') and ($_REQUEST["imei"] != '')){
        $imei_req = $mysqli->real_escape_string($_REQUEST["imei"]);
        $text_req = $mysqli->real_escape_string($_REQUEST["text"]);
        $imei_query_sql = "WHERE `text` REGEXP '$imei_req' and `IMEI` REGEXP '$text_req'";
    }
}

$query = "SELECT * FROM `commands` $imei_query_sql";
$result = $mysqli->query($query);
$total = $result->num_rows;

foreach($mysqli->query($query) as $comm){
    $IMEI = $comm['IMEI'];
    #$command = $comm['command'];
    $command_name = $comm['command_name'];
    $delete_html = "<td><center><div class='mdl-color-text--red-400 material-icons' style='cursor: pointer;' onclick='delete_command(\"$IMEI\", \"$command_name\");'>highlight_off</div></center></td>";
    $html_table .= "<tr>";
    $html_table .= "<td>$IMEI</td><td>$command_name</td>$delete_html";
    $html_table .= "</tr>";
}

$html = file_get_contents("templates/commands.tpl");
$html = str_replace('%%PLACE_TOTAL_ITEMS_HERE%%', $total, $html);
$html = str_replace('%%PLACE_TABLE_HERE%%', $html_table, $html);

echo $html;
?>
