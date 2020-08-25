<template>
  <div>
    <div>
      <!-- 头部导航栏 -->
      <mt-header title="客服" >
        <router-link to="/" slot="left">
          <mt-button icon="back" @click="prev"></mt-button>
        </router-link>
        <mt-button icon="more" slot="right"></mt-button>
      </mt-header>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  methods:{
      prev(){
      this.$router.go(-1)
  }
  }
};
</script>
<style scoped>
    .mint-header{
        height: 60px;
        background: #f8cc50;
    }
</style>


