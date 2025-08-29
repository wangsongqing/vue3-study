<template>
  <h1>姓名:{{ name }}</h1>
  <h1>age:{{ age }}</h1>

  <button @click="changeName">改变姓名</button>
  <button @click="changeAge">改变年龄</button>
</template>

<script setup lang="ts">
import { reactive, toRefs } from 'vue';

const { name, age } = toRefs(reactive({
  name: "张三",
  age: 30
}))

function changeName() {
  name.value += '~'
}

function changeAge() {
  age.value += 1
}
</script>
