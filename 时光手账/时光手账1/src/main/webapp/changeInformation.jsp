<%@ page import="JavaBean.users" %>
<%@ page import="Dao.usersDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>修改个人信息</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style2.css" type="text/css" media="all" /><!-- Style-CSS -->
    <link href="css/font-awesome.css" rel="stylesheet"><!-- font-awesome-icons -->
</head>

<body>

<%
    request.setCharacterEncoding("utf-8");
    String name = (String)session.getAttribute("username");
    usersDAO dao= new usersDAO();
    try{
    	 users users = dao.getUsersByName(name);
    	 pageContext.setAttribute("users",users);
    }catch(Exception e){
    	
    }
   
%>
<section class="w3l-form-36">
    <div class="form-36-mian section-gap">
        <div class="wrapper">
            <div class="form-inner-cont">
                <h3>修改个人信息</h3>
                <form action="adminstrator/usersManager/changeManagerSuccess.jsp" method="post" class="signin-form">
                    <input type="text" name="id" value="${users.getId()}" style="display: none">
                    <div class="form-input">
                        <span  aria-hidden="true" style="margin-right: 40px">用户名</span>
                        <input type="text" name="username" value="${users.getName()}" placeholder="起个名字吧" required />
                    </div>

                    <div class="form-input">
                        <span  aria-hidden="true"  style="margin-right: 40px">密码</span>
                        <input type="text"  name="password" value="${users.getPassword()}" placeholder="请输入密码" required />
                    </div>

                    <div class="form-input">
                        <span aria-hidden="true"  style="margin-right: 40px">性别</span>
                        <input type="text"  name="gender" value="${users.getGender()}" placeholder="请填写性别" required />
                    </div>


                    <div class="form-input">
                        <span  aria-hidden="true" style="margin-right: 40px" >邮箱</span>
                        <input type="text" name="email" value="${users.getEmail()}"  placeholder="填一个邮箱吧" required />
                    </div>

                    <div class="form-input">
                        <span aria-hidden="true"  style="margin-right: 40px">简介</span>
                        <input type="text" name="resume"  value="${users.getResume()}"  placeholder="随便一句，都是金句" required />
                    </div>


                    <div class="login-remember d-grid">
                        <label class="check-remaind">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                            <p class="remember">Remember me</p>
                        </label>
                        
                        <button class="btn theme-button" type="submit">修改</button>
                    </div>
                    <div class="new-signup">
                        <a href="index2.jsp" class="signuplink">返回</a>
                    </div>
                </form>
                <div class="social-icons">
                    <p class="continue"><span>Or</span></p>
                    <div class="social-login">
                        <a href="#">
                        </a>
                        <div class="facebook">
                                <span class="fa fa-facebook" aria-hidden="true"></span>
                        </div>
                        <a href="#">
                        </a>
                        <div class="google">
                                <span class="fa fa-google-plus" aria-hidden="true"></span>
                            </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
</body>
</html>
