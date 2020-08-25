<template>
  <div class>
    <mt-header title="找回密码">
      <router-link to="/login" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right" size="small" @click="forget">发送</mt-button>
    </mt-header>
    <div class="reg">
      <mt-field label placeholder="账号:为注册时的手机号码" type="tel" v-model="phone"></mt-field>
      <br />
      <mt-field label placeholder="请输入注册邮箱" type="email" v-model="email"></mt-field>
    </div>
    <div class="zh">
      <span>该地址用于找回密码,请输入注册时填写的邮箱地址</span>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      phone: "",
      email: ""
    };
  },
  mounted() {},
  methods: {
    forget() {
      var phone = this.phone;
      var email = this.email;
      var regemail = /\w+@[a-z0-9]+\.[a-z]{2,4}/;
      if (phone == "") {
        this.$toast({
          message: "请输入手机号",
          position: "middle",
          duration: 1000
        });
      } else if (email == "") {
        this.$toast({
          message: "请输入邮箱",
          position: "middle",
          duration: 1000
        });
      } else if (!regemail.test(email)) {
        this.$toast({
          message: "请输入正确的邮箱",
          position: "middle",
          duration: 1000
        });
      } else {
        this.axios
          .get("forget", {
            params: { phone, email }
          })
          .then(result => {
            console.log(result);
            if (result.data.code < 0) {
              this.$toast({
                message: result.data.msg,
                position: "middle",
                duration: 1000
              });
            } else {
              this.$toast({
                message: result.data.msg,
                position: "middle",
                duration: 1000
              });
            }
          });
      }
    }
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
.reg {
  padding: 15px 10px;
  opacity: 0.8;
}
.zh {
  text-align: center;
}
.zh span {
  color: #000;
  font-size: 14px;
}
</style>
