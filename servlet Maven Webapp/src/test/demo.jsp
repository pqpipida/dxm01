
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import ="com.dxm.edu.entity.UserInfoEntity"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

UserInfoEntity userinfoEntity=(UserInfoEntity)request.getSession().getAttribute("user");

%>

<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <base href="<%=basePath%>">
	<!-- <meta charset="utf-8" /> -->

	<title>Metronic | Layouts - Horzontal & Sidebar Menu</title>

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
	
	
	
	<link href="media/css/bootstrap-fileupload.css" rel="stylesheet" type="text/css" />

	<link href="media/css/chosen.css" rel="stylesheet" type="text/css" />

	<link href="media/css/profile.css" rel="stylesheet" type="text/css" />

	<!-- END GLOBAL MANDATORY STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

	<!-- BEGIN HEADER --><!-- END HEADER -->

	<!-- BEGIN CONTAINER -->   

	<div class="page-container row-fluid" >

		<!-- BEGIN HORIZONTAL MENU PAGE SIDEBAR1 --><!-- END BEGIN HORIZONTAL MENU PAGE SIDEBAR -->

		<!-- BEGIN PAGE -->

		<div class="page-content">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>portlet Settings</h3>

				</div>

				<div class="modal-body">

					<p>Here will be a configuration form</p>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->
			
			<div class="row-fluid">

					<div class="span12">

						<!-- BEGIN STYLE CUSTOMIZER -->



						<!-- END BEGIN STYLE CUSTOMIZER --> 

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">账户管理<small></small></h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="init.do">首页</a> 

								<i class="icon-angle-right"></i>

							</li>

							<li>

								<a href="#">账户管理</a>

								<i class="icon-angle-right"></i>

							</li>

							

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<div class="row-fluid profile">

					<div class="span12">

						<!--BEGIN TABS-->

						<div class="tabbable tabbable-custom tabbable-full-width">

							<ul class="nav nav-tabs">

								<li class="active"><a href="#tab_1_1" data-toggle="tab">个人信息</a></li>

								<li><a href="#tab_1_2" data-toggle="tab">企业信息</a></li>

								<!--<li><a href="#tab_1_3" data-toggle="tab">个人信息</a></li>-->

								<li><a href="#tab_1_4" data-toggle="tab">用户管理</a></li>

								<li><a href="#tab_1_6" data-toggle="tab">CA管理</a></li>

							</ul>

							<div class="tab-content">

								<div class="tab-pane row-fluid profile-account active" id="tab_1_1">
									
									
								</div>

								<!--end tab-pane-->

								<div class="tab-pane profile-classic row-fluid" id="tab_1_2">

									

								</div>

								<!--tab_1_2-->

								<div class="tab-pane" id="tab_1_4">
								<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption"><i class="icon-cogs"></i>用户管理</div>
								
						

							  <div class="tools">

									<a href="javascript:;" class="collapse"></a>

									<a href="#portlet-config" data-toggle="modal" class="config"></a>

									<a href="javascript:;" class="reload"></a>

									<a href="javascript:;" class="remove"></a>

								</div>

							</div>
							
							<div class="portlet-body">
							  <table class="table table-hover"  id="userstable">
								
									 <div class="btn-group" >

										<button id="adduser" class="btn green"  onclick="showfrm()">

										Add New <i class="icon-plus"></i>

										</button>

									</div>
								
									<tr>
										<th >序号</th>
										<th >姓名</th>
										<th >用户名</th>
										<th >部门</th>
										<th >角色</th>
										 <th >操作</th> 
								   </tr>
								   
								<!-- 	<tbody>

										

									</tbody> -->
									<%-- <c:forEach items="${noticelist}" var="item" >
										<tr>
											<td>${item.noticeid}</td> 
											<td>${item.title}</td>
											<td>${item.time}</td>
											<td>${item.time}</td>
											<td>${item.time}</td>

											<td>
											<a href="isdelete.do?id=${item.noticeid}">修改</a>

											/<a href="isdelete.do?id=${item.noticeid}">删除</a>
											/<a href="isdelete.do?id=${item.noticeid}">修改密码</a>
											</td>               	        			
										</tr>
									</c:forEach>  --%>

									</table>

							   </div>
							</div>
								

								</div>

								<!--end tab-pane-->

								<div class="tab-pane row-fluid" id="tab_1_6">

								</div>

								<!--end tab-pane-->

							</div>

						</div>

						<!--END TABS-->

					</div>

				</div>

				<!-- END PAGE CONTENT-->

			</div>

			<!-- END PAGE CONTAINER--> 

		</div>

		<!-- END PAGE -->    

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

	<script type="text/javascript" src="media/js/bootstrap-fileupload.js"></script>

	<script type="text/javascript" src="media/js/chosen.jquery.min.js"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="media/js/app.js"></script>      

	<!-- END PAGE LEVEL SCRIPTS -->

 <script>

		jQuery(document).ready(function() {       
		

        testResponseBody();
       
		 App.init();

		});


function testResponseBody(){
	$.post("${pageContext.request.contextPath}/userstable",null,
	
			function(data){
		$.each(data,function(){
		
			var tr  = $("<tr>");
            $("<td/>").html(this.userid).appendTo(tr);
            $("<td/>").html(this.realname).appendTo(tr);
            $("<td/>").html(this.username).appendTo(tr);
            $("<td/>").html(this.department).appendTo(tr);
            $("<td/>").html(this.role).appendTo(tr);
            $("<td/>"). html("编辑").appendTo(tr);
            $("#userstable").append(tr);
        })
	},"json");
	
}
function showfrm(){
			$('#myModal').modal('show');
		}
</script>
 <!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							修改密码
						</h4>
					</div>
					<div class="modal-body">
						
						<form action="saveUserInfo" method="post">
						
						<%--  <label class="control-label">姓名</label>

						<input type="text"  style="width:150px;"  name="realname"   placeholder="请输入数字、汉字、字母" required="required" maxlength="20" onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')"/>
						
                                                                
						<label class="control-label">用户名</label>
						<input type="hidden"  style="width:150px;"name="userid"  value="${user.userid}" />
																
						<input type="text"  style="width:150px;" name="username" placeholder="请输入数字、汉字、字母" required="required" maxlength="8" onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')"/>
						
						
						<label class="control-label">旧密码</label> 

						<input type="text"  style="width:150px;"  name="password"  placeholder="请输入数字、字母" required="required" maxlength="17" onkeyup="value=value.replace(/[\W]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>

						
						  --%>
								
<!-- 
						 <label class="control-label">新密码</label> 

						<input type="text" style="width:150px;"  name="password" placeholder="请输入数字、字母" required="required" maxlength="17" onkeyup="value=value.replace(/[\W]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>

						 <span>*</span>
																
						<label class="control-label">确认新密码</label> 

						<input type="text"  style="width:150px;"  name="password" placeholder="请输入数字、字母" required="required" maxlength="17" onkeyup="value=value.replace(/[\W]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>

						 <span>*</span> -->
						</form> 
						
						</div>
						<div class="modal-footer">
						<button type="button" class="btn white" data-dismiss="modal">关闭
						</button>
						<button type="submit"  class="btn green">Save Changes</button>
						</div>
						</div><!-- /.modal-content -->
						</div><!-- /.modal -->
					</div> 
															
<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>