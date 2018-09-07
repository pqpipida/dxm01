
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

	<title>电厂侧 | 账户管理</title>

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
             <a class="brand" href="init.do">
					

				<p><img src="media/image/1.png" alt="logo" /></p>

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

									<li><a href="gotoaboutUS">About Us</a></li>

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

						<img alt="加载失败" src="${user.imageurl}"  style="width: 29px; height: 29px;"/>

						<span class="username"> <%=userinfoEntity.getUsername()%>
						
						 </span>

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu">

							<li><a href="gotoEdit"><i class="icon-user"></i> 账户管理</a></li>

							

							<li class="divider"></li>

							<li><a href="extra_lock"><i class="icon-lock"></i> Lock Screen</a></li>

							<li><a href="loginout"><i class="icon-key"></i> 注销</a></li>

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

				<li >

					<a href="javascript:;">

					<i class="icon-cogs"></i> 

					<span class="title">事务中心</span>
					<span class="arrow "></span></a>

					<ul class="sub-menu">

						<li >

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

							<a href="getStateisdshlists.action">

							采购审核                     </a>

						</li>
						<li >

							<a href="getpurchasingdemandlists.action">

							采购申请查询                     </a>

						</li>

					</ul>

				</li>

				<li >

					<a href="javascript:;">

					<i class="icon-map-marker"></i> 

					<span class="title">采购执行报批</span>
					<span class="arrow "></span>
					</a>

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
					<span class="arrow "></span>	

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
					<span class="arrow "></span>

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
				<li class="start active">

					<a href="javascript:;">

					<i class="icon-cogs"></i> 

					<span class="title">账户管理</span>
					<span class="arrow open "></span>
					<span class="selected"></span>
					</a>
					

					<ul class="sub-menu">

						<li class="active">

							<a href="gotoEdit">

							详情                  </a>

						</li>

						<li ></li>

						

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

								<a href="gotoEdit">账户管理</a>

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

								<li><a href="#tab_1_4" data-toggle="tab">用户管理</a></li>

							<!-- 	<li><a href="#tab_1_6" data-toggle="tab">CA管理</a></li> -->

							</ul>

							<div class="tab-content">

								<div class="tab-pane row-fluid profile-account active" id="tab_1_1">
								

									<div class="row-fluid">

										<div class="span12">

											<div class="span3">

												<ul class="ver-inline-menu tabbable margin-bottom-10">

													<li class="active">

														<a data-toggle="tab" href="#tab_1-1">

														<i class="icon-eye-open"></i> 

														查看个人信息

														</a> 

														<span class="after"></span>                                    

													</li>
													
													<li class=""><a data-toggle="tab" href="#tab_5-5"><i class="icon-cog"></i>  个人信息修改</a></li>
													

													<li class=""><a data-toggle="tab" href="#tab_2-2"><i class="icon-picture"></i> 修改头像</a></li>

													<li class=""><a data-toggle="tab" href="#tab_3-3"><i class="icon-lock"></i> 更换密码</a></li>

													<!--<li class=""><a data-toggle="tab" href="#tab_4-4">账户设置</a></li>-->
													
													

												</ul>

											</div>

											<div class="span9">

												<div class="tab-content">

													<div id="tab_1-1" class="tab-pane active">

														<div style="height: auto;" id="accordion1-1" class="accordion collapse">
															<%-- <div class="span2">
																<img src="${user.imageurl}" alt="加载失败，刷新一下！"  class="default"/> 
															</div> --%>
															<p><img src="${user.imageurl}" alt="加载失败，刷新一下！"  class="default" style="width: 380px; height: 340px;"/> </p>
															<h1><%=userinfoEntity.getUsername()%></h1>
															<p>姓名：<%=userinfoEntity.getRealname()%></p>
															<p>邮箱：<a href="#"><%=userinfoEntity.getEmail()%></a></p>
															<p>所在部门：<%=userinfoEntity.getDepartment()%></p>
															<p>角色：<%=userinfoEntity.getRole()%></p>
															<p>所属公司：<%=userinfoEntity.getAffiliatedcompany()%></p>
															<p>所属公司简介:<%=userinfoEntity.getCompanyprofile()%></p>
															
														</div>

													</div>
													<div id="tab_5-5" class="tab-pane">
													    <div style="height: auto;" id="accordion1-1" class="accordion collapse">

															<form action="saveUserInfo" method="post">
                                                                
																<label class="control-label">用户名</label>
																<input type="hidden"  class="m-wrap span8" name="userid"  value="${user.userid}" />
																
																<input type="text"  class="m-wrap span8" name="username" value="${user.username}" required="required" maxlength="8" onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')"/>
																 <span>*</span><small>请输入数字、汉字、字母</small>

																<label class="control-label">姓名</label>

																<input type="text"  class="m-wrap span8"  name="realname" value="${user.realname}" required="required" maxlength="20" onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')"/>
																<span>*</span><small>请输入数字、汉字、字母</small>
																

																<!-- <label class="control-label">密码</label> -->

																<input type="hidden" class="m-wrap span8"  name="password" value="${user.password}" required="required" maxlength="17" onkeyup="value=value.replace(/[\W]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>

																<!-- <span>*</span><small>请输入数字、字母</small> -->
																
																<label class="control-label">部门</label>

																<input type="text"  class="m-wrap span8" name="department" value="${user.department}" required="required" maxlength="20" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/>
                                                                
                                                                <span>*</span>
                                                                <label class="control-label">角色</label>

																<input type="text"  class="m-wrap span8" name="role" value="${user.role}" required="required" maxlength="20" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/>

																<span>*</span>
																
																<label class="control-label">联系电话</label>

																<input type="text"  class="m-wrap span8" name="tel" value="${user.tel}" required="required"
																 maxlength="11" onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>

																<span>*</span>
																
																<label class="control-label">email</label>

																<input type="text"  class="m-wrap span8" name="email"  value="${user.email}" required="required" maxlength="20" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/>
																 <span>*</span>
																 
																 <label class="control-label">所属公司</label>

																<div class="controls">
																   <input type="text"  class="m-wrap span8" name="affiliatedcompany" value="${user.affiliatedcompany}" required="required" maxlength="30" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/>
                                                             		<span>*</span>
													
																</div>

																<label class="control-label">所属公司简介</label>

																<textarea class="span8 m-wrap" rows="3" name="companyprofile"  placeholder="<%=userinfoEntity.getCompanyprofile()%>"  value="${user.companyprofile}"   maxlength="200"></textarea>

																 <label class="control-label">公司官网</label>

																<input type="text"   class="m-wrap span8"  name="companywebsite"  value="${user.companywebsite}"  maxlength="20" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/> 
 
																
																<div class="submit-btn">

																	<button type="submit"  class="btn green">Save Changes</button>

																

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

																	<div class="thumbnail" style="width: 380px; height: 340px;">
																	
																		<img src="${user.imageurl}"   alt="图片加载失败，请刷新！"  style="width: 100%; height: 100%;" />

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

																		<input type="file" class="default" name = "pictureFile"  required="required"/>


																		</span>

																		<a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>

																	</div>

																</div>

																<div class="clearfix"></div>

																<div class="controls">

																	<span class="label label-important"><strong>NOTE!</strong>必须选择一个文件</span>
																
																</div>

																<div class="space10"></div>

																<div class="submit-btn">
																
																<button type="submit"  class="btn green"  id="btnupload" >上传</button>
																</div>

															</form>

														</div>

													</div>

													<div id="tab_3-3" class="tab-pane">

														<div style="height: auto;" id="accordion3-3" class="accordion collapse">

															<form  method="post" id="changepassword"  >
															<input type="hidden"  class="m-wrap span8" name="userid" id="userid" value="${user.userid}">

																<label class="control-label">输入原密码</label>
																<input type="password" class="m-wrap span8" name="oldpassword"  id="oldpassword" 
																required="required" maxlength="17" onkeyup="value=value.replace(/[\W]/g,'') "  
 															     onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
 															     <span>*</span><div style="display: inline" id="tip1"></div>
 															    

																<label class="control-label">输入新密码</label>

																<!-- input type="password" class="m-wrap span8" name="password" data-validate-length-range="4,12" required="required"/> -->
																<input type="password" class="m-wrap span8" name="password1" id="password1" required="required" maxlength="17"
 															     onkeyup="value=value.replace(/[\W]/g,'') "  placeholder="请输入数字、字母或数字字母组合"
 															     onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
 															     <span>*</span><div style="display: inline" id="tip2"></div>
 															    
																<label class="control-label">再次输入新密码</label>

																<input type="password" class="m-wrap span8" name="password2" id="password2" required="required" maxlength="17"
 															     onkeyup="value=value.replace(/[\W]/g,'') "  
 															     onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
 															     <span>*</span><div style="display: inline" id="tip3"></div>
 															     
 															   
																
																<div class="submit-btn">

																	 <!-- <button   class="btn green"  id="btn" >确认</button>  -->

																	<input type="button"   class="btn green"  id="btn" value="确认">
																	<input type="button"   class="btn white" id="changepasswordreturn"  value="重置"  >

																</div>
													<!--  <div id="tip4"></div> -->
															<div style="display: inline" id="tip4" ></div> 
																
																	

															</form>

														</div>

													</div>

													<!--<div id="tab_4-4" class="tab-pane">-->

														<!--<div style="height: auto;" id="accordion4-4" class="accordion collapse">

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

																end profile-settings


																<div class="space5"></div>

																<div class="submit-btn">

																	<a href="#" class="btn green">Save Changes</a>

																	<a href="#" class="btn">Cancel</a>

																</div>

															</form>

														</div>

													</div>-->

												</div>

											</div>

											<!--end span9-->                                   

										</div>

									</div>

		
									
								</div>

								<!--end tab-pane-->

								<div class="tab-pane profile-classic row-fluid" id="tab_1_2">

									<div class="span2"><img src="" alt="加载失败" /> <a href="#" class="profile-edit">edit</a></div>
									
												

									<ul class="unstyled span10">
								

										<li><span>电厂名称:</span> ${user.affiliatedcompany }</li>

										<li><span>上级分公司:</span> ${user.branchoffice}</li>

										<li><span>负责人:</span>  ${user.companyleader}</li>

										<li><span>联系电话:</span>  ${user.companytel}</li>

										<li><span>联系地址:</span>  ${user.companyadress}</li>

										<li><span>电子邮件:</span><a href="#">  ${user.companyemail}</a></li>

									</ul>

								</div>

								<!--tab_1_2-->

								<div class="tab-pane" id="tab_1_6">
								

								</div>


								<!--end tab-pane-->

								<div class="tab-pane row-fluid" id="tab_1_4">

									<div class="row-fluid">

										<div class="span12">

											<div class="span3">

												<ul class="ver-inline-menu tabbable margin-bottom-10">

													<li class="active">

														<a data-toggle="tab" href="#tab_1">

														<i class="icon-briefcase"></i> 

														用户管理

														</a> 

														<span class="after"></span>                                    

													</li>

													<li><a data-toggle="tab" href="#tab_2"><i class="icon-group"></i> 添加用户</a></li>

													
												</ul>

											</div>

											<div class="span9">

												<div class="tab-content">

													<div id="tab_1" class="tab-pane active">

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

															<!--  <div class="btn-group" >

																<button id="adduser" class="btn green"  onclick="addUser()">

																Add New <i class="icon-plus"></i>

																</button>

															</div> -->


															<tr>
																<th>序号</th>
																<th>姓名</th>
																<th>用户名</th>
																<th>部门</th>
																<th>角色</th>

																<th>操作</th> 
														   </tr>

															<tbody></tbody> 
														</table>

													   </div>
														</div>
														</div>
						
													<div id="tab_2" class="tab-pane">
														<div style="height: auto;" id="accordion1-1" class="accordion collapse">

															<form action="" method="post" id="addUserForm">
                                                                
																<label class="control-label">用户名</label>
																<input type="text"  class="m-wrap span8" name="username"  id="addusername" placeholder="请输入请输入数字、汉字、字母或组合" required="required" maxlength="12" onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')"/>
																<span>*</span><div style="display: inline" id="addusertip1"></div>

																<label class="control-label">姓名</label>

																<input type="text"  class="m-wrap span8"  name="realname" id="addrealname" placeholder="请输入请输入数字、汉字、字母或组合" required="required" maxlength="20" onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')"/>
																<span>*</span><div style="display: inline" id="addusertip2"></div>
																

																<label class="control-label">密码</label> 

																<input type="text" class="m-wrap span8"  name="password" id="addpassword" required="required" placeholder="请输入请输入数字、字母或组合" maxlength="17" onkeyup="value=value.replace(/[\W]/g,'') "onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>

																<span>*</span><div style="display: inline" id="addusertip3"></div>
																
																
																<label class="control-label">部门</label>

																<input type="text"  class="m-wrap span8" name="department" id="adddepartment" placeholder="例如:运营" required="required" maxlength="20" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/>
                                                                
                                                                <span>*</span><div style="display: inline" id="addusertip4"></div>
                                                                
                                                                
                                                                <label class="control-label">角色</label>

																<input type="text"  class="m-wrap span8" name="role" id="addrole" required="required" placeholder="例如:测试员" maxlength="20" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/>

																<span>*</span><div style="display: inline" id="addusertip5"></div>
																
																
																<label class="control-label">联系电话</label>

																<input type="text"  class="m-wrap span8" name="tel" id="addtel" placeholder="区号不填" required="required"
																 maxlength="11" onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>

																<span>*</span><div style="display: inline" id="addusertip6"></div>
																
																
																<label class="control-label">email</label>

																<input type="text"  class="m-wrap span8" name="email"  id="addemail" placeholder="xxx@xxx.xxx" required="required" maxlength="20" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/>
																 <span>*</span><div style="display: inline" id="addusertip7"></div>
																 
																 
																 <label class="control-label">所属公司</label>
																 <div class="controls">
																   <input type="text"  class="m-wrap span8" name="affiliatedcompany" id="addaffiliatedcompany" required="required" maxlength="30" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/>
                                                             		<span>*</span><div style="display: inline" id="addusertip8"></div>
                                                             	</div>

																<label class="control-label">所属公司简介</label>

																<textarea class="span8 m-wrap" rows="3" name="companyprofile" id="companyprofile"  maxlength="200"></textarea>

																 <label class="control-label">公司官网</label>

																<input type="text"   class="m-wrap span8"  name="companywebsite"  id="companywebsite"  maxlength="20" onkeyup="this.value=this.value.replace(/^ +| +$/g,'')"/> 
 
																
																<div class="submit-btn">
																	<input type="button"   class="btn green" id="adduserbtn"  value="Add User"  >
																	<input type="button"   class="btn white" id="adduserreturn"  value="重置"  >
																	<div style="display: inline" id="addusertip9"></div>
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
<!--编辑用户信息 模态框（Modal） -->
	
		<div class="modal fade bs-example-modal-lg" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true" >
			<div class="modal-dialog"  >
				<div class="modal-content"   >
					<div class="modal-header">
						<!-- <button type="button" class="close" data-dismiss="modal1" aria-hidden="true">
							&times;
						</button> -->
						<h4 class="modal-title" id="myModalLabel1">
							编辑用户信息
						</h4>
					</div>
					<div class="modal-body">
						
						<form  role="form" id="edituserinfoForm">
				          <div class="form-group">
								<label for="username" class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-10">
								    <input type="hidden"  id="edituserid" name="userid" placeholder="序号">
								
									<input type="text"  id="editusername"  name="username" placeholder="用户名">
									<span>*</span><div style="display: inline" id="edituserinfotip1"></div>
								</div>
								
							</div>
							
							  <div class="form-group">
								<label for="realname" class="col-sm-2 control-label" >姓名</label>
								<div class="col-sm-10">
									<input type="text"  id="editrealname" name="realname" placeholder="姓名" maxlength="20" onkeyup="value=value.replace(/[^\w\u4E00-\u9FA5]/g, '')">
									<span>*</span><div style="display: inline" id="edituserinfotip2"></div>
								</div>
							</div>
							
						 <div class="form-group">
								<label for="department" class="col-sm-2 control-label">部门</label>
								<div class="col-sm-10">
									<input type="text"  id="editdepartment" name="department" placeholder="部门">
									<span>*</span><div style="display: inline" id="edituserinfotip3"></div>
								</div>
							</div>
						 	 <div class="form-group">
								<label for="role" class="col-sm-2 control-label">角色</label>
								<div class="col-sm-10">
									<input type="text"  id="editrole" name="role" placeholder="角色">
									<span>*</span><div style="display: inline" id="edituserinfotip4"></div>
								</div>
							</div>
							 <div class="form-group">
								<label for="tel" class="col-sm-2 control-label">联系电话</label>
								<div class="col-sm-10">
									<input type="text" id="edittel" name="tel"  placeholder="联系电话"  maxlength="11" 
									onkeyup="value=value.replace(/[^\d]/g,'') " onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
									<span>*</span><div style="display: inline" id="edituserinfotip5" ></div>
								</div>
							</div>
							
							 <div class="form-group">
								<label for="email" class="col-sm-2 control-label">邮箱</label>
								<div class="col-sm-10">
									<input type="text"  id="editemail" name="email" placeholder="">
									<span>*</span><div style="display: inline" id="edituserinfotip6"></div>
								</div>
							</div> 
							 <div class="form-group">
								<label for="affiliatedcompany" class="col-sm-2 control-label">所属公司</label>
								<div class="col-sm-10">
									<input type="text"  id="editaffiliatedcompany" name="affiliatedcompany" placeholder="所属公司">
									<span>*</span><div style="display: inline" id="edituserinfotip7"></div>
								</div>
							</div> 
							 <div class="form-group">
								<label for="companyprofile" class="col-sm-2 control-label">所属公司简介</label>
								<div class="col-sm-10">
									<input type="text"  id="editcompanyprofile" name="companyprofile" placeholder="">
									
								</div>
							</div> 
							 <div class="form-group">
								<label for="companywebsite" class="col-sm-2 control-label">所属公司官网</label>
								<div class="col-sm-10">
									<input type="text"  id="editcompanywebsite" name="companywebsite" placeholder="">
									
								</div>
							</div> 
							<input type="button" class="btn green" id="saveUserinfoBtn" value="提交更改">  
						<div style="display: inline" id="edituserinfotip8"></div>
								
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" id="closeUserinfoBtn" data-dismiss="modal"  aria-hidden="true">关闭
						</button>
					
						
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
</div>
<!-- 修改密码 模态框（Modal） -->
		<div class="modal fade bs-example-modal-lg" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true" >
			<div class="modal-dialog"  >
				<div class="modal-content"   >
					<div class="modal-header">
						<!-- <input type="button" class="close" data-dismiss="modal2" aria-hidden="true"> -->
						
						
						<h4 class="modal-title" id="myModalLabel2">
							修改用户密码
						</h4>
					</div>
					<div class="modal-body">
						
						<form  role="form">
						     <input type="hidden"  id="editpassworduserid" >
							  <div class="form-group">
								<label for="editpassword1" class="col-sm-2 control-label">旧密码</label>
								<div class="col-sm-10">
								
									<input type="password"  value="1234567890"  disabled="disabled">
								</div>
							</div> 
							
							<div class="form-group">
								<label for="editpassword2" class="col-sm-2 control-label">输入旧密码</label>
								<div class="col-sm-10">
									<input type="password"  id="editpassword2"  name="editpassword2" placeholder=""  required="required" maxlength="10" onkeyup="value=value.replace(/[\W]/g,'') "  
 										onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"/>
									<span>*</span><div style="display: inline" id="editpasswordtip1"></div>
								</div>
							</div>
							
							<div class="form-group">
								<label for="editpassword3" class="col-sm-2 control-label">输入新密码</label>
								<div class="col-sm-10">
									<input type="password"  id="editpassword3"  placeholder=""  required="required" maxlength="10" onkeyup="value=value.replace(/[\W]/g,'') "  
 										onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
									<span>*</span><div style="display: inline" id="editpasswordtip2"></div>
								</div>
							</div>
							
							<div class="form-group">
								<label for="editpassword4" class="col-sm-2 control-label">再次输入新密码</label>
								<div class="col-sm-10">
									<input type="password"  id="editpassword4"  placeholder=""  required="required" maxlength="10" onkeyup="value=value.replace(/[\W]/g,'') "  
 										onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
									<span>*</span><div style="display: inline" id="editpasswordtip3"></div>
								</div>
							</div>
						<input type="button" class="btn green" id="savepasswordBtn" value="提交更改">
						<div style="display: inline" id="editpasswordtip4"></div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal" id="closepasswordBtn">关闭
						</button>
						
						
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
</div>
	

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

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
		 
