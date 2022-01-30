<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Dao.booksDAO" %>
<%@ page import="JavaBean.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>账单管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="../assets/css/layui.css">
</head>
<%
    booksDAO dao = new booksDAO();
    ArrayList<Book> list = dao.getAllBooks();
    request.setAttribute("list",list);
%>
<body background="../assets/images/4.jpg">

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
    <legend>账单管理</legend>
</fieldset>

<table class="layui-table" align="center">
    <colgroup>
        <col width="150">
        <col width="150">
        <col>
    </colgroup>
    <thead>
    <tr>
        <td align="center">消费类型</td>
        <td align="center">消费金额</td>
        <td align="center">时间</td>
        <td align="center">星期</td>
        <td align="center">备注</td>
        <td align="center">收支类型</td>
        <td align="center">编辑</td>
        <td align="center">删除</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="wx" items="${list}" varStatus="status">
        <tr style="background-color:#FAF0E6">
            <td align="center"><c:out value="${wx.getIsbn()}"/></td>
            <td align="center"><c:out value="${wx.getPrice()}"/></td>
            <td align="center"><c:out value="${wx.getPublishdate()}"/></td>
            <td align="center"><c:out value="${wx.getPublish()}"/></td>
            <td align="center"><c:out value="${wx.getBookresume()}"/> </td>
            <td align="center"><c:out value="${wx.getAuthor()}"/></td>
            <td align="center">
                <a href='EditBook.jsp?id=${wx.getId()}'><button type="button" class="layui-btn"><i class="layui-icon">修改</i></button></a>
            </td>
            <td align="center">
                <a href='doDeleteBook.jsp?id=${wx.getId()}' onclick="return confirm('确定删除吗？')"><button type="button" class="layui-btn layui-btn-danger"><i class="layui-icon"> 删除</i></button></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="AddBook.jsp" style="position:fixed;bottom:6px;right:100px">
<button  type="button" class="layui-btn layui-btn-normal layui-btn-radius">新增</button></a>
<a href="../../index.jsp" style="position:fixed;bottom:6px; right:20px">
<button type="button" class="layui-btn layui-btn-green layui-btn-radius">返回</button></a>
<script src="../assets/layui.all.js"></script>
</body>
</html>