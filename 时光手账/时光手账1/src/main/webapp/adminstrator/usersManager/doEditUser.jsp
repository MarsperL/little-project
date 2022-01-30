<%@ page import="Dao.usersDAO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>修改操作</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String username = request.getParameter("username");
String password = request.getParameter("password");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String resume = request.getParameter("resume");
%>

<jsp:useBean id="users1" class="JavaBean.users" scope="request"></jsp:useBean>
<jsp:setProperty name="users1" property="*"></jsp:setProperty>
<%
	usersDAO dao = new usersDAO();
	try{
		int i = dao.update(username,password,gender,email,resume,id);
		pageContext.setAttribute("i",i);
	}catch(Exception e){
		
	}
%>
<c:choose>
<c:when test="${i==1}">
	 <script type="text/javascript">alert('信息修改成功！');window.location.href="usersManager.jsp";</script>
</c:when>
<c:otherwise>
	<script type="text/javascript">alert('信息修改失败！');window.location.href="usersManager.jsp";</script>
</c:otherwise>
</c:choose>
</body>
</html>