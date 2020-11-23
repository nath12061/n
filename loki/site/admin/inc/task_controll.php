<?php session_start();

if (!(isset($_SESSION['user_id']))) 
{
header("Location: ../../index.php");  
}  
?>
<?php
include '../../db.php';
include '../check_sess_1.php';

return;

$todo = $mysqli->real_escape_string($_POST['todo']);
$number = $mysqli->real_escape_string($_POST['number']);


if ($todo == 'remove'){
	
	
	$query = "UPDATE `task` SET `active` = '2' WHERE `number` = '{$number}'";
	$result = $mysqli->query($query);
	
	if ($result){
		echo 'remove_ok';
	}
	else{
		echo 'remove_error';
	}
	
}

if ($todo == 'repeat'){
	$query= "SELECT * FROM `task` WHERE `active` = '1'";	
	$result2 = $mysqli->query($query);
	
	if ($result2->num_rows > 0){		//Если активное задание уже есть 
		echo 'repeat_error';
	}
	
	
	if ($result2->num_rows == 0){
	$query = "UPDATE `task` SET `active` = '1' WHERE `number` = '{$number}'";
	$result = $mysqli->query($query);
	
	$query = "UPDATE `statistics` SET `run` = '0', `start` = '0'  WHERE `task_id` = '{$number}'";
	$result = $mysqli->query($query);
	
	if ($result){
		echo 'repeat_ok';
	}
	else{
		echo 'repeat_error';
	}
	}
	
	
}

?>