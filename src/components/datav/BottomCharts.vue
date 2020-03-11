<template>
  <div class="bottom-charts">
    <!-- <div class="bc-chart-item">
      <div class="bcci-header">
        <img
          src="./img/icon1.png"
          style="width:30px;height:30px;    margin-right: 10px;
    vertical-align: sub;"
        />隐患排查
      </div>
      <dv-active-ring-chart :config="config1" />
      <Label-Tag :config="labelConfig" />
    </div> -->
    <!-- <dv-decoration-2 class="decoration-1" :reverse="true" style="width:5px;" /> -->


     <div class="bc-chart-item">
      <div class="bcci-header">
        <img
          src="./img/icon2.png"
          style="width:30px;height:30px;margin-right: 10px;
    vertical-align: sub;"
        />安全教育
      </div>
     <dv-active-ring-chart :config="config2" style="width:150px;height:150px;display:inline-block;margin-left: 20px;margin-top: 24px;" />
     <dv-active-ring-chart :config="config2" style="width:150px;height:150px;display:inline-block;margin-top: 24px;" />
    <!-- <p class="count">标题标题标题标题标题标题标题标题标题标题标题标题标题标题</p> -->
    </div>

    <dv-decoration-2 class="decoration-2" :reverse="true" style="width:5px;" />


 <div class="bc-chart-item">
      <div class="bcci-header">
        <img
          src="./img/icon4.png"
          style="width:30px;height:30px;margin-right: 10px;
    vertical-align: sub;"
        />安全应急
      </div>
      <!-- <dv-scroll-ranking-board
        :config="config4"
        style="width:220px;height:120px;margin-left:20px;"
      /> -->
      <dv-capsule-chart :config="config4" style="width:300px;height:145px;margin-left:20px;margin-top: 38px;" />
    </div>
    <dv-decoration-2 class="decoration-3" :reverse="true" style="width:5px;" />

   

    <div class="bc-chart-item">
      <div class="bcci-header">
        <img
          src="./img/icon1.png"
          style="width:30px;height:30px;    margin-right: 10px;
    vertical-align: sub;"
        />报警分析
      </div>
       <dv-charts :option="option" style="width:300px;height:183px;margin-left:20px;" />
    </div>

    

   
  </div>
</template>

<script>
import LabelTag from './LabelTag'

export default {
  name: 'BottomCharts',
  components: {
    LabelTag
  },
  data () {
    return {
      config1: {
        data: [
          {
            name: '食堂',
            value: 356
          },
          {
            name: '停车场',
            value: 215
          },
          {
            name: '校园',
            value: 90
          },
          {
            name: '其他',
            value: 317
          }
        ],
        color: ['#00baff', '#3de7c9', '#fff', '#ffc530', '#469f4b'],
        radius: '80%',
        digitalFlopStyle: {
          fontSize: 10
        },
        activeRadius: '70%'
      },
       option: {
        legend: {
          data: [
            {
              name: '报警系统',
              color: '#00baff'
            },
            {
              name: '监控系统',
              color: '#ff5ca9'
            },
            {
              name: '通信系统',
              color: '#3de7c9'
            },
            {
              name: '供配电系统',
              color: '#f5d94e'
            }
          ],
          textStyle: {
            fill: '#fff'
          }
        },
        xAxis: {
          data: [
            '10/01', '10/02', '10/03', '10/04', '10/05', '10/06', '10/07'
          ],

          axisLine: {
            style: {
              stroke: '#999',
              fill: '#fff',
              fontSize: 10
            }
          },
          axisLabel: {
            style: {
              fill: '#fff'
            }
          },
          axisTick: {
            show: false
          }
        },
        yAxis: {
          data: 'value',
          splitLine: {
            show: false,
            fill: '#fff',
            fontSize: 10,
            rotate: 0
          },
          axisLine: {
            style: {
              stroke: '#fff'
            }
          },
          axisLabel: {
            style: {
              fill: '#fff'
            }
          },
          axisTick: {
            show: false
          },
          min: 0,
          max: 8
        },
        series: [
          {
            name: '报警系统',
            data: [
              2.5, 3.5, 6.5, 6.5, 7.5, 6.5, 2.5
            ],
            type: 'bar',
            barStyle: {
              fill: 'rgba(0, 186, 255, 0.4)'
            }
          },
        ]
      },
    

      config2: {
        data: [
          {
            name: '学校',
            value: 20
          },
          {
            name: '餐厅',
            value: 80
          },
        ],
        digitalFlopStyle: {
          fontSize: 20
        }
      },

      config4: {
          data: [
    {
      name: '南阳',
      value: 167
    },
    {
      name: '周口',
      value: 67
    },
    {
      name: '漯河',
      value: 123
    },
    {
      name: '郑州',
      value: 55
    },
    {
      name: '西峡',
      value: 98
    },
  ],
  unit: '单位'
      },

      labelConfig: {
        data: ['确认', '监控', '疑似', '其他']
      }
    }
  }
}
</script>

<style lang="less">
.bottom-charts {
  width: 100%;
  height: 100%;
  display: flex;
  position: relative;
  .yinhuan {
    font-size: 20px;
    font-weight: bold;
    height: 30px;
    line-height: 30px;
    position: absolute;
    left: 10px;
    top: 5px;
  }
  .count{
    color: #fff;
    border: 1px solid #fff;
    border-radius: 5px;
    padding: 5px 10px;
    width: 80%;
    margin: auto;
    left: 0;
    right: 0;
    position: absolute;
    bottom: -12px;
  }
  .bc-chart-item {
    width: 33%;
    height: 100%;
    padding-top: 20px;
    box-sizing: border-box;
    position: relative;
  }

  .bcci-header {
    height: 50px;
    text-align: center;
    line-height: 50px;
    font-size: 20px;
    position: absolute;
    width: 135px;
    left: 0;
    right: 0;
    top:10px;
    margin: auto;
  }

  .dv-active-ring-chart {
    height: calc(~"100% - 80px");
  }

  .label-tag {
    height: 30px;
  }

  .active-ring-name {
    font-size: 18px !important;
  }

  .decoration-1,
  .decoration-2,
  .decoration-3 {
    display: absolute;
    left: 0%;
  }
}
</style>