//////////////////////////////////// begin   修改个人密码////////////////////////////////////////////////////////////////////////////////////////////////////////
 
	  $("#oldpassword").blur(function(){

                var param=$("#oldpassword").val();
/*                 //取session里的用户密码对比
                var pw=${user.password};
               if(param==pw){
               				 $("#tip1").html("<font color=\"green\" size=\"2\">  Correct</font>");

                        } 

                        else{                                 

                            $("#tip1").html("<font color=\"red\" size=\"2\">  Wrong</font>");

                        }  */
               
               
               
               //根据用户id取数据库里的用户密码对比
               
               
                var id =$("#userid").val();
             
                $.ajax({

                    url:"checkoldpassword",
                   

                    data:{oldpassword:param,userid:id},   
                         

                    success:function(f){
                   // alert(f);
                   
                    //判断有误
                        if(f == "yes"){                            
						  
                             $("#tip1").html("<font color=\"green\" size=\"2\">  Correct</font>");

                        } 

                        else{                                 

                            $("#tip1").html("<font color=\"red\" size=\"2\">  Wrong</font>");

                        }

                    }                 

                });

           });

          $("#password1").blur(function(){

              var num=$("#password1").val().length;

              if(num<6){

                   $("#tip2").html("<font color=\"red\" size=\"2\">  too short</font>");                

              }

              else if(num>10){

                   $("#tip2").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{

                  $("#tip2").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }

          }) ;

          $("#password2").blur(function(){

              var tmp=$("#password1").val();

              var num=$("#password2").val().length;

              if($("#password2").val()!=tmp){

                  $("#tip3").html("<font color=\"red\" size=\"2\">  Wrong</font>");                 

              }

              else{

                  if(num>=3&&num<=10){

                      $("#tip3").html("<font color=\"green\" size=\"2\">  Correct</font>");                    

                  }                 

                  else{

                      $("#tip3").html("<font color=\"red\" size=\"2\">  invalid</font>");                           

                  }                

              }

          });

              $("#btn").click(function(){

                  var flag=true;

                  var old=$("#oldpassword").val();

                  var pass=$("#password1").val();
                  var id =$("#userid").val();

                  var pass2=$("#password2").val();

                  var num1=$("#password1").val().length;

                  var num2=$("#password2").val().length;

                  if(num1!=num2||num1<6||num2<6||num1>10||num2>10||pass!=pass2){

                      flag=false;

                  }

                  else{

                      flag=true;

                  }

                  if(flag){                   

                  $.ajax({

                      url:"changepassword",

                      data:{oldpassword:old,password:pass,userid:id},
                      type:"post",
                    

                      success:function(data){  
                      //判断有误                       

                          if(data!="notfound"){

                              $("#tip4").show().html("<font color=\"green\" size=\"3\"> <strong>NOTE!</strong> 密码已修改成功!</font>");

                              $("#oldpassword").val("");

                              $("#password1").val("");

                              $("#password2").val("");

                              $("#tip1").empty();

                              $("#tip2").empty();

                              $("#tip3").empty();

                              $("#tip4").delay(2000).hide(0);        

                          }

                          else{

                              $("#tip4").show().html("<font color=\"red\" size=\"3\">  <strong>NOTE!</strong> 旧密码输入有误!</font>");

                          }                                     

                         }

                  });

              }

              else{

                  

                  $("#tip4").show().html("<font color=\"red\" size=\"3\"> <strong>NOTE!</strong> 请检查输入是否有误!</font>");

              }

              });  
              
              $("#changepasswordreturn").click(function(){

                  var old=$("#oldpassword").val();

                  var pass=$("#password1").val();
                  var id =$("#userid").val();

                  var pass2=$("#password2").val();
                 
                              $("#oldpassword").val("");

                              $("#password1").val("");

                              $("#password2").val("");

                              $("#tip1").empty();

                              $("#tip2").empty();

                              $("#tip3").empty();

                              $("#tip4").empty();        

              });
         
	
//////////////////////////////////// begin   添加新用户////////////////////////////////////////////////////////////////////////////////////////////////////////
 
          $("#addusername").blur(function(){

                var username=$("#addusername").val();
                
                var usernameNum =$("#addusername").val().length;
                           
              if(usernameNum<3){
              
              if(usernameNum==0){
                $("#addusertip1").html("<font color=\"red\" size=\"2\">用户名不能为空</font>");  
              }else{

                   $("#addusertip1").html("<font color=\"red\" size=\"2\">  too short</font>");      
                   }          

              }

              else if(usernameNum>10){

                   $("#addusertip1").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{
             
                  $("#addusertip1").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
                    });
                    
	  $("#addrealname").blur(function(){

                var realname=$("#addrealname").val();
                
                var realnameNum =$("#addrealname").val().length;
                           
              if(realnameNum<2){
              
              if(realnameNum==0){
                $("#addusertip2").html("<font color=\"red\" size=\"2\">姓名不能为空</font>");  
              }else{

                   $("#addusertip2").html("<font color=\"red\" size=\"2\">  too short</font>");      
                   }          

              }

              else if(realnameNum>10){

                   $("#addusertip2").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{
                

                  $("#addusertip2").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
                    });
          $("#addpassword").blur(function(){

                var password=$("#addpassword").val();
                
                var passwordNum =$("#addpassword").val().length;
                           
              if(passwordNum<6){
              
              if(passwordNum==0){
                $("#addusertip3").html("<font color=\"red\" size=\"2\">密码不能为空</font>");  
              }else{

                   $("#addusertip3").html("<font color=\"red\" size=\"2\">  too short</font>");      
                   }          

              }

              else if(passwordNum>10){

                   $("#addusertip3").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{

                  $("#addusertip3").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
           });
           $("#adddepartment").blur(function(){

                var department=$("#adddepartment").val();
                
                var  departmentNum =$("#adddepartment").val().length;
                           
             
              
              if( departmentNum<1){
                $("#addusertip4").html("<font color=\"red\" size=\"2\">不能为空</font>");  
              }
              else if(departmentNum>12){

                   $("#addusertip4").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{
               
                  $("#addusertip4").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
           });
           $("#addrole").blur(function(){

                var role=$("#addrole").val();
                
                var  roleNum =$("#addrole").val().length;
                           
             
              
              if( roleNum<1){
                $("#addusertip5").html("<font color=\"red\" size=\"2\">不能为空</font>");  
              }
              else if(roleNum>10){

                   $("#addusertip5").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{
               
                  $("#addusertip5").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
           });
          $("#addtel").blur(function(){

              var tel=$("#addtel").val();
                
              var  telNum =$("#addtel").val().length;
                      
              if( telNum<1){
              
              $("#addusertip6").html("<font color=\"red\" size=\"2\">不能为空</font>");  
              
              }else if(telNum>11){
              
              $("#addusertip6").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }
              
              else if(telNum==11||telNum==8){
              
              $("#addusertip6").html("<font color=\"green\" size=\"2\"> Accept</font>");
              }
              else if(telNum<11){
              $("#addusertip6").html("<font color=\"red\" size=\"2\">wrong</font>");
              }
           });
           
        $("#addemail").blur(function(){
        
		    var email=$("#addemail").val();
		    var emailNum=$("#addemail").val().length;
		    var myReg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
		    
			 if(emailNum<1){
			 
			 $("#addusertip7").html("<font color=\"red\" size=\"2\"> 邮箱不能为空</font>");  
			 
			 }else if(myReg.test(email)){
			 
			 $("#addusertip7").html("<font color=\"green\" size=\"2\"> Accept</font>");
			 
			 }else{
			 
			 $("#addusertip7").html("<font color=\"red\" size=\"2\"> 邮箱格式错误</font>");
			 
			 }
			 
	     });
		                
		                         
	    $("#addaffiliatedcompany").blur(function(){
			    var affiliatedcompany=$("#addaffiliatedcompany").val();
			    var affiliatedcompanyNum=$("#addaffiliatedcompany").val().length;
			    
			    if(affiliatedcompanyNum<1){
			    $("#addusertip8").html("<font color=\"red\" size=\"2\"> 所属公司不能为空</font>");  
				}else{
					$("#addusertip8").html("<font color=\"green\" size=\"2\"> Accept</font>");  
				 }
		  });  
	 			   
 	  $("#adduserbtn").click(function() {
	 			
	 			var  flag=true;
	 			  
                var username=$("#addusername").val();
                var realname=$("#addrealname").val();
                var password=$("#addpassword").val();
                var department=$("#adddepartment").val();
                var role=$("#addrole").val();
                var tel=$("#addtel").val();
                var email=$("#addemail").val();
                var myReg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
                var affiliatedcompany=$("#addaffiliatedcompany").val();
		               
               
                var usernameNum =$("#addusername").val().length;
                var realnameNum =$("#addrealname").val().length;
                var passwordNum =$("#addpassword").val().length;
                var  departmentNum =$("#adddepartment").val().length;
                var  roleNum =$("#addrole").val().length;
                var  telNum =$("#addtel").val().length; 
                var emailNum=$("#addemail").val().length;
		        var affiliatedcompanyNum=$("#addaffiliatedcompany").val().length;
		       
		        var dataObj = $("#addUserForm").serialize();
		     
	  
                if(usernameNum<3||usernameNum>10||realnameNum<2||
                realnameNum>10||passwordNum<6||passwordNum>12||departmentNum<1||
                departmentNum>10||roleNum<1||roleNum>10||(telNum!=11&&telNum!=8)||
                !myReg.test(email)||affiliatedcompanyNum<1)
                  {

                     flag=false;

                  }

                  else{

                   flag=true;

                  } 
                  if(flag){  
                  if(confirm("是否要添加该用户")){
                         
			          $.ajax({
				
						url:"addUser",
						type:"post",
						data:dataObj,
				        
				        success:function(result1){
                           if(result1=="添加成功"){

                              $("#addusertip9").show().html("<font color=\"green\" size=\"3\"> <strong>NOTE!</strong>用户添加成功!</font>");

                                $("#addusername").val("");
				                $("#addrealname").val("");
				                $("#addpassword").val("");
				                $("#adddepartment").val("");
				                $("#addrole").val("");
				                $("#addtel").val("");
				                $("#addemail").val("");
				                $("#addaffiliatedcompany").val("");
				                $("#addusertip1").empty();
				                $("#addusertip2").empty();
				                $("#addusertip3").empty();
				                $("#addusertip4").empty();
				                $("#addusertip5").empty();
				                $("#addusertip6").empty();
				                $("#addusertip7").empty();
				                $("#addusertip8").empty();
				                $("#addusertip9").delay(2000).hide(0);       

                          }

                          else{

                              $("#addusertip9").show().html("<font color=\"red\" size=\"3\">  <strong>NOTE!</strong> 添加失败!</font>");

                          }  
                                                            

                         }
                        
                  });
              } else {
			return false;
				}   

     		}

             else{

                  $("#addusertip9").show().html("<font color=\"red\" size=\"3\"> <strong>NOTE!</strong> 请检查输入是否有误!</font>");

              }  
	   
	});  
	
	  $("#adduserreturn").click(function() {
	  
	    $("#addusername").val("");
	    $("#addrealname").val("");
	    $("#addpassword").val("");
	    $("#adddepartment").val("");
	    $("#addrole").val("");
	    $("#addtel").val("");
	    $("#addemail").val("");
	    $("#addaffiliatedcompany").val("");
	    
	    $("#addusertip1").empty();
	    $("#addusertip2").empty();
		$("#addusertip3").empty();
		$("#addusertip4").empty();
		$("#addusertip5").empty();
		$("#addusertip6").empty();
		$("#addusertip7").empty();
		$("#addusertip8").empty();
		$("#addusertip9").empty();
	 			
	  
	});   
           
      
//////////////////////////////////// end   添加新用户////////////////////////////////////////////////////////////////////////////////////////////////////////
        

         testResponseBody();  //加载用户管理
         
         
		App.init();

		});
		
//////////////////////////////////// begin  用户管理模块动态加载用户列表////////////////////////////////////////////////////////////////////////////////////////////////////////
		
			function testResponseBody(){
			$.post("${pageContext.request.contextPath}/userstable",null,
			
				function(result){
				
				var users = result;
			
				$.each(users, function(){
				 
				   
					var userid = $("<td></td>").append(this.userid);
					var realname = $("<td></td>").append(this.realname);
					var username = $("<td></td>").append(this.username);
					var department = $("<td></td>").append(this.department);
					var role = $("<td></td>").append(this.role);
					 var state= $("<td></td>").append(this.state);
					
					var editBtn = $("<button></button>").addClass("btn btn green btn-sm").attr("onclick","goEditUser('"+this.userid+"')")
								.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
								.append("编辑");
					var delBtn = $("<button></button>").addClass("btn btn yellow btn-sm").attr("onclick","deleteUser('"+this.userid+"','"+this.state+"')")
								.append($("<span></span>").addClass("glyphicon glyphicon-trash"))
								.append("删除");
					var changeBtn = $("<button></button>").addClass("btn btn green btn-sm").attr("onclick","ChangeUserPW('"+this.userid+"')")
								.append($("<span></span>").addClass("glyphicon glyphicon-trash"))
								.append("修改密码");	
					/* var checkBtn = $("<button></button>").addClass("btn btn-primary btn-sm").attr("onclick","checkUser('"+this.userid+"')")
								.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
								.append("查看");	 */
						
				
					 var btn = $("<td></td>").append(editBtn).append(" ").append(delBtn).append(" ").append(changeBtn);
					 $("<tr></tr>").append(userid)
								  .append(realname)
								  .append(username)
								  .append(department)
								  .append(role)
								  // .append(state)
								  .append(btn)
								  .appendTo("#userstable"); 
				})
			},"json");
			
		}
//////////////////////////////////// end  用户管理模块动态加载用户列表////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////// begin  用户管理模块动态删除指定用户////////////////////////////////////////////////////////////////////////////////////////////////////////

	function deleteUser(userid,state) {
		if(confirm("是否要删除该记录")){
			$.ajax({
				url:"deleteUser",
				type:"get",
				data:{"userid":userid,"state":state},
				//dataType:"json",
				success:function(result){
					alert(result);
					
				}
			});
		
		} else {
			return false;
		}
		
	}
//////////////////////////////////// end  用户管理模块动态删除指定用户////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////// begin  用户管理模块动态修改指定用户密码以及编辑指定用户信息////////////////////////////////////////////////////////////////////////////////////////////////////////

	function ChangeUserPW(userid) {
		if(confirm("是否要修改密码")){
			$.ajax({
				url:"selecttheuser",
				type:"get",
				data:"userid="+userid,
				success:showtheuserpassword,
				
				error:function(){
				 alert("请求失败");
					
				},
		        dataType : "json"
			});
			
		} else {
			return false;
		}
		
	}
 
    function goEditUser(userid) {
    	if(confirm("是否要编辑该用户")){
			$.ajax({
				url:"selecttheuser",
				type:"get",
				data:"userid="+userid,
				
				   // 成功后开启模态框
		        success :showtheuser,
		        error : function() {
		            alert("请求失败");
		        },
		        dataType : "json"
		    });
			
		} else {
			return false;
		}
 
			
		
	}
	// 查询成功后向模态框插入数据并开启模态框。data是返回的JSON对象
function showtheuser(data) {

    $("#edituserid").val(data.userid);
    $("#editusername").val(data.username);
    $("#editrealname").val(data.realname);
    $("#editdepartment").val(data.department);
    $("#editrealname").val(data.realname);
    $("#editrole").val(data.role);
    $("#edittel").val(data.tel);
    $("#editemail").val(data.email);
    $("#editaffiliatedcompany").val(data.affiliatedcompany);
    $("#editcompanyprofile").val(data.companyprofile);
    $("#editecompanywebsite").val(data.companywebsite);
  
    // 显示模态框
    $('#myModal1').modal('show');
}	

function showtheuserpassword(data) {

    $("#editpassworduserid").val(data.userid);
    
    // $("#editpassword1").val(data.password); 
 
    // 显示模态框
    $('#myModal2').modal('show');
}			
//////////////////////////////////// begin   修改用户密码////////////////////////////////////////////////////////////////////////////////////////////////////////
       $("#editpassword2").blur(function(){
        
              //  var editpassword1=$("#editpassword1").val();
			    var editpassword2=$("#editpassword2").val();
			    var id=$("#editpassworduserid").val(); 
			    var editpassword2Num=$("#editpassword2").val().length;
			    
			
			      $.ajax({

                    url:"checkotheroldpassword",
                   

                    data:{oldpassword:editpassword2,userid:id},   
                         

                    success:function(f){
                   // alert(f);
                   
                    //判断有误
                        if(f == "yes"){                            
						  
                             $("#editpasswordtip1").html("<font color=\"green\" size=\"2\">  Correct</font>");

                        } 

                        else{                                 

                            $("#editpasswordtip1").html("<font color=\"red\" size=\"2\">  Wrong</font>");

                        }

                    }                 

                });

		  });  
           $("#editpassword3").blur(function(){
        
               
			    var editpassword3=$("#editpassword3").val();
			     
			    var editpassword3Num=$("#editpassword3").val().length;
			  
                        if( editpassword3Num <6){ 
                          
                        	$("#editpasswordtip2").html("<font color=\"red\" size=\"2\"> too short</font>");                         
						  
                       
                        } 

                        else if( editpassword3Num >10){                                 

                            $("#editpasswordtip2").html("<font color=\"red\" size=\"2\">too long</font>"); 

                        }else{
                        
                          $("#editpasswordtip2").html("<font color=\"green\" size=\"2\">Accept</font>"); 
                        
                        }

		  });  
           $("#editpassword4").blur(function(){
           
        
                var editpassword3=$("#editpassword3").val();
			    var editpassword4=$("#editpassword4").val();
			     
			    var editpassword4Num=$("#editpassword4").val().length;
			    
			
			     
                        if(editpassword3 == editpassword4){                            
						  
                             $("#editpasswordtip3").html("<font color=\"green\" size=\"2\">  Correct</font>");

                        } 

                        else{                                 

                            $("#editpasswordtip3").html("<font color=\"red\" size=\"2\">  Wrong</font>");

                        }

		  });  
		  
		   $("#savepasswordBtn").click(function() {
	 			
	 			
	 			var  flag=true;
	 			var id=$("#editpassworduserid").val();
              //var editpassword1=$("#editpassword1").val();
			    var editpassword2=$("#editpassword2").val();
			    var editpassword3=$("#editpassword3").val();
			    var editpassword4=$("#editpassword4").val();
			    
			  // var editpassword1Num=$("#editpassword1").val().length;
			    var editpassword2Num=$("#editpassword2").val().length;
			    var editpassword3Num=$("#editpassword3").val().length;
	 			var editpassword4Num=$("#editpassword4").val().length;  
               
	  
                if(editpassword3Num<6||editpassword3Num>10||editpassword3Num!=editpassword4Num)
                  {

                     flag=false;

                  }

                  else{

                   flag=true;

                  } 
                  if(flag){ 
                  alert(1); 
                  if(confirm("是否要提交修改密码")){
                         
			          $.ajax({
				
						
                      url:"changeotheruserpassword",

                      data:{oldpassword:editpassword2,password:editpassword3,userid:id},
					  type:"post",
						
				        
				        success:function(data){
                                 if(data!="notfound"){

                              $("#editpasswordtip4").show().html("<font color=\"green\" size=\"3\"> <strong>NOTE!</strong> 密码修改成功!</font>");

                             // $("#editpassword1").val("");

                              $("#editpassword2").val("");

                              $("#editpassword3").val("");
                              
                              $("#editpassword4").val("");

                              $("#editpasswordtip1").empty();

                              $("#editpasswordtip2").empty();

                              $("#editpasswordtip3").empty();

                              $("#editpasswordtip4").delay(2000).hide(0);        

                          }
                          else{

                              $("#editpasswordtip4").show().html("<font color=\"red\" size=\"3\">  <strong>NOTE!</strong> 旧密码输入有误!</font>");

                          }  
                                                            

                         }
                        
                  });
                
              } else {
			return false;
				}   

     		}

             else{

                  $("#editpasswordtip4").show().html("<font color=\"red\" size=\"3\"> <strong>NOTE!</strong> 请检查输入是否有误!</font>");

              }  
	   
	});  
	

	  
          
              $("#closepasswordBtn").click(function() {
	 			
	 			var  flag=true;
	 			var id=$("#editpassworduserid").val();
               // var editpassword1=$("#editpassword1").val();
			    var editpassword2=$("#editpassword2").val();
			    var editpassword3=$("#editpassword3").val();
			    var editpassword4=$("#editpassword4").val();
			    
			  //  var editpassword1Num=$("#editpassword1").val().length;
			    var editpassword2Num=$("#editpassword2").val().length;
			    var editpassword3Num=$("#editpassword3").val().length;
	 			var editpassword4Num=$("#editpassword4").val().length;  
               
	  
               
                            //  $("#editpassword1").val("");

                              $("#editpassword2").val("");

                              $("#editpassword3").val("");
                              
                              $("#editpassword4").val("");

                              $("#editpasswordtip1").empty();

                              $("#editpasswordtip2").empty();

                              $("#editpasswordtip3").empty();

                              $("#editpasswordtip4").delay(1500).hide(0);        

      
              });  
          
//////////////////////////////////// end   修改用户密码////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////// begin  编辑用户信息////////////////////////////////////////////////////////////////////////////////////////////////////////
$("#editusername").blur(function(){

                var editusername=$("#editusername").val();
                
                var editusernameNum =$("#editusername").val().length;
                           
              if(editusernameNum<3){
              
              if(editusernameNum==0){
                $("#edituserinfotip1").html("<font color=\"red\" size=\"2\">用户名不能为空</font>");  
              }else{

                   $("#edituserinfotip1").html("<font color=\"red\" size=\"2\">  too short</font>");      
                   }          

              }

              else if(editusernameNum>10){

                   $("#edituserinfotip1").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{
             
                  $("#edituserinfotip1").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
           });
                    
	  $("#editrealname").blur(function(){

                var editrealname=$("#editrealname").val();
                
                var editrealnameNum =$("#editrealname").val().length;
                           
              if(editrealnameNum<2){
              
              if(editrealnameNum==0){
                $("#edituserinfotip2").html("<font color=\"red\" size=\"2\">姓名不能为空</font>");  
              }else{

                   $("#edituserinfotip2").html("<font color=\"red\" size=\"2\">  too short</font>");      
                   }          

              }

              else if(editrealnameNum>10){

                   $("#edituserinfotip2").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{
                

                  $("#edituserinfotip2").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
            });
          
           $("#editdepartment").blur(function(){

                var editdepartment=$("#editdepartment").val();
                
                var  editdepartmentNum =$("#editdepartment").val().length;
                           
             
              
              if( editdepartmentNum<1){
                $("#edituserinfotip3").html("<font color=\"red\" size=\"2\">不能为空</font>");  
              }
              else if(editdepartmentNum>12){

                   $("#edituserinfotip3").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{
               
                  $("#edituserinfotip3").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
           });
           $("#editrole").blur(function(){

                var editrole=$("#editrole").val();
                
                var  editroleNum =$("#editrole").val().length;
                           
             
              
              if( editroleNum<1){
                $("#edituserinfotip4").html("<font color=\"red\" size=\"2\">不能为空</font>");  
              }
              else if(editroleNum>10){

                   $("#edituserinfotip4").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }

              else{
               
                  $("#edituserinfotip4").html("<font color=\"green\" size=\"2\"> Accept</font>");                

              }
           });
          $("#edittel").blur(function(){

              var edittel=$("#edittel").val();
                
              var  edittelNum =$("#edittel").val().length;
                      
              if( edittelNum<1){
              
              $("#edituserinfotip5").html("<font color=\"red\" size=\"2\">不能为空</font>");  
              
              }else if(edittelNum>11){
              
              $("#edituserinfotip5").html("<font color=\"red\" size=\"2\">  too long</font>");                 

              }
              
              else if(edittelNum==11||edittelNum==8){
              
              $("#edituserinfotip5").html("<font color=\"green\" size=\"2\"> Accept</font>");
              }
              else if(edittelNum<11){
              $("#edituserinfotip5").html("<font color=\"red\" size=\"2\">wrong</font>");
              }
           });
           
        $("#editemail").blur(function(){
        
		    var editemail=$("#editemail").val();
		    var editemailNum=$("#editemail").val().length;
		    var myReg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
		    
			 if(editemailNum<1){
			 
			 $("#edituserinfotip6").html("<font color=\"red\" size=\"2\"> 邮箱不能为空</font>");  
			 
			 }else if(myReg.test(editemail)){
			 
			 $("#edituserinfotip6").html("<font color=\"green\" size=\"2\"> Accept</font>");
			 
			 }else{
			 
			 $("#edituserinfotip6").html("<font color=\"red\" size=\"2\"> 邮箱格式错误</font>");
			 
			 }
			 
	     });
		                
		                         
	    $("#editaffiliatedcompany").blur(function(){
			    var editaffiliatedcompany=$("#editaffiliatedcompany").val();
			    var editaffiliatedcompanyNum=$("#editaffiliatedcompany").val().length;
			    
			    if(editaffiliatedcompanyNum<1){
		$("#edituserinfotip7").html("<font color=\"red\" size=\"2\"> 所属公司不能为空</font>");  
				}else{
					$("#edituserinfotip7").html("<font color=\"green\" size=\"2\"> Accept</font>");  
				 }
		  });  
	 			   
 	  $("#saveUserinfoBtn").click(function() {
	 			
	 			var  flag=true;
	 			var edituserid=$("#edituserid").val();  
                var editusername=$("#editusername").val();
                var editrealname=$("#editrealname").val();
                var editdepartment=$("#editdepartment").val();
                var editrole=$("#editrole").val();
                var edittel=$("#edittel").val();
                var editemail=$("#editemail").val();
                var myReg=/^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
                var editaffiliatedcompany=$("#editaffiliatedcompany").val();
		              
               
                var editusernameNum =$("#editusername").val().length;
                var editrealnameNum =$("#editrealname").val().length;
                var editdepartmentNum =$("#editdepartment").val().length;
                var editroleNum =$("#editrole").val().length;
                var edittelNum =$("#edittel").val().length;
                var editemailNum=$("#editemail").val().length;
		        var editaffiliatedcompanyNum=$("#editaffiliatedcompany").val().length;
               
               
		       
		        var dataObj = $("#edituserinfoForm").serialize();
		   
	 
                if(editusernameNum<3||editusernameNum>10||editrealnameNum<2||
                editrealnameNum>10||editdepartmentNum<1||
                editdepartmentNum>10||editroleNum<1||editroleNum>10||(edittelNum!=11&&edittelNum!=8)||
                !myReg.test(editemail)||editaffiliatedcompanyNum<1)
                  {

                     flag=false;

                  }

                  else{

                   flag=true;

                  } 
                    
                  if(flag){  
                  if(confirm("是否要提交修改的用户信息")){
                           
			          $.ajax({
			       
				
						url:"editUserInfo",
						type:"post",
						data:dataObj,
				        
				        success:function(result){
                           if(result=="修改成功"){

                              $("#edituserinfotip8").show().html("<font color=\"green\" size=\"3\"> <strong>NOTE!</strong>用户添加成功!</font>");

                                $("#editusername").val("");
				                $("#editrealname").val("");
				                $("#editdepartment").val("");
				                $("#editrole").val("");
				                $("#edittel").val("");
				                $("#editemail").val("");
				                $("#editaffiliatedcompany").val("");
				                
				                $("#edituserinfotip1").empty();
				                $("#edituserinfotip2").empty();
				                $("#edituserinfotip3").empty();
				                $("#edituserinfotip4").empty();
				                $("#edituserinfotip5").empty();
				                $("#edituserinfotip6").empty();
				                $("#edituserinfotip7").empty();
				               
				                
				                $("#edituserinfotip8").delay(2000).hide(0);       

                          }

                          else{

                              $("#edituserinfotip8").show().html("<font color=\"red\" size=\"3\">  <strong>NOTE!</strong> 添加失败!</font>");

                          }  
                                                            

                         }
                        
                  });
              } else {
			return false;
				}   

     		}

             else{

                  $("#edituserinfotip8").show().html("<font color=\"red\" size=\"3\"> <strong>NOTE!</strong> 请检查输入是否有误!</font>");

              }  
	   
	});  
	
	  $("#closeUserinfoBtn").click(function() {
	  
	    $("#editusername").val(""); 
	    $("#editrealname").val("");
	    
		$("#editdepartment").val("");
		
		$("#editrole").val("");
		
		$("#edittel").val("");
		
		$("#editemail").val("");
		
		$("#editaffiliatedcompany").val("");
				               
		$("#edituserinfotip1").empty();
		$("#edituserinfotip2").empty();
		$("#edituserinfotip3").empty();
		$("#edituserinfotip4").empty();
		$("#edituserinfotip5").empty();
		$("#edituserinfotip6").empty();
		$("#edituserinfotip7").empty();
		$("#edituserinfotip8").empty();
	 			
	  
	});   
           


//////////////////////////////////// end  编辑用户信息////////////////////////////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////// begin  用户管理模块动态修改指定用户密码以及编辑指定用户信息////////////////////////////////////////////////////////////////////////////////////////////////////////
 	       
	</script> 
	

	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->

</html>