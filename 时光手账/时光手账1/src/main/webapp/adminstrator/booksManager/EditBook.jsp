<%@ page import="Dao.booksDAO" %>
<%@ page import="JavaBean.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>修改账单信息</title>
	<link rel="stylesheet" href="../assets/css/layui.css">
</head>
<body background="../assets/images/5.jpg">

<%
	String ID = request.getParameter("id");
	booksDAO dao= new booksDAO();
	Book books = dao.getAllBooksByID(ID);
	pageContext.setAttribute("ID",ID);
	pageContext.setAttribute("books",books);
%>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
	<legend>修改账单信息</legend>
</fieldset>

<form class="layui-form" action="doEditBook.jsp" method="post">
	<input name="id" value="${ID}" style="display: none">
	<div class="layui-form-item">
		<label class="layui-form-label">消费类型</label>
		<div class="layui-input-inline">
			<input id="type" type="text" value="${books.getIsbn()}" name="isbn" list="typelist"  placeholder="请选择/填写消费类型" autocomplete="off" class="layui-input">
		<datalist id="typelist">
　　						<option>餐饮</option>
                            <option>旅游</option>
                            <option>购物</option>
                            <option>送礼人情</option>
                            <option>出行交通</option>
                            <option>红包</option>
                            <option>医疗健康</option>
                            <option>文化教育</option>
                            <option>住房</option>
						</datalist>
		</div>
		<div class="layui-form-mid layui-word-aux"><strong>请选择/填写消费类型</strong></div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">收支类型</label>
		<div class="layui-input-inline">
			<input id="types" type="text" name="author" list="typeslist" value="${books.getAuthor()}"  placeholder="请选择/填写收支类型" autocomplete="off" class="layui-input">
			<datalist id="typeslist">
　　						<option>微信</option>
                            <option>支付宝</option>
                            <option>现金</option>
                            <option>银行卡</option>
						</datalist>
		</div>
		<div class="layui-form-mid layui-word-aux"><strong>请选择/填写收支类型</strong></div>
	</div>
	
	
	<div class="layui-form-item">
		<label class="layui-form-label">消费金额</label>
		<div class="layui-input-inline">
			<input type="text"  value="${books.getPrice()}" name="price" lay-verify="pass" placeholder="请输入消费金额" autocomplete="off" class="layui-input">
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">时间</label>
		<div class="layui-input-inline">
			<input type="text"  value="${books.getPublishdate()}" name="publishdate"  id="test3" lay-verify="pass" placeholder="请选择时间" autocomplete="off" class="layui-input">
		</div>
		<div class="layui-input-inline" >
				<input type="text"  name="publish" list="zhou" class="layui-input" placeholder="请选择一周的具体天"  class="layui-input">
				<datalist  id="zhou">
					<option >周一</option>
					<option >周二</option>
					<option >周三</option>
					<option>周四</option>
					<option >周五</option>
					<option >周六</option>
					<option >周日</option>
				</datalist>
			</div>
	</div>

	<div class="layui-form-item layui-form-text">
		<label class="layui-form-label">备注</label>
		<div class="layui-input-block">
			<textarea placeholder="请输入备注内容" class="layui-textarea" name="bookresume" >${books.getBookresume()}</textarea>
		</div>
	</div>

	<div class="layui-form-item">
		<div class="layui-input-block">
		 <button type="submit" class="layui-btn layui-btn-blue" lay-submit lay-filter="formDemo">提交</button>
			
			<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			<a href="booksManager.jsp"><button type="reset" class="layui-btn layui-btn-primary">返回</button></a>
		</div>
	</div>
	
</form>

	<div class="layui-content"><!-- 鸡汤显示图片 -->
    <div class="layui-row">
        <div class="layui-card">
         <div align="center" class="layui-card-header"><strong>为了遇见你 我在前世 早已留有余地        &nbsp;&nbsp;&nbsp;&nbsp; ----仓央嘉措</strong> </div>
                 	
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
<script>
    var form = layui.form
        ,layer = layui.layer
    layui.use('laydate', function(){
        var laydate = layui.laydate;
//年月选择器
       laydate.render({
            elem: '#test3'
            ,theme: '#1C86EE' //主题颜色
           ,calendar: true  ////允许显示公历节日
            ,type:'datetime'
         
        })
    })
</script>
</body>
</html>
