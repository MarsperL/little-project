<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="ml-3">
	<p></p>
    <p><%=(String)session.getAttribute("username")%></p>
    <p class="text-grey-dark mt-1 text-sm">这个人很懒，什么都没有留下~</p>
    <p class="text-grey-dark mt-1 text-sm"><a  class="text-sm text-dark text-indigo-dark hover:text-indigo-dark no-underline hidden lg:block " href="changeInformation.jsp">个人中心</a></p>
    <p class="text-grey-dark mt-1 text-sm"><a  class="text-sm text-dark text-indigo-dark hover:text-indigo-dark no-underline hidden lg:block " href="loginRegister.jsp">换账号登录</a></p>
    <p class="text-grey-dark mt-1 text-sm"><a class="text-sm text-dark text-indigo-dark hover:text-indigo-dark no-underline hidden lg:block " href="loginRegister.jsp">退出</a></p>
</div>
