<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Dao.booksDAO" %>
<%@ page import="JavaBean.Book" %>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>首页</title>
    <meta name="description" content="A responsive web app template with common components like profile, list, tabs, menu views. Made for Codrops exclusively.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/output.css">
    <link rel="stylesheet" href="node_modules/tippy.js/dist/themes/light.css">
</head>
<%
    booksDAO dao = new booksDAO();
    ArrayList<Book> list = dao.getAllBooks1();
    ArrayList<Book> list2 = dao.getAllBooks2();
    request.setAttribute("list",list);
    request.setAttribute("list2",list2);
%>
<body class="bg-grey-lighter font-sans antialiased">

<div  class="fixed bg-grey-lighter pin z-50 flex justify-center items-center" id="loading">
    <svg width="60px" height="60px" viewBox="0 0 60 60" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" id="morphing">
        <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
            <g transform="translate(-1178.000000, -87.000000)">
                <g transform="translate(1159.000000, 0.000000)">
                    <g transform="translate(0.000000, 87.000000)">
                        <g transform="translate(19.000000, 0.000000)">
                            <circle id="small-circle" fill="#5661B3" cx="30" cy="30" r="30"></circle>
                            <path id="moon" d="M30.5,49.7304688 C40.7172679,49.7304688 30.5,43.266096 30.5,33.0488281 C30.5,22.8315603 40.7172679,12 30.5,12 C20.2827321,12 11.0390625,20.6479665 11.0390625,30.8652344 C11.0390625,41.0825022 20.2827321,49.7304688 30.5,49.7304688 Z" fill="#F4E1E0"></path>
                            <circle id="big-circle" fill="#070707" cx="31" cy="31" r="11"></circle>
                        </g>
                    </g>
                </g>
            </g>
        </g>
    </svg>
</div>
<jsp:include page="./common/top2.jsp" />

