<template>
  <div>
    <mt-header title="设置">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div class="s1">
      <mt-cell title="基本资料" to="/information" is-link>
        <img slot="icon" src="../../assets/User/用户.png" width="24" height="24" />
      </mt-cell>
      <mt-cell title="修改密码" to="/password" is-link>
        <img slot="icon" src="../../assets/User/修改密码.png" width="24" height="24" />
      </mt-cell>
    </div>
    <div class="s1">
      <mt-cell title="接收消息通知">
        <mt-switch v-model="value"></mt-switch>
        <img slot="icon" src="../../assets/User/铃声.png" width="24" height="24" />
      </mt-cell>
      <mt-cell title="检查更新" to="/settings" is-link>
        <img slot="icon" src="../../assets/User/刷新.png" width="24" height="24" />
      </mt-cell>
      <mt-cell title="清楚缓存" to="/settings" is-link>
        <span>0.00 Bytes</span>
        <img slot="icon" src="../../assets/User/清除缓存.png" width="24" height="24" />
      </mt-cell>
    </div>
    <div class="s1">
      <mt-cell title="黑名单" to="/settings" is-link>
        <img slot="icon" src="../../assets/User/黑名单.png" width="24" height="24" />
      </mt-cell>
    </div>
    <div class="s1">
      <mt-cell title="退出登录" to="/settings" is-link class="m1">
        <img slot="icon" src="../../assets/User/退出登录.png" width="24" height="24" />
      </mt-cell>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value: true
    };
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

.m1 {
  background-color: red;
  color: #fff;
}
.mint-cell img {
  margin: 10px;
}
</style>