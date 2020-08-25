<template>
  <div>
    <mt-header title="基本资料">
      <router-link to="/settings" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="s1">
      <mt-cell title="头像" to="/information" is-link></mt-cell>
      <mt-cell title="昵称" to="/information" is-link>{{obj.uname}}</mt-cell>
      <mt-cell title="邮箱">{{obj.email}}</mt-cell>
      <mt-cell title="签名" to="/information" is-link>未填写个性签名</mt-cell>
      <mt-cell title="生日" to="/information" is-link></mt-cell>
      <mt-cell title="手机号码">{{obj.phone}}</mt-cell>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      obj: {}
    };
  },
  mounted() {
    this.obj = this.$store.getters.getobj;
  }
};
</script>

<style scoped>
.mint-header {
  height: 44px;
  background-color: #f8cc50;
}
.mint-button--small {
  background-color: #fff !important;
  width: 45px;
  height: 25px;
  color: #f8cc50 !important;
}
.s1 {
  margin-top: 30px;
}
</style>