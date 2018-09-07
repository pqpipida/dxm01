<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import ="com.dxm.edu.entity.UserInfoEntity"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

UserInfoEntity userinfoEntity=(UserInfoEntity)request.getSession().getAttribute("user");
  request.setCharacterEncoding("UTF-8");

      
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <!-- <html lang="en"> --> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>电厂侧 & About US</title>

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

							<li >

								<a href="init.do">

								首页

								

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

							<li class="active">

								<a data-toggle="dropdown" class="dropdown-toggle" href="">
								服务中心<span class="arrow open"></span>
								<span class="selected"></span>

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

						<span class="username">  <%=userinfoEntity.getUsername()%> 
						
						 </span>

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu">

							<li><a href="gotoEdit"><i class="icon-user"></i> 账户管理</a></li>

					<!-- 		<li><a href="page_calendar"><i class="icon-calendar"></i> My Calendar</a></li>

							<li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox(3)</a></li>

							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li> -->

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
					<span class="arrow "></span>
					</a>
					

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
				<li >

					<a href="javascript:;">

					<i class="icon-cogs"></i> 

					<span class="title">账户管理</span>
					<span class="arrow "></span>
					</a>
					

					<ul class="sub-menu">

						<li >

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

				<li >

					<a href="init.do">

					首页</a>

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

				<li class="active">

					<a href="gotoaboutUS">服务中心</a>

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

		  <div class="container-fluid">

				<!-- BEGIN PAGE HEADER-->

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

						<h3 class="page-title">

							About US</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="init.do">首页</a> 

								<i class="icon-angle-right"></i>

							</li>

							

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->
								  <div class="text-center">
								  <h1>我们是，爱与正义小组</h1>
								
								  </div>
								  <span>  <h4>小组简介</h4>
								 <p> 我们组一共9位成员，两两分组，负责整个国电煤炭交易项目的平台侧，电厂侧，供应商侧和分公司侧的全部功能的开发。全部成员团结合作，认真分析业务需求，将自己的部分拆分成多个功能点，并且完成了自己负责的二十个功能点。</p>
								 </span> 
								 
			                         <div class="portlet-body" id="chats">

									<div class="scroller" data-height="435px" data-always-visible="1" data-rail-visible1="1">

										<ul class="chats">
											

											<li class="in">

												<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="#" class="name"><h3>张庆园</h3></a>

													<span><h4>组长,负责平台侧,基于Java EE，采用Java servlet技术实现管理员登录功能、年度评价业务、供应商信息管理业务、账户管理业务、黑名单审核业务、用户管理业务、采购信息管理业务、保证金管理业务、煤种管理业务；用SSM+Bootstrap实现了管理员登录功能
														</h4></span>

													

												</div>

											</li>

											<li class="out">

												<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="#" class="name"><h3>蒋钰瑞</h3></a>

													<span><h4>组员,负责平台侧，基于jsp的java web实现用户管理、采购信息管理、保证金管理、煤种管理功能
													</h4></span>

													
												</div>

											</li>

											<li class="in">

												<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="init.do" class="name"><h3>邓向敏</h3></a>

													<span><h4>组员,负责电厂侧,基于j2ee，采用Mysql数据库，SSM框架集，以及Maven多模块项目管理协作开发。前端使用Bootstrap框架、CSS、jQuery、JavaScript以及 ajax异步请求、json数据解析等技术。</h4></span>

												</div>

											</li>

											<li class="out">

												<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="#" class="name"><h3>陈蕾</h3></a>

													<span><h4>组员,负责电厂侧,基于jsp的java web技术，实现“登陆 注册 注销”、“采购申请管理”、“采购执行管理”、“账户管理”四大板块内容</h4></span>


												</div>

											</li>

											<li class="in">

												<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="#" class="name"><h3>周航</h3></a>

													<span><h4>组员,负责供应商,,基于JavaEE体系，使用sevlet+css+js+html+mysql实现大部分供应商侧注册登录业务、个人信息管理业务、采购单显示业务、采购业务、缴纳保证金和退还保证金等业务，使用SSM框架实现供应商反馈和账户信息更新等功能</h4></span>


												</div>

											</li>

											<li class="out">

												<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="#" class="name"><h3>吴凡</h3></a>

													<span><h4>组员,负责供应商,,基于JavaEE体系，使用sevlet+css+js+html+mysql实现大部分供应商侧注册登录业务、个人信息管理业务、采购单显示业务、采购业务、缴纳保证金和退还保证金等业务，使用SSM框架实现供应商反馈和账户信息更新等功能</h4></span>

												</div>

											</li>

											<li class="in">

													<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="#" class="name"><h3>刘津宇</h3></a>

													<span><h4>组员,负责分公司侧组员,实现了分公司侧的采购申请管理、采购下达、中标审核、个人信息的查看与修改密码、
													企业信息查看、用户管理信息的查看修改添加用户等功能。所用技术：severlt+js+css。</h4></span>


												</div>
											</li>

											<li class="out">

												<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="#" class="name"><h3>胡皓</h3></a>

													<span><h4>组员,负责分公司侧,实现了分公司侧的采购申请管理、采购下达、中标审核、个人信息的查看与修改密码、
													企业信息查看、用户管理信息的查看修改添加用户等功能。所用技术：severlt+js+css。</h4></span>


												</div>

											</li>
											<li class="in">

												<img class="avatar" alt="" src="media/image/touxianglogo.png" />

												<div class="message">

													<span class="arrow"></span>

													<a href="#" class="name"><h3>王威</h3></a>

													<span><h4>组员,负责平台侧,系统采用J2EE架构、XML等技术进行研究,确认系统的开发模式与架构。在系统的实施过程中,考虑了系统的性能优化、用户操作的友好性等。</h4></span>


												</div>

											</li>


										</ul>

									</div>

									<div class="chat-form">

										<div class="input-cont">   

											<input class="m-wrap" type="text" placeholder="Type a message here..." />

										</div>

										<div class="btn-cont"> 

											<span class="arrow"></span>

											<a href="" class="btn blue icn-only"><i class="icon-ok icon-white"></i></a>

										</div>

									</div>

								</div>

							</div>


			  <!-- END PAGE CONTENT-->

			</div>

			<!-- END PAGE CONTAINER--> 

		</div>

		<!-- END PAGE -->    

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

	<script src="media/js/app.js"></script>      
 
	 <script>

		jQuery(document).ready(function() {    

		   App.init();
		   
		 
		});

	

	</script>  


	<script type="test/javascript" src="jquery-1.8.min.js">
</script>


	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script></body>

<!-- END BODY -->
</body>
</html>