<template>
  <div class="left-chart-2">
    <div class="lc2-header">隐患整改</div>
    <div class="zhenggai">
      <dv-charts :option="ring" style="height:70px"/>
      <dv-charts :option="ringss" style="height:70px" />
    </div>
    <dv-capsule-chart :config="config" style="height:70px" />
    <dv-decoration-2 style="height:10px;margin-top: 60px" />
  </div>
</template>

<script>
export default {
  name: 'LeftChart2',
  data () {
    return {
      ring: {
        series: [
          {
            type: 'gauge',
            startAngle: -Math.PI / 2,
            endAngle: Math.PI * 1.5,
            arcLineWidth: 13,
            radius: '70%',
            data: [
              { name: '', value: this.randomExtend(40, 60) }
            ],
            axisLabel: {
              show: false
            },
            axisTick: {
              show: false
            },
            pointer: {
              show: false
            },
            backgroundArc: {
              style: {
                stroke: '#09183A'
              }
            },
            details: {
              show: true,
              formatter: '整改完成{value}%',
              style: {
                fill: '#fff',
                fontSize: 10
              }
            }
          }
        ],
        color: ['#03d3ec']
      },
      ringss: {
        series: [
          {
            type: 'gauge',
            startAngle: -Math.PI / 2,
            endAngle: Math.PI * 1.5,
            arcLineWidth: 13,
            radius: '70%',
            data: [
              { name: '', value: this.randomExtend(40, 60) }
            ],
            axisLabel: {
              show: false
            },
            axisTick: {
              show: false
            },
            pointer: {
              show: false
            },
            backgroundArc: {
              style: {
                stroke: '#09183A'
              }
            },
            details: {
              show: true,
              formatter: '整改率{value}%',
              style: {
                fill: '#fff',
                fontSize: 10
              }
            }
          }
        ],
        color: ['#B59D4A']
      },
      config: {
        data: [
          {
            name: '一级',
            value: 100
          },
          {
            name: '二级',
            value: 67
          },
          {
            name: '三级',
            value: 100
          },
          {
            name: '四级',
            value: 55
          },
          {
            name: '五级',
            value: 98
          }
        ]
      }
    }
  },
  methods: {
    randomExtend (minNum, maxNum) {
      if (arguments.length === 1) {
        return parseInt(Math.random() * minNum + 1, 10)
      } else {
        return parseInt(Math.random() * (maxNum - minNum + 1) + minNum, 10)
      }
    }
  }
}
</script>

<style lang="less">
.left-chart-2 {
  width: 100%;
  height: 40%;
  display: flex;
  flex-direction: column;

  .lc2-header {
    height: 20px;
    line-height: 20px;
    font-size: 16px;
    text-indent: 20px;
    margin-top: 10px;
  }

  .lc2-details {
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

  .lc2-chart {
    height: calc(~"100% - 80px");
  }
}
.zhenggai{
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 100%;
  display: -webkit-inline-box;
  text-align: center;
  display: flex;
  flex-direction: row;
}
</style>
