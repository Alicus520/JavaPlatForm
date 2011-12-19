<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "common/load-css.jsp" %>
<%@ include file = "common/load-jquery.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JavaPlatForm</title>
</head>
<body>
	<div>
		<div class="leftbanner" >
			<a href="web/init.do" >	网页 </a> <span class="margin_vertical_virgule">|</span>  
			<a href="photo/init.do" > 	图片 </a>    <span class="margin_vertical_virgule">|</span>   
			<a href="email/init.do" >  邮件  </a>    <span class="margin_vertical_virgule">|</span>   
			<a href="blog/init.do" >  博客  </a>    <span class="margin_vertical_virgule">|</span>     
			<a href="ftp/init.do" > FTP </a>   <span class="margin_vertical_virgule">|</span>  
			<a href="wiki/init.do" > WIKI </a>   <span class="margin_vertical_virgule">|</span>  
			<a href="vedio/init.do"> 视频 </a>   <span class="margin_vertical_virgule">|</span> 
			<a href="voice/init.do"> 语音 </a>   <span class="margin_vertical_virgule">|</span>   
			<a href="finance/init.do">Finance</a> <span class="margin_vertical_virgule">|</span>   
			<a href="demo/init.do">Demo</a> <span class="margin_vertical_virgule">|</span>   
			<a href="/login.jsp"> 其它 </a>
		</div>
	    <div class="rightbanner" >
	    	<a href="index.do" class="tt3" target="_top">返回首页</a> | 
	    </div>
	</div>
	<br/>
	<hr style="hr "/>

	<div align="center" class="search_form">
  	<form action="web/search.do" method="get">
 		<img src="images/index/logo.gif" border="0" hspace="1" vspace="2"/>
 		<br/><br/>
  			<input id="keywords" type="text" name="keywords" class="search_input" width="50"/>
  			<span class="search_advance"><a href="searchadvanced.jsp" >高级搜索</a></span>
  			<br/><br/>
  			<input type="submit" name="search" value="Search" class="search_button" /> 
  		</form>
  	</div>
</body>
</html>