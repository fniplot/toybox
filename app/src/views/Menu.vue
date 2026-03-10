<template>
  <div>
    <slot name="activator" :click="on"></slot>
    <slot name="clickHandle" :on="sample"></slot>
    <slot v-if="display"></slot>
  </div>
</template>

<script>
export default {
  data () {
    return {
      display: true
    }
  },
  methods: {
    on () {
      this.display = !this.display
    },
    sample () {
      this.display = !this.display
    }
  }
}
</script>

<style lang="scss" scoped>
</style>
