<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">    
</head>
<body class="templatemo-bg-gray">
    <div class="container">
        <div class="col-md-12">
            <h1 class="margin-bottom-15">ssmbookapp</h1>
            <font color="red">${requestScope.message }</font>
            <form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="login1" method="post">                                                                                                                                                                                                                
                <div class="form-group">
                  <div class="col-xs-12">                    
                    <div class="control-wrapper">
                        <label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
                        <input type="text" class="form-control" id="loginname" placeholder="管理员用户名" name="loginname">
                    </div>                                    
                  </div>              
                </div>
                <div class="form-group">
                  <div class="col-md-12">
                      <div class="control-wrapper">
                        <label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
                        <input type="password" class="form-control" id="password" placeholder="登录密码" name="password">
                    </div>
                  </div>
                </div>
                
                <div class="form-group">
                  <div class="col-md-12">
                      <div class="control-wrapper">
                          <input type="submit" value="Log in" class="btn btn-info">
                          
                      </div>
                  </div>
                </div>
                <hr>
                
              </form>
              
        </div>
    </div>
</body>
</html>