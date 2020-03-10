<template>
  <div class="center-cmp">
    <div class="cc-header">
      <dv-decoration-1 style="width:200px;height:50px;" />

      <dv-decoration-1 style="width:200px;height:50px;" />
    </div>

    <div class="font-head">
      <div class="font-left">
        <div class="cc-details">
          <div class="num">教职工人数</div>
          <div class="card">2</div>
          <div class="card">1</div>
          <div class="card">3</div>
          <div class="card">7</div>
        </div>
        <div class="cc-details">
          <div class="num">学生人数</div>
          <div class="card">9</div>
          <div class="card">1</div>
          <div class="card">3</div>
          <div class="card">7</div>
        </div>
        <div class="cc-details">
          <div class="num">安保人数</div>
          <div class="card">1</div>
          <div class="card">6</div>
          <div class="card">6</div>
          <div class="card">6</div>
        </div>
        <div class="cc-details">
          <div class="num">监控数量</div>
          <div class="card">0</div>
          <div class="card">8</div>
          <div class="card">8</div>
          <div class="card">8</div>
        </div>
      </div>
      <div class="font-right">
        <div class="zhenggai">
          <dv-charts :option="ring" style="width:130px;height:100px"/>
          <dv-charts :option="ringss" style="width:130px;height:100px"/>
          <dv-charts :option="ringsss" style="width:130px;height:100px"/>
        </div>
      <dv-decoration-8 :reverse="true" style="width: 360px;
    transform: rotate(180deg);
    height: 50px;
    margin-top: 15px;" />
      </div>
    </div>
    <!-- <div class="cc-main-container">
      <div class="ccmc-left">
        <div class="station-info">
          收费站<span>1315</span>
        </div>
        <div class="station-info">
          监控中心<span>415</span>
        </div>
      </div>

      <dv-active-ring-chart class="ccmc-middle" :config="config" />

      <div class="ccmc-right">
        <div class="station-info">
          <span>90</span>道路外场
        </div>
        <div class="station-info">
          <span>317</span>其他
        </div>
      </div>

      <LabelTag :config="labelConfig" />
    </div> -->
    <!-- <dv-decoration-10 style="width:100%;height:5px;margin-top: 20px;" /> -->
    <div class="table">
      <div class="temp">学生健康状况</div>
      <!-- <dv-scroll-board :config="config2" style="width:700px;height:150px" /> -->
      <dv-charts :option="option"  style="width:700px;height:280px;margin-top: -50px;" />
    </div>
  </div>
</template>

<script>
// import LabelTag from './LabelTag'

export default {
  name: 'CenterCmp',
  // components: {
  //   LabelTag
  // },
  data () {
    return {
      config: {
        data: [
          {
            name: '收费站',
            value: 1315
          },
          {
            name: '监控中心',
            value: 415
          },
          {
            name: '道路外场',
            value: 90
          },
          {
            name: '其他',
            value: 317
          }
        ],
        color: ['#00baff', '#3de7c9', '#fff', '#ffc530', '#469f4b'],
        lineWidth: 30,
        radius: '55%',
        activeRadius: '60%'
      },
      config2: {
        header: ['姓名', '班级', '温度'],
        waitTime: '2000',
        data: [
          ['王五', '1年级', '35.6'],
          ['学五', '2年级', '36.1'],
          ['王一', '3年级', '35.3'],
          ['王三', '1年级', '35.1'],
          ['赵五', '3年级', '35.2'],
          ['孙蛋', '2年级', '35.6'],
          ['李欧', '1年级', '36.2'],
          ['王掘', '1年级', '36.7'],
          ['王超强', '2年级', '35.9'],
          ['罗欣', '1年级', '36.4']
        ],
        align: ['center', 'center', 'center'],
        headerBGC: 'rgba(0, 14, 2,0.1)',
        oddRowBGC: 'rgba(14, 14, 14,0.1)',
        evenRowBGC: 'rgba(14, 14, 14,0.1)'
      },
      labelConfig: {
        data: ['收费站', '监控中心', '道路外场', '其他']
      },
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
              formatter: '学校评分 {value} ',
              style: {
                fill: '#fff',
                fontSize: 15
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
              formatter: '平台使用{value}次',
              style: {
                fill: '#fff',
                fontSize: 15
              }
            }
          }
        ],
        color: ['#B59D4A']
      },
      ringsss: {
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
              formatter: '测量体温 {value} 次',
              style: {
                fill: '#fff',
                fontSize: 15
              }
            }
          }
        ],
        color: ['#03d3ec']
      },
      option: {
        xAxis: {
          name: '',
          data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
          axisLabel: {
            formatter: '{value} ',
            style: {
              fill: '#fff',
              fontSize: 10
            }
          }
        },
        yAxis: {
          name: '',
          data: 'value',
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
            data: [1200, 2230, 1900, 2100, 3500, 4200, 3985],
            type: 'line'
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
.center-cmp {
  width: 100%;
  height: 100%;
  margin: 0px;
  padding: 0px;
  display: flex;
  flex-direction: column;

  .cc-header {
    height: 70px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-size: 30px;
  }

  .cc-details {
    height: 30px;
    display: flex;
    justify-content: center;
    font-size: 15px;
    align-items: center;

    .card {
      background-color: rgba(4,49,128,.6);
      color: #08e5ff;
      height: 25px;
      width: 25px;
      font-size: 20px;
      font-weight: bold;
      line-height: 25px;
      text-align: center;
      margin: 10px;
    }
  }

  // .cc-main-container {
  //   position: relative;
  //   flex: 1;
  //   display: flex;

  //   .ccmc-middle {
  //     width: 50%;
  //     height: 90%;

  //     .active-ring-name {
  //       font-size: 20px !important;
  //     }
  //   }

  //   .ccmc-left, .ccmc-right {
  //     width: 25%;
  //     display: flex;
  //     flex-direction: column;
  //     justify-content: center;
  //     font-size: 24px;

  //     span {
  //       font-size: 40px;
  //       font-weight: bold;
  //     }

  //     .station-info {
  //       height: 80px;
  //       display: flex;
  //       align-items: center;
  //     }
  //   }

  //   .ccmc-left {
  //     align-items: flex-end;

  //     span {
  //       margin-left: 20px;
  //     }
  //   }

  //   .ccmc-right {
  //     align-items: flex-start;

  //     span {
  //       margin-right: 20px;
  //     }
  //   }
  // }

  // .label-tag {
  //   position: absolute;
  //   width: 500px;
  //   height: 30px;
  //   bottom: 10px;
  //   left: 50%;
  //   transform: translateX(-50%);
  // }
}
.table{
  width: 100%;
  // display: flex;
  // justify-content: center;
  // margin-top: 10px;
  margin-top: -10px;
}
.temp{
  font-size: 20px;
  display: flex;
  text-indent: 20px;
  justify-content: flex-end;
  margin-right: 150px;
}
.font-head{
  display: flex;
  padding: 0 20px;
}
.num{
  width: 80px;
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
.font-right{
  margin-left: 30px;
}
</style>
