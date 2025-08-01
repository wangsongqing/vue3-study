<template>
  <el-table :data="tableData" border style="width: 100%">
    <el-table-column prop="index" label="#" width="50" />
    <el-table-column prop="type" label="操作属性" width="80" />
    <el-table-column prop="desc" label="操作描述" />
    <el-table-column prop="operator" label="操作人" width="100" />
    <el-table-column prop="time" label="操作时间" width="180" />
  </el-table>

  <div class="pagination" style="margin-top: 10px; text-align: right">
    <el-pagination v-model:current-page="currentPage" :page-size="pageSize" layout="total, prev, pager, next, sizes"
      :page-sizes="[10, 20, 50, 100]" :total="tableData.length" />
  </div>
</template>

<script setup>
import { ref } from 'vue'

const tableData = ref([
  {
    index: 1,
    type: '上架',
    desc: '完成上架，上架仓位：001-1-4，本次入库量40，上架破损量0，状态：已入库',
    operator: 'XXXX',
    time: '2025-07-30 15:05:13',
  },
  {
    index: 2,
    type: '上架',
    desc: '调整仓位，原仓位：；现仓位：001-1-4',
    operator: 'XXXX',
    time: '2025-07-30 15:05:13',
  },
  {
    index: 3,
    type: '上架',
    desc: '获取上架任务，状态：上架中',
    operator: 'XXXX',
    time: '2025-07-30 15:04:06',
  },
  {
    index: 4,
    type: '签收',
    desc: '使用物流单号1111签收，本次签收量：40，异常原因/数量：破损/8，仓库备注：heihei，绑定任务码：ABC1，状态：待上架',
    operator: 'XXX',
    time: '2025-07-30 14:55:01',
  },
])

const currentPage = ref(1)
const pageSize = ref(100)
</script>
