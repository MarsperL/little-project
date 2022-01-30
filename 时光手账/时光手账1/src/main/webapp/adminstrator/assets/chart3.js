let chart3 = echarts.init(document.getElementById("three"));
option = {
    title: {
        text: '支出走势'
    },
    color: ['#3398DB','#7CFC00','#FF8247','#00BFFF','#DAA520'],
    tooltip: {
        trigger: 'axis'
    },
    legend: {
         data: ['2016','2017','2018','2019','2020']
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
        data: ['2月','4月','6月','8月','10月','12月']
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: '2016',
            type: 'line',
            stack: '总量',
            data: [-4080, -5050, -4890, -3200, -6010,-2800, -4340]
        },
        {
            name: '2017',
            type: 'line',
            stack: '总量',
            data: [-3030, -4021, -3021, -5021, -8943, -4330, -3310]
        },
        {
            name: '2018',
            type: 'line',
            stack: '总量',
            data: [-3150, -4232, -2201, -5154, -3190, -6330, -4410]
        },
        {
            name: '2019',
            type: 'line',
            stack: '总量',
            data: [-5320, -3332, -4301, -6334, -4390, -4330, -3320]
        },
        {
            name: '2020',
            type: 'line',
            stack: '总量',
            data: [-3820, -3932, -4901, -3934, -5290, -4330, -7320]
        }
    ]
};
chart3.setOption(option);