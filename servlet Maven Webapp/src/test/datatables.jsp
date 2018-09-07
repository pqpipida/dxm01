
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import ="com.dxm.edu.entity.UserInfoEntity"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

UserInfoEntity userinfoEntity=(UserInfoEntity)request.getSession().getAttribute("user");

%>

<!DOCTYPE html>

<html lang="en"> 


<head>

	<meta charset="utf-8" />

	<title>测试demo2</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="static/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/datatables/jquery.dataTables.min.js"></script>
<link href="static/datatables/jquery.dataTables.min.css" rel="stylesheet">
<script type="text/javascript" src="static/datatables/datatables-managed.js"></script>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

	<div class="portlet box blue">

							
							<div class="portlet-body">

								<table class="table table-hover " id="notices_table">

									<thead>

										<tr>

											<th>序号</th>
											<th>标题</th>
											<th>时间</th>
											

									  </tr>

									</thead>

									<tbody>

										

									</tbody>

								</table>

							</div>

						</div>




<script type="text/javascript">
  
  //1、页面加载完成以后，直接去发送ajax请求，要到分页数据
	$(function(){
		//去首页
		build_notices_table();
	});
	
	var dataTable;
	function build_notices_table(){



		dataTable = $("#notices_table").MyDataTable([
		
		  
            {"data": 'noticeid'},
            {"data": 'title'},
            {"data": 'time'},
            {"data": null}

        ], "notices",
        [
            {
                targets: [4],
                fnCreatedCell: function (nTd, sData, oData, iRow, iCol) {
                    $(nTd).html('<button class="btn btn-primary btn-sm" onclick="gotoEdit(\''+oData.noticeid+'\')"><span class="glyphicon glyphicon-pencil"></span>编辑</button> <button class="btn btn-danger btn-sm" onclick="deleteSupplier(\''+oData.noticeid+'\')"><span class="glyphicon glyphicon-trash"></span>删除</button>');
                }
            }
        ],{},function(){});
	}
	
	
	</script>
 </body>
</html>
