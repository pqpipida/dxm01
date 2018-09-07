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

	<title>测试demo</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

<link href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/datatables/jquery.dataTables.min.css"></script>
<script type="text/javascript" src="static/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="static/datatables/datatables-managed.js"></script>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body >
<div class="container">
<!-- 标题栏 -->
<div class="row">
	<div class="col-md-12">
		<h1>公告</h1>
	</div>
</div>
 <div class="row">
	<div class="col-md-12">
		<table class="table table-hover" id="notices_table">

								

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
							<!-- 显示分页信息 -->
 <div class="row">
	分页文字信息
	<div class="col-md-6" id="page_info_area">
	</div>
	分页条信息
	<div class="col-md-6" id="page_info_nav">
		
	</div>
</div> 
</div>

	  <script type="text/javascript">
 //1、页面加载完成以后，直接去发送ajax请求，要到分页数据
	$(function(){
		//去首页
		to_page(1);
	});
	
	function to_page(pn) {
		$.ajax({
			url:"notices",
			data:"pn="+pn,
			type:"get",
			success:function(result){
				//console.log(result);
				//解析并显示员工数据
				build_notices_table(result);
				//接续并显示分页信息
			/* 	 build_page_info(result);
				//解析并显示分页条
				build_page_nav(result);  */
			}
		});
	}
	function build_notices_table(result){
		var notices = result.data.list;
		$.each(notices, function(index,item){
			var noticeid = $("<td></td>").append(item.noticeid);
			var title = $("<td></td>").append(item.title);
			var time = $("<td></td>").append(item.time);
			
			var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm").attr("onclick","gotoEdit('"+item.noticeid+"')")
						.append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
						.append("编辑");
			var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm").attr("onclick","deleteNotice('"+item.noticeid+"','"+result.data.pageNum+"')")
						.append($("<span></span>").addClass("glyphicon glyphicon-trash"))
						.append("删除");
			var btn = $("<td></td>").append(editBtn).append(" ").append(delBtn);
			$("<tr></tr>").append(noticeid)
						  .append(title)
						  .append(time)
						  .append(btn)
						  .appendTo("#notices_table tbody");
		});
	}
	
	  function build_page_info(result) {
		$("#page_info_area").empty();
		$("#page_info_area").append("当前第"+result.data.pageNum+"页，总共"
				+result.data.pages+"页，总共"+result.data.total+"条数据");
	}
	
	function build_page_nav(result) {
		//page_info_nav
		$("#page_info_nav").empty();
		var ul = $("<ul></ul>").addClass("pagination");
		var firstLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
		var preLi = $("<li></li>").append($("<a></a>").append("&laquo;").attr("href","#").attr("aria-label","Previous"));
		if(result.data.hasPreviousPage == false) {
			firstLi.addClass("disabled");
			preLi.addClass("disabled");
		} else {
			//为元素添加翻页事件
			firstLi.click(function(){
				to_page(1);
			});
			preLi.click(function(){
				to_page(result.data.pageNum-1);
			});
		}
		ul.append(firstLi).append(preLi);
		var nextLi = $("<li></li>").append($("<a></a>").append("&raquo;").attr("href","#").attr("aria-label","Next"));
		var lastLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
		$.each(result.data.navigatepageNums, function(index,item){
			var numLi = $("<li></li>").append($("<a></a>").append(item).attr("href","#"));
			if(item == result.data.pageNum) {
				numLi.addClass("active");
			}
			numLi.click(function(){
				to_page(item);
			});
			ul.append(numLi);
		});
		if(result.data.hasNextPage == false) {
			nextLi.addClass("disabled");
			lastLi.addClass("disabled");
		}else {
			nextLi.click(function(){
				to_page(result.data.pageNum+1);
			});
			lastLi.click(function(){
				to_page(result.data.pages);
			});
		}
		ul.append(nextLi).append(lastLi);
		$("<nav></nav>").attr("aria-label","Page navigation").append(ul).appendTo("#page_info_nav");
	}
	
	 
</script>

	


	</body>
</html>