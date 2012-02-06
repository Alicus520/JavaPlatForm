<!DOCTYPE html>
<html dir="ltr" lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>easyDialog v2.0 演示与说明</title>
<meta name="keywords" content="弹出层,javascript弹出层,easyDialog,dialog" />
<meta name="description" content="easyDialog是一款体积小巧、使用简便的javascript弹出层组件。" />
<style>
* { margin:0;padding:0; }
body { background:#fff; font:12px/150% "Lucida Sans Unicode", "Lucida Grande", sans-serif; }
a{ color:#09c; }
a:hover{ color:#000; text-decoration:none; }
.f_l{ float:left; }
.f_r{ float:right; }
.header{ background:#f5f5f5; height:60px; border-bottom:1px solid #e5e5e5; width:100%; }
.header_box{ width:960px; margin:0 auto; overflow:hidden; line-height:60px; }
.header_box .logo{ font-size:24px; font-weight:400; color:#333; height:30px; line-height:30px; float:left; border-right:2px solid #c9c9c9; margin-top:15px; padding-right:20px; }
.header_box .sub_tit{ font-size:22px; font-weight:400; font-family:'宋体'; color:#666; height:30px; line-height:30px; overflow:hidden; margin-top:15px; float:left; padding-left:20px; }
.header_box .f_r{ font-size:12px; margin:5px -10px 0 0; }
.header_box .f_r a{ margin-right:10px; }
.wrapper{ width:960px; margin:2% auto 0; padding-bottom:100px; }
.wrapper h3{ font-size:14px; font-weight:700; color:#333; height:30px; line-height:30px; font-family:"Microsoft yahei", Arial; margin-bottom:5px; }
.code_box{ width:960px; overflow:hidden; border-bottom:1px solid #e1e1e1; padding-bottom:20px; margin-bottom:40px; }
.code_box pre{ width:340px; background:#f5f5f5; padding:10px 20px; font-family:"Consolas","Courier New",Courier,mono; font-size:13px; line-height:18px; border:1px solid #eee; float:left; color:#333; }
.code_box .run{ border:1px solid; border-radius:2px; cursor:pointer; font-family:"Microsoft yahei", Arial; font-size:12px; width:50px; height:22px; line-height:22px; display:block; text-align:center; border-color:#c3c3c3; background:#ececec; color:#333; background:-webkit-gradient(linear,center bottom,center top,from(#ececec),to(#f4f4f4)); background:-moz-linear-gradient(90deg,#ececec,#f4f4f4); text-decoration:none; }
.con_right{ width:558px; float:left; padding-left:20px; }
.con_right p{ font-size:13px; color:#515151; margin-bottom:10px; line-height:24px; }

.param_tb{ width:960px; border-collapse:collapse; border-bottom:1px solid #e1e1e1; border-left:1px solid #e1e1e1; font-size:13px; color:#333; }
.param_tb tr td{ line-height:20px; padding:5px 0; text-align:center; border-right:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1; }
.param_tb tr .t_l{ text-align:left; padding:5px 10px; }
.param_tb .even td{ background:#f5f5f5; }
.param_tb th{ background:#f5f5f5; line-height:40px; border-right:1px solid #e1e1e1; font-family:"Microsoft yahei", Arial; font-size:14px; font-weight:700; border-top:2px solid #4D90F0; }
.param_tb p{ line-height:20px; padding:5px 0; }

.html_code{ margin-top:50px; }
.html_code p{ font-size:13px; margin-bottom:10px; }
.html_code pre{ width:918px; background:#f5f5f5; padding:10px 20px; font-family:"Consolas","Courier New",Courier,mono; font-size:13px; line-height:18px; border:1px solid #eee; color:#333; margin-bottom:20px; }

#imgBox{ border:1px solid #d3d3d3; padding:5px; background:#fff; width:600px; height:375px; }
</style>
<link rel="stylesheet" href="easydialog.css" />
</head>
<body>
<div class="header">
	<div class="header_box">
		<h1 class="logo">easyDialog v2.0</h1>
		<h2 class="sub_tit">演示与说明</h2>
		<span class="f_r">by : <a href="http://stylechen.com">Stylechen.com</a></span>
	</div>
</div>
<div class="wrapper">
	<h3>使用默认的HTML模板</h3>

<div class="code_box">
<pre>
var btnFn = function(){
  alert( e.target );
  return false;
};

easyDialog.open({
  container : {
    header : '弹出层标题',
    content : '欢迎使用easyDialog : )',
    yesFn : btnFn,
    noFn : true
  }
});
</pre>
<div class="con_right">
	<p>默认的HTML模板分成3个部分<br />
		<b>header：</b>包含弹出层的标题和关闭按钮<br />
		<b>conent：</b>包含弹出层的内容<br />
		<b>footer：</b>包含确定和取消按钮
	</p>
	<p>如果header没有内容将不显示，content必须要有内容，footer没有2个按钮也不显示。<br />
		<b>yesFn：</b>确定按钮的回调函数，回调函数返回false将不关闭弹出层。<br />
		<b>noFn：</b>取消按钮的回调函数，回调函数返回false将不关闭弹出层，取消按钮的回调函数也同样会绑定在关闭按钮上，如果参数不是函数而是true，那么取消按钮就只有关闭弹出层的功能。<br />
		如果没有给按钮传回调函数，按钮将不显示。
	</p>
	<a href="javascript:void(0)" class="run" id="demoBtn1">运行</a>
</div>
</div>

	<h3>默认模板只有content</h3>

<div class="code_box">
<pre>
easyDialog.open({
  container : {
    content : '弹出层将在2秒后关闭...'
  },
  autoClose : 2000
});
</pre>
<div class="con_right">
	<p>默认模板如果只有content有内容，将不显示header和footer部分，将显示最简模式。<br />
		<b>autoClose：</b>自动关闭窗口，单位为毫秒(ms)。
	</p>
	<a href="javascript:void(0)" class="run" id="demoBtn2">运行</a>
</div>
</div>

	<h3>自定义弹出层</h3>

<div class="code_box">
<pre>
&lt;div id="imgBox" style="display:none"&gt;
&nbsp;&nbsp;&lt;img src="test_img.jpg" alt="" /&gt;
&lt;/div&gt;

easyDialog.open({
  container : 'imgBox',
  autoClose : 2000,
  fixed : false
});
</pre>
<div class="con_right">
	<p>自定义弹出层时，需要先将HTML结构添加到页面中，然后设置其隐藏(display:none)，传参必须为id。<br />
		<b>fixed：</b>该参数为false时，弹出窗口为绝对定位(不跟随页面的滚动而滚动)，为true时，弹出窗口为固定定位(跟随页面的滚动而滚动)。
	</p>
	<a href="javascript:void(0)" class="run" id="demoBtn3">运行</a>
</div>
</div>

<h3>遮罩层</h3>

<div class="code_box">
<pre>
easyDialog.open({
  container : {
    header : '没有遮罩层',
    content : '欢迎使用easyDialog : )'
  },
  overlay : false
});
</pre>
<div class="con_right">
	<p><b>overlay：</b>该参数为false时，将不显示遮罩层，没有遮罩层的情况下可以方便对页面继续进行操作。</p>
	<a href="javascript:void(0)" class="run" id="demoBtn4">运行</a>
</div>
</div>

<h3>跟随定位</h3>

<div class="code_box">
<pre>
easyDialog.open({
  container : {
    header : '跟随定位',
    content : '弹出窗口可以跟随某元素绝对定位'
  },
  follow : 'demoBtn5',
  followX : -137,
  followY : 24
});
</pre>
<div class="con_right">
	<p><b>follow：</b>被跟随元素，参数可以是元素的id，也可以是DOM对象。<br />
		<b>followX：</b>相对于被跟随元素的X轴偏移。<br />
		<b>followY：</b>相对于被跟随元素的X轴偏移。<br />
	</p>
	<a href="javascript:void(0)" class="run" id="demoBtn5">运行</a>
</div>
</div>

<h3>关闭拖拽</h3>

<div class="code_box">
<pre>
easyDialog.open({
  container : {
    header : '关闭拖拽',
    content : '欢迎使用easyDialog : )'
  }
  drag : false
});
</pre>
<div class="con_right">
	<p><b>drag：</b>该参数为false时将关闭拖拽的功能。<br />
	如果是自定义弹出层，要实现拖拽需要满足2个条件，首先要确保drag为true，然后需要一个id为“<b>easyDialogTitle</b>”的DOM元素。
	</p>
	<a href="javascript:void(0)" class="run" id="demoBtn6">运行</a>
</div>
</div>

<h3>关闭弹出层</h3>

<div class="code_box">
<pre>
easyDialog.close();
</pre>
<div class="con_right">
	<p>调用easyDialog.close()方法可以关闭当前的弹出层，另外使用ESC键也可以关闭弹出层，如果不想使用ESC键来关闭弹出层设置<b>lock</b>为true即可。</p>
	<p>如果是自定义弹出层，也想使用关闭按钮来关闭弹出层，除了给该按钮手动绑定一个关闭弹出层的方法外，还可以添加一个id为“<b>closeBtn</b>”的DOM元素，这样不绑定事件就也可以关闭弹出层。</p>
</div>
</div>

<h3>回调函数</h3>

<div class="code_box">
<pre>
var callFn = function(){
  alert( 'hello' );
};

easyDialog.open({
  container : {
    header : '回调函数',
    content : '欢迎使用easyDialog : )'
  },
  callback : callFn
});
</pre>
<div class="con_right">
	<p><b>callback：</b>设置弹出层关闭后执行的回调函数。</p>
	<a href="javascript:void(0)" class="run" id="demoBtn7">运行</a>
</div>
</div>

<h3>参数列表</h3>
<table class="param_tb">
	<colgroup>
		<col style="width:120px" />
		<col style="width:140px" />
		<col style="width:90px" />
		<col style="width:610px" />
	</colgroup>
	<thead>
		<tr class="even">
			<th>参数</th>
			<th>参数类型</th>
			<th>默认参数</th>
			<th>参数说明</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>container</td>
			<td>String / Object</td>
			<td>null</td>
			<td class="t_l">
				<p><b>弹出窗口内容</b></p>
				<p>参数为DOM元素的id，那么弹出层内容将是自定义的，如果是object将自动创建一个默认的弹出层内容模板。</p>
				<p>内容模板的参数：</p>
				<p>header：弹出层的标题，并包含了关闭按钮，如果没有参数将不显示。</p>
				<p>content：弹出层的内容，参数可以是字符串，也可以是HTML代码。</p><br />
				<p>yesFn：确定按钮的回调函数，回调函数返回false将不关闭弹出层，回调函数的this指向easyDialog，无参数将不显示按钮。</p><br />
				<p>noFn：取消按钮的回调函数，回调函数返回false将不关闭弹出层，回调函数的this指向easyDialog，该回调函数也同样会绑定在关闭按钮上，如果参数不是函数而是true，那么取消按钮仅有关闭弹出层的功能，无参数将不显示按钮。</p>
				<p>yesText：确定按钮的文本，默认为“确定”。</p>
				<p>noText：取消按钮的文本，默认为“取消”。</p>
			</td>
		</tr>
		<tr class="even">
			<td>drag</td>
			<td>Boolean</td>
			<td>true</td>
			<td class="t_l">
				<p><b>拖拽效果</b></p>
				<p>true：启用拖拽效果。</p>
				<p>false：禁用拖拽效果。</p>
				<p>自定义弹出层，要实现拖拽需要满足2个条件，首先要确保drag参数为true，然后需要一个id为“easyDialogTitle”的DOM元素。</p>
			</td>
		</tr>
		<tr>
			<td>fixed</td>
			<td>Boolean</td>
			<td>true</td>
			<td class="t_l">
				<p><b>设置定位</b></p>
				<p>true：固定定位，弹出窗口跟随页面滚动而滚动。</p>
				<p>false：绝对定位，弹出窗口不跟随页面的滚动。</p>
			</td>
		</tr>
		<tr class="even">
			<td>overlay</td>
			<td>Boolean</td>
			<td>true</td>
			<td class="t_l">
				<p><b>设置遮罩层</b></p>
				<p>true：显示遮罩层，不可对页面其他元素进行操作。</p>
				<p>false：不显示遮罩层，可以对页面其他元素进行操作。</p>
			</td>
		</tr>
		<tr>
			<td>follow</td>
			<td>String / Object</td>
			<td>null</td>
			<td class="t_l">
				<p><b>跟随定位</b></p>
				<p>设置弹出窗口跟随某元素进行绝对定位，跟随定位时将不显示遮罩层，参数可以是元素id也可以是DOM对象。</p>
			</td>
		</tr>
		<tr class="even">
			<td>followX</td>
			<td>Number</td>
			<td>0</td>
			<td class="t_l">
				<p>设置跟随定位时，相对于被跟随元素的X轴偏移，单位为px，传参时无需带单位。</p>
			</td>
		</tr>
		<tr>
			<td>followY</td>
			<td>Number</td>
			<td>0</td>
			<td class="t_l">
				<p>设置跟随定位时，相对于被跟随元素的Y轴偏移，单位为px，传参时无需带单位。</p>
			</td>
		</tr>
		<tr class="even">
			<td>lock</td>
			<td>Boolean</td>
			<td>false</td>
			<td class="t_l">
				<p><b>锁定弹出层</b></p>
				<p>true：ESC键不可以关闭弹出层。</p>
				<p>false：ESC键可以关闭弹出层。</p>
			</td>
		</tr>
		<tr>
			<td>autoClose</td>
			<td>Number</td>
			<td>0</td>
			<td class="t_l">
				<p>设置弹出层自动关闭，单位为ms，传参时无需带单位。</p>
			</td>
		</tr>
		<tr class="even">
			<td>callback</td>
			<td>Function</td>
			<td>null</td>
			<td class="t_l">
				<p>设置关闭弹出层后执行的回调函数，this指向easyDialog。</p>
			</td>
		</tr>
	</tbody>
</table>

<div class="html_code">
	<h3>默认内容模板的样式和结构</h3>
	<p>如果要自定义默认模板的样式，可以修改下载文档中的<b>easydialog.css</b>文件，下面是相应的HTML源码部分：</p>
	<pre>
&lt;div class="easyDialog_wrapper" id="easyDialogWrapper" &gt;
&nbsp;&nbsp;&lt;div class="easyDialog_content"&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;h4 class="easyDialog_title" id="easyDialogTitle"&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;a href="javascript:void(0)" title="关闭窗口" class="close_btn" id="closeBtn"&gt;&amp;times;&lt;/a&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;弹出层标题
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/h4&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;div class="easyDialog_text"&gt;欢迎使用easyDialog : )&lt;/div&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;div class="easyDialog_footer"&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button class="btn_normal" id="easyDialogNoBtn"&gt;取消&lt;/button&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button class="btn_highlight" id="easyDialogYesBtn"&gt;确定&lt;/button&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;
&nbsp;&nbsp;&lt;/div&gt;
&lt;/div&gt;</pre>
	<p>下载easyDialog：<a href="http://stylechen.com/wp-content/uploads/download/easydialog-v2.0.zip" target="_blank">http://stylechen.com/wp-content/uploads/download/easydialog-v2.0.zip</a></p>
</div>
</div>



<div id="imgBox" style="display:none"><img src="test_img.jpg" alt="" /></div>

<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/jquery/easydialog.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/css/default/jquery/easydialog.css"></script>
<script>

var $ = function(){
	return document.getElementById(arguments[0]);
};

var btnFn = function( e ){
	alert( e.target );
	return false;
};

$('demoBtn1').onclick = function(){
	easyDialog.open({
		container : {
			header : '弹出层标题',
			content : '欢迎使用easyDialog : )',
			yesFn : btnFn,
			noFn : true
		}
	});
};

$('demoBtn2').onclick = function(){
	easyDialog.open({
		container : {
			content : '弹出层将在2秒后关闭...'
		},
		autoClose : 2000
	});
};

$('demoBtn3').onclick = function(){
	easyDialog.open({
		container : 'imgBox',
		autoClose : 2000,
		fixed : false
	});
};

$('demoBtn4').onclick = function(){
	easyDialog.open({
		container : {
			header : '没有遮罩层',
			content : '欢迎使用easyDialog : )'
		},
		overlay : false
	});
};

$('demoBtn5').onclick = function(){
	easyDialog.open({
		container : {
			header : '跟随定位',
			content : '弹出层可以跟随某元素绝对定位'
		},
		follow : 'demoBtn5',
		followX : -137,
		followY : 24
	});
};

$('demoBtn6').onclick = function(){
	easyDialog.open({
		container : {
			header : '关闭拖拽',
			content : '欢迎使用easyDialog : )'
		},
		drag : false
	});
};

var callFn = function(){
	alert( 'hello' );
};

$('demoBtn7').onclick = function(){
	easyDialog.open({
		container : {
			header : '回调函数',
			content : '欢迎使用easyDialog : )'
		},
		callback : callFn
	});
};

</script>
</body>
</html>