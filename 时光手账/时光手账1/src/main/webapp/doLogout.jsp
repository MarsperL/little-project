<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>退出</title>
</head>
<body>
<%
    session.invalidate();    //销毁session
    response.sendRedirect("index.jsp");  //重定向页面到index.jsp
%>
</body>
</html>
