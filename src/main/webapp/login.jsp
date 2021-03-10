<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
		<script type="text/javascript">
			var str = '${msg}';
			if(str!=""){
				alert(str);
			}
		</script>
  </head>
  
  <body>
  <center>
		</form>
		<div class="panel panel-default">
			<div class="panel-body">
				<h2>客户管理系统</h2><br>
				<form class="form-inline" action="crm/login.html"
					method="post">
				
					<div class="form-group">
						<label for="customerName">
							用户名：
						</label>
						<input type="text" class="form-control" id="name"
							value="" name="m_name">
					</div>
					<br><br>
					<div class="form-group">
						<label for="customerName">
							密&nbsp;&nbsp;&nbsp;&nbsp;码：
						</label>
						<input type="password" class="form-control" id="pwd"
							value="" name="m_pwd">
					</div>
					<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="submit" class="btn btn-primary">
						登录
					</button>
					
					<span>
						<a  class="btn btn-danger btn-xs" onclick="location='crm/register.html'">注册</a>
					</span>
					
				</form>
			</div>
		</div>
		</center>
  </body>
</html>
