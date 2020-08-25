<template>
  <div class="mylist">
    <div class="list_span">
      <div class="list_img">
        <img @click="listgoback" src="../../assets/Special/list_left.png" />
        <img src="../../assets/Special/list_search.png" />
        <img src="../../assets/Special/list_msg.png" />
        <img src="../../assets/Special/list_start.png" />
        <img src="../../assets/Special/list_more.png" />
      </div>
    </div>
    <div class="rootstyle">
      <div class="list_log">
        <img class="imgstyle" src="../../assets/Special/list_log01.png" alt />
        <div class="list_log_right">
          <p class="title">金顺昌桂林特产专卖店</p>
          <span class="subtitle">公告:暂无公告</span>
          <span class="subtitle">暂无评论</span>
        </div>
      </div>
    </div>
    <!-- navbar -->
    <div>
      <mt-navbar class="tabBer" v-model="selected">
        <mt-tab-item id="tb1">
          <p>商品</p>
        </mt-tab-item>
        <mt-tab-item id="tb2">
          <p class="nav_p">评价（0）</p>
        </mt-tab-item>
        <mt-tab-item id="tb3">
          <p class="nav_p">商家</p>
        </mt-tab-item>
      </mt-navbar>
      <!-- tabcontainer -->
      <mt-tab-container class="container" v-model="selected">
        <!-- 商品列表 -->
        <mt-tab-container-item id="tb1">
          <div class="product_app">
            <div class="goods-item" @click="listtoo(i)" v-for="(item,i) of list" :key="i">
              <img :src="'http://127.0.0.1:888/'+item.img_url" />
              <p>{{item.title}}</p>
              <span>
                <span class="comment">0.0%</span>
                好评 | 售出:{{item.num}}
              </span>
              <div class="info">
                <span class="comment now">¥{{item.price.toFixed(2)}}</span>
              </div>
            </div>
            <div class="footline">
              <p>— 已经到底啦 —</p>
            </div>
            <!--按钮-->
            <!-- <mt-button size="large">加载更多</mt-button> -->
          </div>
        </mt-tab-container-item>
        <!-- 评价列表 -->
        <mt-tab-container-item id="tb2">
          <div class="comment1_parent">
            <div class="comment1">
              <div
                v-for="(d,i) of divs"
                :key="i"
                @click="bgc(i)"
                :class="{con:i===number}"
              >{{d.dname}}({{d.dnum}})</div>
            </div>
            <!-- 预留评论区 -->
            <div></div>
          </div>
        </mt-tab-container-item>
        <!-- 商家列表 -->
        <mt-tab-container-item id="tb3">
          <ul class="list_ul">
            <li>
              <img src="../../assets/Special/dizhi.png" />
              广西壮族自治区桂林市灵川县川东一路72号 |
              <img
                class="li_phone"
                src="../../assets/Special/dianhua.png"
              />
            </li>
            <li>
              <img src="../../assets/Special/gonggao.png" />
              暂无公告
            </li>
            <li>
              <img src="../../assets/Special/zichanguanli.png" />
              营业资质
              <img class="li_jiantou" src="../../assets/Special/right.png" />
            </li>
          </ul>
        </mt-tab-container-item>
      </mt-tab-container>
    </div>
  </div>
