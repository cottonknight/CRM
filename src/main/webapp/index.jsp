<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>客户管理系统</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- MetisMenu CSS -->
		<link href="css/metisMenu.min.css" rel="stylesheet">

		<!-- DataTables CSS -->
		<link href="css/dataTables.bootstrap.css" rel="stylesheet">

		<!-- Custom CSS -->
		<link href="css/sb-admin-2.css" rel="stylesheet">

		<!-- Custom Fonts -->
		<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="css/boot-crm.css" rel="stylesheet" type="text/css">


		
	</head>

	<body>

		<div id="wrapper">

			<!-- Navigation -->
			<nav class="navbar navbar-default navbar-static-top"
				role="navigation" style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">BCB-CRM</a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
					</a>
					<ul class="dropdown-menu dropdown-messages">
						<li>
							<a href="#">
								<div>
									<strong>令狐冲</strong>
									<span class="pull-right text-muted"> <em>昨天</em> </span>
								</div>
								<div>
									今天晚上向大哥找我吃饭，讨论一下去梅庄的事...
								</div> </a>
						</li>
						<li class="divider"></li>
						<li>
							<a class="text-center" href="#"> <strong>查看全部消息</strong> <i
								class="fa fa-angle-right"></i> </a>
						</li>
					</ul>
					<!-- /.dropdown-messages -->
				</li>
				<!-- /.dropdown -->
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i
						class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i> </a>
					<ul class="dropdown-menu dropdown-tasks">
						<li>
							<a href="#">
								<div>
									<p>
										<strong>任务 1</strong>
										<span class="pull-right text-muted">完成40%</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">完成40%</span>
										</div>
									</div>
								</div> </a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="#">
								<div>
									<p>
										<strong>任务 2</strong>
										<span class="pull-right text-muted">完成20%</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 20%">
											<span class="sr-only">完成20%</span>
										</div>
									</div>
								</div> </a>
						</li>
						<li class="divider"></li>
						<li>
							<a class="text-center" href="#"> <strong>查看所有任务</strong> <i
								class="fa fa-angle-right"></i> </a>
						</li>
					</ul>
					<!-- /.dropdown-tasks -->
				</li>
				<!-- /.dropdown -->
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i
						class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i> </a>
					<ul class="dropdown-menu dropdown-alerts">
						<li>
							<a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> 新回复
									<span class="pull-right text-muted small">4分钟之前</span>
								</div> </a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> 新消息
									<span class="pull-right text-muted small">4分钟之前</span>
								</div> </a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> 新任务
									<span class="pull-right text-muted small">4分钟之前</span>
								</div> </a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> 服务器重启
									<span class="pull-right text-muted small">4分钟之前</span>
								</div> </a>
						</li>
						<li class="divider"></li>
						<li>
							<a class="text-center" href="#"> <strong>查看所有提醒</strong> <i
								class="fa fa-angle-right"></i> </a>
						</li>
					</ul>
					<!-- /.dropdown-alerts -->
				</li>
				<!-- /.dropdown -->
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i
						class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i> </a>
					<ul class="dropdown-menu dropdown-user">
						<li>
							<a href="#"><i class="fa fa-user fa-fw"></i> 用户设置</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="crm/login.html"><i class="fa fa-sign-out fa-fw"></i>
								退出登录</a>
						</li>
					</ul>
					<!-- /.dropdown-user -->
				</li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">
						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" placeholder="查询内容...">
								<span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
									</button> </span>
							</div>
							<!-- /input-group -->
						</li>
						<li>
							<a href="xx" class="active"><i class="fa fa-edit fa-fw"></i>
								菜单1</a>
						</li>
						<li>
							<a href="xx"><i class="fa fa-dashboard fa-fw"></i> 菜单2</a>
						</li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
			</nav>

			<div id="page-wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">
							客户管理
						</h1>


					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="panel panel-default">
					<div class="panel-body">
						<form class="form-inline" action="crm/list.html"
							method="post">

							<div class="form-group">
								<label for="customerName">
									客户名称
								</label>
								<input type="text" class="form-control" id="name"
									value="${qc.uname }" name="uname">
							</div>

							<div class="form-group">
								<label for="custIndustry">
									所属行业
								</label>
								<select class="form-control" id="hangye" name="hangye">
									<option value="0">
										--请选择--
									</option>
									<c:forEach items="${industryType}" var="item">
										<option value="${item.cid}"
											<c:if test="${item.cid == qc.hangye}"> selected</c:if>>
											${item.cname }
										</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group">
								<label for="custLevel">
									客户级别
								</label>
								<select class="form-control" id="jibie" name="jibie">
									<option value="0">
										--请选择--
									</option>

									<c:forEach items="${levelType}" var="item">
										<option value="${item.cid}"
											<c:if test="${item.cid == qc.jibie}"> selected</c:if>>
											${item.cname }
										</option>
									</c:forEach>
								</select>
							</div>
							<button type="submit" class="btn btn-primary">
								查询
							</button>
							
						</form>
						<a  class="btn btn-primary btn-xs"
							data-toggle="modal" data-target="#customerAddDialog"
							>添加客户</a>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								客户信息列表
							</div>
							<!-- /.panel-heading -->
							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>
											ID
										</th>
										<th>
											客户名称
										</th>

										<th>
											客户所属行业
										</th>
										<th>
											客户级别
										</th>
										<th>
											手机
										</th>
										<th>
											操作
										</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${customerlist}" var="c">
										<tr>
											<td>
												${c.uid}
											</td>
											<td>
												${c.uname }
											</td>

											<td>
												${c.hangye.cname }
											</td>
											<td>
												${c.jibie.cname }
											</td>
											<td>
												${c.shouji }
											</td>
											<td>
												<a  class="btn btn-primary btn-xs"
													data-toggle="modal" data-target="#customerEditDialog"
													onclick="editCustomer(${c.uid})">修改</a>
												<a  class="btn btn-danger btn-xs"
													onclick="deleteCustomer(${c.uid})">删除</a>
											</td>
										</tr>
									</c:forEach>
									<tr>
										<td colspan="6" align="center">

											当前页数：${qc.page }&nbsp;&nbsp;&nbsp;&nbsp;
											<a onclick="fenye(1)">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
											<a onclick="fenye(${qc.last})">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
											<a onclick="fenye(${qc.next})">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
											<a onclick="fenye(${qc.pageCount})">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;
											总页数：${qc.pageCount }
										</td>
									</tr>
								</tbody>

							</table>
							<div class="col-md-12 text-right">
								<itcast:page
									url="${pageContext.request.contextPath }/customer/list.action" />
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>
			</div>
			<!-- /#page-wrapper -->

		</div>
		</form>
		<!-- 客户编辑对话框 -->
		<div class="modal fade" id="customerEditDialog" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">
							修改客户信息
						</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" id="edit_customer_form">
							<input type="hidden" id="edit_cust_id" name="uid" />
							<div class="form-group">
								<label for="edit_customerName" class="col-sm-2 control-label">
									客户名称
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_customerName"
										placeholder="客户名称" name="uname">
								</div>
							</div>
							
							<div class="form-group">
								<label for="edit_custIndustry"
									style="float: left; padding: 7px 15px 0 27px;">
									所属行业
								</label>
								<div class="col-sm-10">
									<select class="form-control" id="edit_custIndustry"
										name="hangye.cid">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${industryType}" var="item">
											<option value="${item.cid}">
												${item.cname }
											</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="edit_custLevel"
									style="float: left; padding: 7px 15px 0 27px;">
									客户级别
								</label>
								<div class="col-sm-10">
									<select class="form-control" id="edit_custLevel"
										name="jibie.cid">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${levelType}" var="item">
											<option value="${item.cid}">
												${item.cname }
											</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="edit_linkMan" class="col-sm-2 control-label">
									联系电话
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_linkMan"
										placeholder="联系人" name="shouji">
								</div>
							</div>
						</form>	
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							关闭
						</button>
						<button type="button" class="btn btn-primary"
							onclick="updateCustomer()">
							保存修改
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 添加客户对话框 -->
		<div class="modal fade" id="customerAddDialog" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">
							添加客户
						</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" id="add_customer_form" >
							<input type="hidden" id="add_cust_id" name="uid" value="1"/>
							<div class="form-group">
								<label for="add_customerName" class="col-sm-2 control-label">
									客户名称
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="add_customerName"
										placeholder="客户名称" name="uname">
								</div>
							</div>
							
							<div class="form-group">
								<label for="add_custIndustry"
									style="float: left; padding: 7px 15px 0 27px;">
									所属行业
								</label>
								<div class="col-sm-10">
									<select class="form-control" id="add_custIndustry"
										name="hangye.cid">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${industryType}" var="item">
											<option value="${item.cid}">
												${item.cname }
											</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="add_custLevel"
									style="float: left; padding: 7px 15px 0 27px;">
									客户级别
								</label>
								<div class="col-sm-10">
									<select class="form-control" id="add_custLevel"
										name="jibie.cid">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${levelType}" var="item">
											<option value="${item.cid}">
												${item.cname }
											</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="add_linkMan" class="col-sm-2 control-label">
									联系电话
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="add_linkMan"
										placeholder="联系人" name="shouji">
								</div>
							</div>
						</form>	
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">
							关闭
						</button>
						<button type="button" class="btn btn-primary"
							onclick="addCustomer()">
							确认添加
						</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /#wrapper -->
		
		<!-- jQuery -->
		<script src="<%=basePath%>js/jquery.min.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script src="<%=basePath%>js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="<%=basePath%>js/metisMenu.min.js"></script>

		<!-- DataTables JavaScript -->
		<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
		<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="<%=basePath%>js/sb-admin-2.js"></script>

		<script type="text/javascript">
		function editCustomer(id) {
			$.getJSON("crm/edit.json",{id:id},function(data){
				$("#edit_cust_id").val(data.uid);
				$("#edit_customerName").val(data.uname);
				$("#edit_custIndustry").val(data.hangye.cid);
				$("#edit_custLevel").val(data.jibie.cid);
				$("#edit_linkMan").val(data.shouji);
			});
		}
		function updateCustomer() {
			$.post("crm/update.json",$("#edit_customer_form").serialize(),function(data){
				var res = parseInt(data);
				 if(res>0){
				 	alert("修改成功！");
				 }else{
				 	alert("修改失败!!");
				 }
				 window.location.reload();
			});
		}
		function addCustomer() {
			$.post("crm/add.json",$("#add_customer_form").serialize(),function(data){
				var res = parseInt(data);
				 if(res>0){
				 	alert("添加成功！");
				 }else{
				 	alert("添加失败!!");
				 }
				 window.location.reload();
			});
			
			
		}
	
		function deleteCustomer(id) {
			if(confirm("是否删除该用户？")){
				$.post("crm/delete.json",{id:id},function(data){
				var res = parseInt(data);
				 if(res>0){
				 	alert("删除成功！");
				 }else{
				 	alert("删除失败!!");
				 }
				 window.location.reload();
				});
			}
			
		}
		function fenye(page){
			var hangye=document.getElementById("hangye").value;
			var jibie=document.getElementById("jibie").value;
			var name=document.getElementById("name").value;
			var url = "crm/list.html?page="+page;
			if(hangye!=0){
				url+="&hangye="+hangye;
			}
			if(jibie!=0){
				url+="&jibie="+jibie;
			}
			if(name!=""){
				url+="&name="+name;
			}
			location=url;
		}
	</script>
	</body>
</html>
