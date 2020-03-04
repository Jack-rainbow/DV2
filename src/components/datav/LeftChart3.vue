<template>
  <div class="left-chart-3">
   <dv-charts :option="option" />
  </div>
</template>

<script>
export default {
  name: 'LeftChart3',
  data () {
    return {
      option: {
        title: {
          text: '访客记录',
          style: {
            fill: '#fff',
            fontSize: 17,
            fontWeight: 'bold',
            textAlign: 'center',
            textBaseline: 'bottom'
          }
        },
        xAxis: {
          data: [
            '一月', '二月', '三月', '四月', '五月', '六月',
            '七月', '八月', '九月', '十月', '十一月', '十二月'
          ],
          axisLabel: {
            formatter: '{value} ',
            style: {
              fill: '#fff',
              fontSize: 6,
              rotate: 40
            }
          }
        },
        yAxis: {
          name: '',
          data: 'value',
          min: 0,
          max: 500,
          interval: 50,
          axisLabel: {
            formatter: '{value}',
            style: {
              fill: '#fff',
              fontSize: 10,
              rotate: 0
            }
          }
        },
        series: [
          {
            data: [145, 230, 300, 426, 221, 450, 385],
            type: 'line',
            lineArea: {
              show: true
            }
          }
        ]
      }
    }
  }
}
</script>

<style lang="less">
.left-chart-3 {
  width: 100%;
  height: 33%;
  display: flex;
  flex-direction: column;

  .lc3-header {
    height: 20px;
    line-height: 20px;
    font-size: 16px;
    text-indent: 20px;
    margin-top: 10px;
  }

  .lc3-details {
    height: 40px;
    font-size: 16px;
    display: flex;
    align-items: center;
    text-indent: 20px;

    span {
      color: #096dd9;
      font-weight: bold;
      font-size: 35px;
      margin-left: 20px;
    }
  }

  .lc3-chart {
    flex: 1;
  }
}
</style>