<!-- Main -->
<div class="flex" >
    <!-- 侧边导航 -->
    <nav class="absolute lg:relative lg:flex lg:text-sm bg-indigo-darker lg:bg-transparent pin-l pin-r py-4 px-6 lg:pt-10 lg:pl-12 lg:pr-6 -mt-1 lg:mt-0 overflow-y-auto lg:w-1/5 lg:border-r z-40 hidden">
        <ul class="list-reset mb-8 w-full">
        
         <li class="ml-2 mb-4 flex">
                <img src="images/home-default.svg" alt="home-icon" class="w-4 h-4 mr-2">
                <div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium mobile-home-trigger">主页</div>
            </li>
            
            
             <li class="ml-2 mb-4 flex">
                <img src="images/category-default.svg" alt="home-icon" class="w-4 h-4 mr-2">
                <div class=" text-white lg:text-indigo-darkest "
                  onclick="window.location.href= 'http://localhost:8080/时光手账1/adminstrator/booksManager/booksManager.jsp';return false">账单管理</div>
            </li>
        
        <li class="ml-2 mb-4">
                <div class="flex" id="sidenav-categories-trigger">
                    <img src="images/category-default.svg" alt="home-icon" class="w-4 h-4 mr-2">
                    <div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium w-full relative">
                        收支类型
                        <div class="pointer-events-none absolute pin-y pin-r flex items-center px-1 text-grey-darker" id="sidenav-icon">
                            <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                            </svg>
                        </div>
                    </div>
                </div>
                <ul class="text-grey lg:text-grey-dark list-reset leading-loose mt-2" id="sidenav-categories">
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                    <div onclick="window.location.href= 'zhangdanleixing.jsp';return false">微信</div></li>
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                    <div onclick="window.location.href= 'zhifubao.jsp';return false">支付宝</div></li>
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
					<div onclick="window.location.href= 'xianjin.jsp';return false">现金</div></li>
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
					<div onclick="window.location.href= 'yinhangka.jsp';return false">银行卡</div></li>
                   <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                       <div onclick="window.location.href= 'qita.jsp';return false">其它</div></li>
                </ul>
            </li>
        
         
            <li class="ml-2 mb-4">
                <div class="flex" id="sidenav-categories-trigger">
                    <img src="images/category-default.svg" alt="home-icon" class="w-4 h-4 mr-2">
                    <div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium w-full relative">
                        时间顺序
                        <div class="pointer-events-none absolute pin-y pin-r flex items-center px-1 text-grey-darker" id="sidenav-icon">
                            <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                            </svg>
                        </div>
                    </div>
                </div>
                <ul class="text-grey lg:text-grey-dark list-reset leading-loose mt-2" id="sidenav-categories">
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                     <div onclick="window.location.href= 'Monday.jsp';return false">周一</div></li>
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                     <div onclick="window.location.href= 'Tuesday.jsp';return false">周二</div></li>
                     <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                     <div onclick="window.location.href= 'Wednesday.jsp';return false">周三</div></li>
                     <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                     <div onclick="window.location.href= 'Thursday.jsp';return false">周四</div></li>
                     <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                     <div onclick="window.location.href= 'Friday.jsp';return false">周五</div></li>
                     <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                     <div onclick="window.location.href= 'Saturday.jsp';return false">周六</div></li>
                     <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                     <div onclick="window.location.href= 'Sunday.jsp';return false">周日</div></li>
                    
                </ul>
            </li>

            
            <li class="ml-2 mb-4">
                <div class="flex" id="sidenav-categories-trigger">
                    <img src="images/wishlist-default.svg" alt="home-icon" class="w-4 h-4 mr-2">
                    <div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium w-full relative">
                       收支可视化统计
                        <div class="pointer-events-none absolute pin-y pin-r flex items-center px-1 text-grey-darker" id="sidenav-icon">
                            <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                            </svg>
                        </div>
                    </div>
                </div>
                <ul class="text-grey lg:text-grey-dark list-reset leading-loose mt-2" id="sidenav-categories">
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                    <div onclick="window.location.href= './adminstrator/consoleWeek.jsp';return false">周统计</div></li>
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                    <div onclick="window.location.href= './adminstrator/consoleMonth.jsp';return false">月统计</div></li>
                    <li class="hover:text-indigo-dark hover:cursor-pointer transition-normal ml-1 border-l border-grey-dark pl-4">
                    <div onclick="window.location.href= './adminstrator/consoleYear.jsp';return false">年统计</div></li>
                    
                </ul>
            </li> 
            
             <li class="ml-2 mb-4 flex ">
                <img src="images/profile-default.svg" alt="profile-icon" class="w-4 h-4 mr-2">
                <div class="hover:cursor-pointer text-white lg:text-indigo-darkest no-underline font-medium" id="mobile-profile-trigger">个人主页</div>
            </li>
            
        </ul>
    </nav>
    <!-- 中间 -->
       <!-- Content -->
  <div class="flex flex-1 flex-col md:px-6 pt-10" id="content">
        <!-- 中间题头-->
        <div class="px-6 md:px-0 flex justify-between items-center -order-1">
            <div>
                <h2 class="font-normal">支出</h2>
                <p class="text-grey-dark mt-2">小小账</p>
            </div>
            <a href="http://localhost:8080/时光手账1/adminstrator/booksManager/AddBook.jsp">
            <button class="bg-indigo-dark hover:bg-indigo-darker text-white text-sm py-2 px-4 rounded-full transition-normal 
            hover:shadow hover:translate-y-1 
            active:translate-y-1 focus:outline-none">记一个</button>
        	</a>
        </div>
        <!-- 桌面统计信息 -->
        <div class="hidden px-6 md:px-0 mt-4 md:flex flex-wrap order-1 md:-order-1 md:shadow-md js-tab-pane" id="section-stats">
            <div class="p-4 px-6 w-full md:w-1/2 rounded md:rounded-r-none bg-white shadow-md md:shadow-none">
                <h4>上月</h4>
                <table class="mt-4 w-full"  >
                    <thead class="p-2 text-sm leading-loose border-b text-indigo">
                    <tr>
                        <td>上月收入</td>
                        <td class="text-center">上月支出</td>
                        <td class="text-right">上月结余</td>
                    </tr>
                    </thead>
                    <tbody class="p-2 leading-loose text-sm">
                    <tr class="border-b">
                        <td class="py-2">5000</td>
                        <td class="py-2 text-center">3200</td>
                        <td class="py-2 text-right">1800</td>
                    </tr>
                    </tbody>
                </table>
            </div>
          <div class="p-4 px-6 w-full md:w-1/2 rounded md:rounded-r-none bg-white shadow-md md:shadow-none">
                <h4>本月</h4>
                <table class="mt-4 w-full">
                    <thead class="p-2 text-sm leading-loose border-b text-indigo">
                    <tr>
                        <td><strong>本月收入</strong></td>
                        <td class="text-center"><strong>本月支出</strong></td>
                        <td class="text-right"><strong>本月结余</strong></td>
                    </tr>
                    </thead>
                    <tbody class="p-2 leading-loose text-sm">
                    <tr class="border-b">
                        <td class="py-2">5400</td>
                        <td class="py-2 text-center">3500</td>
                        <td class="py-2 text-right">1900</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- 过滤器菜单 -->
        <div class="px-6 md:px-0 flex items-baseline justify-between border-b-2 border-grey-light mt-6 order-0 lg:order-1">
            <div>
                <div class="inline-block md:hidden no-underline border-indigo
                 pb-2 px-2 text-sm mr-2 text-indigo-darkest hover:cursor-pointer 
                 js-tab relative" data-tab="section-stats">小小账</div>
                <div class="no-underline inline-block border-indigo 
                pb-2 px-2 text-sm mr-2 text-indigo-darkest hover:cursor-pointer
                 js-tab active relative" data-tab="section-library" id="valuable">按时间排序
                  <span class="text-indigo text-xs">(70)</span></div>
                <div class="no-underline inline-block border-indigo pb-2 px-2
                 text-sm text-indigo-darkest hover:cursor-pointer js-tab relative" 
                 data-tab="section-picks" id="select">按收支类型</div>
            </div>
        </div>
        <!--时间排序账单 -->
 <div class="hidden px-2 pt-2 md:px-0 flex-wrap order-2 pb-8 js-tab-pane active " id="section-library">   
	<table class="layui-table" style="table-layout: auto;" cellpadding="24" align="center">
    <colgroup>
        <col width="150">
        <col width="150">
        <col>
    </colgroup>
    <thead class="border-b">
    <tr>
        <td align="center"><strong>消费类型</strong></td>
        <td align="center"><strong>消费金额</strong></td>
        <td align="center"><strong>时间</strong></td>
        <td align="center"><strong>星期</strong></td>
         <td align="center"><strong>收支类型</strong></td>
        <td align="center"><strong>备注</strong></td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="wx" items="${list}" varStatus="status">
        <tr class="border-b-4" style="background-color:#FAF0E6">
            <td align="center"><c:out value="${wx.getIsbn()}"/></td>
            <td align="center"><c:out value="${wx.getPrice()}"/></td>
            <td align="center"><c:out value="${wx.getPublishdate()}"/></td>
            <td align="center"><c:out value="${wx.getPublish()}"/></td>
             <td align="center"><c:out value="${wx.getAuthor()}"/></td>
            <td align="center"><c:out value="${wx.getBookresume()}"/> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
          </div>
        <!-- 类型排序账单 -->
        <div  class=" hidden flex-wrap order-2 pt-0 md:pt-6 md:pb-8 js-tab-pane picks" id="section-picks">
			  <table class="layui-table" style="table-layout: auto;" cellpadding="24" align="center">
    <colgroup>
        <col width="150">
        <col width="150">
        <col>
    </colgroup>
    <thead  class="border-b">
   <tr>
        <td align="center"><strong>消费类型</strong></td>
        <td align="center"><strong>消费金额</strong></td>
        <td align="center"><strong>时间</strong></td>
        <td align="center"><strong>星期</strong></td>
         <td align="center"><strong>收支类型</strong></td>
        <td align="center"><strong>备注</strong></td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="wx" items="${list}" varStatus="status">
        <tr class="border-b-4" style="background-color:#F0FFFF">
            <td align="center"><c:out value="${wx.getIsbn()}"/></td>
            <td align="center"><c:out value="${wx.getPrice()}"/></td>
            <td align="center"><c:out value="${wx.getPublishdate()}"/></td>
            <td align="center"><c:out value="${wx.getPublish()}"/></td>
             <td align="center"><c:out value="${wx.getAuthor()}"/></td>
            <td align="center"><c:out value="${wx.getBookresume()}"/> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
        </div>
    </div>
  
 <!-- 侧边 -->
    <div class="hidden absolute pin-b z-10 lg:relative lg:block w-full lg:w-1/5 bg-grey-lighter-2 px-6 pt-10" id="profile" >
        <div class="flex items-center mb-6">
            <svg width="60px" height="60px" viewBox="0 0 60 60" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" id="avatar">
                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                    <g transform="translate(-1178.000000, -87.000000)">
                        <g transform="translate(1159.000000, 0.000000)">
                            <g transform="translate(0.000000, 87.000000)">
                                <g transform="translate(19.000000, 0.000000)">
                                    <circle id="small-circle" fill="#5661B3" cx="30" cy="30" r="30"></circle>
                                    <path id="moon" d="M30.5,49.7304688 C40.7172679,49.7304688 30.5,43.266096 30.5,33.0488281 C30.5,22.8315603 40.7172679,12 30.5,12 C20.2827321,12 11.0390625,20.6479665 11.0390625,30.8652344 C11.0390625,41.0825022 20.2827321,49.7304688 30.5,49.7304688 Z" fill="#F4E1E0"></path>
                                    <circle id="big-circle" fill="#070707" cx="31" cy="31" r="11"></circle>
                                </g>
                            </g>
                        </g>
                    </g>
                </g>
            </svg>
            <jsp:include page="common/right2.jsp" />
        </div>
        
       <div class="my-4 border-t pt-4">
        <p class="text-grey-dark mt-1 text-sm">一句</p>
            <h3 class="text-indigo-dark font-normal">
            如果傻瓜才能坚持梦想
            <br>那就叫我大傻瓜吧
            <br>如果黑洞能吞下一百亿个太阳
            <br>我就是第一百亿零一 
            </h3>
            <div class="flex flex-wrap -ml-2 justify-start items-center" id="show">
            </div>
        </div>
        <div class="mt-6">
            <p class="text-grey-dark mt-1 text-sm">一景</p>
            <div class="flex items-start mt-2">
            
                <img src="imgs/haoyun.jpg"  width="500" height="500"/>
               
            </div>
        </div>
    </div>	     
</div>


<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
<script src="js/library.js"></script>
<script src="js/bundle.js" async defer></script>
</body>
</html>