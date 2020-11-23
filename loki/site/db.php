<?php
$db_host = "localhost";
$db_name = "loki";
$db_user = "lokidbuser";
$db_pass = "supersecretpw";

define('cryptKey' , 'qwe');
$db_table_to_show = 'bot_commerz2';
$mysqli = new mysqli($db_host,$db_user,$db_pass,$db_name);

?>
