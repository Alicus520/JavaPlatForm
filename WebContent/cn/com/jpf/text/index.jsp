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
		$("removemoreline").click(function(){
			alert('123');
		});
	});
</script>
</head>
<body>
	<div>
		<div id="toolbar">
			<input id="removemoreline" name="removemoreline" value="removemoreline" type="button"/>
		</div>
		<div id="main">
			<div id="left" class="float:left">
				source:
				<textarea id="source" rows="20" cols="50"></textarea>
			</div>
			<div id="right" class="float:right">
				result:
				<textarea id="result" rows="20" cols="50">
				
				</textarea>
			</div>
		</div>
	</div>
</body>
</html>