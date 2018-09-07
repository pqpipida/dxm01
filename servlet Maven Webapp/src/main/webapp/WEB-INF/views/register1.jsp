
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ path + "/";
%>
<head>

	<meta charset="utf-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>">

	<title>会员中心 | Register Page</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link href="media/css/register.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<!-- <body id ="login" class="background-color: #444 !important;">


	<div class="logo"><font face="隶书" size="+3" color="#FFFFF "> 电厂侧</font>
		<br/>
       <h1>用户登录</h1>
		<img src="media/image/logo-big.png" alt="" />

       </div>

	END LOGO



<div style="background-color:#fff; width: 291px;margin: 0 auto; margin-bottom: 0px;padding: 30px;  padding-top: 20px;  padding-bottom: 15px; "  >  
	 -->
	<body class="register" style="margin: 0 auto;">

	<div align="center""><font face="隶书" size="+3" color="#FFFFF "> 电厂侧</font>
		<br/>
       
		<!--<img src="media/image/logo-big.png" alt="" /> -->

</div>

	<!-- END LOGO -->

	<!-- BEGIN LOGIN -->

	<div style="
	background: url(../image/bg-white-lock.png) repeat; width: 291px;
  margin: 0 auto; 
  margin-bottom: 0px;
  padding: 30px;  
  padding-top: 20px;  
  padding-bottom: 15px;">
 <!-- 	END FORGOT PASSWORD FORM -->

		<!-- BEGIN REGISTRATION FORM -->

		<!--  <form  id=register-form class=" display: none;" action="gosaveRegister" Method="post"> -->
 <form class="form-vertical register-form" action="gosaveRegister-2" Method="post">

			<h3 class=" color: #000;">注 册</h3>
			<div class="alert alert-error hide">

				<button class="close" data-dismiss="alert"></button>

				<span>Enter correct username and password.</span>

			</div>

			<!-- <p>Enter your account details below:</p>-->
			<div id=control-group class="margin-bottom: 20px !important;">

				<label class="control-label visible-ie8 visible-ie9">用户名</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-user"></i>

						<input class="width: 180px;" type="text" placeholder="Username" name="username"/>

					</div>

				</div>

			</div>
			<div id=control-group class="margin-bottom: 20px !important;">

				<label class="control-label visible-ie8 visible-ie9">姓名</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-user"></i>

						<input class="width: 180px;" type="password" placeholder="Realname" name="RealName"/>

					</div>

				</div>

			<div id=control-group class="margin-bottom: 20px !important;">

				<label class="control-label visible-ie8 visible-ie9">密码</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-lock"></i>

						<input class="width: 180px;" type="password" id="register_password" placeholder="Password" name="password"/>

					</div>

				</div>

			</div>

			<div id=control-group class="margin-bottom: 20px !important;">

				<label class="control-label visible-ie8 visible-ie9">确认密码</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-ok"></i>

						<input class="width: 180px;" type="password" placeholder="Re-Password" name="rpassword"/>

					</div>

				</div>

			</div>

			<div id=control-group class="margin-bottom: 20px !important;">

				<!-- ie8, ie9 does not support html5 placeholder, so we just show field title for that -->

				<label class="control-label visible-ie8 visible-ie9">Email</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-envelope"></i>

						<input class="width: 180px;" type="text" placeholder="Email" name="email"/>

					</div>

				</div>

			</div>
					 <div id=control-group class="margin-bottom: 20px !important;">

				<label class="control-label visible-ie8 visible-ie9">角色</label>

				<div class="controls">

					<div class="input-icon left">

						<i class="icon-user"></i>

						<input class="width: 180px;" type="password" placeholder="role" name="role"/>

					</div>

				</div>

			</div>

			<div id=control-group class="margin-bottom: 20px !important;">

				<div class="controls">

					<label class=" font-size: 13px;">

					<input type="checkbox" name="tnc"/> 我同意 <a href="#">服务条款</a> 和 <a href="#">隐私政策</a>

					</label>  

					<div id="register_tnc_error"></div>

				</div>

			</div>

			<div class="border: 0;margin-bottom: 0;padding-bottom: 0px;">

				<button id="register-back-btn" type="button" class="btn">

				<i class="m-icon-swapleft"></i>  返回

				</button>

				<button type="submit" id="register-submit-btn" class="btn green pull-right">

				注册 <i class="m-icon-swapright m-icon-white"></i>

				</button>            

			</div>

		</form> 												
	<!-- END REGISTRATION FORM -->

	</div> 

<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->   

<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>  

<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

<script src="media/js/jquery.validate.min.js" type="text/javascript"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="media/js/app.js" type="text/javascript"></script>

<script src="media/js/register.js" type="text/javascript"></script>      

	<!-- END PAGE LEVEL SCRIPTS --> 
 
  <script>

		jQuery(document).ready(function() {     

		  App.init();

		  Register.init();

		});

	</script>  

	<!-- END JAVASCRIPTS 

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>
 
 
 