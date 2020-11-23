
<div class="demo-charts mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" style="background-color: #37474f;">	
            <h5 style="color: white;"><i class="material-icons" style="color: white; margin-right: 20px;">poll</i>Total inject: %%PLACE_TOTAL_ITEMS_HERE%%</h5>
</div>
<div  class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">

<div style="width: 100%; margin-top: 10px;">
    <div class="demo-card-square mdl-card mdl-shadow--2dp" style="width: 325px;margin-right: 20px; margin-bottom: 20px; float: left;">
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
            <input class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="uploadFileIcon('icon');" type="submit" name="sub" value="upload">
        </div>
    </div>

    <div class="demo-card-square mdl-card mdl-shadow--2dp" style="width: 325px;margin-right: 20px; margin-bottom: 20px;">
        <div class="mdl-card__title mdl-card--expand">
            <h2 class="mdl-card__title-text">Upload new inject</h2>
        </div>
        <div class="mdl-card__supporting-text">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--file">
                <input class="mdl-textfield__input" placeholder="File.zip" type="text" id="uploadInjFile" readonly/>
                <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file" style="right: 0; top:15px;">
                  <i class="material-icons">attach_file</i><input type="file" id="uploadInjBtn" style="cursor: pointer;height: 100%;right: 0;opacity: 0;position: absolute;top: 0;width: 300px;z-index: 4;" onchange='document.getElementById("uploadInjFile").value = this.files[0].name;'>
                </div>
            </div>
            If you want to upload new inject - choose file and push the UPLOAD button.
        </div>
        <div class="mdl-card__actions mdl-card--border">
            <input class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="uploadFileInj('inject');" type="submit" name="sub" value="upload">
        </div>
    </div>

	<table class="mdl-shadow--2dp tmain" cellpadding="1" align="center" width=100%>      
	<thead>
        <th style="width: 75px;">icon</th>
		<th>inject</th>
        <th style="width: 35px;"></th>
	</thead>
	%%PLACE_TABLE_HERE%%
	</table>
</div>

<div id = "logs_modal" style="display:none;"></div>
<div id = "commands_modal" style="display:none;"></div>

<div style="width: 100%">
</div>
