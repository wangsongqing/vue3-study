<template>
  <h1>这是一辆{{ carObj.name }}车, 价格{{ carObj.price }}万</h1>
  <button @click="cahngePrice">改变价格</button>
  <br>
  <h2>游戏</h2>
  <li>
    <ul v-for="game in games" :key="game.id">
      {{ game.name }}
    </ul>
  </li>
  <button @click="cahngeFirstName">修改第一个游戏明细</button>
</template>

<script setup lang="ts">
import { reactive } from 'vue';

const carObj = reactive({
  name: "宝马",
  price: 100
})

const games = reactive([
  { id: '1', name: '王者' },
  { id: '2', name: 'LOL' },
  { id: '3', name: '斗地主' }
])

function cahngePrice() {
  carObj.price += 10;
  console.log(carObj.price)
}

function cahngeFirstName() {
  games[0].name = '三国'
}
</script>

<style scoped>
button {
  margin: 0 10px;
}
</style>
