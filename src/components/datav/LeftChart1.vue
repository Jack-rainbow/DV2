<template>
  <div class="left-chart-1">
    <div class="lc1-header">设备工作状态</div>
    <div class="lc1-details">设备运行总数<span>430</span></div>
    <!-- <dv-capsule-chart class="lc1-chart" :config="config" /> -->
     <div class="cc-main-container">

      <dv-active-ring-chart class="ccmc-middle" :config="config" />

      <LabelTag :config="labelConfig"  class="LabelTag"/>
    </div>
    <dv-decoration-2 style="height:10px;" />
  </div>
</template>

<script>
import LabelTag from './LabelTag'

export default {
  name: 'LeftChart1',
  components: {
    LabelTag
  },
  data () {
    return {
      config1: {
        data: [
          {
            name: '收费系统',
            value: 167
          },
          {
            name: '通信系统',
            value: 67
          },
          {
            name: '监控系统',
            value: 123
          },
          {
            name: '供配电系统',
            value: 55
          },
          {
            name: '其他',
            value: 98
          }
        ],
        colors: ['#00baff', '#3de7c9', '#fff', '#ffc530', '#469f4b'],
        unit: '件'
      },
      config: {
        radius: '80%',
        activeRadius: '75%',
        data: [
          {
            name: '校门',
            value: 55
          },
          {
            name: '监控中心',
            value: 120
          },
          {
            name: '道路外场',
            value: 78
          },
          {
            name: '校园',
            value: 66
          },
          {
            name: '其他',
            value: 80
          }
        ],
        digitalFlopStyle: {
          fontSize: 13
        }
      },
      labelConfig: {
        data: ['校门', '监控中心', '道路外场', '其他']
      }
    }
  }
}
</script>

<style lang="less">
.left-chart-1 {
  width: 100%;
  height: 37%;
  display: flex;
  flex-grow: 0;
  flex-direction: column;

  .lc1-header {
    text-align: center;
    height: 40px;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 30px;
    margin-bottom: 20px;
  }

  .lc1-details {
    height: 50px;
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

  .lc1-chart {
    flex: 1;
  }
}
</style>
<style lang="less" scoped>

 .cc-main-container {
    position: relative;
    flex: 1;
    display: flex;
    justify-content: center;
    .ccmc-middle {
      width: 40%;
      height: 90%;

      .active-ring-name {
        font-size: 15px !important;
      }
    }
  }
  .LabelTag{
    display: flex;
    flex-direction: column;
  }
</style>
