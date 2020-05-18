<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增员工</title>
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
<body>

    <div class="container">

            <div class="innerBox">
                <table class="empList" id="table2">
                    <tr>
                        <th colspan="2">员工个人信息</th>
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
                        <td><input id="salary" type="text" name="salary"></td>
                    </tr>
                    <tr>
                        <td>部门：</td>
                        <td>
                            <select id="dept" name="dept" style="width: 100px; height: 30px; padding: 5px;">
                                <option>请选择部门</option>
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
                            <button class="button1" onclick="add()">新增</button>
                            <button class="button2" onclick="cancle()">取消</button>
                        </td>
                    </tr>
                </table>
            </div>

    </div>

    <script>

        function add() {
            var empName = document.getElementById("empName").value;
            var email = document.getElementById("email").value;
            var phone = document.getElementById("phone").value;
            var salary = document.getElementById("salary").value;
            var deptId = document.getElementById("dept").value;

            $.ajax({
                url: "/emp/insert",
                type: "POST",
                data: JSON.stringify({
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
                        alert("新增成功！");
                        setTimeout("javascript:location.href='showAllEmp_1.jsp'",100);
                    }else{
                        alert("新增失败！");
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

    </script>
</body>
</html>
