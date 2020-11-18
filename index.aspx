﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UEditor.index" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>UEditor 1.4.3.3示例</title>
	<script type="text/javascript" src="ueditor.config.js" charset="utf-8"></script>
    <script type="text/javascript" src="ueditor.all.min.js" charset="utf-8"></script>
	<link type="text/css" rel="Stylesheet" href="WordPaster/css/WordPaster.css"/>
    <link type="text/css" rel="Stylesheet" href="WordPaster/js/skygqbox.css" />
    <script type="text/javascript" src="WordPaster/js/json2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/jquery-1.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/skygqbox.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/w.edge.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/w.app.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/w.file.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/w.js" charset="utf-8"></script>
</head>
<body>
    <p><a target="_blank" href="index-jqueryui.htm">jquery ui弹窗示例（支持ie6+）</a></p>
    <p><a target="_blank" href="index-layer.htm">layer弹窗示例（支持ie8+）</a></p>
    <p><a target="_blank" href="index-vue.htm">vue示例</a></p>
	<p><a target="_blank" href="index2.htm">Latex公式插件示例</a></p>
	<p><a target="_blank" href="index-scp.htm">截屏示例</a></p>
	<textarea name="后台取值的key" id="myEditor">这里写你的初始化内容</textarea>
	<script type="text/javascript">
        var pasterMgr = WordPaster.getInstance({
            PostUrl: "http://localhost:8891/upload.aspx",
            Cookie: 'ASP.NET_SessionId=<%=Session.SessionID%>'
        });
        pasterMgr.Load();//加载控件

	    var ue = UE.getEditor('myEditor');

	    ue.ready(function ()
	    {
	        //设置编辑器的内容
	        ue.setContent('hello');
	        //获取html内容，返回: <p>hello</p>
	        var html = ue.getContent();
	        //获取纯文本内容，返回: hello
	        var txt = ue.getContentTxt();
	        pasterMgr.SetEditor(ue);

	        //WordPaster快捷键 Ctrl + V
	        ue.addshortcutkey({
	            "wordpaster": "ctrl+86"
	        });
	    });

	</script>
</body>
</html>

