<template>
  <div>
    <mt-header title="注册">
      <router-link to="/login" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right" size="small" @click="reg">继续</mt-button>
    </mt-header>
    <div class="reg">
      <mt-field label="手机号" placeholder="请输入手机号(登录账号)" type="tel" v-model="phone"></mt-field>
      <mt-field label="密码" placeholder="设置密码" type="password" v-model="password"></mt-field>
      <mt-field label="确认密码" placeholder="确认密码" type="password" v-model="password2"></mt-field>
      <mt-field label="邮箱" placeholder="输入邮箱(用于找回密码)" type="email" v-model="email"></mt-field>
    </div>
    <div class="zc">
      <span>
        注册即代表同意
        <router-link to="/xy">乐桂使用协议</router-link>
      </span>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      phone: "",
      password: "",
      password2: "",
      email: ""
    };
  },
  methods: {
    reg() {
      var phone = this.phone;
      var upwd = this.password;
      var upwd2 = this.password2;
      var email = this.email;
      var reg = /^1[3|4|5|7|8][0-9]{9}$/;
      var regpwd = /^[a-zA-Z0-9_]{6,12}$/;
      var regemail = /\w+@[a-z0-9]+\.[a-z]{2,4}/;
      if (phone == "") {
        this.$toast({
          message: "手机号不能为空",
          position: "middle",
          duration: 1000
        });
      } else if (!reg.test(phone)) {
        this.$toast({
          message: "请输入正确的手机号码",
          position: "middle",
          duration: 1000
        });
      } else if (upwd == "") {
        this.$toast({
          message: "密码不能为空",
          position: "middle",
          duration: 1000
        });
      } else if (!regpwd.test(upwd)) {
        this.$toast({
          message: "密码长度必须在6-12字符之间",
          position: "middle",
          duration: 1000
        });
      } else if (upwd2 !== upwd) {
        this.$toast({
          message: "两次输入密码不一致",
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
        this.$store.commit("increment", { phone, upwd, email });
        this.$router.push("/reg2");
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
.zc {
  text-align: center;
}
.zc a {
  color: #666;
}
</style>
