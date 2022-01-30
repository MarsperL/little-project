var chart1 = echarts.init(document.getElementById("one"));
option = {
    title: {
        text: '本月统计',
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
            data: ['1', '2', '3', '4', '5', '6', '7',
            '8', '8', '10', '11', '12', '13', '14',
            '15', '16', '17', '18', '19', '20', '21',
            '22', '23', '24', '25', '26', '27', '28',
            '29', '30','31'],
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
             data: [80, 140, 50, 120, 75, 105,120,
             55,65,80,66,80,70,100,76,81,84,65,49,150,61,70,68,80,800,54,125,70,55,81,'45']
        }
    ]
};
chart1.setOption(option);