
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import ="com.dxm.edu.entity.UserInfoEntity"%>
<%@ page import ="com.dxm.edu.entity.PurchasingDemandEntity"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

UserInfoEntity userinfoEntity=(UserInfoEntity)request.getSession().getAttribute("user");
  request.setCharacterEncoding("UTF-8");
//PurchasingDemandEntity pd=(PurchasingDemandEntity)request.getSession().getAttribute("purchasingdemand");
      
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <!-- <html lang="en"> --> <!--<![endif]-->

<!-- BEGIN HEAD -->

 <head>

	<meta charset="utf-8" />

	<title>电厂侧 | 比价审核操作--已审核</title>

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

							<li><a href="gotoEdit"><i class="icon-user"></i>账户管理</a></li>
<!-- 
							<li><a href="page_calendar"><i class="icon-calendar"></i> My Calendar</a></li>

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

				<li class="start active">

					<a href="javascript:;">

					<i class="icon-th-list"></i> 

					<span class="title">采购申请管理</span>

					<span class="arrow open"></span>
					<span class="selected"></span>

					</a>

					<ul class="sub-menu">
						<li >

							<a href="Procurement_DemandCreation">

							采购需求创建                    </a>

						</li>

						<li >

							<a href="getStateisdshlists">

							采购审核                     </a>

						</li>
						<li class="active">

							<a href="getpurchasingdemandlists">

							采购申请查询                     </a>

						</li>
					</ul>

				</li>

				<li >

					<a href="javascript:;">

					<i class="icon-map-marker"></i> 

					<span class="title">采购执行报批</span>
					<span class="arrow "></span></a>

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

							采购申请管理 <small></small>

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

						  <li><a href="getpurchasingdemandlists">采购申请查询</a>
						      <i class="icon-angle-right"></i>
						  </li>		
						  <li>
							  <a href="#">比价采购——审核通过</a>
						  </li>

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
<form action="#提交需求创建" method="post" name="addForm"  onsubmit="return CheckPost();">
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
											<td colspan="4"><span>报名截止时间:</span>${purchasingdemand.deadline}</td>
										</tr>

									</thead>

									<tbody>

										<tr>

											<td colspan="2"><span>申请单位：</span>${purchasingdemand.applicationunit}</td>
											<td><span>单据编号：</span>${purchasingdemand.documentnumber}</td>
											<td><span>申请人：</span>${purchasingdemand.applicant}</td>

										</tr>

										<tr>

											<td ><span>签发人：</span>${purchasingdemand.issuer}</td>
											<td><span>申请日期：</span>${purchasingdemand.applicationdate}</td>
											<td colspan="2"> <span>交货时间：</span>${purchasingdemand.deliverytime1} <span>至</span>${purchasingdemand.deliverytime2} </td>
																						
										</tr>

										<tr>

											<td colspan="2"><span>煤种:</span> ${purchasingdemand.varietyofcoal1}${purchansingdemand.varietyofcoal2}</td>
											<td><span>采购数量:</span>${purchasingdemand.purchasequantity}<span>（万吨）</span></td>
											<td><span>运输方式:</span>${purchasingdemand.typeofshipping}</td>

										</tr>

										<tr>

											<td ><span>交货地点:</span>${purchasingdemand.placeofdelivery}</td>
											<td><span>结算方式:</span>${purchasingdemand.settlementmethod}</td>
											<td colspan="2"><span>验收方式:</span>${purchasingdemand.acceptancemethod}</td>

										</tr>
										<tr>
										<td colspan="2"><span>最高限价:</span>${purchasingdemand.priceceiling}<span>(元/卡.吨)</span></td>
										<td colspan="2"><span>最低限价:</span>${purchasingdemand.floorprice}<span>(元/卡.吨)</span></td>
										</tr>
										<tr>
											<td colspan="4"><span>限价说明:</span>${purchasingdemand.limitprice}</td>
										</tr>
										<tr>
											<td colspan="4">
												<span>结算付款方式:</span>
												${purchasingdemand.settlementpaymentmethod}
											</td>
										</tr>
										<tr>
											<td colspan="4">
											<span>保证金要求:本次采购报价保证金标准:</span>${purchasingdemand.pricemarginpayment}<span>元/吨,履约保证金标准:</span>${purchasingdemand.performancebondpayment}<span>元/吨;
											参与报价时，供应商须先通过公开平台开立的保证金虚拟账户缴纳</span>${purchasingdemand.purchasequantity*purchasingdemand.pricemarginpayment}<span>(万)报价保证金；
											中标消息公布后，未中标供应商的报价保证金将自动返回供应商保证金虚拟账户；中标供应商与电厂签订财顾合同时，
											供应商按电厂履约保证金要求及签约量缴纳履约保证金；在双方完成合同履约后，电厂将解冻履约保证金，履约保证金将返还供应商保证金虚拟账户。</span>									</td>
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

											<td colspan="3"><span>收到基基准</span></td>

										</tr>

									</thead>

									<tbody>

										<tr>

											<td ><span>收到基低位发热量Qnet,ar≥:</span>${purchasingdemand.receivedlowbaseheat}<span>(KCal/kg)</span></td>
											<td><span>收到基全硫St,ar≤:</span>${purchasingdemand.star}<span> （%）</span></td>
											<td><span>全水分M≤:</span>${purchasingdemand.m}<span> (%)</span></td>
										</tr>

										<tr>

											<td colspan="1"><span>收到基灰分Aar≤:</span>${purchasingdemand.aar}<span> (%)</span></td>
											<td colspan="2"> <span>收到基挥发分Var:</span>${purchasingdemand.varmin}<span> （%）至</span>${purchasingdemand.varmax}<span> （%）</span></td>
										</tr>

										<tr>
                                            <td colspan="3"><span>空气干燥基基准</span></td>
										</tr>

										<tr>

											<td ><span>空干基水分Mad≤：</span>${purchasingdemand.mad}<span> （%）</span></td>
											<td><span>空干基全硫St,ad≤:</span>${purchasingdemand.stad}<span> （%）</span></td>
											<td><span>空干基挥发分Vad:</span>${purchasingdemand.vadmin}<span> （%）至 </span>${purchasingdemand.vadmax}<span>（%）</span></td>
										</tr>
                                        <tr>
											<td colspan="3"><span>干基基准</span></td>
										</tr>
										<tr>
											<td ><span>干基高位发热量Qgr,d≥:</span>${purchasingdemand.highestcalorificvalue}<span>(KCal/kg)</span></td>
											<td><span>干基全硫St,d≤:</span>${purchasingdemand.std}<span> （%）</span></td>
											<td><span>干燥误会基挥发分:</span>${purchasingdemand.dryashfreevolatilesmin} <span>（%）至 </span>${purchasingdemand.dryashfreevolatilesmax}<span>（%）</span></td>
										</tr>
										<tr>
											<td ><span>粒度(mm)≤:</span>${purchasingdemand.mm} </td>
											<td><span>灰熔点ST(℃)≥:</span>${purchasingdemand.st} </td>
											<td><span>哈式可磨系数(HGI)≥:</span>${purchasingdemand.hgi}</td>
										</tr>
										<tr>
											<td colspan="3"><span>备注:</span>${purchasingdemand.remarks}</td>
											
										</tr>
									</tbody>

								</table>

							</div>

						</div>
					<!--end  采购审核 煤质要求-->
					<!--begin 采购审核 单据审批记录 -->
						<div class="portlet box blue">

							<div class="portlet-title">

								<div class="caption"><i class="icon-cogs"></i>单据审批记录</div>

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

											<th >序号</th>
											<th>操作人员</th>
											<th>单位</th>
											<th>操作</th>
											<th>审批意见</th>
											<th>操作时间</th>
											
										</tr>

									</thead>

										<c:forEach items="${records}" var="record" >
										<tr>
										
											<td>${record.id}</td>
											<td>${record.operator}</td>
											<td>${record.company}</td>
											<td>${record.operation}</td>
											<td>${record.opinion}</td>
											<td>${record.time}</td>
										</tr>
										</c:forEach>
										<%-- <tr>
										    <td colspan="6" id="addrecord">审批意见:
												<textarea style="width:400px" name="opinion" id="opinion" required="required" maxlength="100"></textarea>
												<input type="hidden" name="documentnumber" id="documentnumber" value="${purchasingdemand.documentnumber}">
												<input type="hidden" name="demandid" id="demandid" value="${purchasingdemand.purchasingdemandid}">
												<input type="hidden" name="realname" id="realname" value="${user.realname}">
												<input type="hidden" name="affiliatedcompany" id="affiliatedcompany" value="${user.affiliatedcompany}">
										    </td>
										</tr>
 --%>

								</table>

							</div>

						</div>
					<!--end  采购审核 煤质要求-->
                    <div align="center">
						
					<!-- <input type="button" id="" class="btn blue button-next" value="单据审批记录"> -->
							
					
						
				    <a href="getpurchasingdemandlists" class="btn green button-submit">返回 <i class="m-icon-swapright m-icon-white"></i></a>
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
 
	 <script>

		jQuery(document).ready(function() {    

		   App.init();
	
	 /* 			   
 	  $("#approvedbtn").click(function() {
	 			alert(1);
	 		var opinion =$("#opinion").val();
	 		var affiliatedcompany=$("#affiliatedcompany").val();
	 		var operator=$("#realname").val();
	 		var documentnumber=$("#documentnumber").val();
	 		var demandid=$("#demandid").val();
	 		
	 		
                  if(confirm("是否满足要求？")){
                         
			          $.ajax({
			       
						url:"updateRecord",
					
						data:{opinion:opinion,company:affiliatedcompany,operator:operator,documentnumber:documentnumber,purchasingdemandid:demandid},
				       
				        success:function(result){
                        if (result=="success"){
                        alert("成功");
                         window.location.href ="getStateisdshlists";
                        }else{
                        alert("失败")
                        
                        }
                                                            
                    }
                         
                        
                  });
              
              }else {
			return false;
				}   

	});  
	
	 $("#rejectbtn").click(function() {
	 			alert(1);
	 		var opinion =$("#opinion").val();
	 		var affiliatedcompany=$("#affiliatedcompany").val();
	 		var operator=$("#realname").val();
	 		var documentnumber=$("#documentnumber").val();
	 		var demandid=$("#demandid").val();
	 		
	 		
                  if(confirm("是否驳回？")){
                         
			          $.ajax({
			       
						url:"rejectdemand",
					
						data:{opinion:opinion,company:affiliatedcompany,operator:operator,documentnumber:documentnumber,purchasingdemandid:demandid},
				       
				        success:function(result){
                        if (result=="success"){
                        alert("成功驳回");
                         window.location.href ="getStateisdshlists";
                        }else{
                        alert("驳回失败")
                        
                        }
                                                            
                    }
                         
                        
                  });
              
              }else {
			return false;
				}   

     		

             
	   
	});   */
	
});

	

	</script>  
	



	<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script>

</body>

<!-- END BODY -->


</html>
