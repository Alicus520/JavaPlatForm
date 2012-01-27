<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../../../../common/load-css.jsp"%>
<%@ include file="../../../../common/load-jquery.jsp"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/jquery/jquery-ui-1.8.17.custom.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/jquery/ui.dialog.js"></script>
<script type="text/javascript">
	$(function(){
				//hover states on the static widgets
				$('#dialog_link, ul#icons li').hover(
					function() { $(this).addClass('ui-state-hover'); }, 
					function() { $(this).removeClass('ui-state-hover'); }
				);
				
			});
		</script>
		<style type="text/css">
			/*demo page css*/
			body{ font: 62.5% "Trebuchet MS", sans-serif; margin: 50px;}
			.demoHeaders { margin-top: 2em; }
			#dialog_link {padding: .4em 1em .4em 20px;text-decoration: none;position: relative;}
			#dialog_link span.ui-icon {margin: 0 5px 0 0;position: absolute;left: .2em;top: 50%;margin-top: -8px;}
			ul#icons {margin: 0; padding: 0;}
			ul#icons li {margin: 2px; position: relative; padding: 4px 0; cursor: pointer; float: left;  list-style: none;}
			ul#icons span.ui-icon {float: left; margin: 0 4px;}
		</style>	
</head>
<body>
	
	<h2 class="demoHeaders">Dialog</h2>
	<p><a href="#" id="dialog_link" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-newwin"></span>Open Dialog</a></p>
	
	<!-- ui-dialog -->
	<div id="example1">Hello, World!</div>
	<br />
	<button onclick="$('#example1').dialog();$(this).hide().next().show();">创建一个 Dialog</button>
                
</body>
</html>