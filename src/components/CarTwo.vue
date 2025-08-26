<template>
  <h4>这是一辆{{ carC.name }}车, 价格{{ carC.price }}万</h4>
  <button @click="changeCar">变更车辆信息</button>
  <br>

  <h4>这个第二个车,名称:{{ carB.name }}, 价格{{ carB.price }}万</h4>
  <button @click="onChangTesla">点击更换</button>

  <h4>这个第三个车,名称:{{ carA.name }}, 价格{{ carA.price }}万</h4>
  <button @click="onChangAima">点击更换</button>

  <h4>这个第四个车,名称:{{ carD.name }}, 价格{{ carD.price }}万</h4>
  <button @click="onChangFeige">点击更换</button>
</template>

<script setup lang="ts">
import { reactive, ref } from 'vue';

const carC = reactive({ name: "宝马", price: 30 })
const carB = ref({ name: "特斯拉", price: 27 })
const carA = reactive({ name: "爱玛", price: 0.4 })
const carD = ref({ name: "飞鸽", price: 0.05 })


function changeCar() {
  carC.price += 10
  carC.name = '奔驰'
}

function onChangTesla() {
  carB.value.name = "理想"
  carB.value.price = 45
}

function onChangAima() {
  Object.assign(carA, { name: "雅迪", price: 0.4 })
}

function onChangFeige() {
  carD.value.name = '捷安特'
  carD.value.price = 0.1
}
</script>

<style></style>
