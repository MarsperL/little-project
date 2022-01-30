<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="../assets/css/layui.css">
    <link rel="stylesheet" href="../assets/css/view.css"/>
    <title>添加账单</title>
    <title></title>
</head>
<body class="layui-view-body" background="../assets/images/pu.jpg" >
<div class="layui-content">
    <div class="layui-row">
        <div class="layui-card">
        <div class="layui-card-header"><strong>记账</strong></div>
            <form class="layui-form layui-card-body" action="doAddBook.jsp" name="mark">
                <div class="layui-form-item">
                    <label class="layui-form-label">消费类型</label>
                    <div class="layui-input-block">
                    <input id="type" type="text" name="isbn" list="typelist" placeholder="请填写/选择消费类型" class="layui-input">
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
				</div>
					<div class="layui-form-item">
                    <label class="layui-form-label">收支类型</label>
                    <div class="layui-input-block">
                 
                   		<input id="types" type="text" name="author" list="typeslist" placeholder="请填写/选择收支类型" class="layui-input">
					<datalist id="typeslist">
　　						<option>微信</option>
                            <option>支付宝</option>
                            <option>现金</option>
                            <option>银行卡</option>
						</datalist>
                    </div>
                
                </div>
                <div class="layui-form-item">
				<label class="layui-form-label">消费金额</label>
                    <div class="layui-input-block">
                        <input type="text" name="price" required  placeholder="￥" autocomplete="off" class="layui-input">
                    </div>
                   </div>
                 <div class="layui-form-item">
                     <label class="layui-form-label">时间</label>
                     <div class="layui-input-inline">
                         <input type="text" name="publishdate"  class="layui-input" id="test3" placeholder="请选择时间">
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
<%--                    <div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
                </div>
 
 
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">备注</label>
                    <div class="layui-input-block">
                        <textarea name="bookresume" placeholder="请输入内容"class="layui-textarea"></textarea>
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
        </div>
    </div>
</div>

<div class="layui-content"><!-- 鸡汤显示图片 -->
    <div class="layui-row">
        <div class="layui-card">
         <div align="center" class="layui-card-header"><strong>异地固然有距离，但爱没学过地理</strong> </div>
                 	
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