<?php
session_start();
unset($_SESSION['guest_id']);
unset($_SESSION['user_login']);
session_destroy();
header('location: login.php');
?>