<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <base href="<%=basePath%>">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="css/login.css"/>
    <link rel="stylesheet" type="text/css" href="css/bs.css"/>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script type="text/javascript" src="js/messages_zh.js"></script>

    <script>
        $(function () {
            $("#loginForm").validate({
                rules: {
                    username: "required",
                    password: {
                        rangelength: [3, 15],
                        required: true
                    }
                },
                errorPlacement: function (error, element) {	//错误信息位置设置方法
                    error.appendTo(element.parent().next());//这里的element是录入数据的对象,parent父元素，next()下一个
                },
                success: function (label) {
                    label.addClass("error");
                },
                messages: {
                    username: "用户名不能为空",
                    password: {
                        rangelength: "密码长度在{0}~{1}之间",
                        required: "密码不能为空"
                    }
                }
            });
        })
    </script>
</head>
<body>
<jsp:include page="loginRegister_above.jsp"/>
<div style="height: 3px; background-color: #ff2832;"></div>
<div id="middle" style="margin-right: 3px;">
    <shiro:notAuthenticated>
    <form action="<%=basePath%>user/login" method="post" id="loginForm">
        <div id="register">百货商城用户登录</div>
        <div id="username_div">
            <span id="row1"></span>
            <input type="text" name="username" id="username" placeholder="用户名/手机号/邮箱"/>
        </div>
        <p class="tips">
        </p>
        <div id="password_div">
            <span id="row2"></span>
            <input type="password" name="password" id="password" placeholder="密码"/>
        </div>
        <p class="tips">
        </p>

        <input type="submit" id="loginButton" value="登录"/>
        <div class="margin">
            <span class="error">${loginMsg}</span>
        </div>
        <div class="margin">
            <span class="a"><a href="page/register" title="免费注册" target="_blank">免费注册</a></span>
        </div>
        <hr/>

    </form>
    </shiro:notAuthenticated>
    <shiro:user>
        <div id="loginForm">
            <div>
                <div style="font-size: 20px">亲,您已经登录,<a href="user/info"><shiro:principal property="username"/></a></div>
                <div style="font-size: 18px"><a href="user/logout" >注销</a></div>
            </div>
        </div>

    </shiro:user>
</div>

<hr size="2" color="#E6E6E6"/>
</body>
</html>
