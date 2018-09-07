<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
   
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>

	<meta charset="utf-8" />

	<title>电厂侧 | 查看公告详情</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />
	</head>
	<body >
<h1>公告详情</h1>
<p>${notice.title}</p>
<p>${notice.content}</p>
<p>${notice.time}</p>
</body>
</html>