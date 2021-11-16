<template>
  <div>
    <ul>
      <li>名前：<slot name="name">名無しの権兵衛</slot></li>
      <li>年齢：<slot name="age">記入なし</slot></li>
      <li>性別：<slot name="sex">不明</slot></li>
    </ul>
  </div>
</template>

<script>
export default {
  data () {
    return {
      user: {
        firstName: 'John',
        lastName: 'Doe',
        age: 25,
        sex: '男性'
      },
      message: 'Hello Scoped Slot'
    }
  }
}
</script>

<style lang="scss" scoped>
</style>
