<template>
  <p>姓名:{{ name }}</p>
  <p>年龄:{{ age }}</p>
  <button @click="showTel">查看电话</button>
  <button @click="changeName">修改名字</button>
  <button @click="addAge">增加年龄</button>
</template>

<script setup>
let name = 'wsq'
let age = 12
let tel = '18200000001'

function showTel() {
  alert(tel)
}

function changeName() {
  name = '三个'
  console.log(name)
}

function addAge() {
  age++
  console.log(age)
}

</script>

<style scoped>
button {
  margin: 0 10px;
}
</style>
