<!-- 登录注册页面 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>时光手账</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <div class="login_body l_clear">
        <div class="login_form l_float">
            <div class="login_top">
            	<h2 style="color:#7B68EE" dir="ltr">时光手账</h2>
       			<!-- <img src="imgs/logo_z.svg" alt="" class="">页面logo -->
                
                <div class="login_tags b_clear">
             
                    <span class="top_tag l_float active" onClick="PwdLogin()">密码登录</span>
                    <span class="top_tag r_float" onClick="QrcodeLogin()">用户注册</span>
                </div>
            </div>
            <div class="login_con login1">
                <form action="doLogin.jsp" method="POST">
                    <div>
                        <label for="user_name">用户名</label>
                        <input type="text" name="username" id="name" placeholder="账号名/手机号/邮箱">
                        <img src="imgs/icons/user.svg">
                        <p class="tips hidden">请检查您的账号</p>
                    </div>
                    <div>
                        <label for="user_pwd">密码</label>
                        <input type="password" name="password" id="password" placeholder="请输入账户密码">
                        <img src="imgs/icons/lock.svg">
                        <p class="tips hidden">请检查您的密码</p>
                    </div>
                    <div class="b_clear">
                    
                     <label for="auth_code" class="b_clear">验证码</label>
           			<canvas id="canvas" width="90" height="35" onclick="dj()"
	 					 style="border: 1px solid #ccc;
        				border-radius: 5px;"></canvas> <!-- 验证码图片大小 -->            
     				<input type="text" value="" placeholder="区分大小写" 
	 					style="height:43px;position: relative; top:0px; font-size:18px;"id ="text" maxlength="4"><!--验证码横线上的相关设置  -->
     				<img src="imgs/icons/auth_code.svg">
                                          
                    </div>
                    <div>
                        <%
                            if (session.getAttribute("usertxt")!= null)
                                out.println((String)session.getAttribute("usertxt"));
                        	session.setAttribute("usertxt", "");
                  	
                        %>
                    </div>
                    <div class="b_clear submit">

                        <button type="submit" onclick="sublim">登&nbsp;&nbsp;录</button>
                        <a href="#" class="r_float">忘记密码？</a>
                        <p class="tips hidden">登录失败，请检查您的账户与密码</p>
                    </div>
                </form>
            </div>
            <div class="login_con login2" hidden="">
                <form action="doRegister.jsp" method="POST">
                    <div>
                        <label for="user_name">用户名</label>
                        <input type="text" name="username" id="user_name" placeholder="起一个账号名~">
                        <img src="imgs/icons/user.svg">
                        <p class="tips hidden">请检查您的账号</p>
                    </div>
                    <div>
                        <label for="user_pwd">密码</label>
                        <input type="password" name="password" id="user_pwd" placeholder="输入你的密码~">
                        <img src="imgs/icons/lock.svg">
                        <p class="tips hidden">请检查您的密码</p>
                    </div>
                    <div class="b_clear">
                        <label for="auth_code" class="b_clear">邮箱</label>
                        <input type="text" name="email" id="auth_email" placeholder="请输入你的邮箱" >

                        <img src="imgs/icons/auth_code.svg">
                        <p class="tips hidden">验证码错误</p>

                    </div>
                    <div class="b_clear submit">
                        <button type="submit">注&nbsp;&nbsp;册</button>
            
                        <p class="tips hidden">注册失败的话请检查您的账户与密码</p>
                    </div>
                </form>
            </div>

            <div class="login_otherAccount">
                <span>第三方登录</span>
                <a href="http://"><img src="imgs/icons/wechat.svg" alt="微信登录"></a>
                <a href="http://"><img src="imgs/icons/weibo.svg" alt="微博登录"></a>
                <a href="http://"><img src="imgs/icons/qq.svg" alt="QQ登录"></a>
            </div>

        </div>
        <div class="login_ad l_float" id="AdImg" >
            <a href="">查看详情</a>
        </div>
    </div>
</div>
<script>
 var show_num = [];
 draw(show_num);
function dj(){
 draw(show_num);   
 }
function sublim(){
var val=document.getElementById("text").value;  
            var num = show_num.join("");
            /*if(val==''){
                alert('请输入验证码！');
            }else if(val == num){
               // alert('提交成功！');
                document.getElementById(".input-val").val('');
                // draw(show_num);

            }else{
                alert('验证码错误！\n你输入的是:  '+val+"\n正确的是:  "+num+'\n请重新输入！');
                document.getElementById("text").value='';
               	draw(show_num);
            }*/
       
          }
function draw(show_num) {
        var canvas_width=document.getElementById('canvas').clientWidth;
        var canvas_height=document.getElementById('canvas').clientHeight;
        var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
        var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
        canvas.width = canvas_width;
        canvas.height = canvas_height;
        var sCode = "A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0,q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m";
        var aCode = sCode.split(",");
        var aLength = aCode.length;//获取到数组的长度
			
        for (var i = 0; i <= 3; i++) {
            var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
            var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
            var txt = aCode[j];//得到随机的一个内容
            show_num[i] = txt;
            var x = 10 + i * 20;//文字在canvas上的x坐标
            var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
            context.font = "bold 18px 微软雅黑";

            context.translate(x, y);
            context.rotate(deg);

            context.fillStyle = randomColor();
            context.fillText(txt, 0, 0);

            context.rotate(-deg);
            context.translate(-x, -y);
        }
        /*  for (var i = 0; i <= 5; i++) { //验证码上显示线条
            context.strokeStyle = randomColor();
            context.beginPath();
            context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.stroke();
        }  */
         for (var i = 0; i <= 30; i++) { //验证码上显示小点
            context.strokeStyle = randomColor();
            context.beginPath();
            var x = Math.random() * canvas_width;
            var y = Math.random() * canvas_height;
            context.moveTo(x, y);
            context.lineTo(x + 1, y + 1);
            context.stroke();
        }
    } 
function randomColor() {//得到随机的颜色值
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    }
</script>
<script src="js/login.js"></script>
</body>
</html>

