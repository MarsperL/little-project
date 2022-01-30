<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="Dao.booksDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加账单操作</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
    String name = request.getParameter("bookname");
%>
<jsp:useBean id="books" class="JavaBean.Book" scope="request"></jsp:useBean>
<jsp:setProperty name="books" property="*"></jsp:setProperty>
<%

	booksDAO dao = new booksDAO();
	int i = dao.insert(books,name);
	pageContext.setAttribute("i",i);
%>
<c:choose>
	<c:when test="${i!=1}">
		<script type="text/javascript">alert('该账单已存在，请重新修改！');window.location.href='booksManager.jsp';</script>
	</c:when>
	<c:when test="${i==1}">
		<script type="text/javascript">alert("新增数据成功");window.location.href='booksManager.jsp';</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">alert("无法新增数据");window.location.href='booksManager.jsp';</script>
	</c:otherwise>
</c:choose>
<br>
</body>
</html>