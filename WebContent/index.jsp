<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
    	<title>JavaPlatForm</title>
        <script>
	        $('document').ready(function(){
	            $('.menu').fixedMenu();
	        });
        </script>
    </head>
    <body>
    <div class="menu">
        <ul>
            <li>
                <a href="#">Web<span class="arrow"></span></a>
                 <ul>
                    <li><a href="web/normal.do">Normal</a></li>
                    <li><a href="web/advanced.do">Advanced</a></li>
                </ul>
            </li>
            <li>
                <a href="#">Photo<span class="arrow"></span></a>
                 <ul>
                    <li><a href="photo/normal.do">Normal</a></li>
                    <li><a href="photo/advanced.do">Advanced</a></li>
                </ul>
            </li>
            <li>
                <a href="#">Email<span class="arrow"></span></a>
                <ul>
                    <li><a href="email/client.do">Client</a></li>
                </ul>
            </li>
             <li>
                <a href="wiki/init.do">Wiki</a>
            </li>
             <li>
                <a href="finance/init.do">Finance</a>
            </li>
             <li>
                <a href="music/init.do">Music</a>
            </li>
            <li>
                <a href="vedio/init.do">Vedio</a>
            </li>
            <li>
                <a href="#">Est<span class="arrow"></span></a>
                <ul>
                    <li><a href="est/text.do">Text</a></li>
                </ul>
            </li>
            <li>
                <!-- 
               	<a href="demo/init.do?method=getMessageFromResource">Demo</a>
                 -->
                <a href="demo/index.do">Demo</a>
            </li>
            <li>
                <a href="#">Others<span class="arrow"></span></a>
                <ul>
                    <li><a href="other/javaonline.do">JavaOnline</a></li>
                    <li><a href="other/webgame.do">Web Games</a></li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="login">
        <ul>
            <li>
                <a href="admin/login.do">Login</a>
            </li>
         </ul>
    </div>
   	<br />
   	<br />
   	<div align="center" class="search_form">
  		<form action="web/search.do" method="post">
	 		<img src="images/index/logo.gif" border="0" hspace="1" vspace="2"/>
	 		<br/><br/>
  			<input id="keywords" type="text" name="keywords" class="search_input"/>
  			<span class="search_advance"><a href="searchadvanced.jsp" >Advanced</a></span>
  			<br/><br/>
  			<input type="submit" name="search" value="Search" class="search_button"/> 
  		</form>
  	</div>
    </body>
</html>