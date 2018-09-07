<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import ="com.dxm.edu.entity.UserInfoEntity"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

	<title>电厂侧 | 采购需求创建</title>

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
			  <a class="brand" href="init.do">
	
					<p><img src="media/image/1.png" alt="logo" /></p>
	
					</a>

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

						<span class="username">  <%=userinfoEntity.getUsername()%> 
						
						 </span>

						<i class="icon-angle-down"></i>

						</a>

						<ul class="dropdown-menu">

							<li><a href="gotoEdit"><i class="icon-user"></i> 账户管理</a></li>

						<!-- 	<li><a href="page_calendar"><i class="icon-calendar"></i> My Calendar</a></li>

							<li><a href="inbox.html"><i class="icon-envelope"></i> My Inbox(3)</a></li>

							<li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li> -->

							<li class="divider"></li>

							<li><a href="extra_lock"><i class="icon-lock"></i> 锁屏</a></li>

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

				<li>

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

				<li  class="start active">

					<a href="javascript:;">

					 <i class="icon-th-list"></i> 

					<span class="title">采购申请管理</span>

					<span class="arrow open"></span>
					<span class="selected"></span>

					</a>

					<ul class="sub-menu" >

						<li class="active">

							<a href="Procurement_DemandCreation">

							采购需求创建                    </a>

						</li>

						<li >

							<a href="getStateisdshlists">

							采购审核                     </a>

						</li>
						<li >

							<a href="getpurchasingdemandlists">

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

							<a href="PurchasingQuery">

							采购执行查询                   
							</a>

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

							采购申请管理 <small>采购需求创建</small>

						</h3>

						<ul class="breadcrumb">

							<li>

								<i class="icon-home"></i>

								<a href="init.do">首页</a> 

								<i class="icon-angle-right"></i>

							</li>

							<li>

								<a href="#">采购申请管理</a>

								<i class="icon-angle-right"></i>

							</li> 

							<li><a href="#">采购需求创建</a></li>

						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid margin-bottom-20">

					<div class="span12">

						
						<!--
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

						</p>

						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.

						</p>-->

					</div>

				</div>
			 <form  action="" name="addForm" method="post"  id="adddemandForm" > 
				<div class="row-fluid">
				
						<!--begin  采购需求创建 基本情况-->

						<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption"><i class="icon-cogs"></i>基本情况</div>

								<div class="tools">

									<a href="javascript:;" class="collapse"></a>

									<a href="#portlet-config" data-toggle="modal" class="config"></a>

									<a href="javascript:;" class="reload"></a>

									<a href="javascript:;" class="remove"></a>

								</div>

						  </div>

							<div class="portlet-body">

								<table class="table table-hover">

									<thead>

										<tr>
										    
											<td colspan="4">
											<input type ="hidden" name="purchasingdemandid"/>
											<input type ="hidden" name="state" />
											报名截止时间：
										
											  <input type="text"  class="m-wrap small"  name="deadline" id="deadline" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})">
											  <span>*</span>
 
											</td>
										</tr>

									</thead>

									<tbody>

										<tr>

											<td colspan="2">
											申请单位：
												<input type="text"   class="m-wrap small"name="applicationunit" required="required" maxlength="20">
												<span>*</span>
											</td>
											<td>
											单据编号：
												<input type="text"   class="m-wrap small" name="documentnumber" id="documentnumber" required="required" maxlength="20">
												<span>*</span><div style="display: inline" id="warntip1"></div>
											</td>
											<td>
											申请人：
											<input type="hidden"   class="m-wrap small" name="applicant" required="required" maxlength="10" value="${user.username}"
											 onkeyup="value=value.replace(/[\W]/g,'') "  
 										onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
											<span>${user.username}</span>							
											</td>

										</tr>

										<tr>

											<td >
											签发人：
												<input type="text"   class="m-wrap small" name="issuer" required="required" maxlength="10"
												 onkeyup="value=value.replace(/[\W]/g,'') "  
 										onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
												<span>*</span>
												</td>
											<td>
											申请日期：
											<input type="text"    class="m-wrap small" name="applicationdate" id="applicationdate" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})">
											<span>*</span>
 
											</td>
											<td colspan="2">
											交货时间：
											<input type="text"   class="m-wrap small" name="deliverytime1" id="deliverytime1" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})">
											<span>*</span>
											至
											<input type="text"    class="m-wrap small" name="deliverytime2" id="deliverytime2" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd',readOnly:true})">
											<span>*</span> 
											</tr>

										<tr>

											<td colspan="2">
												煤种:
												<select   class="m-wrap small" name="varietyofcoal1">
												  <option value="烟煤" >烟煤</option>
												  <option value="无烟煤">无烟煤</option> 
												</select>
												<select   class="m-wrap small" name="varietyofcoal2">
												<option value="原煤" >原煤</option>
												<option value="xxx">XXX</option>
													
												</select>
												<span>*</span>
												</td>
											<td>
												采购数量:<input type="text"   class="m-wrap small" name="purchasequantity"  required="required" maxlength="10" 
												onkeyup="value=value.replace(/[^\d]/g,'') " 
												onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（万吨）
												<span>*</span>
											</td>
											<td>
												运输方式:
												<select   class="m-wrap small" name="typeofshipping">
													<option value="火车" >火车</option>
												  <option value="船">船</option>
												</select>
												<span>*</span>
											</td>

										</tr>

										<tr>

											<td >
												交货地点:<input type="text"  class="m-wrap small" name="placeofdelivery"  required="required" maxlength="20">
												<span>*</span>
											</td>
											<td>
												结算方式:
												<select   class="m-wrap small" name="settlementmethod">
																
												  <option value ="一票结算">一票结算</option>
												  <option value="其它">其它</option>
												  <option value="xxx">XXX</option>

												</select>
												<span>*</span>
												</td>
											<td colspan="2">
												验收方式:
												<select   class="m-wrap small" name="acceptancemethod">
												 <option value="到厂第三方验收" >到厂第三方验收</option>
												  <option value="其它">其它</option>
												</select>
												<span>*</span>
											
											</td>

										</tr>
										<tr>
										<td colspan="2">
										最高限价:<input type="text"  class="m-wrap small" name="priceceiling" required="required" maxlength="20"
										onkeyup="value=value.replace(/[^\d]/g,'') "
										 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"><span>*</span>(元/卡.吨)
										</td>
										<td colspan="2">
										最低限价:<input type="text"   class="m-wrap small"  name="floorprice" required="required" maxlength="20" 
										onkeyup="value=value.replace(/[^\d]/g,'') "
										 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))"> <span>*</span>(元/卡.吨)
										</td>
										</tr>
										<tr>
											<td colspan="4">
												限价说明:<textarea  style="width:500px" name="limitprice"   maxlength="50"></textarea><span>*</span>
											</td>
										</tr>
										<tr>
											<td colspan="4">
											 结算付款方式:<textarea  style="width:500px" name="settlementpaymentmethod"   maxlength="50" ></textarea><span>*</span> 
											</td>
										</tr>
										
										<tr>
										<td colspan="2" >
										
										
										<label class="control-label">

										<div class="controls">
 											报价保证金缴纳:
											<label class="radio">
											<div class="radio"><span><input  name ="ifpricemarginpayment"  type="radio" checked="" value="不要求"></span></div>不要求
											</label>

											<label class="radio">
											<div class="radio"><span><input  name ="ifpricemarginpayment"  type="radio" checked="" value="要求"></span></div>要求
											
											</label>
									    <input type="text" style="width:60px" name="pricemarginpayment"
									    onkeyup="value=value.replace(/[^\d]/g,'') "
										 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">元/吨 

										</div>
										</label>
											
										</td>
										<td colspan="2">
													
										<label class="control-label">

										<div class="controls">
 											履约保证金缴纳:
											<label class="radio">
											<div class="radio"><span><input  name ="ifperformancebondpayment"  type="radio" checked="" value="不要求"></span></div>不要求
											</label>

											<label class="radio">
											<div class="radio"><span><input  name ="ifperformancebondpayment"  type="radio" checked="" value="要求"></span></div>要求
											
											</label>
										<input type="text" style="width:60px"  maxlength="30" name="performancebondpayment"
										onkeyup="value=value.replace(/[^\d]/g,'') "
										 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">元/吨
                                         

										</div>
										</label>
											
									
										  </td> 
										
									    </tr>
									</tbody>

								</table>

							</div>

				  </div>
					<!--end  采购需求创建 基本情况-->
				
					<!--begin  采购需求创建 煤质要求-->
						<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption"><i class="icon-cogs"></i>煤质要求</div>

								<div class="tools">

									<a href="javascript:;" class="collapse"></a>

									<a href="#portlet-config" data-toggle="modal" class="config"></a>

									<a href="javascript:;" class="reload"></a>

									<a href="javascript:;" class="remove"></a>

								</div>

							</div>

							<div class="portlet-body">

								<table class="table table-hover">

									<thead>

										<tr>

											<td colspan="3">收到基基准</td>

										</tr>

									</thead>

									<tbody>

										<tr>

											<td >
										
											收到基低位发热量Qnet,ar≥:<input type="text" style="width:60px" maxlength="5" name="receivedlowbaseheat"
											onkeyup="value=value.replace(/[^\d]/g,'') " 
											onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">(KCal/kg)
											</td><td>

											收到基全硫St,ar≤:<input type="text" style="width:60px" maxlength="2" name="star"
											onkeyup="value=value.replace(/[^\d]/g,'') " 
											onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
											</td><td>
											全水分M≤:<input type="text" style="width:60px" maxlength="2" name="m"
											onkeyup="value=value.replace(/[^\d]/g,'') " 
											onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">(%)
											</td>
										</tr>

										<tr>

											<td colspan="1">
											收到基灰分Aar≤:<input type="text" style="width:60px" maxlength="2" name="aar"
											onkeyup="value=value.replace(/[^\d]/g,'') " 
											onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">(%)
											</td><td colspan="2">
										    收到基挥发分Var:<input type="text" style="width:60px" maxlength="2" name="varmin" onkeyup="value=value.replace(/[^\d]/g,'') "
										     onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
										     至<input type="text" style="width:60px" maxlength="2" name="varmax" onkeyup="value=value.replace(/[^\d]/g,'') " 
										     onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
											</td>
										</tr>

										<tr>
                                            <td colspan="3">空气干燥基基准</td>
										</tr>

										<tr>

											<td >
												空干基水分Mad≤：<input type="text" style="width:60px" maxlength="2" name="mad" onkeyup="value=value.replace(/[^\d]/g,'') "
												 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
												</td><td>
												空干基全硫St,ad≤:<input type="text" style="width:60px" maxlength="2"  name="stad"onkeyup="value=value.replace(/[^\d]/g,'') " 
												onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
												</td><td>
												空干基挥发分Vad:<input type="text" style="width:60px" maxlength="2" name="vadmin" onkeyup="value=value.replace(/[^\d]/g,'') " 
												onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
												至<input type="text" style="width:60px" name="vadmax" onkeyup="value=value.replace(/[^\d]/g,'') " 
												onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
											</td>
										</tr>
                                        <tr>
											<td colspan="3">干基基准</td>
										</tr>
										<tr>
											<td >
												干基高位发热量Qgr,d≥:<input type="text" style="width:60px" maxlength="2" name="highestcalorificvalue" onkeyup="value=value.replace(/[^\d]/g,'') "
												 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">(KCal/kg)
											</td><td>
													
												干基全硫St,d≤:<input type="text" style="width:60px" maxlength="2" name="std" onkeyup="value=value.replace(/[^\d]/g,'') "
												 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
											</td><td>
												干燥无灰基挥发分:<input type="text" style="width:60px" maxlength="2" name="dryashfreevolatilesmin"onkeyup="value=value.replace(/[^\d]/g,'') " 
												onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
												至<input type="text" style="width:60px" maxlength="2" name="dryashfreevolatilesmax" onkeyup="value=value.replace(/[^\d]/g,'') "
												 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">（%）
											</td>
										</tr>
										<tr>
											<td >
												粒度(mm)≤:<input type="text" style="width:60px" name="mm" maxlength="2" onkeyup="value=value.replace(/[^\d]/g,'') "
												 onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
												</td><td>
												灰熔点ST(℃)≥:<input type="text" style="width:60px" name="st" maxlength="4" onkeyup="value=value.replace(/[^\d]/g,'') " 
												onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
											</td><td>
												哈式可磨系数(HGI)≥:<input type="text" style="width:60px" name="hgi" maxlength="2" onkeyup="value=value.replace(/[^\d]/g,'') " 
												onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
											<input type="hidden" style="width:60px" name="state" value="草稿" onkeyup="value=value.replace(/[^\d]/g,'') " 
											onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\d]/g,''))">
											</td>
										</tr>
										<tr>
											<td colspan="3">
											备注:
											<textarea style=" width:400px" name="remarks" maxlength="200"></textarea>
											</td>
										</tr>
									</tbody>

								</table>

							</div>

						</div>
					<!--end  采购需求创建 煤质要求-->
                 <!--    <div align="center">
                    
                    <a href="Procurement_DemandCreation" class="btn white button-next"><i class="m-icon-swapleft m-icon-white"></i>重置</a>
                   
                  	<button type="submit" id="submit-btn" class="btn green pull-center">保存</button>
                    <input type="button" class="btn blue pull-center"  value="提交"  id="tijiaobtn">           
					
					</div>	 -->	
					
					<div align="center">
					<a href="Procurement_DemandCreation" class="btn white button-next"><i class="m-icon-swapleft m-icon-white"></i>重置</a>
						<input type="button"  class="btn green pull-center" id="savedemand"  value="保存">
						<input type="button"   class="btn blue pull-center" id="tijiaobtn"  value="提交"  >
						<div style="display: inline" id="warntip2"></div>
					</div>
			  </div>
				
         </form>
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
	<script type="text/javascript" src="static/My97DatePicker/WdatePicker.js"></script> 
 
 	 <script>

