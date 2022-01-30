<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Dao.usersDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册提示页面</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
    String name = request.getParameter("username");
%>
<jsp:useBean id="users" class="JavaBean.users" scope="request"></jsp:useBean>
<jsp:setProperty name="users" property="*"></jsp:setProperty>
<%

	usersDAO dao = new usersDAO();

	int i = dao.insert(users,name);
	pageContext.setAttribute("i",i);
%>
<c:choose>
	<c:when test="${i==1}">
		<script type="text/javascript">alert('成功注册，请登录！');window.location.href='loginRegister.jsp';</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">alert('注册失败,请重试');window.location.href='loginRegister.jsp';</script>
	</c:otherwise>
</c:choose>
<br>

</body>
</html>