<?php
session_start();
include '../db.php';
if (!(isset($_SESSION['user_id']))) {
    header("Location: ../index.php");
    return;
}

# create icons
$icons_html = '';
$pages_html = '';

$icons_dir = "icons/";
$icon_files = scandir($icons_dir);
$i = 1;
foreach ($icon_files as $icon_file) {
	if(($icon_file != ".") and ($icon_file != "..")){
		$icons_html .= "<option data-img-src='$icons_dir$icon_file' value='$icons_dir$icon_file'>$icons_dir$icon_file</option>";
		$i += 1;
	#icons.push({'iconFilePath':'images/icons/1.png', 'iconValue':'1'});
	}
}


$pages_dir = "build/templates/crypt/";
$pages_files = scandir($pages_dir);
$i = 1;
foreach ($pages_files as $page_files) {
	if(($page_files != ".") and ($page_files != "..")){
		$pages_html .= "<option value='$page_files'></option>";
		$i += 1;
	#icons.push({'iconFilePath':'images/icons/1.png', 'iconValue':'1'});
	}
}

$html = file_get_contents("templates/build.tpl");
$html = str_replace('%%PLACE_ICONS_HERE%%', $icons_html, $html);
$html = str_replace('%%PLACE_WPAGES_HERE%%', $pages_html, $html);
echo $html;
?>

