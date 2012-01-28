

jQuery(function($) {  
	
	$('#dotransfer').bind('click',function(){
		var source = $('#source').val();
		var notNullFlag = checkJSParameterIsNull(source);
		if(notNullFlag){
			alert($('#source').val());
			$.ajax({ 
				url:'../est/dotext.do?method=removeMultipleLine', 
				type:'post', //数据发送方式 
				dataType:'JSON', //接受数据格式 
				data:{source:source},
				async: false,
				// Defeat browser cache by adding a timestamp to URL
				cache: false,
				// Abort all Ajax requests after 2 seconds
			    timeout: 2000, 
				success: afterAjaxRequestSuccessfully,
				error:afterAjaxRequestFailurely
			});
			
		}else{
			//give the string is null error
		}
	});
	
	function afterAjaxRequestSuccessfully(data){
		alert(data);
		
		var obj = eval(data);
		
		alert(obj);
		
		$('#result').val(data);
		
//		alert('successfully');
	}
	
	function afterAjaxRequestFailurely(json){
		alert('failure');
	}
	
	function checkJSParameterIsNull(str){
		return str != null && str != '' && str.length > 0; 
	}
});