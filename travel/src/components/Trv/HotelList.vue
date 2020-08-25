<template>
  <div class="hotellist">
    <div class="list_span">
      <div class="list_img">
        <img @click="goBack" src="../../assets/Special/list_left.png" />
        <img src="../../assets/Special/list_search.png" />
        <img src="../../assets/Special/list_msg.png" />
        <img src="../../assets/Special/list_start.png" />
        <img src="../../assets/Special/list_more.png" />
      </div>
    </div>
    <div class="rootstyle">
      <div class="list_log">
        <img class="imgstyle" src="../../assets/Special/hotel_logo01.jpg" alt />
        <div class="list_log_right">
          <p class="title">桂林绿舍田畔小院</p>
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
        <mt-tab-container-item id="tb1" @click="itemClick(id)">
          <div class="product_app" @click="subscribe()">
            <div class="goods-item" v-for="(item,i) of list" :key="i">
              <img :src="item.href" />
              <div class="week">周一到周日 | 提前1天预约</div>
              <div class="title_call">
                <p>{{item.title}}</p>
                <span class="title_call_span">售出:{{item.count}}</span>
                <div class="info">
                  <span class="comment now">¥{{item.price.toFixed(2)}}</span>
                </div>
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
        <mt-tab-container-item id="tb2" @click="itemClick(id)">
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
        <mt-tab-container-item id="tb3" @click="itemClick(id)">
          <ul class="list_ul">
            <li>
              <img src="../../assets/Special/dizhi.png" />
              <span>桂林市秀峰区桂林绿舍江畔小院江畔小院 |</span>
              <img class="li_phone" src="../../assets/Special/dianhua.png" />
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
      list: [
        {
          // tb: "tb1",
          // id: 1,
          href: require("../../assets/Special/hotel02.jpg"),
          title: "床位房",
          count: 8,
          price: 488
        },
        {
          // tb: "tb2",
          // id: 2,
          href: require("../../assets/Special/hotel01.jpg"),
          title: "标准间",
          count: 8,
          price: 699
        },
        {
          // tb: "tb3",
          // id: 3,
          href: require("../../assets/Special/hotel08.jpg"),
          title: "双人床",
          count: 8,
          price: 69.99
        },
        {
          // tb: "tb3",
          // id: 3,
          href: require("../../assets/Special/hotel04.jpg"),
          title: "双人床",
          count: 8,
          price: 69.99
        },
        {
          // tb: "tb2",
          // id: 2,
          href: require("../../assets/Special/hotel.jpg"),
          title: "标准间",
          count: 8,
          price: 48
        },
        {
          // tb: "tb3",
          // id: 3,
          href: require("../../assets/Special/hotel03.jpg"),
          title: "床位房",
          count: 8,
          price: 69.99
        }
      ],
      list1: [
        {
          // tb: "tb2",
          href: require("../../assets/Special/spe_log02.jpg"),
          title: "床位房",
          count: 8,
          price: 399
        },
        {
          // tb: "tb1",
          href: require("../../assets/Special/ql.jpg"),
          title: "床位房",
          count: 8,
          price: 699
        },
        {
          // tb: "tb1",
          href: require("../../assets/Special/ql.jpg"),
          title: "床位房",
          count: 8,
          price: 788
        }
      ]
    };
  },
  methods: {
    bgc: function(i) {
      this.number = i;
      console.log(i);
      console.log(this.number);
    },
    subscribe: function() {
      console.log(123);
    },
    itemClick: function() {
      console.log(123);
    },
    goBack:function(i){
      this.$router.go(-1)
    }
  }
};
</script>
<style scoped>
.hotellist .goods-item {
  position: relative;
}
.hotellist .week {
  width: 35%;
  position: absolute;
  top: 10%;
  left: 62%;
  padding: 1% 1% 1% 2%;
  border-radius: 12px 0 0 12px;
  color: #fff;
  font-size: 10px;
  background-color: red;
}
/* 商品列表布局样式 */
/*最外层父元素*/
.hotellist .product_app {
  display: flex;
  flex-wrap: wrap; /*子元素换行*/
  justify-content: space-between;
  margin-top: 68%;
}
.hotellist .product_app .goods-item {
  width: 100%; /*元素宽度*/
  box-sizing: border-box;
  margin: 2px 0;
  min-height: 100%; /*高度*/
  background-color: #fff;
}
/*商品图片,充满父元素*/
.hotellist .product_app .goods-item img {
  width: 100%;
}
.hotellist .product_app .goods-item p {
  font-size: 14px;
  width: 100%;
  word-break: break-all;
  display: -webkit-box; /**对象作为伸缩盒子模型展示**/
  -webkit-box-orient: vertical; /**设置或检索伸缩盒子对象的子元素的排列方式**/
  -webkit-line-clamp: 2; /**显示的行数**/
  overflow: hidden; /**隐藏超出的内容**/
}
.hotellist .product_app .goods-item span {
  font-size: 12px;
}
.hotellist .product_app .goods-item .comment {
  color: red;
}
/* 酒店下面文字位置 */
.hotellist .product_app .goods-item .title_call {
  margin: 1% 0% 3% 2%;
}
.hotellist .title_call_span {
  font-size: 10px;
  color: #999;
}
.hotellist .tabBer {
  position: fixed;
  width: 100%;
  z-index: 22;
  margin-top: 55%;
}
.hotellist .tabBer p {
  font-size: 14px;
}
.hotellist .tabBer .nav_p {
  border-left: 1px solid #ccc;
}
.hotellist .list_span {
  position: fixed;

  width: 100%;
  height: 230px;
  background-image: url("../../assets/Special/hotel_logo02.jpg");
  z-index: 20;
}
.hotellist .list_img {
  height: 100%;
  text-align: right;
  padding: 1%;
  /* background-color: #000; */
  /* opacity: 0; */
}
.hotellist .list_img img {
  margin: 2.5%;
}
.hotellist .list_img img:nth-child(1) {
  position: absolute;
  left: 0%;
}
/* 专卖店logo和店铺描述 */
/* list_log 根元素*/
.hotellist .rootstyle {
  display: flex;
  /*水平方向两端对齐*/
  justify-content: space-between;
  /*垂直方向居中*/
  align-items: center;
}
.hotellist .list_log {
  position: fixed;
  z-index: 23;
  display: flex;
  left: 4%;
  top: 20%;
}
.hotellist .list_log > img {
  width: 19%;
  height: 24%;
  border-radius: 8%;
}
.hotellist .list_log_right {
  display: flex;
  flex-direction: column;
  margin-left: 2%;
}
.hotellist .list_log_right p {
  font-size: 15px;
  font-weight: bold;
  color: #fff;
}
.hotellist .list_log_right span {
  font-size: 10px;
  margin-top: 2%;
  color: #fff;
}
.hotellist .list_log_right span:last-child {
  color: rgb(255, 136, 0);
}
.hotellist .container {
  display: flex;
}
.hotellist .leftimgandtxt {
  margin: 0;
  width: 48%;
  flex-wrap: nowrap;
  background-color: red;
}
.hotellist .imgstyle {
  width: 100px;
  height: 100px;
}
.hotellist .mint-navbar .mint-tab-item.is-selected {
  border-bottom: 2px solid #feb63d;
  color: #feb63d;
}
/* 评论 */
.hotellist .comment1 {
  background-color: #fff;
  margin-top: 76%;
  /* margin: 5px; */
  width: 111%;
  height: 43px;
  display: flex;
  justify-content: space-around;
}
/* 评论区按钮 */
.hotellist .comment1 div {
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
.hotellist .list_ul {
  margin-top: 100%;
  width: 139%;
  /* padding: 3%; */
}
.hotellist .list_ul img {
  vertical-align: top;
}
.hotellist .list_ul li {
  color: #444;
  font-size: 13px;
  list-style: none;
  width: 102%;
  background-color: #fff;
  margin-top: 2px;
  padding: 12px 5px;
}
.hotellist .list_ul li img:first-child {
  margin-left: 2%;
  margin-right: 1%;
}
.hotellist .list_ul .li_phone {
  margin-left: 20%;
}
.hotellist .list_ul .li_jiantou {
  margin-left: 70%;
}
.hotellist .footline {
  width: 100%;
  height: 26px;
  text-align: center;
  font-size: 12px;
  margin-top: 2%;
  /* background-image: url("../../assets/Special/footline.png"); */
  background-size: cover;
}
</style>

