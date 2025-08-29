<template class="Person">
  <p>姓名:{{ name }}</p>
  <p>年龄:{{ age }}</p>
  <button @click="showTel">查看电话</button>
  <button @click="changeName">修改名字</button>
  <button @click="addAge">增加年龄</button>
</template>

<script lang="ts">
export default {
  // eslint-disable-next-line vue/multi-word-component-names
  name: 'Person',
  setup() {
    let name = 'wsq';
    let age = 20;
    const tel = 18399999999

    function showTel() {
      alert(tel)
    }

    function changeName() {
      console.log('oldName:' + name)
      name = 'zhangsan'
      console.log('newName:' + name)
    }

    function addAge() {
      console.log('oldAge:' + age)
      age += 1;
      console.log('newAge:' + age)
    }

    return {
      name,
      age,
      showTel,
      changeName,
      addAge
    }
  }
  // data() {
  //     return {
  //         name: 'wsq',
  //         age: 20,
  //         tel: 111111
  //     }
  // },
  // methods: {
  //     showTel() {
  //         alert(this.tel)
  //     },
  //     changeName() {
  //         this.name = 'zhangsan'
  //     },
  //     addAge() {
  //         this.age++;
  //     }
  // }
}
</script>

<style scoped>
button {
  margin: 0 10px;
}
</style>
