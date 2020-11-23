<?php session_start();

if (!(isset($_SESSION['user_id']))) 
{
header("Location: ../../index.php");  
}  
?>
<?php
include '../../db.php';
$task = $mysqli->real_escape_string($_POST['number']);
#$task = "18";

$query = mysql_real_escape_string("SELECT * FROM `commands` WHERE `id` = '$task'");
$result1 = $mysqli->query($query);
$take = $result1->num_rows;

$query = mysql_real_escape_string("SELECT * FROM `task`  WHERE `id` = '$task'");
$result = $mysqli->query($query);
$row = mysqli_fetch_assoc($result);
$run = intval($row["real_count"])-$take;

$responce =	array(
			"number" => $task,
			"run" => $run,
			"take" => $take
		);

echo json_encode($responce);



?>