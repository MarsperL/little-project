<%@ page import="Dao.usersDAO" %>
<%@ page import="JavaBean.users" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>修改用户信息</title>
	<link rel="stylesheet" href="../assets/css/layui.css">
</head>
<body background="../assets/images/pu.jpg">

<%
		String ID = request.getParameter("id");
		usersDAO dao= new usersDAO();
		users users = dao.getAllUsersByID(ID);
		pageContext.setAttribute("ID",ID);
		pageContext.setAttribute("users",users);
%>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
	<legend>修改用户信息</legend>
</fieldset>

<form class="layui-form" action="doEditUser.jsp" method="post">
	<input name="id" value="${ID}" style="display: none">
	<div class="layui-form-item">
		<label class="layui-form-label">修改用户名</label>
		<div class="layui-input-inline">
			<input type="text" value="${users.getName()}" name="username" lay-verify="pass" placeholder="请输入用户名" autocomplete="off" class="layui-input">
		</div>
		<div class="layui-form-mid layui-word-aux">起一个容易记住的名字吧</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">更改密码</label>
		<div class="layui-input-inline">
			<input type="text" name="password"  value="${users.getPassword()}" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
		</div>
		<div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">设置邮箱</label>
		<div class="layui-input-inline">
			<input type="text"  value="${users.getEmail()}" name="email" lay-verify="pass" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
		</div>
		<div class="layui-form-mid layui-word-aux">方便联系的邮箱</div>
	</div>


	<div class="layui-form-item">
		<label class="layui-form-label">性别</label>
		<div class="layui-input-block">
			<!-- 判断男女选项并导入数据库 -->
		<%
		if("男".equals("gender")){ //若是男生，则选中男生按钮
		%>
			<input type="radio" id="gender" name="gender" value="男"  />男
			<input type="radio" id="gender" name="gender" value="女" />女
		<%
		}else{ //否则，显示选中女生按钮
		%>
		<input type="radio" id="gender" name="gender" value="男" />男
		<input type="radio" id="gender" name="gender" value="女" />女
		<%
		}
		%>
		</div>
	</div>
	<div class="layui-form-item layui-form-text">
		<label class="layui-form-label">用户简介</label>
		<div class="layui-input-block">
			<textarea placeholder="请输入内容" class="layui-textarea" name="resume" >${users.getResume()}</textarea>
		</div>
	</div>

	<div class="layui-form-item">
		<div class="layui-input-block">
			<input type="submit" class="layui-btn" name="save" value="提交" />
			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			<a href="usersManager.jsp"><button type="button" class="layui-btn layui-btn-primary">返回</button></a>
		</div>
	</div>
</form>

	<div class="layui-content"><!-- 鸡汤显示图片 -->
    <div class="layui-row">
        <div class="layui-card">
         <div align="center" class="layui-card-header"><strong>你来人间一趟，你要看看太阳，和你的心上人，一起走在街上。
         &nbsp;&nbsp;&nbsp;&nbsp; ----海子《夏日的太阳》</strong> </div>
                 	
                  	<img src="../assets/images/23.gif"  width="300" height="200"alt="" align ="left"/>
                  	<img src="../assets/images/23.gif"  width="200" height="200"alt="" align ="middle"/>
                  	<img src="../assets/images/23.gif"  width="200" height="200"alt="" align ="middle"/>
                  	<img src="../assets/images/23.gif"  width="200" height="200"alt="" align ="middle"/>
                  	  <img src="../assets/images/23.gif"  width="200" height="200"alt="" align ="middle"/>
                    <img src="../assets/images/23.gif"  width="300" height="200"alt="" align ="right" />
      			
           </div>
        </div>
    </div>
<script src="../assets/layui.all.js"></script>

</body>
</html>
