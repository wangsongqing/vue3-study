<template>
  姓:<input type="text" v-model="firstName"> <br>
  名:<input type="text" v-model="lastName"> <br>

  全名:{{ fullName }} <br>

  <button @click="changeFullName">把名字改成li-si</button>
</template>
<script setup lang="ts">
import { computed, ref } from 'vue';

const firstName = ref('zhang')
const lastName = ref('san')

// 只读属性
// const fullName = computed(() => {
//   return firstName.value.slice(0, 1).toUpperCase() + firstName.value.slice(1) + '-' + lastName.value
// })

// 可读可写
const fullName = computed({
  get() {
    return firstName.value.slice(0, 1).toUpperCase() + firstName.value.slice(1) + '-' + lastName.value
  },
  set(val) {
    // console.log(11, val.split('-'))
    const [fName, lName] = val.split('-')
    firstName.value = fName
    lastName.value = lName
  }
})

function changeFullName() {
  fullName.value = 'li-si'
}



</script>
