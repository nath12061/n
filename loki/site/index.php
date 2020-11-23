<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link rel="stylesheet" href="admin/styles/style1.css">
	<!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>

<!-- vladmaxi top bar -->
    <div class="vladmaxi-top">
        <span class="right">
            </a>
        </span>
    <div class="clr"></div>
    </div>
<!--/ vladmaxi top bar -->

<?php
include 'db.php';
session_start();
if (isset($_POST['login']) && isset($_POST['password'])){

		$login = $mysqli->real_escape_string(htmlspecialchars($_POST['login']));

		$password = md5(trim($_POST['password']));

		$query = "SELECT user_id, user_login
			                FROM users
					            WHERE user_login= '$login' AND user_password = '$password'
						                LIMIT 1";
    	$sql = $mysqli->query($query) or die(mysql_error());

        if ($sql->num_rows == 1) {
		    $row = mysqli_fetch_assoc($sql);
			$_SESSION['user_id'] = $row['user_id'];
			$_SESSION['user_login'] = $row['user_login'];
			setcookie("CookieMy", $row['user_login'], time()+6*6*24);
					
	    } else {
			header("Location: index.php"); 
		}
}

if (isset($_SESSION['user_id'])){
    header("Location: admin/index.php?command=bots_online");
} else {
	$login = '';

	if (isset($_COOKIE['CookieMy'])){
		$login = htmlspecialchars($_COOKIE['CookieMy']);
	}

	print <<< 	html
<form method="post" action="" class="login">
    <p>
      <label for="login">Login:</label>
      <input type="text" name="login" id="login" value="">
    </p>

    <p>
	    <label for="password">Password:</label>
	    <input type="password" name="password" id="password" value="">
	</p>

	<p class="login-submit">
	    <button type="submit" class="login-button">Войти</button>
	</p>
</form>
</body>
html;
}
?>
