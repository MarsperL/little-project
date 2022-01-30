let chart3 = echarts.init(document.getElementById("three"));
option = {
    title: {
        text: '支出走势'
    },
    color: ['#3398DB','#7CFC00','#FF8247'],
    tooltip: {
        trigger: 'axis'
    },
    legend: {
         data: ['上上周','上周','本周']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
     xAxis: {
        type: 'category',
        boundaryGap: false,
        data: ['周一','周二','周三','周四','周五','周六','周日']
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: '上上周',
            type: 'line',
            stack: '总量',
            data: [110,70,60,75,140,115,60]
        },
        {
            name: '上周',
            type: 'line',
            stack: '总量',
            data: [120,60,80,175,60,54,134]
        },
        {
            name: '本周',
            type: 'line',
            stack: '总量',
            data: [80,110,50,100,75,115,100]
        }
        
    ]
};
chart3.setOption(option);