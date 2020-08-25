<template>
  <div>
    <mt-header title="注册">
      <router-link to="/reg" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <mt-button slot="right" size="small" @click="reg">注册</mt-button>
    </mt-header>
    <div class="reg">
      <mt-field label="昵称" placeholder="输入昵称(20个字以内)" v-model="uname"></mt-field>
      <mt-field label="验证码" placeholder="输入验证码" v-model="code"></mt-field>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      uname: "",
      code: ""
    };
  },
  methods: {
    reg() {
      var uname = this.uname;
      var obj = this.$store.getters.getobj;
      obj.uname = uname;
      console.log(obj);
      if (uname == "") {
        this.$toast({
          message: "昵称不能为空",
          position: "middle",
          duration: 1000
        });
      } else {
        this.axios
          .get("reg", {
            params: obj
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

