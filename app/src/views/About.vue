<template>
  <div>
    <Sidebar></Sidebar>
  </div>
</template>

<script>

import Sidebar from './Sidebar.vue'

export default {
  app: 'about',
  components: {
    Sidebar
  },
  data () {
    return {
      header: ['ID', 'NAME', 'EMAIL'],
      items: [
        {
          id: 1,
          firstName: 'John',
          lastName: 'Doe',
          email: 'john@example.com'
        },
        {
          id: 2,
          firstName: 'Kevin',
          lastName: 'Wsood',
          email: 'kevin@example.com'
        },
        {
          id: 3,
          firstName: 'Harry',
          lastName: 'Bosch',
          email: 'harry@example.com'
        }
      ]
    }
  }
}

</script>

<style lang="scss" scoped></style>
