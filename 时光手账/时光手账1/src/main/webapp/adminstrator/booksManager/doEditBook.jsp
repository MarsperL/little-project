<%@ page import="Dao.booksDAO" %>
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
String bookname = request.getParameter("bookname");
String author = request.getParameter("author");
String publish = request.getParameter("publish");
String isbn = request.getParameter("isbn");
float price = Float.parseFloat(request.getParameter("price"));
String bookresume = request.getParameter("bookresume");
String publishdate = request.getParameter("publishdate");


%>

<jsp:useBean id="books" class="JavaBean.Book" scope="request"></jsp:useBean>
<jsp:setProperty name="books" property="*"></jsp:setProperty>
<%
	booksDAO dao = new booksDAO();
	
	try{
		int i = dao.update(bookname,author,publish,isbn,price,bookresume,publishdate,id);
		pageContext.setAttribute("i",i);
	}catch(Exception e){
		
	}
	
%>
<c:choose>
<c:when test="${i==0}">
	<script type="text/javascript">alert('该账单存在，请重新修改！');window.location.href='booksManager.jsp';</script>
</c:when>
<c:when test="${i==1}">
	 <script type="text/javascript">alert('账单信息修改成功！');window.location.href='booksManager.jsp';</script>
</c:when>
<c:otherwise>
	<script type="text/javascript">alert('账单信息修改失败！');window.location.href='booksManager.jsp';</script>
</c:otherwise>
</c:choose>
</body>
</html>