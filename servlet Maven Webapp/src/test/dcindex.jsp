<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>主页</title>
<link href="static/css/layout.css" rel="stylesheet" type="text/css" />
	<link href="static/css/mymenu.css" rel="stylesheet" type="text/css"  />
	<link href="static/css/text.css" rel="stylesheet" type="text/css" />
	<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="static/datatables/jquery.dataTables.min.css" rel="stylesheet">
</head>

<body>
<div id="container">
	<div id="top">
 <div id="rinfo1">
		<button class="btn btn-primary" id="user_add_model_btn" onclick="gotoRegister();">注册</button>
		  </div>
		   <div id="rinfo2">
	    <button class="btn btn-primary" id="user_add_model_btn" onclick="gotoLogin();">登录</button>
	</div>
	</div>
	<div id="topmenu">
		<ul id="qm0" class="qmmc qm-horizontal-c">

	<li><a class="qmitem-m qmparent" href="javascript:void(0)">首页</a>

		<ul class="qmsub">
			
		<li><span class="qmtitle"><a href="userlogin.jsp">我的首页</a></span></li>
		<li><span class="qmitem-s"><a href="http://www.baidu.com">退出</a></span></li>
		</ul></li>

	<li><a class="qmitem-m" href="javascript:void(0);">企业荣誉</a></li>
	<li><a class="qmitem-m" href="javascript:void(0);">产品信息</a></li>
	<li><a class="qmitem-m" href="javascript:void(0);">人员招聘</a></li>
	<li><a class="qmitem-m" href="javascript:void(0);">我要投诉</a></li>
	<li><a class="qmitem-m" href="javascript:void(0);">关于我们</a></li>
	<li><a class="qmitem-m" href="javascript:void(0);">联系我们</a></li>
</ul>
	</div>
	<div id="main">
	  <div id="leftmenu">
	  	<ul>
			<li>系统设置</li>
				<ul>
					<li><a href="jsgl.html">角色管理</a></li>
					<li><a href="yhgl.html">用户管理</a></li>
					<li><a href="qxgl.html">权限管理</a></li>
				</ul>
			<li>基本资料</li>
				<ul>
					<li>产品类别</li>
					<li>产品信息</li>
					<li>供应商类别</li>
					<li>供应商信息</li>
				</ul>
			<li>采购管理</li>
				<ul>
					<li>供应商报价</li>
					<li>供应商订单</li>
					<li>订单入库</li>
					<li>采购退货</li>
					<li>付款申请</li>
					<li>财务付款</li>
				</ul>
		</ul>
	  
	  </div>
	  <div id="maininfo">	
	    <table width="891" height="219" border="0">
          <tr>
            <td width="148">首页&gt;&gt;</td>
            <td width="162">&nbsp;</td>
            <td width="238">&nbsp;</td>
            <td width="325">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td colspan="3"><h1>欢迎使用国电煤炭交易平台管理系统</h1></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
		  <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
		  <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
		  <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
		  <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
	  </div>
	</div>
	<div class="footer">
        <div>
            <p class="footer_p">
           	<a href="/service/index.jhtml">客服中心</a>|<a href="/contact/index.jhtml">联系我们</a></p>
            <p>网站版权归中国国电集团公司所有    京ICP备 05053479号-2 |京公网安备110102005596号-1</p>
            <p>地址：北京市昌平区未来科技城  邮编：102209 电话：400-020-8000（非工作时间：15011089832）、010-56978755 传真： 010-56978760</p>
			<p>电子邮箱：fuel@powerec.net</p>
        </div>
 </div>
</div>
<script type="text/javascript">

	function gotoRegister() {
		window.location.href="gotodcRegister";

	}
	

	
	function gotoLogin	() {
		window.location.href="gotodclogin";

	}

</script>
</body>
</html>

