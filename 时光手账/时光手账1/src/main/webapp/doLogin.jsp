<%@page import="java.util.concurrent.CopyOnWriteArrayList"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>登陆处理页面</title>
</head>
<body>
<%


	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	String referer = request.getHeader("Referer");
	if(referer==null||referer.trim().length()==0){
	response.sendRedirect("index.jsp");
	return;
}
	//接收用户名和密码
String name=request.getParameter("username");
String pwd=request.getParameter("password");

	String driver="com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/newsdb?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true&useUnicode=true&characterEncoding=utf-8";
	String username = "root";
	String password = "0000";
	Class.forName(driver);
    Connection conn = DriverManager.getConnection(url,username,password);//得到连接
    PreparedStatement pstmt = conn.prepareStatement("select * from tb_user where username = '" + name + "' and password = '" + pwd + "'");
    
    ResultSet rs = pstmt.executeQuery();
    if(rs.next()) {
        if(name.trim().equals("admin")&&pwd.trim().equals("admin"))
        	response.sendRedirect("./adminstrator/index.html");
        else{
            session.setAttribute("username",name);
            response.sendRedirect("index2.jsp");
        }
    }
        else{
            session.setAttribute("usertxt", "用户名或密码错误");
            response.sendRedirect("loginRegister.jsp");
         
    }
    rs.close();
    pstmt.close();
    conn.close();

%>
</body>

</html>

