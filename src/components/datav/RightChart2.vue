<template>
  <div class="right-chart-2">
    <div class="rc1-header">预警记录</div>

    <div class="rc1-chart-container">
      <!-- <div class="left">
        <div class="number">267</div>
        <div>设备运行总数</div>
      </div> -->
      <dv-scroll-board :config="config" style="width:500px;height:140px;margin-top:15px" />
      <!-- <dv-charts class="right" :option="option" /> -->
    </div>
  </div>
</template>

<script>
export default {
  name: 'RightChart2',
  data () {
    return {
      config: {
        data: [
          ['气象台发布霾黄色预警'],
          ['重污染天气健康防护提示'],
          ['气象台发布高温橙色预警'],
          ['气象台雷电黄色预警[Ⅲ级/较重]'],
          ['气象局发布雷电橙色预警[Ⅱ级/严重]'],
          ['气象局3月21日发布雷电黄色预警[Ⅲ级/较重]'],
          ['关于转发《市人民政府办公室关于印发2020-2021年度政府集...'],
          ['28日9时启动低温雨雪冰冻灾害Ⅳ级应急响应'],
          ['气象局发布大风蓝色预警[Ⅳ级/一般]']
        ],
        index: true,
        columnWidth: ['20'],
        align: ['left', 'left'],
        headerBGC: 'rgba(0, 14, 2,0.1)',
        oddRowBGC: 'rgba(14, 14, 14,0.1)',
        evenRowBGC: 'rgba(14, 14, 14,0.1)'
      },
      option: {
        series: [
          {
            type: 'pie',
            data: [
              { name: '收费系统', value: 93 },
              { name: '通信系统', value: 66 },
              { name: '监控系统', value: 52 },
              { name: '供配电系统', value: 34 },
              { name: '其他', value: 22 }
            ],
            radius: ['45%', '65%'],
            insideLabel: {
              show: false
            },
            outsideLabel: {
              labelLineEndLength: 10,
              formatter: '{percent}%\n{name}',
              style: {
                fontSize: 14,
                fill: '#fff'
              }
            }
          }
        ],
        color: ['#00baff', '#3de7c9', '#fff', '#ffc530', '#469f4b']
      }
    }
  }
}
</script>

<style lang="less">
.right-chart-2 {
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;

  .rc1-header {
    font-size: 24px;
    font-weight: bold;
    height: 30px;
    line-height: 30px;
  }

  .rc1-chart-container {
    flex: 1;
    display: flex;
  }

  .left {
    width: 30%;
    font-size: 16px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;

    .number {
      font-size: 34px;
      color: #096dd9;
      font-weight: bold;
      margin-bottom: 30px;
    }
  }

  .right {
    flex: 1;
    padding-bottom: 20px;
    padding-right: 20px;
    box-sizing: border-box;
  }
}
</style>
