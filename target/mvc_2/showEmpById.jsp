<%@ page language="java" import='java.util.*'
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/style.css" />
</head>
<body>
	<div id="wrap">
		<div id="top_content">
			<div id="header">
				<div id="rightheader">
					<p>
						<%=new Date()%>
						<br />
					</p>
				</div>
				<div id="topheader">
					<h1 id="title">
						个人信息
					</h1>
				</div>
				<div id="navigation"></div>
			</div>
			<div id="content">
				<p id="whereami"></p>
				<div>
					<h1>Information</h1>
					
				</div>
				<table class="table">
					<tr class="table_header">
						<td>ID</td>
						<td>Name</td>
						<td>Email</td>
						<td>Phone</td>
						<td>Borndate</td>
						<td>Salary</td>
						<td>Dept_name</td>
						<td>Operation</td>
					</tr>
					
					<tr class="row2">
					<td>${empByKey.id }</td>
					<td>${empByKey.name }</td>
					<td>${empByKey.email }</td>
					<td>${empByKey.phone }</td>
					<td>${empByKey.borndate }</td>
					<td>${empByKey.salary }</td>
					<td>${empByKey.dept.deptName }</td>
					<td><a href="${pageContext.request.contextPath }/emp/removeEmp?empByKey.id=${empByKey.id }">删除</a>&nbsp;<a
						href="${pageContext.request.contextPath }/emp/showModifyEmp?empByKey.id=${empByKey.id }">修改</a></td>
					</tr>
					
				</table>
				<div style=" margin-bottom: 50px">
						<p style="float: right;">
							<input type="button" class="button" value="Back"
								onclick="location='${pageContext.request.contextPath}/emp/showAllEmp'" />
						</p>
					
				</div>
			</div>
		</div>
		<div id="footer">
			<div id="footer_bg">fyx@126.com</div>
		</div>
	</div>
</body>
</html>