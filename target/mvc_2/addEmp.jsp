<%@ page language="java" import='java.util.*'
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div>
		<div>
			<div>
				<p></p>
				<h1>add Emp info:</h1>
				<form action="${pageContext.request.contextPath }/emp/addEmp.do" method="post">
					<table cellpadding="0" cellspacing="0" border="0"
						class="form_table">
						<tr>
							<td valign="middle" align="right">name:</td>
							<td valign="middle" align="left"><input type="text"
								class="inputgri" name="name" /></td>
						</tr>
						<tr>
							<td valign="middle" align="right">email:</td>
							<td valign="middle" align="left"><input type="email"
								class="inputgri" name="email" /></td>
						</tr>
						<tr>
							<td valign="middle" align="right">phone:</td>
							<td valign="middle" align="left"><input type="text"
								class="inputgri" name="phone" /></td>
						</tr>
						<tr>
							<td valign="middle" align="right">salary:</td>
							<td valign="middle" align="left"><input type="text"
								class="inputgri" name="salary" /></td>
						</tr>
						<tr>
							<td valign="middle" align="right">borndate:</td>
							<td valign="middle" align="left"><input type="date"
								class="inputgri" name="borndate" /></td>
						</tr>
						<tr>
							<td valign="middle" align="right">department:</td>
							<td valign="middle" align="left">
								<select name="dept.deptId">
									<option value="">请选择</option>
									<option value="10">1</option>
									<option value="20">2</option>
									<option value="30">3</option>
									<option value="40">4</option>
								</select>
							</td>
						</tr>
					</table>
					<div style="width: 150px; margin-bottom: 50px">
						<p style="float: left;">
							<input type="button" class="button" value="Back"
								onclick="location='${pageContext.request.contextPath}/emp/showAllEmp.do'" />
						</p>
						<p style="float: right;">
							<input type="submit" class="button" value="Confirm" />
						</p>
					</div>
					
				</form>
			</div>
		</div>
		<div id="footer">
			<div id="footer_bg">fyx@126.com</div>
		</div>
	</div>
</body>
</html>