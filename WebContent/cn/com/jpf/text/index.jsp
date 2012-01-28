<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Text Page</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/jquery/jquery-1.3.2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/cn/com/jpf/text/index.js"></script>
</head>
<body>
	<div>
		<div id="leftbar" style="float:left;width:50px;margin-left:0px">
			<ul>
	            <li>
	            	<a href="../index.do">index</a>
	                <a href="">removeMoreLine</a>
	            </li>
	         </ul>
		</div>
		<div id="main" style="float:left;margin-left:200px;maring-top:0;margin-right:10px">
			<div id="wrapsource">
				<textarea rows="15" cols="120" id="source" name="source"></textarea>
			</div>
			<div id="transfer" align="right">
				<input type="button" id="remove" name="remove" value="remove"/>
			</div>
			<div id="wrapresult">
				<textarea rows="15" cols="120" id="result" name="result"></textarea>
			</div>
		</div>
	</div>
</body>
</html>