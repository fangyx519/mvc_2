<%@ page language="java" import='java.util.*' contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>

</head>
<body>
<h1>登录</h1>
<form action="<%=request.getContextPath()%>/mgr/login.do" method="post">
    <table cellpadding="0" cellspacing="0" border="0"
           class="form_table">
        <tr>
            <td >用户名:</td>
            <td >
                <input type="text" name="mgrName"/>
            </td>
        </tr>
        <tr>
            <td>密码:</td>
            <td>
                <input type="password" class="inputgri" name="mgrPwd"/>
            </td>
        </tr>
    </table>
    </tr>
    <div style="width: 150px; margin-bottom: 50px">
        <p style="float: left">
            <input type="button" class="button" value="Register>>"
                   onclick="location='<%=request.getContextPath()%>/register.jsp'"/>
        </p>
        <p style="float: right">
            <input type="submit" class="button" value="Submit &raquo;"/>
        </p>
    </div>
</form>

</body>
</html>