<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工信息管理</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <style type="text/css">
        body,html{
            height: 100%;
            margin: 0;
            font-family: Arial;
            font-weight: lighter;
            color: #626262;
            position: relative;
            background-color: #66e8dc;
        }

        h2{
            text-align: center;
        }

        input{
            display: block;
            width: 200px;
            padding: 10px 5px;
            border-radius: 8px;
            border: 1px solid #aeb0ba;
            margin: 5px 0px;
        }

        button{
            background-color: #79b6ff;
            border: none;
            color: white;
            padding: 8px 15px;
            text-align: center;
            font-size: 12px;
            border-radius: 2px;
        }

        .empList {
            font-family: verdana,arial,sans-serif;
            font-size:15px;
            color:#333333;
            border-width: 1px;
            border-color: #a9c6c9;
            border-collapse: collapse;
        }
        .empList th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
            background-color: #c3dde0;
        }
        .empList td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
        }

        .container{
            height: 100%;
            display: flex;
            align-items: center;/*flex子项在flex容器的当前行的侧轴（纵轴）方向上的对齐方式。*/
            justify-content: center;/* 用于设置或检索弹性盒子元素在主轴（横轴）方向上的对齐方式。*/

        }

        .form1{
            display: inline-block;
        }

        .addButton{
            display: inline-block;
            float: right;
        }

        .innerBox{
            padding: 30px;
            background-color: white;
            box-shadow: 0px 0px 43px -2px rgba(135,130,135,1);
            border-radius: 8px;
        }
    </style>
</head>
<body onload="checkCookie()">
    <%--整个页面的div，包括form表单和table表格--%>
    <div class="container">
        <%--form表单的div--%>
        <div class="innerBox">
            <div>
                <h2>员工信息管理</h2>
            </div>

            <div class="innerBox1">

                <table class="form1" id="table1">
                    <tr>
                        <td>员工姓名：</td>
                        <td><input id="empName" type="text"></td>
                        <td>
                            <button class="button1" onclick="search()">查询</button>
                            <button class="button2" onclick="reset()">重置</button>
                        </td>
                    </tr>
                </table>

                <div class="addButton">
                    <button class="button3" onclick="javascrtpt:window.location.href='http://localhost:8088/addEmp_1.jsp'">新增员工</button>
                </div>

            </div>
            <%--table表格的div--%>
            <div class="innerBox2">
                <table class="empList" id="table2">
                    <thead>
                        <tr>
                            <th>编号</th>
                            <th>姓名</th>
                            <th>邮箱</th>
                            <th>电话号码</th>
                            <th>工资</th>
                            <th>部门</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                </table>
            </div>

        </div>
    </div>

    <script>

        function showMsg() {
            $.ajax({
                url: "emp/showAllEmp",
                type: "GET",
                contentType: 'application/json',
                success: function (data) {
                    showData(data);
                },
                error: function () {
                    alert("出错了，请联系管理员！");
                }
            });
        }

        function showData(data) {
            let i,str,url;
            let len = data.length;
            for (i = 0;i < len; i++){
                str = "<tbody><tr><td>"+data[i].id+"</td><td>"
                +data[i].name+"</td><td>"
                +data[i].email+"</td><td>"
                +data[i].phone+"</td><td>"
                +data[i].salary+"</td><td>"
                +data[i].dept.deptName+"</td><td>"
                +"<a href='modifyEmp_1.jsp?id=3'>修改</a>"+"&nbsp;"
                +"<a href='javascript:void(0)' onclick='deleteEmp(5)'>删除</a></td><tr><tbody>";
                $("#table2").append(str);
            }
        }

        /*function clickRow(row){
            row.style.backgroundColor = 'blue';
        }*/

        function deleteEmp(data) {
            if(confirm("确定要删除该员工相关信息吗？")){
                $.ajax({
                    url: "/emp/delete/"+data,
                    type: "DELETE",
                    contentType: 'application/json',
                    success: function (text) {
                        var result = text.result;
                        if(result){
                            alert("删除成功！");
                            setTimeout("javascript:location.href='showAllEmp_1.jsp'",100);
                        }else{
                            alert("删除失败！");
                        }
                    },
                    error: function () {
                        alert("出错了，请联系管理员！");
                    }
                });
            }

        }

        function search() {
            var data = document.getElementById("empName").value;
            $.ajax({
                url: "/emp/queryByName/"+data,
                type: "GET",
                contentType: 'application/json',
                success: function (data) {
                    $("#table2 tbody").html("");
                    let i,str,url;
                    let len = data.length;
                    for (i = 0;i < len; i++){
                        str = "<tr id='empAll'><td>"+data[i].id+"</td><td>"
                            +data[i].name+"</td><td>"
                            +data[i].email+"</td><td>"
                            +data[i].phone+"</td><td>"
                            +data[i].salary+"</td><td>"
                            +data[i].dept.deptName+"</td><td>"
                            +"<a href='modifyEmp_1.jsp?id=3'>修改</a>"+"&nbsp;"
                            +"<a href='javascript:void(0)' onclick='deleteEmp(5)'>删除</a></td><tr>";
                        $("#table2").append(str);
                    }

                },
                error: function () {
                    alert("出错了，请联系管理员！");
                }
            });
        }

        function reset() {
            $("#empName").val("");
        }

        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for(var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }

        function checkCookie() {
            var user = getCookie("username");
            if (user != "") {
               showMsg();
            } else {
                window.location.href = 'http://localhost:8088/login_1.jsp';
            }
        }
    </script>
</body>
</html>
