
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="./assets/css/layui.css">
    <link rel="stylesheet" href="./assets/css/view.css"/>
    <script src="https://cdn.bootcss.com/echarts/4.2.1-rc1/echarts.min.js"></script>
    <title>周统计</title>
</head>
<body class="layui-view-body" background="../imgs/7.jpg">
<div class="layui-content">
    <div class="layui-row layui-col-space20">
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-body chart-card">
                    <div class="chart-header">
                        <div class="metawrap">
                            <div class="meta">
                                <span>本周收入</span>
                            </div>
                            <div class="total">1050</div>
                        </div>
                    </div>
                    <div class="chart-body">
                        <div class="contentwrap">

                        </div>
                    </div>
                    <div class="chart-footer">
                        <div class="field">
                            <span>日收入</span>
                            <span>150</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-body chart-card">
                    <div class="chart-header">
                        <div class="metawrap">
                            <div class="meta">
                                <span>本周支出</span>
                            </div>
                            <div class="total">630</div>
                        </div>
                    </div>
                    <div class="chart-body">
                        <div class="contentwrap">

                        </div>
                    </div>
                    <div class="chart-footer">
                        <div class="field">
                            <span>日支出</span>
                            <span>90</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-body chart-card">
                    <div class="chart-header">
                        <div class="metawrap">
                            <div class="meta">
                                <span>本周预算</span>
                            </div>
                            <div class="total">700</div>
                        </div>
                    </div>
                    <div class="chart-body">
                        <div class="contentwrap">

                        </div>
                    </div>
                    <div class="chart-footer">
                        <div class="field">
                            <span>日预算</span>
                            <span>100</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-sm6 layui-col-md3">
            <div class="layui-card">
                <div class="layui-card-body chart-card">
                    <div class="chart-header">
                        <div class="metawrap">
                            <div class="meta">
                                <span>本月结余</span>
                            </div>
                            <div class="total">420</div>
                        </div>
                    </div>
                    <div class="chart-body">
                        <div class="contentwrap">

                        </div>
                    </div>
                    <div class="chart-footer">
                        <div class="field">
                            <span>日结余</span>
                            <span>60</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-sm12 layui-col-md12">
            <div class="layui-card">
                <div class="layui-tab layui-tab-brief">
                    <ul class="layui-tab-title">
                        <li class="layui-this">支出统计</li>
                        <li>资产走势</li>
                    </ul>
                    <div class="layui-tab-content" >
                        <div class="layui-tab-item layui-show" >
                            <div id="one" style="width: 450px;height:350px;display: inline-block"></div>
                            <div id="two" style="width: 455px;height:370px;display: inline-block;padding-left: 100px"></div>
                        </div>
                        <div class="layui-tab-item" >
                            <div id="three" style="width: 800px;height:350px;display: inline-block"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./assets/layui.all.js"></script>
<script>
var element = layui.element;
</script>
<script src="assets/chart1week.js"></script>
<script src="assets/chart2week.js"></script>
<script src="assets/chart3week.js"></script>

</body>
</html>