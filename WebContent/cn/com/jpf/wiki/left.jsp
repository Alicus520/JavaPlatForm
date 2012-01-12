<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>Tree</title>
		<script type="text/javascript" src="../javascript/dtree.js"></script>
		<script type="text/javascript" src="../javascript/jquery.js"></script>
		<link rel="stylesheet" href="../css/dtree.css" type="text/css"></link>
		<link rel="stylesheet" href="../css/default.css" type="text/css" />
		<script type="text/javascript">
			tree = new dTree('tree');//创建一个对象.
			$.ajax({ 
					url:'../wiki/tree.do?method=getTree', 
					type:'post', //数据发送方式 
					dataType:'xml', //接受数据格式 
					error:function(json){
							alert(json);
  							     alert( "not lived!");
						  },
					async: false,
					success: function(xml){
						    $(xml).find("node").each(function(){ 
							  var nodeId=$(this).attr("nodeId");  
							  var parentId=$(this).attr("parentId");  
							  var hrefAddress=$(this).attr("hrefAddress");  
							  var nodeName=$(this).text(); 
							  tree.add(nodeId,parentId,nodeName,"filelist.do?method=getFileList","","right","","",false);
	                     });
	                }
			  });
	    </script>
	</head>
	<body>
         <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
            <tr>
              <td bgcolor="#EFEFEF">
                <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td height="0"></td>
                  </tr>
                  <tr bgcolor="#FFFFFF">
                    <td style="BORDER-LEFT: #8A8A8A 1px solid; LINE-HEIGHT: 20px; font-family:Verdana, Arial, Helvetica, sans-serif" bgcolor="#FFFFFF" valign="top"> &nbsp;<font color="#FF0000">0</font>-<font color="#FF0000">1</font>-<font color="#FF0000">2</font>-<font color="#FF0000">3</font>-<font color="#FF0000">4</font>-<font color="#FF0000">5</font>-<font color="#FF0000">6</font>-<font color="#FF0000">7</font>-<font color="#FF0000">8</font>-<font color="#FF0000">9</font>--------------------&gt;<br>
			 			<script type="text/javascript"> 
			 				document.write(tree);
			 			</script>
		 		    </td>
                  </tr>
                  <tr>
                    <td height="10"></td>
                  </tr>
              </table></td>
            </tr>
        </table>
	</body>
</html>