<template>
  <div class="massage">
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="消息">
        <mt-header fixed title="消息">
          <router-link to="/" slot="left">
            <mt-button icon="back"></mt-button>
          </router-link>
        </mt-header>
        <div class="msgInput">
          <input type="text" placeholder="搜索" />
        </div>
        <div class="msgDiv">
          <div class="msgcenterDiv">
            <div class="msgbottomDiv">
              <img src="../../assets/msg/xt.png" alt />
            </div>
            <div>
              <p>系统消息</p>
            </div>
          </div>
          <div class="msgcenterDiv">
            <div class="msgbottomDiv">
              <table></table>
              <img src="../../assets/msg/tb.png" alt />
            </div>
            <div>
              <p>贴吧消息</p>
            </div>
          </div>
          <div class="msgcenterDiv">
            <div class="msgbottomDiv">
              <img src="../../assets/msg/cd.png" alt />
            </div>
            <div>
              <p>资讯消息</p>
            </div>
          </div>
          <div class="msgcenterDiv">
            <div class="msgbottomDiv">
              <img src="../../assets/msg/kf.png" alt />
            </div>
            <div>
              <p>客服消息</p>
            </div>
          </div>
        </div>
      </mt-tab-container-item>
      <mt-tab-container-item id="联系人">
        <Linkman></Linkman>
      </mt-tab-container-item>
    </mt-tab-container>
    <mt-tabbar v-model="selected" fixed>
      <mt-tab-item id="消息">
        <img
          slot="icon"
          :src="selected=='消息' ? require('../../assets/indexImg/home.png') :require('../../assets/indexImg/homeopen.png')"
          alt
        /> 消息
      </mt-tab-item>
      <mt-tab-item id="联系人">
        <img
          slot="icon"
          :src="selected=='联系人' ?require('../../assets/indexImg/baoopen.png'):require('../../assets/indexImg/bao.png')"
          alt
        /> 联系人
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>
<script>
import Linkman from "./Linkman";
export default {
  data() {
    return {
      selected: "消息"
    };
  },
  components: {
    Linkman: Linkman
  }
};
</script>
<style scoped>
.mint-header {
  height: 44px;
  background: #f8cc50;
}
.massage input::-ms-input-placeholder {
  text-align: center;
}
.massage input::-webkit-input-placeholder {
  text-align: center;
}
.massage .msgInput {
  padding: 2%;
  margin-top: 44px;
}
.massage .msgInput > input {
  width: 100%;
  border: none;
  outline: none;
  height: 30px;
}
.massage .msgDiv .msgcenterDiv {
  background: #fff;
}
.massage .msgDiv .msgcenterDiv img {
  width: 45px;
  margin-left: 10px;
  vertical-align: middle;
}
.massage .msgDiv .msgcenterDiv:nth-child(2) img {
  margin-left: 0;
  width: 25px;
  margin-top: 7px;
}
.massage .msgDiv .msgcenterDiv {
  display: flex;
  height: 60px;
  align-items: center;
  margin-top: 1px;
}
.massage .msgDiv .msgcenterDiv div:nth-child(2) {
  margin-left: 10px;
}
.massage .msgDiv .msgcenterDiv:nth-child(2) .msgbottomDiv {
  background: rgb(95, 204, 68);
  width: 40px;
  height: 40px;
  border-radius: 3px;
  margin-left: 13px;
  text-align: center;
}
</style>
