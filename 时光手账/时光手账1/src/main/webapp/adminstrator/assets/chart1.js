var chart1 = echarts.init(document.getElementById("one"));
option = {
    title: {
        text: '本周统计',
        left: 'left'
    },
    color: ['#3398DB'],
    tooltip: {
        trigger: 'axis',
        axisPointer: {            // 坐标轴指示器，坐标轴触发有效
            type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis: [
        {
            type: 'category',
            data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    yAxis: [
        {
            type: 'value'
        }
    ],
    series: [
        {
            name: '消费金额',
            type: 'bar',
            barWidth: '60%',
             data: [180, 220, 110, 350, 150, 230,190]
        }
    ]
};
chart1.setOption(option);