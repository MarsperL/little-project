let chart2 = echarts.init(document.getElementById("two"));
option = {
    title: {
        text: '收支统计',
        subtext: '支出占比',
        left: 'center'
    },
    color: ['#3398DB','#EECFA1','#C6E2FF','#1E90FF','#AFEEEE','#00BFFF','#87CEFA','#40E0D0','#00CD66','#008B8B'],
    tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b} : {c} ({d}%)'
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: ['餐饮', '旅游','其它', '购物', '送礼人情', '医疗健康', '文化教育','红包','住房','出行交通']
    },
    series: [
        {
            name: '支出类型',
            type: 'pie',
            radius: '55%',
            center: ['50%', '60%'],
            data: [
                {value: 535, name: '餐饮'},
                {value: 130, name: '旅游'},
                {value: 490, name: '其它'},
                {value: 404, name: '购物'},
                {value: 216, name: '送礼人情'},
                {value: 133, name: '医疗健康'},
                {value: 202, name: '文化教育'},
                {value: 200, name: '红包'},
                {value: 800, name: '住房'},
                {value: 100, name: '出行交通'}
            ],
            emphasis: {
                itemStyle: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
chart2.setOption(option);