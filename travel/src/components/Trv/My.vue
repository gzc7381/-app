<template>
  <div class="my">
    <div class="settings">
      <div>
        <ul>
          <li>
            <router-link to="/settings">
              <svg class="icon" aria-hidden="true">
                <use xlink:href="#iconshezhi" />
              </svg>
            </router-link>
          </li>
          <li>
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#iconxiaoxi" />
            </svg>
          </li>
        </ul>
      </div>
    </div>
    <div class="user_avatar"></div>
    <div :class="{user:toux==1,user2:toux==0}">
      <span>
        <router-link to="/login">{{uname}}</router-link>
      </span>
    </div>
    <div class="bg gw">
      <ul>
        <li>
          <a href>我的购物</a>
        </li>
        <li>
          <a href>查看全部订单 &gt;</a>
        </li>
      </ul>
    </div>
    <div class="bg gw1">
      <ul>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icondaifukuan01" />
          </svg>
          <p>待付款</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icondaifahuo" />
          </svg>
          <p>待发货</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icondaishouhuo" />
          </svg>
          <p>待收货</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icondaipingjiab" />
          </svg>
          <p>待评价</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icontuikuan" />
          </svg>
          <p>退款</p>
        </li>
      </ul>
      <ul>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icongouwuche" />
          </svg>
          <p>购物车</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#iconhuiyuanqia" />
          </svg>
          <p>会员卡</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#iconweb-icon-" />
          </svg>
          <p>优惠券</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#iconx" />
          </svg>
          <p>浏览记录</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#iconwodeshouhuodizhi" />
          </svg>
          <p>收货地址</p>
        </li>
      </ul>
    </div>
    <div class="bg gw">
      <ul>
        <li>
          <a href>我的团购</a>
        </li>
        <li>
          <a href>查看全部订单 &gt;</a>
        </li>
      </ul>
    </div>
    <div class="bg gw1">
      <ul>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icondaifukuan01" />
          </svg>
          <p>待付款</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icontubiaolunkuo-" />
          </svg>
          <p>未使用</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#iconyishiyong" />
          </svg>
          <p>已使用</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#iconyiguoqi" />
          </svg>
          <p>已过期</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icontuikuan" />
          </svg>
          <p>退款</p>
        </li>
      </ul>
    </div>
    <div class="bg gw">
      <ul>
        <li>
          <a href>我的贴吧</a>
        </li>
      </ul>
    </div>
    <div class="bg gw2">
      <ul>
        <li>
          <a href>
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#iconyunyingguanli_tieziguanli" />
            </svg>
            <span>我的帖子</span>
          </a>
        </li>
        <li>
          <a href>
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#iconliulanjilu" />
            </svg>
            <span>浏览记录</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="bg gw2">
      <ul class="gw2">
        <li>
          <a href>
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#iconshoucang" />
            </svg>
            <span>帖子收藏</span>
          </a>
        </li>
        <li>
          <a href>
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#iconxiaoxi1" />
            </svg>
            <span>贴吧消息</span>
          </a>
        </li>
      </ul>
    </div>
    <div class="bg gw gw3">
      <ul>
        <li>
          <a href>我的收藏</a>
        </li>
      </ul>
    </div>
    <div class="bg gw4">
      <ul>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#iconshangpin-" />
          </svg>
          <p>商品</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#icondianpu" />
          </svg>
          <p>店铺</p>
        </li>
        <li>
          <svg class="icon" aria-hidden="true">
            <use xlink:href="#iconyunyingguanli_tieziguanli" />
          </svg>
          <p>帖子</p>
        </li>
      </ul>
    </div>
    <div style="height:55px;"></div>
  </div>
</template>
<script>
import "../../font/iconfont.js";
export default {
  data() {
    return {
      uname: "",
      toux: 1
    };
  },
  mounted() {
    // console.log(this.$store.getters.getuname);
    if (this.$store.getters.getobj.uname == "") {
      this.uname = "立即登录";
    } else {
      this.uname = this.$store.getters.getobj.uname;
      this.toux = 0;
    }
  }
};
</script>

<style scoped>
.icon {
  width: 1.5em;
  height: 1.5em;
  /* vertical-align: -0.15em; */
  vertical-align: middle;
  fill: currentColor;
  overflow: hidden;
}
.bg {
  background-color: #fff;
  /* padding: 10px 0; */
}
li {
  list-style: none;
}
.settings {
  background-color: #f8cc50;
  height: 5em;
  /* margin-bottom: 15px; */
  padding: 10px;
}
.settings ul {
  display: flex;
  justify-content: space-between;
}
.gw {
  margin-top: 20px;
  margin-bottom: 1px;
  padding: 10px;
}
.gw ul {
  display: flex;
  justify-content: space-between;
}
.gw li {
  font-size: 10px;
}
.gw a {
  text-decoration: none;
  color: #000;
}
.gw1 {
  margin-bottom: 10px;
}
.gw1 ul {
  display: flex;
  text-align: center;
  width: 100%;
  padding: 15px 0;
}
.gw1 li {
  width: 20%;
}
.gw1 p {
  font-size: 10px;
}
.gw2 {
  margin-bottom: 1px;
}
.gw2 ul {
  display: flex;
  text-align: center;
  width: 100%;
  padding: 15px 0;
}
.gw2 li {
  width: 50%;
}
.gw2 a {
  text-decoration: none;
  color: #000;
}
.gw2 a span {
  margin-left: 5px;
  font-size: 10px;
}

.gw4 ul {
  display: flex;
  text-align: center;
  width: 100%;
  padding: 15px 0;
}
.gw4 li {
  width: 33%;
}
.gw4 p {
  font-size: 10px;
}
.gw3 {
  margin-top: 14px;
}
.user_avatar {
  text-align: center;
  background-color: #fff;
}
.user {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  background-image: url("../../assets/user_avatar.png");
  background-size: cover;
  text-align: center;
  line-height: 80px;
  margin-left: 40%;
  margin-top: -90px;
}
.user2 {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  background-image: url("../../assets/icon_unlogin.png");
  background-size: cover;
  text-align: center;
  line-height: 80px;
  margin-left: 40%;
  margin-top: -90px;
}
.user_avatar {
  height: 50px;
  background-color: #fff;
}
.user span a {
  color: #fff;
  font-size: 10px;
  text-decoration: none;
}
.user2 span a {
  color: #000;
  font-size: 10px;
  text-decoration: none;
}
</style>

