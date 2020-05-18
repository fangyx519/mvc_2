<%--
  Created by IntelliJ IDEA.
  User: 钱栋梁
  Date: 2020/4/28
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
</head>
<body>
    <input type="button" id="addButton" name="addButton" value="新增" onclick="addMgr()"><br>
    <input type="button" id="deleteButton" name="deleteButton" value="删除" onclick="deleteMgr()"><br>
    <input type="button" id="editButton" name="editButton" value="修改" onclick="editMgr()"><br>
    <input type="button" id="getButton" name="getButton" value="搜索" onclick="getMgr()"><br>
    <div id="showMsg"></div>
</body>
<script type="text/javascript">
    function addMgr(){
        $.ajax({
            url : "rest/m3",
            type : "POST",
            data : JSON.stringify({
                mgrname : "管理员12",
                mgrpwd : "123456",
            }),
            contentType: 'application/json',
            dataType : "json",
            success : function (data) {
                console.log(data)
                $("#showMsg").append("<p>数据增加成功：" + data + "</p>");
            },
            error : function (d,error) {
                console.log(error)
            }
        });
    }

    function deleteMgr() {
        $.ajax({
            url: "rest/m3",
            type: "DELETE",
            data: {
                mgrname: "管理员1",
            },
            dataType: "json",
            success : function (data) {
                $(showMsg).append("<p>数据删除成功：" + data + "</p>");
            },
            error : function () {
                $(showMsg).append("<p>数据出错了</p>");
            }
        });
    }

</script>
</html>
