
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery Tabs</title>
<style type="text/css">
body{background-color:#FFF;font:12px/21px Arial;margin:3em;}
h3{font-size:16px;margin-bottom:1em;}
h3 span{color:#666;font-size:14px;margin-left:14px;}
.tags{height:38px;list-style:none outside none;margin:0 0 -1px;padding:0;position:relative;}
.tags li{background-color:#EAEAEF;border:1px solid #DDD;cursor:pointer;display:inline;float:left;margin-right:6px;}
.tags li a{color:#36C;display:block;line-height:36px;padding:0 1em;text-decoration:none;}
.tags li.current{background-color:#FFF;border-bottom-style:none;font-weight:700;height:37px;}
.tags li.current a{color:#C63;outline:none;}
.panes{border:1px solid #DDD;height:200em;margin-bottom:2em;padding:1em;}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/javascript/jquery/jquery-1.6.1.min.js"></script>
<script type="text/javascript">
(function($) {
    // 插件名称 oTabs
    $.fn.oTabs = function(options) {
        // 默认值初始化
        var defaults = {
            // 默认起始显示序列
            dft: 0,
            // 默认事件延迟时间
            htime: 200,
            // 默认鼠标事件
            act: "click"
        };
        // 合并 defaults 和 options 修改并返回 defaults
        var sets = $.extend(defaults, options);

        // this 指通过当前选择器获取的 jQuery 对象
        // 选项卡标签
        var tag = $(".tags > li", this);
        // 选项卡内容
        var pane = $(".panes > div", this);

        // 起始显示标签
        tag.eq(sets.dft).addClass("current");
        // 起始显示内容
        pane.eq(sets.dft).show().siblings().hide();

        // 选项卡切换方法
        function fnTabs(obj) {
            $(obj).addClass("current").siblings().removeClass("current");
            pane.eq($(obj).index()).show().siblings().hide();
        };

        function ckTabs() {
            var obj = $(this);
            fnTabs(obj);
            return false;
        }

        // 判断是否鼠标划过，默认为鼠标单击
        if (sets.act == "mouseover") {
            var hoverTimer;
            tag.hover(function() {
                var obj = $(this);
                hoverTimer = setTimeout(function() {
                    fnTabs(obj);
                },
                sets.htime)
            },
            function() {
                clearTimeout(hoverTimer);
            });
            tag.click(ckTabs);
        } else {
            tag.click(ckTabs);
        }
    }
})(jQuery);

$(document).ready(function() {
	
    $("#tabs").oTabs();
    $("#tabs2").oTabs({
        dft: 1, // 设置起始显示序列，默认为第一页
        htime: 300, // 设置事件延迟时间，默认为延迟200毫秒执行
        act: "mouseover" // 设置鼠标事件，默认为鼠标单击
    });
});
</script>
</head>
<body>
<h3>鼠标单击</h3>
<div id="tabs">
  <ul class="tags">
    <li><a href="#">jQuery</a></li>
    <li><a href="#">Prototype</a></li>
    <li><a href="#">MooTools</a></li>
  </ul>
  <div class="panes">
    <div>Hello jQuery!
    	<textarea rows="100" cols="100"></textarea>
    </div>
    <div>Hello Prototype!</div>
    <div>Hello MooTools!</div>
  </div>
</div>
</body>
</html>
