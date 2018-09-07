
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

	<!-- BEGIN HEADER -->

	<div class="header navbar navbar-inverse navbar-fixed-top">

		<!-- BEGIN TOP NAVIGATION BAR -->

		<div class="navbar-inner">

			<div class="container-fluid">

				<!-- BEGIN LOGO -->

				<a class="brand" href="<!--index.html-->">

				<img src="media/image/logo.png" alt="logo" />

				</a>

				<!-- END LOGO -->

				<!-- BEGIN HORIZANTAL MENU -->

				<div class="navbar hor-menu hidden-phone hidden-tablet">

					<div class="navbar-inner">

						<ul class="nav">

							<li class="visible-phone visible-tablet">

								<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

								<form class="sidebar-search">

									<div class="input-box">

										<a href="javascript:;" class="remove"></a>

										<input type="text" placeholder="Search..." />            

										<input type="button" class="submit" value=" " />

									</div>

								</form>

								<!-- END RESPONSIVE QUICK SEARCH FORM -->

							</li>

							<li class="active">

								<a href="init.do">

								首页

								<span class="selected"></span>

								</a>

							</li>

							<li>

								<a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;">

								交易中心<span class="arrow"></span>     

								</a>

								<ul class="dropdown-menu">

									<li><a href="#">Section 1</a></li>

								</ul>

								<b class="caret-out"></b>                        

							</li>

							<li>

								<a href="">咨询中心</a>

							</li>

							<li>

								<a data-toggle="dropdown" class="dropdown-toggle" href="">服务中心<span class="arrow"></span>

								</a>

								<ul class="dropdown-menu">

									<li><a href="<!--index.html-->">About Us</a></li>

									

								</ul>

								<b class="caret-out"></b>                        

							</li>

							<li>

								<span class="hor-menu-search-form-toggler">&nbsp;</span>

								<div class="search-form hidden-phone hidden-tablet">

									<form class="form-search">

										<div class="input-append">

											<input type="text" placeholder="Search..." class="m-wrap">

											<button type="button" class="btn"></button>

										</div>

									</form>

								</div>

							</li>

						</ul>

					</div>

				</div>

				<!-- END HORIZANTAL MENU -->

				<!-- BEGIN RESPONSIVE MENU TOGGLER -->

				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

				<img src="media/image/menu-toggler.png" alt="" />

				</a>          

				<!-- END RESPONSIVE MENU TOGGLER -->            

				<!-- BEGIN TOP NAVIGATION MENU -->              

				<ul class="nav pull-right">

					<!-- BEGIN NOTIFICATION DROPDOWN -->   

					<li class="dropdown" id="header_notification_bar">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<i class="icon-warning-sign"></i>

						<span class="badge">6</span>

						</a>

						<ul class="dropdown-menu extended notification">

							<li>

								<p>You have 14 new notifications</p>

							</li>

							<li>

								<a href="#">

								<span class="label label-success"><i class="icon-plus"></i></span>

								New user registered. 

								<span class="time">Just now</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="label label-important"><i class="icon-bolt"></i></span>

								Server #12 overloaded. 

								<span class="time">15 mins</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="label label-warning"><i class="icon-bell"></i></span>

								Server #2 not respoding.

								<span class="time">22 mins</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="label label-info"><i class="icon-bullhorn"></i></span>

								Application error.

								<span class="time">40 mins</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="label label-important"><i class="icon-bolt"></i></span>

								Database overloaded 68%. 

								<span class="time">2 hrs</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="label label-important"><i class="icon-bolt"></i></span>

								2 user IP blocked.

								<span class="time">5 hrs</span>

								</a>

							</li>

							<li class="external">

								<a href="#">See all notifications <i class="m-icon-swapright"></i></a>

							</li>

						</ul>

					</li>

					<!-- END NOTIFICATION DROPDOWN -->

					<!-- BEGIN INBOX DROPDOWN -->

					<li class="dropdown" id="header_inbox_bar">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<i class="icon-envelope"></i>

						<span class="badge">5</span>

						</a>

						<ul class="dropdown-menu extended inbox">

							<li>

								<p>You have 12 new messages</p>

							</li>

							<li>

								<a href="inbox.html?a=view">

								<span class="photo"><img src="media/image/avatar2.jpg" alt="" /></span>

								<span class="subject">

								<span class="from">Lisa Wong</span>

								<span class="time">Just Now</span>

								</span>

								<span class="message">

								Vivamus sed auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>  

								</a>

							</li>

							<li>

								<a href="inbox.html?a=view">

								<span class="photo"><img src="media/image/avatar3.jpg" alt="" /></span>

								<span class="subject">

								<span class="from">Richard Doe</span>

								<span class="time">16 mins</span>

								</span>

								<span class="message">

								Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>  

								</a>

							</li>

							<li>

								<a href="inbox.html?a=view">

								<span class="photo"><img src="media/image/avatar1.jpg" alt="" /></span>

								<span class="subject">

								<span class="from">Bob Nilson</span>

								<span class="time">2 hrs</span>

								</span>

								<span class="message">

								Vivamus sed nibh auctor nibh congue nibh. auctor nibh

								auctor nibh...

								</span>  

								</a>

							</li>

							<li class="external">

								<a href="<!--inbox.html-->">See all messages <i class="m-icon-swapright"></i></a>

							</li>

						</ul>

					</li>

					<!-- END INBOX DROPDOWN -->

					<!-- BEGIN TODO DROPDOWN -->

					<li class="dropdown" id="header_task_bar">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<i class="icon-tasks"></i>

						<span class="badge">5</span>

						</a>

						<ul class="dropdown-menu extended tasks">

							<li>

								<p>You have 12 pending tasks</p>

							</li>

							<li>

								<a href="#">

								<span class="task">

								<span class="desc">New release v1.2</span>

								<span class="percent">30%</span>

								</span>

								<span class="progress progress-success ">

								<span style="width: 30%;" class="bar"></span>

								</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="task">

								<span class="desc">Application deployment</span>

								<span class="percent">65%</span>

								</span>

								<span class="progress progress-danger progress-striped active">

								<span style="width: 65%;" class="bar"></span>

								</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="task">

								<span class="desc">Mobile app release</span>

								<span class="percent">98%</span>

								</span>

								<span class="progress progress-success">

								<span style="width: 98%;" class="bar"></span>

								</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="task">

								<span class="desc">Database migration</span>

								<span class="percent">10%</span>

								</span>

								<span class="progress progress-warning progress-striped">

								<span style="width: 10%;" class="bar"></span>

								</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="task">

								<span class="desc">Web server upgrade</span>

								<span class="percent">58%</span>

								</span>

								<span class="progress progress-info">

								<span style="width: 58%;" class="bar"></span>

								</span>

								</a>

							</li>

							<li>

								<a href="#">

								<span class="task">

								<span class="desc">Mobile development</span>

								<span class="percent">85%</span>

								</span>

								<span class="progress progress-success">

								<span style="width: 85%;" class="bar"></span>

								</span>

								</a>

							</li>

							<li class="external">

								<a href="#">See all tasks <i class="m-icon-swapright"></i></a>

							</li>

						</ul>

					</li>

					<!-- END TODO DROPDOWN -->
					
					

					<!-- BEGIN USER LOGIN DROPDOWN 已登录-->
					
                      <li class="dropdown user">

						<a href="#" class="dropdown-toggle" data-toggle="dropdown">

						<img alt="" src="${user.imageurl}"  style="width: 29px; height: 29px;"/>

						<span class="username"> <%=userinfoEntity.getUsername()%>
						
						 </span>

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu">

							<li><a href="extra_profile"><i class="icon-user"></i> 个人中心</a></li>

							<li><a href="page_calendar"><i class="icon-calendar"></i> My Calendar</a></li>

							<li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox(3)</a></li>

							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>

							<li class="divider"></li>

							<li><a href="extra_lock"><i class="icon-lock"></i> Lock Screen</a></li>

							<li><a href="index1"><i class="icon-key"></i> Log Out</a></li>

						</ul>

					</li> 
	
					

					<!-- END USER LOGIN DROPDOWN 已登录-->

				</ul>

				<!-- END TOP NAVIGATION MENU --> 

			</div>

		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>

	<!-- END HEADER -->

	<!-- BEGIN CONTAINER -->   

	<div class="page-container row-fluid" >

		<!-- BEGIN HORIZONTAL MENU PAGE SIDEBAR1 -->

		<div class="page-sidebar nav-collapse collapse">

			<ul class="page-sidebar-menu hidden-phone hidden-tablet">

				<li>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

					<div class="sidebar-toggler hidden-phone"></div>

					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

				</li>

				<li>

					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

					<form class="sidebar-search">

						<div class="input-box">

							<a href="javascript:;" class="remove"></a>

							<input type="text" placeholder="Search..." />            

							<input type="button" class="submit" value=" " />

						</div>

					</form>

					<!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li class="start active">

					<a href="javascript:;">

					<i class="icon-cogs"></i> 

					<span class="title">事务中心</span></a>

					<ul class="sub-menu">

						<li class="active">

							<a href="<!--layout_horizontal_sidebar_menu.html-->">

							待办事项                     </a>

						</li>

						<li ></li>

						

					</ul>

				</li>

				<li >

					<a href="javascript:;">

					<i class="icon-th-list"></i> 

					<span class="title">采购申请管理</span>

					<span class="arrow "></span>

					</a>

					<ul class="sub-menu">

						<li >

							<a href="Procurement_DemandCreation">

							采购需求创建                    </a>

						</li>

						<li >

							<a href="<!--portlet_draggable.html-->">

							采购审核                     </a>

						</li>
						<li >

							<a href="<!--portlet_draggable.html-->">

							采购申请查询                     </a>

						</li>

					</ul>

				</li>

				<li >

					<a href="javascript:;">

					<i class="icon-map-marker"></i> 

					<span class="title">采购执行报批</span></a>

					<ul class="sub-menu">

						<li >

							<a href="<!--maps_google.html-->">

							采购执行查询                   </a>

						</li>

						

					</ul>

				</li>

				<li >

					<a href="<!--charts.html-->">

					<i class="icon-bar-chart"></i> 

					<span class="title">保证金管理</span>
						

					</a>
					
					<ul class="sub-menu">

						<li >

							<a href="<!--maps_google.html-->">

							报价保证金明细                   </a>

						</li>
                        <li >

							<a href="<!--maps_google.html-->">

							履约保证金明细                   </a>

						</li>
						
                        <li >

							<a href="<!--maps_google.html-->">

							保证金解冻审批                   </a>

						</li>
					</ul>

				</li>

				<li class="last">

					<a href="<!--login.html-->">

					<i class="icon-user"></i> 

					<span class="title">供应商管理</span>

					</a>
						<ul class="sub-menu">

						<li >

							<a href="<!--maps_google.html-->">

							查看供应商                   </a>

						</li>
                        <li >

							<a href="<!--maps_google.html-->">

							供应商审核                   </a>

						</li>
						
                        <li >

							<a href="<!--maps_google.html-->">

							月度评分                   </a>

						</li>
						<li >

							<a href="<!--maps_google.html-->">

							年度评价                  </a>

						</li>
					</ul>

				</li>
				
				

			</ul>

			<!--HORIZONTAL AND SIDEBAR MENU FOR MOBILE & TABLETS-->

			<ul class="page-sidebar-menu visible-phone visible-tablet">

				<li>

					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

					<form class="sidebar-search">

						<div class="input-box">

							<a href="javascript:;" class="remove"></a>

							<input type="text" placeholder="Search..." />            

							<input type="button" class="submit" value=" " />

						</div>

					</form>

					<!-- END RESPONSIVE QUICK SEARCH FORM -->

				</li>

				<li class="active">

					<a href="init.do">

					首页</a>

					

				</li>

				<li>

					<a href="javascript:;">

					交易中心</a>

					<ul class="sub-menu">

						<li><a href="#">Section 1</a></li>

						

					</ul>

				</li>

				<li>

					<a href="">咨讯中心</a>

				</li>

				<li>

					<a href="">服务中心</a>

					<ul class="sub-menu">

						<li><a href="<!--index.html-->">About Us</a></li>

					

					</ul>

				</li>

			</ul>

		</div>

		<!-- END BEGIN HORIZONTAL MENU PAGE SIDEBAR -->

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

						<div class="color-panel hidden-phone">

							<div class="color-mode-icons icon-color"></div>

							<div class="color-mode-icons icon-color-close"></div>

							<div class="color-mode">

								<p>THEME COLOR</p>

								<ul class="inline">

									<li class="color-black current color-default" data-style="default"></li>

									<li class="color-blue" data-style="blue"></li>

									<li class="color-brown" data-style="brown"></li>

									<li class="color-purple" data-style="purple"></li>

									<li class="color-grey" data-style="grey"></li>

									<li class="color-white color-light" data-style="light"></li>

								</ul>

								<label>

									<span>Layout</span>

									<select class="layout-option m-wrap small">

										<option value="fluid" selected>Fluid</option>

										<option value="boxed">Boxed</option>

									</select>

								</label>

								<label>

									<span>Header</span>

									<select class="header-option m-wrap small">

										<option value="fixed" selected>Fixed</option>

										<option value="default">Default</option>

									</select>

								</label>

								<label>

									<span>Sidebar</span>

									<select class="sidebar-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

								<label>

									<span>Footer</span>

									<select class="footer-option m-wrap small">

										<option value="fixed">Fixed</option>

										<option value="default" selected>Default</option>

									</select>

								</label>

							</div>

						</div>

						<!-- END BEGIN STYLE CUSTOMIZER --> 

						<!-- BEGIN PAGE TITLE & BREADCRUMB-->

						<h3 class="page-title">个人中心<small>简介</small></h3>

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

							<li><a href="#">个人信息</a></li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>
			
			<div class="row-fluid profile">

					<div class="span12">

						<!--BEGIN TABS-->

						<div class="tabbable tabbable-custom tabbable-full-width">

							<ul class="nav nav-tabs">

								<li class="active"><a href="#tab_1_1" data-toggle="tab">hello</a></li>

								<li><a href="#tab_1_2" data-toggle="tab">个人信息</a></li>

								<li><a href="#tab_1_3" data-toggle="tab">修改个人信息</a></li>

							</ul>

							<div class="tab-content">

								

								<!--end tab-pane-->

								<div class="tab-pane profile-classic row-fluid" id="tab_1_2">

									<div class="span2"><img src="${user.imageurl}" alt="加载失败，刷新一下！" /> <a href="#" class="profile-edit">edit</a></div>

									<ul class="unstyled span10">

										<li><span>用户名:</span> <%=userinfoEntity.getUsername()%></li>

										<li><span>姓名:</span><%=userinfoEntity.getRealname()%></li>

										<li><span>邮箱:</span> <a href="#"><%=userinfoEntity.getEmail()%></a></li>

										<li><span>部门:</span> <%=userinfoEntity.getDepartment()%></li>

										<li><span>角色:</span><%=userinfoEntity.getRole()%></li>

										<li><span>所属公司:</span><%=userinfoEntity.getAffiliatedcompany()%></li>

										<li><span>所属公司简介:</span><%=userinfoEntity.getCompanyprofile()%></li>
									</ul>

								</div>

								<!--tab_1_2-->

								<div class="tab-pane row-fluid profile-account" id="tab_1_3">

									<div class="row-fluid">

										<div class="span12">

											<div class="span3">

												<ul class="ver-inline-menu tabbable margin-bottom-10">

													<li class="active">

														<a data-toggle="tab" href="#tab_1-1">

														<i class="icon-cog"></i> 

														个人信息

														</a> 

														<span class="after"></span>                                    

													</li>

													<li class=""><a data-toggle="tab" href="#tab_2-2"><i class="icon-picture"></i>更换头像</a></li>

													<!-- <li class=""><a data-toggle="tab" href="#tab_3-3"><i class="icon-lock"></i> Change Password</a></li>

													<li class=""><a data-toggle="tab" href="#tab_4-4"><i class="icon-eye-open"></i> Privacity Settings</a></li> -->

												</ul>

											</div>

											<div class="span9">

												<div class="tab-content">

													<div id="tab_1-1" class="tab-pane active">

														<div style="height: auto;" id="accordion1-1" class="accordion collapse">

															<form action="saveUserInfo" method="post">
                                                                
																<label class="control-label">用户名</label>
																<input type="hidden"  class="m-wrap span8" name="userid"  value="${user.userid}">
																
																<input type="text"  class="m-wrap span8" name="username" value="${user.username}"  >

																<label class="control-label">姓名</label>

																<input type="text"  class="m-wrap span8"  name="realname" value="${user.realname}" />

																<label class="control-label">密码</label>

																<input type="text" class="m-wrap span8"  name="password" value="${user.password}" />

																<label class="control-label">部门</label>

																<input type="text"  class="m-wrap span8" name="department" value="${user.department}"/>
                                                                
                                                                <label class="control-label">角色</label>

																<input type="text"  class="m-wrap span8" name="role" value="${user.role}"/>

																<label class="control-label">联系电话</label>

																<input type="text"  class="m-wrap span8" name="tel" value="${user.tel}" />

																<label class="control-label">email</label>

																<input type="text"  class="m-wrap span8" name="email"  value="${user.email}"/>
																<label class="control-label">所属公司</label>

																<div class="controls">
																   <input type="text"  class="m-wrap span8" name="affiliatedcompany" value="${user.affiliatedcompany}"/>
                                                             
													
																</div>

																<label class="control-label">所属公司简介</label>

																<textarea class="span8 m-wrap" rows="3" name="companyprofile"  placeholder="<%=userinfoEntity.getCompanyprofile()%>"  value="${user.companyprofile}" ></textarea>

																 <label class="control-label">公司官网</label>

																<input type="text"   class="m-wrap span8"  name="companywebsite"  value="${user.companywebsite}"/>
 
																<div class="submit-btn">

																	<button type="submit"  class="btn green">Save Changes</button>

																	<a href="#" class="btn">Cancel</a>

																</div>

															</form>

														</div>

													</div>

													<div id="tab_2-2" class="tab-pane">

														<div style="height: auto;" id="accordion2-2" class="accordion collapse">

															<form class="register-form" action="${pageContext.request.contextPath}/addAvatar" method="post" enctype="multipart/form-data">

																<p>可以在这里上传头像哦</p>

																<br />

																<div class="controls">

																	<div class="thumbnail" style="width: 582px; height: 340px;">
																	
																		<!-- <img src="media/image/AAAAAA&amp;text=no+image" alt="" /> -->
																		<img src="${user.imageurl}"   alt="找不到头像图片，请刷新！"/>

																	</div>

																</div>

																<div class="space10"></div>

																<div class="fileupload fileupload-new" data-provides="fileupload">

																	<div class="input-append">

																		<div class="uneditable-input">

																			<i class="icon-file fileupload-exists"></i> 

																			<span class="fileupload-preview"></span>

																		</div>

																		<span class="btn btn-file">

																		<span class="fileupload-new">Select file</span>

																		<span class="fileupload-exists">Change</span>

																		<input type="hidden"  class="m-wrap span8" name="userid"  value="${user.userid}">

																		<input type="file" class="default" name = "pictureFile"  />

																		</span>

																		<a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>

																	</div>

																</div>

																<div class="clearfix"></div>

																<div class="controls">

																	<span class="label label-important">NOTE!</span>

																	<span>请上传适当大小的图像</span>

																</div>

																<div class="space10"></div>

																<div class="submit-btn">
																
																<button type="submit"  class="btn green">上传</button>

																</div>

															</form>

														</div>

													</div>

													<div id="tab_3-3" class="tab-pane">

														<div style="height: auto;" id="accordion3-3" class="accordion collapse">

															<form action="#">

																<label class="control-label">Current Password</label>

																<input type="password" class="m-wrap span8" />

																<label class="control-label">New Password</label>

																<input type="password" class="m-wrap span8" />

																<label class="control-label">Re-type New Password</label>

																<input type="password" class="m-wrap span8" />

																<div class="submit-btn">

																	<a href="#" class="btn green">Change Password</a>

																	<a href="#" class="btn">Cancel</a>

																</div>

															</form>

														</div>

													</div>
													<div id="tab_4-4" class="tab-pane">

														<div style="height: auto;" id="accordion4-4" class="accordion collapse">

															<form action="#">

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus..</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="radio">

																			<input type="radio" name="optionsRadios1" value="option1" />

																			Yes

																			</label>

																			<label class="radio">

																			<input type="radio" name="optionsRadios1" value="option2" checked />

																			No

																			</label>  

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Enim eiusmod high life accusamus terry richardson ad squid wolf moon</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="checkbox">

																			<input type="checkbox" value="" /> All

																			</label>

																			<label class="checkbox">

																			<input type="checkbox" value="" /> Friends

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="checkbox">

																			<input type="checkbox" value="" /> Yes

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Cliche reprehenderit enim eiusmod high life accusamus terry</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="checkbox">

																			<input type="checkbox" value="" /> Yes

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="profile-settings row-fluid">

																	<div class="span9">

																		<p>Oiusmod high life accusamus terry richardson ad squid wolf fwopo</p>

																	</div>

																	<div class="control-group span3">

																		<div class="controls">

																			<label class="checkbox">

																			<input type="checkbox" value="" /> Yes

																			</label>

																		</div>

																	</div>

																</div>

																<!--end profile-settings-->

																<div class="space5"></div>

																<div class="submit-btn">

																	<a href="#" class="btn green">Save Changes</a>

																	<a href="#" class="btn">Cancel</a>

																</div>

															</form>

														</div>

													</div>

												</div>

											</div>

											<!--end span9-->                                   

									                              

										</div>

									</div>

								</div>

						

							</div>

						</div>

						<!--END TABS-->

					</div>

				</div>
			
			
			<!-- END PAGE CONTAINER--> 

		</div>

		<!-- END PAGE -->    

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">

		<div class="footer-inner">

			2013 &copy; Metronic by keenthemes.

		</div>

		<div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

		</div>

	</div>

	<!-- END FOOTER -->

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


	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script type="text/javascript" src="media/js/bootstrap-fileupload.js"></script>

	<script type="text/javascript" src="media/js/chosen.jquery.min.js"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="media/js/app.js"></script>      

	<!-- END PAGE LEVEL SCRIPTS -->    

	<script>

		jQuery(document).ready(function() {    

		   App.init();

		});

	</script>
	<script type="test/javascript" src="jquery-1.8.min.js">
</script><!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>