</template>
<script>
export default {
  name: "tabBer",
  data() {
    return {
      selected: "tb1",
      number: 0,
      divs: [
        { dname: "全部", dnum: 0 },
        { dname: "推荐", dnum: 0 },
        { dname: "一般", dnum: 0 },
        { dname: "不满意", dnum: 0 }
      ],
      list: []
    };
  },
  methods: {
    loadMore() {
      console.log(222);
      //加载更多的数据
      var url = "List";
      this.axios.get(url, { params: "" }).then(result => {
        //数据覆盖
        console.log(result);
        this.list = result.data;
        //数据追加
        console.log(333);
      });
    },
    listtoo(i) {
      this.$router.push("detail?lid=" + (parseInt(i) + 1));
    },
    listgoback() {
      this.$router.go(-1);
    },
    bgc: function(i) {
      this.number = i;
      console.log(i);
      console.log(this.number);
    }
  },
  created() {
    this.loadMore();
  }
};
</script>
<style scoped>
/* 商品列表布局样式 */
/*最外层父元素*/
.product_app {
  display: flex;
  flex-wrap: wrap; /*子元素换行*/
  justify-content: space-between;
  padding: 1%;
  margin-top: 67%;
}
.product_app .goods-item {
  width: 49.5%; /*元素宽度*/
  border: 1px solid #ccc;
  box-sizing: border-box;
  margin: 2px 0;
  padding: 2%;
  display: flex; /*弹性布局*/
  flex-direction: column;
  min-height: 100%; /*高度*/
  border-radius: 2%; /*圆角*/
  background-color: #fff;
}
/*商品图片,充满父元素*/
.product_app .goods-item img {
  margin: 12%;
  width: 74%;
}
.product_app .goods-item p {
  font-size: 14px;
  width: 100%;
  word-break: break-all;
  display: -webkit-box; /**对象作为伸缩盒子模型展示**/
  -webkit-box-orient: vertical; /**设置或检索伸缩盒子对象的子元素的排列方式**/
  -webkit-line-clamp: 2; /**显示的行数**/
  overflow: hidden; /**隐藏超出的内容**/
}
.mylist .product_app .goods-item span {
  font-size: 12px;
  padding-top: 2%;
}
.mylist .product_app .goods-item .comment {
  color: red;
}
.mylist .tabBer {
  position: fixed;
  width: 100%;
  z-index: 22;
  margin-top: 55%;
}
.mylist .tabBer p {
  font-size: 14px;
}
.mylist .tabBer .nav_p {
  border-left: 1px solid #ccc;
}
.mylist .list_span {
  position: fixed;

  width: 100%;
  height: 230px;
  background-image: url("../../assets/Special/list_background.jpg");
  z-index: 20;
}
.mylist .list_img {
  height: 100%;
  text-align: right;
  padding: 1%;
  /* background-color: #000; */
  /* opacity: 0; */
}
.mylist .list_img img {
  margin: 2.5%;
}
.mylist .list_img img:nth-child(1) {
  position: absolute;
  left: 0%;
}
/* 专卖店logo和店铺描述 */
/* list_log 根元素*/
.mylist .rootstyle {
  display: flex;
  /*水平方向两端对齐*/
  justify-content: space-between;
  /*垂直方向居中*/
  align-items: center;
}
.mylist .list_log {
  position: fixed;
  z-index: 23;
  display: flex;
  left: 4%;
  top: 20%;
}
.mylist .list_log > img {
  width: 19%;
  height: 24%;
  border-radius: 8%;
}
.mylist .list_log_right {
  display: flex;
  flex-direction: column;
  margin-left: 2%;
}
.mylist .list_log_right p {
  font-size: 15px;
  font-weight: bold;
  color: #fff;
}
.mylist .list_log_right span {
  font-size: 10px;
  margin-top: 2%;
  color: #fff;
}
.mylist .list_log_right span:last-child {
  color: rgb(255, 136, 0);
}
.mylist .container {
  display: flex;
}
.mylist .leftimgandtxt {
  margin: 0;
  width: 48%;
  flex-wrap: nowrap;
  background-color: red;
}
.mylist .imgstyle {
  width: 100px;
  height: 100px;
}
.mylist .mint-navbar .mint-tab-item.is-selected {
  border-bottom: 2px solid #feb63d;
  color: #feb63d;
}
/* 评论 */
.comment1 {
  background-color: #fff;
  margin-top: 76%;
  /* margin: 5px; */
  width: 111%;
  height: 43px;
  display: flex;
  justify-content: space-around;
}
/* 评论区按钮 */
.comment1 div {
  margin: 3% auto 0;
  width: 93px;
  height: 20px;
  background-color: #ddd;
  border-radius: 24px;
  font-size: 12px;
  line-height: 20px;
  color: #fff;
  text-align: center;
}
/* 评论点击 */
.con {
  background-color: red !important;
}
/* 商家 */
.mylist .list_ul {
  margin-top: 93%;
  width: 152%;
  /* padding: 3%; */
}
.list_ul img {
  vertical-align: top;
}
.mylist .list_ul li {
  color: #444;
  font-size: 13px;
  list-style: none;
  width: 102%;
  background-color: #fff;
  margin-top: 2px;
  padding: 12px 5px;
}
.mylist .list_ul li img:first-child {
  margin-left: 2%;
  margin-right: 1%;
}
.mylist .list_ul .li_phone {
  margin-left: 15%;
}
.mylist .list_ul .li_jiantou {
  margin-left: 62%;
}
/* 已经到底部了 */
.mylist .footline {
  width: 100%;
  height: 26px;
  text-align: center;
  font-size: 12px;
  margin-top: 2%;
  background-size: cover;
  background-color: #fff;
  padding-top: 2%;
}
</style>

