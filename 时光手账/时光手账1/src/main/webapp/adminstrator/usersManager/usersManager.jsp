<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="Dao.usersDAO" %>
<%@ page import="JavaBean.users" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <title>用户管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../assets/css/layui.css">
</head>
<%
    //在列表中拿出来
    usersDAO dao = new usersDAO();
    ArrayList<users> list = dao.getAllUsers();
    request.setAttribute("list",list);
%>
<body background="../assets/images/pu.jpg">


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>用户管理</legend>
</fieldset>

<table class="layui-table" lay-size="lg" align="center">
    <colgroup>
        <col width="100">
        <col width="150">
        <col>
    </colgroup>
    <thead>
    <tr>
        <td align="center">ID</td>
        <td align="center">用户名</td>
        <td align="center">密码</td>
        <td align="center">性别</td>
        <td align="center">邮箱</td>
        <td align="center">简介</td>
        <td align="center">编辑</td>
        <td align="center">删除</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="wx" items="${list}" varStatus="status">
        <tr style="background-color:#FAF0E6">
            <td align="center"><c:out value="${wx.getId()}"/></td>
            <td align="center"><c:out value="${wx.getName()}"/></td>
            <td align="center"><c:out value="${wx.getPassword()}"/></td>
            <td align="center"><c:out value="${wx.getGender()}"/></td>
            <td align="center"><c:out value="${wx.getEmail()}"/> </td>
            <td align="center"><c:out value="${wx.getResume()}"/> </td>
            <td align="center">
                <a href='EditUser.jsp?id=${wx.getId()}'><button type="button" class="layui-btn"><i class="layui-icon">修改</i></button></a>
            </td>
            <td align="center">
                <a href='doDeleteUser.jsp?id=${wx.getId()}' onclick="return confirm('确定删除吗？')"><button type="button" class="layui-btn layui-btn-danger"><i class="layui-icon"> 删除</i></button></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="AddUser.jsp" style="position:fixed;bottom:6px;right:100px">
<button type="button" class="layui-btn layui-btn-normal layui-btn-radius">新增</button></a>
<a href="../../index.jsp" style="position:fixed;bottom:6px; right:20px">
<button type="button" class="layui-btn layui-btn-green layui-btn-radius">返回</button></a>
<script src="../assets/layui.all.js"></script>
</body>
</html>