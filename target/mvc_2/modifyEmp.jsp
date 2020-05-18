<%@ page language="java" import='java.util.*'
         contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>

<h1>update Emp info:</h1>
<form action="${pageContext.request.contextPath }/emp/update" method="post">
    <table cellpadding="0" cellspacing="0" border="0"
           class="form_table">
        <tr>
            <td valign="middle" align="right">id:</td>
            <td valign="middle" align="left">
                <input type="text" class="inputgri" name="id" value='${empSingle.id }' readonly="readonly"/>
            </td>
            <td valign="middle" align="left">* readonly</td>
        </tr>
        <tr>
            <td valign="middle" align="right">name:</td>
            <td valign="middle" align="left"><input type="text"
                                                    class="inputgri" name="name" value="${empSingle.name }"/></td>
        </tr>
        <tr>
            <td valign="middle" align="right">email:</td>
            <td valign="middle" align="left"><input type="text"
                                                    class="inputgri" name="email" value="${empSingle.email }"/></td>
        </tr>
        <tr>
            <td valign="middle" align="right">phone:</td>
            <td valign="middle" align="left"><input type="text"
                                                    class="inputgri" name="phone" value="${empSingle.phone }"/></td>
        </tr>

        <tr>
            <td valign="middle" align="right">salary:</td>
            <td valign="middle" align="left"><input type="text"
                                                    class="inputgri" name="salary" value="${empSingle.salary }"/></td>
        </tr>
        <tr>
            <td valign="middle" align="right">borndate:</td>
            <td valign="middle" align="left"><input type="date"
                                                    class="inputgri" name="borndate" value="${empSingle.borndate }"/>
            </td>
        </tr>
        <tr>
            <td valign="middle" align="right">deptId:</td>
            <td valign="middle" align="left"><input type="text"
                                                    class="inputgri" name="deptId" value="${empSingle.deptId }"
                                                    readonly="readonly"/></td>
        </tr>
    </table>
    <div style="width: 150px; margin-bottom: 50px">
        <p style="float: left;">
            <input type="button" class="button" value="Back"
                   onclick="location='${pageContext.request.contextPath}/emp/showAllEmp.do'"/>
        </p>
        <p style="float: right;">
            <input type="submit" class="button" value="Confirm"/>
        </p>
    </div>

</form>

</body>
</html>