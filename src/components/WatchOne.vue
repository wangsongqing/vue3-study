<template>
  <h1>监视【ref】定义的【基本数据】类型</h1>
  <h1>SUM: {{ sumTotal }}</h1>
  <button @click="sumMax">求和</button>
</template>

<script setup lang="ts">
import { ref, watch } from 'vue'

const sumTotal = ref(0)

function sumMax() {
  sumTotal.value += 1
}

// watch(sumTotal, (newValue, oldValue) => {
//   console.log(newValue, oldValue)
// })

// 停止监控
const stopWatch = watch(sumTotal, (newValue, oldValue) => {
  console.log(newValue, oldValue)
  if (newValue > 10) {
    stopWatch()
  }
})

</script>
