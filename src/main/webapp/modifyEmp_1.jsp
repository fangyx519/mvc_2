<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改员工信息</title>
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
        }

        .empList {
            font-family: verdana,arial,sans-serif;
            font-size:15px;
            color:#333333;
            border-collapse: collapse;
            margin: 10px 20px;
            border-radius: 10px;
        }
        .empList th {
            padding: 15px;
        }
        .empList td {
            padding: 8px;
            border-color: #a9c6c9;
        }

        .container{
            height: 100%;
            display: flex;
            align-items: center;/*flex子项在flex容器的当前行的侧轴（纵轴）方向上的对齐方式。*/
            justify-content: center;/* 用于设置或检索弹性盒子元素在主轴（横轴）方向上的对齐方式。*/
        }

        .innerBox{
            background-color: white;
            box-shadow: 0px 0px 43px -2px rgba(135,130,135,1);
            border-radius: 8px;
        }

    </style>
</head>
<body onload="getEmpInfo()">

    <div class="container">

            <div class="innerBox">
                <table class="empList" id="table2">
                    <tr>
                        <th colspan="2">员工个人信息</th>
                    </tr>
                    <tr>
                        <td>员工编号：</td>
                        <td><input id="empId" type="text" name="id" readonly="true"></td>
                    </tr>
                   <tr>
                       <td>员工姓名：</td>
                       <td><input id="empName" type="text" name="name" ></td>
                   </tr>
                    <tr>
                        <td>员工邮箱：</td>
                        <td><input id="email" type="text" name="email"></td>
                    </tr>
                    <tr>
                        <td>电话号码：</td>
                        <td><input id="phone" type="text" name="phone"></td>
                    </tr>
                    <tr>
                        <td>工资：</td>
                        <td><input id="salary" type="text" name="salary" readonly="true"></td>
                    </tr>
                    <tr>
                        <td>部门：</td>
                        <td>
                            <select id="dept" name="dept" style="width: 100px; height: 30px; padding: 5px;">
                                <option value="1">开发部</option>
                                <option value="2">测试部</option>
                                <option value="3">销售部</option>
                                <option value="4">维护部</option>
                            </select>
                        </td>
                    </tr>
                    <tr style="text-align: right">
                        <td></td>
                        <td>
                            <button class="button1" onclick="modify()">修改</button>
                            <button class="button2" onclick="cancle()">取消</button>
                        </td>
                    </tr>
                </table>
            </div>

    </div>

    <script>

        function getEmpInfo() {
            $.ajax({
                url: "/emp/"+getQueryString("id"),
                type: "GET",
                contentType: 'application/json',
                success: function (data) {
                    document.getElementById("empId").value = data.id;
                    document.getElementById("empName").value = data.name;
                    document.getElementById("email").value = data.email;
                    document.getElementById("phone").value = data.phone;
                    document.getElementById("salary").value = data.salary;
                    document.getElementById("dept").value = data.dept.deptId;
                },
                error: function () {}
            });
        }

        function modify() {
            var empId = document.getElementById("empId").value;
            var empName = document.getElementById("empName").value;
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;
            var salary = document.getElementById("salary").value;
            var deptId = document.getElementById("dept").value;

            $.ajax({
                url: "/emp/update",
                type: "PUT",
                data: JSON.stringify({
                    id: empId,
                    name: empName,
                    email: email,
                    phone: phone,
                    salary: salary,
                    dept: {
                        deptId: deptId
                    }
                }),
                contentType: 'application/json',
                success: function (data) {
                    var result = data.result;
                    if(result){
                        alert("修改成功！");
                        setTimeout("javascript:location.href='showAllEmp_1.jsp'",100);
                    }else{
                        alert("修改失败！");
                    }
                },
                error: function () {
                    alert("出错了，请联系管理员！");
                }
            });
        }

        function cancle() {
            if (confirm("确定要返回原页面吗？")) {
                setTimeout("javascript:location.href='showAllEmp_1.jsp'",100);
            }
        }
        
        function getQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        }

    </script>
</body>
</html>
