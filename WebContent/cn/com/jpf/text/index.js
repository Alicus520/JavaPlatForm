
jQuery(function($) {  
	
	$('#remove').bind('click',function(){
		var source = $('#source').val();
		var notNullFlag = checkJSParameterIsNull(source);
		if(notNullFlag){
			$.ajax({ 
				url:'../est/dotext.do?method=removeMultipleLine', 
				type:'post', //数据发送方式 
				dataType:'json', //接受数据格式 
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
			alert("please input the source...");
			$('#source').focus();
		}
	});
	
	function afterAjaxRequestSuccessfully(data){
		var jsonData = data[0].data;
		var finalValue = jsonData.replace(/<br\s*\/?>/ig, "\r\n");
		$('#result').val(finalValue);
		
		easyDialog.open({
			  container : 'resultBox',
			  overlay : false,
			  fixed : false
		});
		
	}
	
	function afterAjaxRequestFailurely(json){
		alert('failure');
	}
	
	function checkJSParameterIsNull(str){
		return str != null && str != '' && str.length > 0; 
	}
});