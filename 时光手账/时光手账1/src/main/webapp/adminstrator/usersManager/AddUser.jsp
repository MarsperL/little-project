<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>添加用户</title>
	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="../assets/css/layui.css">
	<link rel="stylesheet" href="../assets/css/view.css"/>
</head>
<body class="layui-view-body" background="../assets/images/6.jpg">

	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
		<legend>添加用户</legend>
	</fieldset>

	<form class="layui-form" action="doAddUser.jsp" method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">设置用户名</label>
			<div class="layui-input-inline">
				<input type="text" name="username" lay-verify="pass" placeholder="请输入用户名" autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">起一个容易记住的名字吧</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">设置密码</label>
			<div class="layui-input-inline">
				<input type="text" name="password" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">设置邮箱</label>
			<div class="layui-input-inline">
				<input type="text" name="email" lay-verify="pass" placeholder="请输入邮箱" autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">方便联系的邮箱</div>
		</div>
		<!-- <div class="layui-form-item">
			<label class="layui-form-label">家庭住址</label>
			<div class="layui-input-inline">
				<select name="quiz1">
					<option value="" selected="">请选择省</option>
					<option >浙江省</option>
					<option >江西省</option>
					<option >福建省</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select name="quiz2">
					<option value="">请选择市</option>
					<option value="杭州">杭州</option>
					<option value="宁波" disabled="">宁波</option>
					<option value="温州">温州</option>
					<option value="温州">台州</option>
					<option value="温州">绍兴</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select name="quiz3">
					<option value="">请选择县/区</option>
					<option value="西湖区">西湖区</option>
					<option value="余杭区">余杭区</option>
					<option value="拱墅区">临安市</option>
				</select>
			</div>
		</div> -->

		<div class="layui-form-item">
			<label class="layui-form-label">性别</label>
			<div class="layui-input-block">
				<input type="radio" name="gender" value="男" title="男">
				<input type="radio" name="gender" value="女" title="女">
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">简介</label>
			<div class="layui-input-block">
				<textarea placeholder="请输入内容" class="layui-textarea" name="resume"></textarea>
			</div>
		</div>

		<div class="layui-form-item">
			<div class="layui-input-block">
				<input type="submit" class="layui-btn" name="save" value="提交" />
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				<a href="usersManager.jsp"><button type="reset" class="layui-btn layui-btn-primary">返回</button></a>


			</div>
		</div>
	</form>
	<div class="layui-content"><!-- 鸡汤显示图片 -->
    <div class="layui-row">
        <div class="layui-card">
         <div class="layui-card-header"><strong>为了遇见你 我在前世 早已留有余地        &nbsp;&nbsp;&nbsp;&nbsp; ----仓央嘉措</strong> </div>
                 	
                  	<img src="../assets/images/234.gif"  width="300" height="200"alt="" align ="left"/>
                  	<img src="../assets/images/longmao.gif"  width="200" height="200"alt="" align ="middle"/>
                  	<img src="../assets/images/longmao.gif"  width="200" height="200"alt="" align ="middle"/>
                  	<img src="../assets/images/longmao.gif"  width="200" height="200"alt="" align ="middle"/>
                  	  <img src="../assets/images/longmao.gif"  width="200" height="200"alt="" align ="middle"/>
                    <img src="../assets/images/234.gif"  width="300" height="200"alt="" align ="right" />
      			
           </div>
        </div>
    </div>
	<script src="../assets/layui.all.js"></script>
</body>
</html>
