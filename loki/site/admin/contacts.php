<?php 
session_start();
include '../db.php';
include 'func.php';

if (!(isset($_SESSION['user_id']))){
    header("Location: ../index.php");  
}


function get_contacts($mysqli, $sort, $first=1, $users_on_page=20){
    $html = '';
    #$search_sql = "SELECT * FROM `contacts` WHERE 1";
    $search_sql = "SELECT * FROM `contacts` ORDER BY `{$sort}` DESC limit $first, $users_on_page ";
    $search_sql_res = $mysqli->query($search_sql);
    while ($contact = mysqli_fetch_assoc($search_sql_res)){
        $html .= "<tr>";
        $html .= "<td>".$contact['IMEI']."</td>";
        $html .= "<td>".$contact['name']."</td>";
        $html .= "<td>".$contact['country']."</td>";
        $html .= "<td>".$contact['phone']."</td>";
        $html .= "";
        $html .= "</tr>";
    }
    return $html;
}

function country_stat($mysqli) {
    $countries_arr = [];
    $distinct_sql = "SELECT DISTINCT `country` FROM `contacts` WHERE 1";
    $distinct_sql_res = $mysqli->query($distinct_sql);
    while ($country = $distinct_sql_res->fetch_assoc()) {
        array_push($countries_arr, $country["country"]);
    }

    foreach ($countries_arr as $country) {
        $all_in_country_sql = "SELECT * FROM `contacts` WHERE `country` = '$country'";
        $all_in_country_res = $mysqli->query($all_in_country_sql);
        array_push($myData_ar, $all_in_country_res->num_rows);

        $myData_html .= "['$country - $all_in_country_res->num_rows', $all_in_country_res->num_rows],";
    }

    $myData_html = rtrim($myData_html, ",");
    return $myData_html;
}

function country_options($mysqli){
    $html = '';
    # var_dump($countries_arr);
    # Create country options
    $countries_arr = [];
    $distinct_sql = "SELECT DISTINCT `country` FROM `contacts` WHERE 1";
    $distinct_sql_res = $mysqli->query($distinct_sql);
    while ($row = $distinct_sql_res->fetch_assoc()) {
        $country = $row["country"];
        $html .= "<option value='$country'>$country</option>";
    }

    return $html;
}


if ($_GET['sort'] == ""){
    $sort = 'country';
}
else{
    $sort = $mysqli->real_escape_string($_GET['sort']);
}

$query = "SELECT * FROM `contacts` WHERE 1";    
$result = $mysqli->query($query);
$users_on_page="20";


$count = $result->num_rows;

// считаем страницы
$total = ceil($count / $users_on_page);

if(empty($_GET["p"])){$_GET["p"]="1";}
$p=$mysqli->real_escape_string($_GET["p"]);

# varibbles
# %%ALL_CONTACTS_COUNT%% $count
# %%PLACE_PAGES_BOTTOM_HERE%% pages_bottom($total)
# %%PLACE_TABLE_HERE%% get_contacts()

$result = file_get_contents("templates/contacts.tpl");
$result = str_replace('%%ALL_CONTACTS_COUNT%%', $count, $result);
$result = str_replace('%%PLACE_COUNTRY_STAT_HERE%%', country_stat($mysqli), $result);
$result = str_replace('%%PLACE_COUNTRY_OPTIONS%%', country_options($mysqli), $result);
$result = str_replace('%%PLACE_TABLE_HERE%%', get_contacts($mysqli, $sort, $p, $users_on_page), $result);
$result = str_replace('%%PLACE_PAGES_BOTTOM_HERE%%', pages_bottom("contacts",$total,$p,$sort), $result);

echo $result;

?>