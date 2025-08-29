<template>
  <p>姓名:{{ name }}</p>
  <p>年龄:{{ age }}</p>
  <button @click="showTel">查看电话</button>
  <button @click="changeName">修改名字</button>
  <button @click="addAge">增加年龄</button>
</template>

<script setup lang="ts">
import { ref } from 'vue'

const name = ref('wsq')
const age = ref(12)
const tel = '18200000001'

function showTel() {
  alert(tel)
}

function changeName() {
  name.value = '三个'
  console.log(name)
}

function addAge() {
  age.value++
  console.log(age)
}

</script>

<style scoped>
button {
  margin: 0 10px;
}
</style>
