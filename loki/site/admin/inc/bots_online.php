<?php session_start();

if (!(isset($_SESSION['user_id']))) 
{
header("Location: ../../index.php");  
return;
}  
?>
<?php
include '../../db.php';
return;

$day = 0;
$now = 0;
$lasthour = 0;
$week =0;

	

	for($i=0; $i<24; $i++){
		$query = "SELECT * FROM `kliets` WHERE TIMESTAMPDIFF(HOUR, `lastConnect`, CURRENT_TIMESTAMP) = {$i}";
		$result = $mysqli->query($query);
		$day = $day + $result->num_rows;
	}
	
	
	for($i=0; $i<60; $i++){
		$query = "SELECT * FROM `kliets` WHERE TIMESTAMPDIFF(MINUTE, `lastConnect`, CURRENT_TIMESTAMP) = {$i}";
		$result = $mysqli->query($query);
		$lasthour = $lasthour + $result->num_rows;
	}


	for($i=0; $i<7; $i++){
		$query = "SELECT * FROM `kliets` WHERE TIMESTAMPDIFF(DAY, `lastConnect`, CURRENT_TIMESTAMP) = {$i}";
		$result = $mysqli->query($query);
		$week = $week + $result->num_rows;
	}
	
	
	for($i=0; $i<5; $i++){
		$query = "SELECT * FROM `kliets` WHERE TIMESTAMPDIFF(MINUTE, `lastConnect`, CURRENT_TIMESTAMP) = {$i}";
		$result = $mysqli->query($query);
		$min =  $min + $result->num_rows;
	}
	
	$responce =	array(
				"hour" => $lasthour,
				"day" => $day,
				"week" => $week,
				"min" => $min
				
			);
			echo json_encode($responce);
	exit;


