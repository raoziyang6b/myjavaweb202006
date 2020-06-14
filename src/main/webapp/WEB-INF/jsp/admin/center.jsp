<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/"; %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bs.css"/>
</head>
<body>
<div id="center_header" style="height: 100px;border-bottom: 1px solid #CCCCCC;">
    <h1 class="h1" align="center"><a href="index" target="_blank"><img src="img/dd.jpg" /></a></h1>

</div>
<h2 class="h2" align="center">${sessionScope.loginUser.username},欢迎您来到百货商城后台管理系统</h2>
<div align="center" style="width: 100%">
    <img  src="img/lunbo5.jpg" />
</div>
</body>
</html>
