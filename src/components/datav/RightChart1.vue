<template>
  <div class="right-chart-1">
    <div class="rc1-header">通知公告</div>
    <dv-scroll-board :config="config" style="width:100%;height:95%" />
    <dv-decoration-2 style="height:10px" />
  </div>
</template>

<script>
export default {
  name: 'RightChart1',
  data () {
    return {
      config: {
        data: [
          ['《养老产业统计分类（2020）》（国家统计局令第30号'],
          ['致全国月度劳动力调查员的一封信'],
          ['中国统计资料馆临时闭馆公告'],
          ['国家统计局党组深入学习贯彻习近平总书记重要讲话精神 研究部署疫情防控和统计数据生产发布重点工作'],
          ['《求是》发表宁吉喆署名文章：中国经济运行呈现十大亮点'],
          ['2017投入产出研究课题招标公告']
        ],
        headerBGC: 'rgba(0, 14, 2,0.1)',
        oddRowBGC: 'rgba(14, 14, 14,0.1)',
        evenRowBGC: 'rgba(14, 14, 14,0.1)',
        index: true,
        columnWidth: ['20'],
        align: ['left', 'left']

      }
    }
  }
}
</script>

<style lang="less">
.right-chart-1 {
  width: 100%;
  height: 32%;
  display: flex;
  flex-direction: column;

  .rc1-header {
    font-size: 20px;
    font-weight: bold;
    padding-left: 10px;
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
