<template>
  <div>
    <mt-header title="登录">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right" size="small"></mt-button>
    </mt-header>
    <div class="img">
      <div class="login">
        <form>
          <mt-field label="手机号" placeholder="请输入手机号" type="tel" v-model="phone"></mt-field>
          <mt-field label="密码" placeholder="请输入密码" type="password" v-model="password"></mt-field>
        </form>
        <mt-button type="danger" size="large" @click="login()">登录</mt-button>
        <div class="login2">
          <router-link to="/Reg">
            <span>注册新用户</span>
          </router-link>
          <span>|&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <router-link to="/Forget">
            <span>忘记密码</span>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      phone: "",
      password: ""
    };
  },
  methods: {
    login() {
      var phone = this.phone;
      var upwd = this.password;
      var reg = /^1[3|4|5|7|8][0-9]{9}$/;
      var regpwd = /^[a-zA-Z0-9_]{6,12}$/;
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
      } else {
        this.axios
          .get("login", {
            params: {
              phone,
              upwd
            }
          })
          .then(result => {
            console.log(result);
            if (result.data.code < 0) {
              this.$messagebox("", result.data.msg);
            } else {
              this.$store.commit("increment", result.data.obj);
              this.$messagebox("", result.data.msg).then(() => {
                this.$router.push("/");
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
.img {
  width: 100%;
  height: 900px;
  background-image: url("../../assets/login.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  text-align: center;
  display: flex;
  justify-content: center;
}
.login {
  /* float: left; */
  margin-top: 50%;
  width: 85%;
  height: 40%;
  background-color: #fff;
  border-radius: 10px;
  opacity: 0.7;
}
.login2 {
  margin-top: 10px;
  display: flex;
  justify-content: space-around;
}
.login2 a {
  text-decoration: none;
  color: #000;
}
</style>
