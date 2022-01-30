<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="Dao.usersDAO" %>
<%@ page import="Dao.booksDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除用户</title>
</head>
<body>
	<h1>删除用户</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		usersDAO dao = new usersDAO();
		try{
			int i = dao.delete(id);
			pageContext.setAttribute("i",i);
		}catch(Exception e){
		}
	%>
	<c:if test="${i!=1}">
			 <script type="text/javascript">alert('删除失败');window.location.href='usersManager.jsp';</script>
		</c:if>
	<c:if test="${i==1}">
			 <script type="text/javascript">alert('删除成功');window.location.href='usersManager.jsp';</script>
		</c:if>
	<br>
</body>
</html>