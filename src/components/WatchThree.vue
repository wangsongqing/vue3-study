<template>
  <h1>监视某个属性</h1>
  <h4>姓名:{{ Person.name }}</h4>
  <h4>年龄:{{ Person.age }}</h4>
  <h4>第一台车: {{ Person.car.c1 }}</h4>
  <h4>第二台车: {{ Person.car.c2 }}</h4>
  <br>
  <button @click="changeName">修改姓名</button>
  <button @click="changeAge">修改年龄</button>
  <button @click="changeC1">修改第一台车</button>
  <button @click="changeC2">修改第二台车</button>
  <button @click="changeCar">修改全部</button>
</template>

<script setup lang="ts">
import { reactive, watchEffect } from 'vue'



const Person = reactive({
  name: '大拿',
  age: 30,
  car: {
    c1: "奔驰",
    c2: "宝马"
  }
})

// 基本数据类型
// watch(() => { return Person.name }, function (newValue, oldValue) {
//   console.log(newValue, oldValue)
// })

// watch(() => Person.car, (newValue, oldValue) => {
//   console.log(newValue, oldValue)
// }, { deep: true })

// watch([() => Person.age, () => Person.car.c1], (newValue, oldValue) => {
//   console.log(newValue, oldValue)
// }, { deep: true })

watchEffect(() => {
  if (Person.age >= 50) {
    console.log('老了')
  }
})


function changeName() {
  Person.name += '~'
}

function changeAge() {
  Person.age += 1
}

function changeC1() {
  Person.car.c1 = '理想'
}

function changeC2() {
  Person.car.c2 = '蔚来'
}

function changeCar() {
  Person.car = {
    c1: "雅迪",
    c2: "爱玛"
  }
}



</script>
