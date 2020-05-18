<%@ page language="java" import='java.util.*'
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
	<div id="wrap">
		<div id="top_content">
			<div id="content">
				<p id="whereami"></p>
				<h1>注册</h1>
				<form action="${pageContext.request.contextPath}/mgr/register.do" method="post">
					<table cellpadding="0" cellspacing="0" border="0"
						class="form_table">
						<tr>
							<td valign="middle" align="right">用户名:</td>
							<td valign="middle" align="left">
								<input type="text" class="inputgri" name="mgrName" />
							</td>
						</tr>

						<tr>
							<td valign="middle" align="right">密码:</td>
							<td valign="middle" align="left">
								<input type="password" class="inputgri" name='mgrPwd' />
							</td>
						</tr>
					</table>
					<div style="width: 150px; margin-bottom: 50px">
							<p style="float: left">
								<input type="button" class="button" value="Login>>"
									onclick="location='${pageContext.request.contextPath}/login.jsp'" />
							</p>
							<p style="float: right">
								<input type="submit" class="button" value="Submit &raquo;" />
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