jQuery(document).ready(function() {    

		   App.init();
		   
	 $("#documentnumber").blur(function(){

                var param=$("#documentnumber").val();
				//alert(param);
               //检测单据编号是否为唯一

                $.ajax({

                    url:"checkdocumentnumber",
                   

                    data:{documentnumber:param},   
                     

                    success:function(f){
                   
                        if(f != "yes"){                            
						  
                             $("#warntip1").html("<font color=\"green\" size=\"2\"> </font>");

                        } 

                        else{                                 

                            $("#warntip1").html("<font color=\"red\" size=\"2\"> 输入的单据编号已存在</font>");

                        }

                    }                 

                });

           });	   
    $("#savedemand").click(function() {
          var flag=false;
          var documentnumber=$("#documentnumber").val();
          var num=$("#documentnumber").val().length;
          
          var dataObj = $("#adddemandForm").serialize();
          if(num<1){
          flag=false;
          
          }else{
          
          flag=true;
          }
	
		 // alert(flag);
		if(flag){
		      if(confirm("是否要将采购需求保存为草稿")){
                         
			          $.ajax({
				
						url:"insertpurchasingdemand",
						type:"post",
						data:dataObj,
				        
				        success:function(data){
				    
				        if(data=="success"){
				        alert("提交成功");
				        window.location.href ="Procurement_DemandCreation";
				       
				        }else if(data=="failure"){
				          alert("提交失败");
				           window.location.href =" Procurement_DemandCreation";
				        }else if(data=="单据编号重复，重新输入"){
				        
				         $("#warntip2").html("<font color=\"red\" size=\"2\"> 输入的单据编号已存在,请修改</font>");
				        }
				     
				        }
		  					 
		  					 
		  			 });
			
			}else {
			
			return false;
				
				}   
			}else{
			
			  $("#warntip2").html("<font color=\"red\" size=\"2\"> 输入的单据编号不能为空,请输入</font>");
			}
			
			
		});
	$("#tijiaobtn").click(function() {
	      var flag=false;
          var documentnumber=$("#documentnumber").val();
          var num=$("#documentnumber").val().length;
          
	
		var dataObj = $("#adddemandForm").serialize();
		 if(num<1){
          flag=false;
          
          }else{
          
          flag=true;
          }
	
		//  alert(flag);
		if(flag){
		      if(confirm("是否要将采购需求提交到")){
                         
			          $.ajax({
				
						url:"adddemand",
						type:"post",
						data:dataObj,
				        
				        success:function(data){
				    
				        if(data=="success"){
				        alert("提交成功");
				        window.location.href ="Procurement_DemandCreation";
				        
				        
				        }else if(data=="failure"){
				          alert("提交失败");
				           window.location.href =" Procurement_DemandCreation";
				        }else if(data=="单据编号重复，重新输入"){
				        
				         $("#warntip2").html("<font color=\"red\" size=\"2\"> 输入的单据编号已存在,请修改</font>");
				        }
				        
				        }
		  					 
		  					 
		  			 });
			
			}else {
			
			return false;
				
				}   
			}else{
			
			  $("#warntip2").html("<font color=\"red\" size=\"2\"> 输入的单据编号不能为空,请输入</font>");
			}
			
		});

	});

</script>   

	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script>


<!-- END BODY -->

</html>