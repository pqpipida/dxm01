<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import ="com.dxm.edu.entity.UserInfoEntity"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

UserInfoEntity userinfoEntity=(UserInfoEntity)request.getSession().getAttribute("user");
String username=userinfoEntity.getUsername();

%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>电厂侧 | Lock Screen</title>

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

	<link href="media/css/lock.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body>

	<div class="page-lock">

		<div class="page-logo">

			<a class="brand" href="index.html">

			<img src="media/image/logo-big.png" alt="logo" />

			</a>

		</div>

		<div class="page-body">

			<img class="page-lock-img" src="media/image/profile.jpg" alt="">

			<div class="page-lock-info">

				<h1><%=userinfoEntity.getUsername()%></h1>

				<span>email:<%=userinfoEntity.getEmail()%></span>

				<!-- <span><em>Locked</em></span>  -->

				<form class="form-search" action="getlocklogin" method="post">
                    
					<div class="input-append">
					    <input type="hidden" class="m-wrap"  name ="username" value="${user.username}">
						<input type="text" class="m-wrap" placeholder="Password" name ="password">

						<button type="submit" class="btn blue icn-only"><i class="m-icon-swapright m-icon-white"></i></button>

					</div>

					<div class="relogin">

						<a href="login1">Not <%=userinfoEntity.getUsername()%> ?</a>

					</div>

				</form>

			</div>

		</div>

		<div class="footer">

		<div class="footer-inner">

			2018 &copy; 系统 by dxm.

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>
	</div>

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

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

	<script src="media/js/jquery.backstretch.min.js" type="text/javascript"></script>

	<!-- END PAGE LEVEL PLUGINS -->   

	<script src="media/js/app.js"></script>  

	<script src="media/js/lock.js"></script>      

	<script>

		jQuery(document).ready(function() {    

		   App.init();

		   Lock.init();

		});

	</script>
<script>

    //对应后台返回的提示
    if ('${result}' != '') {
        if ('${result}' == 0)
            alert('用户名或密码错误！')
        /* if ('${result}' == 1)
            alert('密码错误！') */
        if ('${result}' == 2) {
            alert('登录成功！')
            location.href = 'index2'
        }
    }
</script>
	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>