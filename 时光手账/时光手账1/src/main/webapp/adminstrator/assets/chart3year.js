let chart3 = echarts.init(document.getElementById("three"));
option = {
    title: {
        text: '收支走势'
    },
    color: ['#8470FF','#63B8FF','#4876FF','#66CDAA','#458B74','#32CD32'],
    tooltip: {
        trigger: 'axis'
    },
    legend: {
         data: ['ZC-前年','ZC-去年','ZC-今年','SR-前年','SR-去年','SR-今年']
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
       data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月','8月','9月','10月','11月','12月'],
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name: 'ZC-前年',
            type: 'line',
            stack: '总量',
            data: [-3163,-3200,-2310,-2690,-2843,-3000,-2745,-3201,-2456,-3112,-3420,-4000]
        },
        {
            name: 'ZC-去年',
            type: 'line',
            stack: '总量',
            data: [-3556,-4387,-2456,-3490,-4543,-3320,-3245,-3431,-4326,-3522,-3440,-4090]
        },
        {
            name: 'ZC-今年',
            type: 'line',
            stack: '总量',
            data: [-4363,-3540,-2340,-2560,-4343,-3450,-2765,-2421,-2458,-4812,-2780,-3840]
        },
        {
            name: 'SR-前年',
            type: 'line',
            stack: '总量',
            data: [5000,6543,5423,7532,6843,4980,7645,6501,5466,5612,6120,6700]
        },
        {
            name: 'SR-去年',
            type: 'line',
            stack: '总量',
            data: [6432,6842,5313,6412,7512,2330,5245,5761,5556,6212,5420,7800]
        },
        {
            name: 'SR-今年',
            type: 'line',
            stack: '总量',
            data: [6313,6320,6410,6690,5943,7000,5644,6401,5956,7112,6420,8000]
        }
    ]
};
chart3.setOption(option);