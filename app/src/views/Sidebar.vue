<template>
  <div>
    <b-button v-b-toggle.sidebar-1>Toggle Sidebar</b-button>
    <b-sidebar id="sidebar-1" title="Sidebar">
      <b-list-group flush>
        <b-list-group-item
          style="text-align: left"
          to="https://www.yahoo.co.jp/"
        >
          <b-icon icon="columns-gap" class="mr-2"></b-icon>Dashboard
        </b-list-group-item>
        <b-list-group-item
          id="account-button"
          button
          v-b-toggle.account-collapse
          class="d-flex justify-content-between align-items-center"
        >
          <div><b-icon icon="person-fill" class="mr-2"></b-icon>Account</div>
          <b-icon class="when-open" icon="caret-up-fill"></b-icon>
          <b-icon class="when-closed" icon="caret-down-fill"></b-icon>
        </b-list-group-item>
        <b-collapse id="account-collapse">
          <b-list-group flush>
            <b-list-group-item button id="account-list"
              ><span>AAA</span></b-list-group-item
            >
            <b-list-group-item button id="account-list"
              ><span>BBB</span></b-list-group-item
            >
            <b-list-group-item button id="account-list"
              ><span>CCC</span></b-list-group-item
            >
          </b-list-group>
        </b-collapse>
      </b-list-group>
    </b-sidebar>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.collapsed > .when-open,
.not-collapsed > .when-closed {
  display: none;
}
#account-collapse,
#account-button {
  text-align: left;
}

#account-list {
  text-indent: 2em;
}

#account-list:hover,
#account-button:hover {
  outline: 0;
  background-color: blue;
}
</style>
