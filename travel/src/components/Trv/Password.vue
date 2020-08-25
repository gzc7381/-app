<template>
  <div>
    <mt-header title="修改密码">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right" size="small" @click="change">保存</mt-button>
    </mt-header>
    <div>
      <mt-field label="旧密码" placeholder type="password" v-model="oldpwd"></mt-field>
      <mt-field label="新密码" placeholder type="password" v-model="newpwd"></mt-field>
      <mt-field label="确认密码" placeholder type="password" v-model="newpwd2"></mt-field>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      obj: {},
      oldpwd: "",
      newpwd: "",
      newpwd2: ""
    };
  },
  mounted() {
    this.obj = this.$store.getters.getobj;
  },
  methods: {
    change() {
      var obj = this.obj;
      var newupwd = this.newpwd;
      console.log(obj);
      console.log(this.$md5(this.oldpwd));

      if (this.oldpwd == "") {
        this.$toast({
          message: "请输入旧密码",
          position: "middle",
          duration: 1000
        });
      } else if (this.newpwd == "") {
        this.$toast({
          message: "请输入新密码",
          position: "middle",
          duration: 1000
        });
      } else if (this.newpwd2 == "") {
        this.$toast({
          message: "请输入确认密码",
          position: "middle",
          duration: 1000
        });
      } else if (this.newpwd != this.newpwd2) {
        this.$toast({
          message: "两次密码不一致",
          position: "middle",
          duration: 1000
        });
      } else if (this.$md5(this.oldpwd) != obj.upwd) {
        this.$toast({
          message: "旧密码错误",
          position: "middle",
          duration: 1000
        });
      } else {
        console.log(newupwd);
        this.axios
          .get("changepassword", {
            params: { newupwd }
          })
          .then(result => {
            console.log(result);
            if (result.data.code < 0) {
              this.$messagebox("", result.data.msg);
            } else {
              this.$messagebox("", result.data.msg).then(() => {
                this.$router.push("/login");
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
</style>