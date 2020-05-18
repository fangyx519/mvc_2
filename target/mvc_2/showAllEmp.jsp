<%@ page language="java" import='java.util.*'
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div>
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
			<c:forEach var="emp" items="${empAll }">
			<tr>
				<td>${emp.id }</td>
				<td>${emp.name }</td>
				<td>${emp.email }</td>
				<td>${emp.phone }</td>
				<td>${emp.borndate }</td>
				<td>${emp.salary }</td>
				<td>${emp.deptId }</td>
				<td><a href="${pageContext.request.contextPath }/emp/removeEmp.do?id=${emp.id }">删除</a>&nbsp;<a
						href="${pageContext.request.contextPath }/emp/showModifyEmp.do?id=${emp.id }">修改</a></td>
			</tr>
			</c:forEach>
		</table>
	</div>
	<div style="margin-bottom: 50px">
		<p style="float: left">
			<input type="button" class="button" value="Add Employee"
				   onclick="location='${pageContext.request.contextPath}/addEmp.jsp'" />
		</p>
	</div>
	
</body>
</html>