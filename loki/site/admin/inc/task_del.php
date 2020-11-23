<?php session_start();

if (!(isset($_SESSION['user_id']))) 
{
header("Location: ../../index.php");  
}  
?>
<?php
include '../../db.php';
include '../check_sess_1.php';
$number = $mysqli->real_escape_string($_POST['number']);

$query = "DELETE FROM `task` WHERE `id` ='{$number}'";
$result1 = $mysqli->query($query);


$query = "DELETE FROM `statistics` WHERE `task_id` ='{$number}'";
$result2 = $mysqli->query($query);

return;
	
?>