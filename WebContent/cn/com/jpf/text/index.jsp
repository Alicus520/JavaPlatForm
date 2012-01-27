<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/jquery/jquery-1.3.2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/cn/com/jpf/text/index.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	});

	function remove(){


		
	}
</script>
</head>
<body>
	<div>
		<div id="toolbar">
			<input id="remove" name="remove" value="remove" type="button" onclick="remove();"/>
		</div>
		source:
		<div id="main">
			<div id="left" class="float:left">
				<textarea id="source" rows="20" cols="50"></textarea>
			</div>
		</div>
	</div>
</body>
</html>