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
         data: ['上上月','上月','本月']
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
        data: ['1', '2', '3', '4', '5', '6', '7',
            '8', '8', '10', '11', '12', '13', '14',
            '15', '16', '17', '18', '19', '20', '21',
            '22', '23', '24', '25', '26', '27', '28',
            '29', '30','31']
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: '上上月',
            type: 'line',
            stack: '总量',
            data: [100, 90, 50, 135, 75, 115,105,
             65,75,80,56,89,90,105,67,90,80,65,49,140,61,80,68,100,800,54,95,55,50,71,'65']
        },
        {
            name: '上月',
            type: 'line',
            stack: '总量',
            data: [80, 110, 50, 100, 75, 115,100,
             45,75,102,54,89,100,130,67,97,73,65,49,200,62,70,78,90,800,54,105,50,45,70]
        },
        {
            name: '本月',
            type: 'line',
            stack: '总量',
            data: [80, 140, 50, 120, 75, 105,120,
             55,65,80,66,80,70,100,76,81,84,65,49,150,61,70,68,80,800,54,125,70,55,81,'45']
        }
        
    ]
};
chart3.setOption(option);