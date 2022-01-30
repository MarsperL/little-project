var chart1 = echarts.init(document.getElementById("one"));
option = {
    title: {
        text: '本年统计',
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
            data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月','8月','9月','10月','11月','12月'],
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
             data: [3163,3200,2310,2690,2843,3000,2745,3201,2456,3112,3420,4000]
        }
    ]
};
chart1.setOption(option);