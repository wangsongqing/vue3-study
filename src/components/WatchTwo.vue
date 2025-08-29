<template>
  <h1>监视【ref】定义的【对象】类型</h1>
  <h4>姓名: {{ Person.name }}</h4>
  <h4>年龄: {{ Person.age }}</h4>

  <button @click="changeName">修改名字</button>
  <button @click="changeAge">修改年龄</button>
  <button @click="changeUser">修改用户</button>
</template>

<script setup lang="ts">
import { ref, watch } from 'vue';

const Person = ref({
  name: '张三',
  age: 20
})

function changeName() {
  Person.value.name += '~'
}

function changeAge() {
  Person.value.age += 1
}

function changeUser() {
  Person.value = {
    name: '李四',
    age: 120
  }
}

watch(Person, (newValue, oldValue) => {
  console.log(newValue, oldValue)
}, { deep: true })

</script>
