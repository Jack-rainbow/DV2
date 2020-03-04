<template>
  <div class="bottom-charts">
    <div class="bc-chart-item">
      <div class="bcci-header">
        <img
          src="./img/icon1.png"
          style="width:30px;height:30px;    margin-right: 10px;
    vertical-align: sub;"
        />隐患排查
      </div>
      <dv-active-ring-chart :config="config1" />
      <Label-Tag :config="labelConfig" />
    </div>
    <dv-decoration-2 class="decoration-1" :reverse="true" style="width:5px;" />

    <div class="bc-chart-item">
      <div class="bcci-header">
        <img
          src="./img/icon2.png"
          style="width:30px;height:30px;margin-right: 10px;
    vertical-align: sub;"
        />安全教育
      </div>
      <dv-scroll-board :config="config2" style="width:100%;height:120px" />
    </div>

    <dv-decoration-2 class="decoration-2" :reverse="true" style="width:5px;" />

    <div class="bc-chart-item">
      <div class="bcci-header">
        <img
          src="./img/icon3.png"
          style="width:30px;height:30px;    margin-right: 10px;
    vertical-align: sub;"
        />警告分析
      </div>
      <dv-capsule-chart :config="option" style="width:100%;height:120px" />
    </div>

    <dv-decoration-2 class="decoration-3" :reverse="true" style="width:5px;" />

    <div class="bc-chart-item">
      <div class="bcci-header">
        <img
          src="./img/icon4.png"
          style="width:30px;height:30px;    margin-right: 10px;
    vertical-align: sub;"
        />安全应急
      </div>
      <dv-scroll-ranking-board
        :config="config4"
        style="width:220px;height:120px;margin-left:20px;"
      />
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
        data: [
          {
            name: '1',
            value: 167
          },
          {
            name: '2',
            value: 123
          },
          {
            name: '3',
            value: 98
          },
          {
            name: '4',
            value: 75
          },
          {
            name: '5',
            value: 66
          }
        ],
        colors: ['#e062ae', '#fb7293', '#e690d1', '#32c5e9', '#96bfff']
      },

      config2: {
        oddRowBGC: 'rgba(14, 14, 14,0.1)',
        evenRowBGC: 'rgba(14, 14, 14,0.1)',
        data: [
          ['学校操场', '250'],
          ['学校公厕', '360'],
          ['学校公厕', '4'],
          ['学校公厕', '10'],
          ['学校公厕', '10'],
          ['学校公厕', '01'],
          ['学校公厕', '01']
        ],
        index: true,
        columnWidth: [50],
        align: ['center']
      },

      config4: {
        data: [
          {
            name: '1',
            value: 55
          },
          {
            name: '2',
            value: 120
          },
          {
            name: '3',
            value: 78
          },
          {
            name: '4',
            value: 66
          },
          {
            name: '5',
            value: 80
          },
          {
            name: '6',
            value: 45
          },
          {
            name: '7',
            value: 29
          }
        ]
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
  .bc-chart-item {
    width: 25%;
    height: 100%;
    padding-top: 20px;
    box-sizing: border-box;
  }

  .bcci-header {
    height: 50px;
    text-align: center;
    line-height: 50px;
    font-size: 20px;
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
