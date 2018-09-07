<%@ page language="java" import="java.util.*,java.net.*" pageEncoding="utf-8"%>
<%@ page import ="com.dxm.edu.common.model.ResultDTO"%>
<%@ page import ="com.dxm.edu.entity.UserInfoEntity"%>
<%@ page import ="com.dxm.edu.service.UserInfoService"%>
<%@ page import ="com.dxm.edu.service.impl.UserInfoServiceImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ path + "/";
%>
<head>
<base href="<%=basePath%>">
<title>会员登录 - GDSITE </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no6-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
<link href="static/css/reset.css" rel="stylesheet">
<link href="static/css/common.css" rel="stylesheet">
<link href="static/css/index.css" rel="stylesheet">

 <link href="static/css/slides_index.css" rel="stylesheet">
<script src="static/js/jquery.js" type="text/javascript"></script>
<script src="static/js/front.js" type="text/javascript"></script>
<script src="static/js/placeholder.js"></script>


 
<script type="text/javascript">
$(function() {
	if(window !=top){  
	    top.location.href=location.href;  
	} 
	$("#jvForm").validate();
});
</script>
<style>
.wrapper .daohang .nav .userlogo dl dt strong {
	font-family: Cambria, Hoefler Text, Liberation Serif, Times, Times New Roman, serif;
}
</style>

</head>

<body>

  <div class="daohang">
 	<div class="nav">
		    <div class="logo">
		        <dl>
		            <dt><img alt="Logo" src="static/img/dclogo.png" width="376.125" height="85.5"></dt>
	              <h1>&nbsp;</h1>
		           
                 
              </dl>
		
		    </div>
		    <div class="userlogo">
		        <dl>
		            <dt><img src="static/img/touxiang.png" width="60" height="60" alt=""/></dt>
		            <dd>&nbsp;</dd>
					<a class="top_li_a ser" href="gotodclogin.action">登录</a>/<a class="ser" href="gotodcRegister.action">注册</a>
              </dl>
		    </div>
      <div class="ulli">
	
          <ul>
		            <li><a href="index.jsp" target="_self"  href="dcindex.action" target="_self">首页</a></li>
		            <li><a href="/queryTradingCenter.jspx" target="_self">交易中心</a></li>
		            <li><a href="/newsCenter.jspx" target="_self">资讯中心</a></li>
		            <li><a href="/logisticsindex.jspx" target="_self">交易中心</a></li>
		            <li><a class="lili-a" href="/dcindex.jspx" target="_self">会员中心</a></li> 
		            <li></li>
			  
		   
      </ul></div> 
    </div>
    
	 
  </div>
<!--   <form id="jvForm" action="login"  method="post"> -->
<%--  <form method="post" id="jvForm" action="${pageContext.request.contextPath}/login.action"> --%> 
 <%--  <form id="jvForm" action="${pageContext.request.contextPath}/gologin.action" method="post" onsubmit="return logincheck();">  --%>
<!-- <form id="jvForm" onsubmit="return checkinput()" action="/login.jsp?returnUrl=/dcindex.jsp" method="post" novalidate="novalidate">
 -->
<!--   <form id="jvForm" onsubmit="return checkinput()" action="" method="post" novalidate="novalidate">
 -->
  
 <!-- <form id="loginFm" onsubmit="return checkinput()" action="/dclogin.jsp?returnUrl=dcindex.jsp&amp;failureUrl=f.jsp" method="post" novalidate="novalidate">
 -->
   
  <form id="jvForm" action="getlogin" method="post">		
 <div class="conlogin">
        <div class="login_ban">
        <img src="static/img/denglu.jpg"></div>
        <div class="login">
          <h1><code class="hite"><span class="login_ban"><img src="static/img/huiyuan.png"></span></code></h1>
            <div>
                <span><img src="static/img/zhanghao.png"></span>
                
                	<input name="username" class="required" id="username" type="text" placeholder="请输入您的账号" value="" autocomplete="off" vld="{required:true,messages:{required:''}}">
                
            </div>
            <img class="right_img" src="static/img/xiaohongdian.png">
			
            <div>
                <span><img src="static/img/mima.png"></span>
                <code class="hite">
                <input name="password" id="password" type="password" placeholder="请输入您的密码" value="" autocomplete="off" vld="{required:true,messages:{required:''}}">
              </code>
            </div>
            <img class="right_img" src="static/img/xiaohongdian.png">
        
			
			  <label style="color: red;">
			  </label>
			
			
            <div class="but">
                <button type="submit">立即登录(会员)</button>
            </div>
          <span>
           <a class="h6_a1 forgot-password" href="/member/forgot_password.jspx" target="_blank">忘记密码？</a>
           <a class="h6_a2" href="register.jsp">注册</a></span>
        </div>
    </div>
</form>
<p>反馈信息：${result}</p>
<div class="clear-10"></div>
 <div class="footer">
        <div>
            <p class="footer_p">
           	<a href="/service/index.jhtml">客服中心</a>|<a href="/contact/index.jhtml">联系我们</a></p>
            <p>网站版权归中国国电集团公司所有    京ICP备 05053479号-2 |京公网安备110102005596号-1</p>
            <p>地址：北京市昌平区未来科技城  邮编：102209 电话：400-020-8000（非工作时间：15011089832）、010-56978755 传真： 010-56978760</p><p>电子邮箱：fuel@powerec.net</p>
        </div>
 </div>



</body>

<script>

    //对应后台返回的提示
    if ('${result}' != '') {
        if ('${result}' == 0)
            alert('用户密码错误！')
       /*  if ('${result}' == 1)
            alert('密码错误！') */
        if ('${result}' == 2) {
            alert('登录成功！')
            location.href = 'dcindex.action'
        }
    }
</script></html>

