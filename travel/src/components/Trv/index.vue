<template>
  <div class="Myindex">
    <mt-tab-container v-model="selected">
      <mt-tab-container-item id="首页">
        <div class="carouselBigImg">
          <table></table>
          <div class="mySearchDiv">
            <img class="lgLogo" src="../../assets/indexImg/1506073244505_750253.png" alt />
            <img
              class="search bgcolor"
              @click="search"
              src="../../assets/indexImg/1506073244742_766215.png"
              alt
            />
            <img
              class="msg"
              @click="message"
              src="../../assets/indexImg/1506073245105_440345.png"
              alt
            />
            <div class="swiper-container">
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <img src="../../assets/indexImg/1506072900845_458248.png" alt />
                </div>
                <div class="swiper-slide">
                  <img src="../../assets/indexImg/1506072901176_1008381.png" alt />
                </div>
                <div class="swiper-slide">
                  <img src="../../assets/indexImg/1506072901668_524491.png" alt />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="Mynav">
          <ul>
            <li class="baibg">
              <div class="zsImg Img">
                <p>专属向导</p>
              </div>
            </li>
            <li class="baibg">
              <div class="zzImg Img" @click="zzgl">
                <p>住在桂林</p>
              </div>
            </li>
            <li class="baibg" @click="czgl">
              <div class="czImg Img">
                <p>吃在桂林</p>
              </div>
            </li>
            <li @click="shoppiao" class="baibg">
              <div class="dgImg Img">
                <p>订购门票</p>
              </div>
            </li>
          </ul>
        </div>
        <div class="line"></div>
        <div class="headline">
          <div class="swiper-container">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <span>热议</span>
                <span>万佛湖景区节庆活动引关注</span>
              </div>
              <div class="swiper-slide">
                <span>热议</span>
                <span>省内旅游景区秩序良好</span>
              </div>
              <div class="swiper-slide">
                <span>热议</span>
                <span>113553</span>
              </div>
            </div>
          </div>
        </div>
        <div class="line1"></div>
        <div class="centerImg">
          <div class="centerTop">
            <div class="centerTopLeft baibg" @click="menpiao">
              <p>1元景区门票</p>
              <img src="../../assets/indexImg/1506072903225_630656.png" alt />
            </div>
            <div class="centerTopRight baibg" @click="minsu">
              <p>精品特价民宿</p>
              <img src="../../assets/indexImg/1506072909546_699115.png" alt />
            </div>
          </div>
        </div>
        <div class="line"></div>
        <div class="centerBottomRight bg">
          <img class="baibg" src="../../assets/indexImg/1506072902465_1008776.png" alt />
        </div>
        <div class="line1"></div>
        <div class="foodDiv bg">
          <div class="foodName">
            <div>特产热卖</div>
            <div>
              <img src="../../assets/indexImg/1506072907092_450288.png" alt />
            </div>
          </div>
          <div class="line"></div>
          <div class="guiHuaFood bg">
            <ul>
              <li v-for="(item,i) of list" :key="i" @click="guihuajiu(i)">
                <img :src="'http://127.0.0.1:888/'+item.img" alt />
                <p>{{item.title}}</p>
                <p>¥{{item.price}}.00</p>
                <p>
                  <s>¥89.00</s>
                </p>
              </li>
            </ul>
          </div>
        </div>
        <div class="line1"></div>
        <div class="wzglDiv bg">
          <p>玩在桂林</p>
          <div class="gongLueDiv">
            <div class="lyglDiv wzglImg baibg" @click="Strategy">
              <div class="lyglDivImg">
                <p>旅游攻略</p>
                <p>趣玩最大化</p>
              </div>
            </div>
            <div class="jbtyDiv wzglImg baibg">
              <div class="jbtyDivImg">
                <p>结伴同游</p>
                <p>拒绝单独游</p>
              </div>
            </div>
          </div>
          <div class="gongLueDiv">
            <div class="jdtjDiv wzglImg baibg" @click="Spots">
              <div class="jdtjDivImg">
                <p>景点推荐</p>
                <p>省时畅快玩</p>
              </div>
            </div>
            <div class="lytcDiv wzglImg baibg">
              <div class="lytcDivImg">
                <p>旅游套餐</p>
                <p>省心无忧玩</p>
              </div>
            </div>
          </div>
        </div>
        <div class="line1"></div>
        <div class="bottomDiv bg">
          <div>
            <img class="baibg" src="../../assets/indexImg/1524127211680_839674.png" alt />
          </div>
          <div class="bottomDivImg bg">
            <p>我们承诺</p>
          </div>
          <ul class="bg" style="padding-bottom:10px;">
            <li>
              <div class="bottomDivImgs0 bottomDivImgs">
                <p>拒绝购物</p>
              </div>
            </li>
            <li>
              <div class="bottomDivImgs1 bottomDivImgs">
                <p>认证保证</p>
              </div>
            </li>
            <li>
              <div class="bottomDivImgs2 bottomDivImgs">
                <p>售后无忧</p>
              </div>
            </li>
          </ul>
        </div>
        <div class="line1"></div>
        <div class="bg">
          <p style="padding:10px;">推荐攻略</p>
          <div class="indexbody">
            <div v-for="(item,i) of lists" :key="i">
              <img :src="item.href" alt />
              <div class="details">
                <p>{{item.title}}</p>
                <ul>
                  <li>
                    <img src="../../assets/ImgDetail/info-s.png" alt />
                    <span>{{item.span1}}</span>
                    <img src="../../assets/ImgDetail/eye.png" alt />
                    <span>{{item.span2}}</span>
                  </li>
                  <li>{{item.date}}</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div style="height:55px;"></div>
      </mt-tab-container-item>
      <mt-tab-container-item id="特产店">
        <Special></Special>
      </mt-tab-container-item>
      <mt-tab-container-item id="出行头条">
        <Headline></Headline>
      </mt-tab-container-item>
      <mt-tab-container-item id="我的">
        <My></My>
      </mt-tab-container-item>
    </mt-tab-container>
    <mt-tabbar v-model="selected" fixed>
      <mt-tab-item id="首页">
        <img
          slot="icon"
          :src="selected=='首页' ? require('../../assets/indexImg/home.png') :require('../../assets/indexImg/homeopen.png')"
          alt
        /> 首页
      </mt-tab-item>
      <mt-tab-item id="特产店">
        <img
          slot="icon"
          :src="selected=='特产店' ?require('../../assets/indexImg/baoopen.png'):require('../../assets/indexImg/bao.png')"
          alt
        /> 特产店
      </mt-tab-item>
      <mt-tab-item id="出行头条">
        <img
          slot="icon"
          :src="selected=='出行头条' ?require('../../assets/indexImg/toutopen.png'):require('../../assets/indexImg/tout.png')"
          alt
        /> 出行头条
      </mt-tab-item>
      <mt-tab-item id="我的">
        <img
          slot="icon"
          :src="selected=='我的' ?require('../../assets/indexImg/meopen.png'):require('../../assets/indexImg/me.png')"
          alt
        /> 我的
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template>
<script >
import My from "./My";
import Headline from "./Headline";
import Special from "./Special";
import { setInterval } from "timers";
export default {
  data() {
    return {
      selected: "首页",
      list: [],
      lists: [
        {
          href: require("../../assets/ImgDetail/2.jpg"),
          title: "桂林经典景点---两江四湖",
          span1: "0",
          span2: "131",
          date: "2019-6-1"
        },
        {
          href: require("../../assets/ImgDetail/10.jpg"),
          title: "桂林旅游景点刘三姐大观园",
          span1: "6",
          span2: "83",
          date: "2019-7-30"
        },
        {
          href: require("../../assets/ImgDetail/7.jpg"),
          title: "桂林象山五景点",
          span1: "1",
          span2: "37",
          date: "2019-5-1"
        },
        {
          href: require("../../assets/ImgDetail/9.jpg"),
          title: "桂林、阳朔景点",
          span1: "4",
          span2: "24",
          date: "2018-9-26"
        }
      ]
    };
  },
  components: {
    Special: Special,
    Headline: Headline,
    My: My
  },
  extends: {},
  methods: {
    minsu() {
      this.$router.push("Homestay");
    },
    menpiao() {
      this.$router.push("Entranceticket");
    },
    loadMore() {
      this.axios.get("/index").then(result => {
        console.log(result.data);
        this.list = result.data;
      });
    },
    Spots() {
      this.$router.push("/Spots");
    },
    Strategy() {
      this.$router.push("/Strategy");
    },
    zzgl() {
      this.$router.push("/Hotel");
    },
    czgl() {
      this.$router.push("/Eact");
    },
    shoppiao() {
      this.$router.push("/Ordertickets");
    },
    message() {
      this.$router.push("/message");
    },
    guihuajiu(i) {
      this.$router.push("/detail?lid="+(parseInt(i)+1));
    },
    search() {
      this.$router.push("/search");
    },
    swiper() {
      var mySwiper = new Swiper(".swiper-container", {
        slidesPerView: 3,
        tdFlow: {
          depth: 150,
          shadows: false
        },
        loop: true,
        autoplay: 3000,
        speed: 1000,
        autoplayDisableOnInteraction: false
      });
    },
    swiper1() {
      var mySwiper = new Swiper(".headline .swiper-container", {
        mode: "vertical",
        autoplay: 2000,
        speed: 2000,
        loop: true
      });
    }
  },
  mounted() {
    this.swiper();
    this.swiper1();
  },
  created() {
    this.loadMore();
  }
};
</script>
<style scoped>
.baibg:hover > div,
.baibg:hover {
  opacity: 0.6;
}
.bg {
  background: #fff;
}
.Myindex .bgcolor:hover {
  opacity: 0.7;
}
.Myindex .carouselBigImg {
  height: 275px;
  background-size: 100%;
  background-repeat: no-repeat;
  width: 100%;
  background-image: url("../../assets/indexImg/1506072904410_248886.png");
}
.Myindex .search {
  width: 78%;
}
.mySearchDiv {
  margin-top: 10px;
}
.Myindex .lgLogo {
  padding-top: 5px;
  vertical-align: top;
  width: 12%;
}
.Myindex .msg {
  width: 10%;
}
.Myindex .swiper-slide img {
  width: 100%;
  /* height: 100%; */
}
.Myindex .swiper-container {
  height: 100px;
  margin-top: 30px;
}
.Myindex .Mynav {
  width: 100%;
  height: 80px;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1506072905794_719663.png");
}
.Myindex .Mynav ul {
  height: 50px;
  list-style: none;
  display: flex;
  justify-content: space-around;
  font-size: 12px;
}
.Myindex .Mynav ul li {
  width: 23%;
  text-align: center;
}
.Myindex .Mynav ul li .Img {
  background-size: 100%;
  height: 100%;
  width: 100%;
  background-repeat: no-repeat;
  padding-top: 55px;
}
.Myindex .zsImg {
  background-image: url("../../assets/indexImg/1506072925057_1033133.png");
}
.Myindex .zzImg {
  background-image: url("../../assets/indexImg/1506072926498_619157.png");
}
.Myindex .czImg {
  background-image: url("../../assets/indexImg/1506072928060_774637.png");
}
.Myindex .dgImg {
  background-image: url("../../assets/indexImg/1506072929496_103786.png");
}
.Myindex .line {
  height: 2px;
  background: #ddd;
}
.Myindex .headline {
  width: 100%;
  height: 40px;
  overflow: hidden;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1506072912474_1086191.png");
}
.Myindex .line1 {
  height: 8px;
  background: #ddd;
}
.Myindex .headline .swiper-container {
  margin-left: 80px;
  margin-top: 12px;
  font-size: 12px;
}
.Myindex .headline .swiper-container span:first-child {
  border: 1px solid #f00;
  color: #f00;
  border-radius: 3px;
}
.Myindex .headline .swiper-container span:nth-child(2) {
  margin-left: 20px;
}
.Myindex .centerImg {
  width: 100%;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1506072900504_325123.png");
}
.Myindex .centerImg .centerTop {
  width: 100%;
  height: 65px;
  display: flex;
  font-size: 14px;
  justify-content: space-around;
}
.Myindex .centerImg .centerTop .centerTopLeft {
  width: 40%;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1506072915902_806788.png");
}
.Myindex .centerImg .centerTop .centerTopLeft p,
.Myindex .centerImg .centerTop .centerTopRight p {
  margin-top: 15px;
  /* width: 80px; */
}
.Myindex .centerImg .centerTop .centerTopLeft img,
.Myindex .centerImg .centerTop .centerTopRight img {
  width: 80px;
}
.Myindex .centerImg .centerTop .centerTopRight {
  width: 40%;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1506072917390_875917.png");
}
.Myindex .centerBottomRight img {
  width: 100%;
  height: 90px;
}
.Myindex .foodDiv .foodName {
  display: flex;
  justify-content: space-between;
}
.Myindex .foodDiv .foodName > div {
  margin-left: 20px;
  font-size: 14px;
  line-height: 40.51px;
  height: 40.91px;
}
.Myindex .foodDiv .foodName img {
  width: 50px;
}
.Myindex .guiHuaFood > ul {
  display: flex;
  justify-content: space-around;
  text-align: center;
  font-size: 14px;
}
.Myindex .guiHuaFood > ul > li > img {
  margin-top: 10px;
  width: 75%;
}
.Myindex .guiHuaFood > ul > li p:nth-child(2) {
  font-weight: bold;
}
.Myindex .guiHuaFood > ul > li p:nth-child(3) {
  font-weight: bold;
  color: red;
}
.Myindex .guiHuaFood > ul > li p:nth-child(4) {
  color: #666;
  font-size: 10px;
  padding-bottom: 15px;
}
.Myindex .wzglDiv > p {
  font-size: 14px;
  margin-left: 20px;
  padding-top: 10px;
}
.Myindex .wzglDiv .gongLueDiv {
  display: flex;
  text-align: center;
  justify-content: space-around;
}
.Myindex .wzglDiv .gongLueDiv .wzglImg {
  background-size: 100%;
  height: 100px;
  background-repeat: no-repeat;
  width: 100%;
}
.Myindex .wzglDiv .gongLueDiv .wzglImg > div > p:first-child {
  color: #fff;
  font-size: 16px;
  padding-top: 20px;
  margin-left: -70px;
}
.Myindex .wzglDiv .gongLueDiv .wzglImg > div > p:nth-child(2) {
  color: rgba(0, 0, 0, 0.4);

  font-size: 12px;
  margin-left: -70px;
}
.Myindex .wzglDiv .gongLueDiv .lyglDiv {
  width: 100%;
  margin: 10px;
  background-image: url("../../assets/indexImg/1524127204702_793859.png");
}
.Myindex .wzglDiv .gongLueDiv .jbtyDiv {
  margin-top: 10px;
  margin-right: 10px;
  background-image: url("../../assets/indexImg/1524127205472_1036371.png");
}
.Myindex .wzglDiv .gongLueDiv .jdtjDiv {
  margin-left: 10px;
  margin-right: 10px;
  background-image: url("../../assets/indexImg/1524127207288_711390.png");
}
.Myindex .wzglDiv .gongLueDiv .lytcDiv {
  margin-right: 10px;
  margin-bottom: 20px;
  background-image: url("../../assets/indexImg/1524127208614_977946.png");
}
.Myindex .wzglDiv .gongLueDiv .lyglDiv .lyglDivImg {
  height: 100%;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1524127205097_582038.png");
}
.Myindex .wzglDiv .gongLueDiv .jbtyDiv .jbtyDivImg {
  height: 100%;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1524127205874_743938.png");
}
.Myindex .wzglDiv .gongLueDiv .jdtjDiv .jdtjDivImg {
  height: 100%;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1524127208090_775689.png");
}
.Myindex .wzglDiv .gongLueDiv .lytcDiv .lytcDivImg {
  height: 100%;
  background-size: 100%;
  background-repeat: no-repeat;
  background-image: url("../../assets/indexImg/1524127210988_837562.png");
}
.Myindex .bottomDiv > div > img {
  width: 100%;
}
.Myindex .bottomDiv .bottomDivImg {
  background-size: 100%;
  text-align: center;
  background-repeat: no-repeat;
  width: 100%;
  height: 35px;
  line-height: 35px;
  background-image: url("../../assets/indexImg/1524127212148_970116.png");
}
.Myindex .bottomDiv .bottomDivImg p {
  font-size: 12px;
  color: #666;
}
.Myindex .bottomDiv ul {
  display: flex;
  /* height: 100px; */
  width: 100%;
  justify-content: space-around;
}
.Myindex .bottomDiv ul li {
  width: 33.3%;
  height: 100%;
  color: #666;
}
.Myindex .bottomDivImgs {
  width: 100%;
  height: 100%;
  background-size: 100%;
  background-repeat: no-repeat;
}
.Myindex .bottomDiv ul li:nth-child(1) > div > p {
  font-size: 12px;
  padding-top: 2px;
  margin-left: 60px;
}
.Myindex .bottomDiv ul li:nth-child(2) > div > p {
  font-size: 12px;
  padding-top: 2px;
  margin-left: 55px;
}
.Myindex .bottomDiv ul li:nth-child(3) > div > p {
  font-size: 12px;
  padding-top: 2px;
  margin-left: 47px;
}
.Myindex .bottomDivImgs0 {
  background-image: url("../../assets/indexImg/1506305202673_654684.png");
}
.Myindex .bottomDivImgs1 {
  background-image: url("../../assets/indexImg/1506305203001_285644.png");
}
.Myindex .bottomDivImgs2 {
  background-image: url("../../assets/indexImg/1506305203511_968596.png");
}
.mint-tabbar {
  background-image: none !important;
  background: #fff;
}
.mint-tabbar > .mint-tab-item.is-selected {
  background: #fff !important;
}
.indexbody {
  background: #fff;
}
img {
  width: 100%;
}
.details {
  border-bottom: 2px solid #ddd;
  background: #fff;
  color: #333;
  padding-right: 10px;
  padding-left: 5px;
}
.details img {
  width: 15px;
  vertical-align: middle;
  margin-left: 5px;
}
.details > p {
  margin-top: 10px;
}
.details ul {
  display: flex;
  justify-content: space-between;
  list-style: none;
  height: 30px;
  margin-top: 10px;
  color: #aaa;
  font-size: 12px;
}
</style>

