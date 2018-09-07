<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
		+ path + "/";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<base href="<%=basePath%>">
<title>员工信息</title>
<!-- web路径
不以/开始的相对路径，找资源，以当前的资源路径为基准，经常容易出问题
以/开始的相对路径，找资源，以服务器的路径为标准(http://localhost:8080),经常加上项目名称
	http://localhost:8080/crud
	bootatrap.min.js依赖于jquery。min。js，所以应该放在其后面,jquery版本需要1.9以上
-->
<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/My97DatePicker/WdatePicker.js"></script>
<style type="text/css">
 span{
  color:red;
  font-weight: bold;
 }
</style>
</head>
<body>

<!-- 搭建显示页面 -->
<div class="container">
<!-- 标题栏 -->
<div class="row">
	<div class="col-md-12 ">
		<h1>电厂用户注册</h1>
	</div>
</div>
<!-- 供应商注册信息 -->
<div class="row">
	<div class="col-md-12">
<form class="form-horizontal" id="save_user" action="gosaveRegister" method="post">
<div class="form-group">
    <label for="userName_add_input" class="col-sm-3 control-label">用户名</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="username" id="username_add_input" placeholder="用户名">
    </div>
    <div class="col-sm-1"><span>*</span>
    </div>
  </div>
  <div class="form-group">
    <label for="userPassword_add_input" class="col-sm-3 control-label">密码</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="password" id="password_add_input" placeholder="密码">
    </div>
    <div class="col-sm-1"><span>*</span>
    </div>
  </div>
  <div class="form-group">
    <label for=realName_add_input" class="col-sm-3 control-label">姓名</label>
    <div class="col-sm-5">
	  <input type="text" class="form-control" name="realName" id="realName_add_input" placeholder="姓名">
    </div>
    <div class="col-sm-1"><span>*</span>
    </div>
  </div>
  <div class="form-group">
    <label for="userDepartment_add_input" class="col-sm-3 control-label">部门</label>
    <div class="col-sm-5">
	  <input type="text" class="form-control" name="department" id="department_add_input" placeholder="部门">
    </div>
    <div class="col-sm-1"><span>*</span></div>
  </div>
  <div class="form-group">
    <label for="userTel_add_input" class="col-sm-3 control-label">联系方式</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="userTel" id="userTel_add_input" placeholder="联系方式">
    </div>
    <div class="col-sm-1"><span>*</span>
    </div>
  </div>
  <div class="form-group">
    <label for="userRole_add_input" class="col-sm-3 control-label">角色</label>
    <div class="col-sm-5">
    <select class="form-control" name="role" id="role_add_input" >
	  <option value="1">管理人员</option>
	  <option value="2">高层领导</option>
	  <option value="3">XXX</option>
	</select>
    </div>
   
</div>
  <div class="form-group">
    <label for="company _add_input" class="col-sm-3 control-label">所属公司</label>
    <div class="col-sm-5">
      <input type="text" class="form-control" name="company" id="company _add_input" placeholder="所属公司">
    </div>
	<div class="col-sm-1"><span>*</span>
    </div>
  </div>
  <div class="form-group">
    <label for="companyProfile_add_input" class="col-sm-3 control-label">公司简介</label>
    <div class="col-sm-6">
      <textarea rows="3" class="form-control" name="companyProfile" id="companyProfile_add_input"></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-md-4 col-md-offset-4">
    	<button class="btn btn-primary" id="user_save_btn" type="submit">保存</button>
    </div> 
</div>
																		
</form>
	</div>
</div>
</div>
<script type="text/javascript">
	

</script>
</body>
</html>