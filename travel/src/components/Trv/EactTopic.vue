<template>
  <div class="eact_topic">
    <div v-for="(item,i) of list" :key="i">
      <mt-header class="title" fixed :title="item.title">
        <router-link to="/Eact" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
        <mt-button icon slot="right" @click="fenx">分享</mt-button>
      </mt-header>

      <div class="pinglunqu">
        <h3>{{item.title}}</h3>
        <p class="cor">
          发表于 {{item.fabiao}}
          <span>阅读:{{item.rea}}</span>
        </p>
        <p class="fon">
          {{item.details}}
          <br />
          <br />热门评论
        </p>
        <hr />
        <div class="hot">{{item.hottopic}}</div>
      </div>
      <div class="bot">
        <input type="text" placeholder="发表评论" />
        <img src="../../assets/Special/t02.png" alt />
        <img src="../../assets/Special/t03.png" alt />
      </div>
      <div>
        <mt-popup v-model="popupVisible" position="bottom" class="tanchuang">
          <div>
            <ul>
              <li>
                <hr />
              </li>
              <li>
                <div>分享到</div>
              </li>
              <li>
                <hr />
              </li>
            </ul>
            <ul>
              <li>
                <img src="../../assets/ImgDetail/wx.png" alt />
                <p>微信好友</p>
              </li>
              <li>
                <img src="../../assets/ImgDetail/friend.png" alt />
                <p>朋友圈</p>
              </li>
              <li>
                <img src="../../assets/ImgDetail/sina.png" alt />
                <p>新浪微博</p>
              </li>
            </ul>
            <ul>
              <li>
                <img src="../../assets/ImgDetail/kongjian.png" alt />
                <p>QQ空间</p>
              </li>
              <li>
                <img src="../../assets/ImgDetail/qq.png" alt />
                <p>QQ</p>
              </li>
              <li>
                <img src="../../assets/ImgDetail/lianjie.png" alt />
                <p>复制链接</p>
              </li>
            </ul>
            <div>
              <img src="../../assets/ImgDetail/close.png" alt />
            </div>
          </div>
        </mt-popup>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list: [],
      popupVisible: false,
      did: 1
    };
  },
  methods: {
    loadMore() {
      this.axios
        .get("/Eacttopic", {
          params: {
            did: location.href.split("=")[1]
          }
        })
        .then(result => {
          console.log(result);
          this.list = result.data;
        });
    },
    fenx() {
      this.popupVisible = true;
    }
  },
  created() {
    this.loadMore();
  }
}; 
</script>
<style scoped>
.eact_topic .title {
  background-color: #feb63d;
  height: 44px;
}
.pinglunqu {
  margin-top: 50px;
  padding: 2%;
}
.pinglunqu .cor {
  font-size: 14px;
  color: #999;
  margin: 3% 0%;
}
.pinglunqu .fon {
  font-size: 16px;
  font-family: "华文楷体";
  color: #566;
}
.eact_topic .hot {
  font-size: 14px;
}
.eact_topic .bot {
  margin-top: 80%;
  padding: 2%;
}
.eact_topic .bot input {
  background-color: rgba(255, 255, 255, 0);
  border: 1px solid #999;
  outline: medium;
  border-radius: 5px;
  height: 30px;
  width: 75%;
  background: url("../../assets/Special/t01.png") center left no-repeat;
  /* background-size: contain; */
  /* background-repeat: no-repeat; */
  padding-left: 6%;
}
.eact_topic .bot img {
  width: 22px;
  margin: 0% 1% 0% 1%;
  vertical-align: bottom;
}
/* 分享弹窗 */
.tanchuang {
  background-color: transparent;
  color: #fff;
  width: 100%;
  height: 400px;
}
.tanchuang ul {
  list-style: none;
  display: flex;
  justify-content: space-between;
  text-align: center;
  width: 100%;
  height: 40px;
  line-height: 40px;
}
.tanchuang ul > li {
  width: 100%;
}
.tanchuang ul > li {
  padding: 20px;
}
.tanchuang img {
  width: 50px;
}
.tanchuang ul:first-child > li:nth-child(2) {
  padding-top: 0;
}
.tanchuang ul:nth-child(3) {
  margin-top: 70px;
}
.tanchuang > div > div {
  text-align: center;
  margin: 100px;
}
</style>