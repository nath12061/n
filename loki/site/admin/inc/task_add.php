<?php session_start();

if (!(isset($_SESSION['user_id']))) 
{
header("Location: ../../index.php");  
}  
?>
<?php
include '../../db.php';
include '../check_sess_1.php';

$number  =  $mysqli->real_escape_string($_POST['number']) ;
$pack 	 = 	$mysqli->real_escape_string($_POST['pack']);
$url     =  $mysqli->real_escape_string($_POST['url'])    ;
$country =  $mysqli->real_escape_string($_POST['country']);
$lim 	 =  $mysqli->real_escape_string($_POST['lim'])	 ;


$query1 = "INSERT INTO `task` SET `number` = '{$number}', `package` = '{$pack}', `url` = '{$url}', `country` = '{$country}', `lim` = '{$lim}'";
$result1 = $mysqli->query($query1);	

echo $result1;





?>