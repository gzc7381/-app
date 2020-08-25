<template>
  <div>
    <div class="app">
      <div class="app_title">
        <mt-header class="aa" fixed :title="title">
          <router-link to="/" slot="left">
            <mt-button icon="back"></mt-button>
          </router-link>
          <mt-button icon slot="right" @click="fenx">分享</mt-button>
        </mt-header>
      </div>
      <div class="app_body">
        <div class="swipe">
          <mt-swipe :auto="0">
            <mt-swipe-item  v-for="(item,i) of list1" :key="i">
              <img :src="'http://127.0.0.1:888/'+item" alt />
            </mt-swipe-item>
          </mt-swipe>
        </div>
        <p>{{title}}</p>
        <div class="app_price">
          <p>￥{{price}}</p>
          <p>剩余库存:{{num}} 累计出售:{{con}}</p>
        </div>
        <div class="app_appraise">
          <div>
            <a href="javascript:;">商品评价</a>
            <a href="javascript:;">
              0条评价
              <img src="../../assets/ImgDetail/you.png" alt class="myimg1" />
            </a>
          </div>
        </div>
        <div class="app_store">
          <div>
            <img src="../../assets/ImgDetail/qinli.png" alt />
            <div>
              <p>沁漓桂林特产专卖店</p>
              <p>全部商品:32</p>
            </div>
            <mt-button type="default" class="btn">
              <img src="../../assets/ImgDetail/store.png" alt class="myimg1" /> 进入店铺
            </mt-button>
          </div>
        </div>
      </div>
      <div class="app_foot">
        <div>
          <p>商品详情</p>
          <img :src="'http://127.0.0.1:888/'+item" v-for="(item,i) of list" :key="i" />
        </div>
        <div style="height:40px;width:100%;"></div>
      </div>
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
      <div class="footer">
        <div>
          <img src="../../assets/ImgDetail/info.png" @click="kefu" />
          <img :src="fouse?selected:nonal" @click="shoucang" />
          <img src="../../assets/ImgDetail/shopCart.png" @click="scart" />
        </div>
        <div>
          <button>立即购买</button>
          <button @click="shopCart">加入购物车</button>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      list1:[],
      cart:{},
      list:[],
      title:'',
      num:'',
      con:'',
      price:'',
      fouse: true,
      selected: require("../../assets/ImgDetail/love.png"),
      nonal: require("../../assets/ImgDetail/love-2.png"),
      popupVisible: false
    };
  },
 
  methods: {
    loadMore(){
      this.axios.get('/detail',{
        params:{
          lid:location.href.split('=')[1]
        }
      }
      ).then(result=>{
        var res=result.data[0];
        console.log(res.eid)
        this.cart=res;
        // 图片的类数组对象
        var str=result.data[0].img_urls;
        str=str.split(",")
        this.list=str;
        this.list1=[this.list[0],this.list[1],this.list[2]]
        console.log(this.list1)
        this.title=res.title;
        this.num=res.num;
        this.con=res.con;
        this.price=parseFloat(res.price).toFixed(2);
      })
    },
    
    shoucang() {
      if (this.fouse == false) {
        this.fouse = true;
        this.$toast({
          message: "取消收藏",
          position: "middle",
          duration: 1500
        });
      } else {
        this.fouse = false;
        this.$toast({
          message: "收藏成功",
          position: "middle",
          duration: 1500
        });
      }
    },
    kefu() {
      this.$router.push("/Kefu");
    },
    shopCart() {
      var cart=this.cart;
      var img_urls=cart.img_urls.split(",");
      // console.log(img_urls[0])
      var img_url=img_urls[0];
      var price=cart.price;
      var titile=cart.title;
      var aid=cart.eid;
      var count=1
      this.axios.get('/shopcart',{
        params:{
          img_url,
          price,
          aid,
          titile,
          count
        }
      }
      ).then(result=>{
        if(result.data.code==1){
          this.$router.push("shopCart");
        }else{
          this.$toast({
          message: '请登录。。。',
          position: 'center',
          duration: 1500
        });
        }
      })
    },
    scart(){
      this.axios.get('/selectCart').then(result=>{
        if(result.data.code!=-1){
          this.$router.push("shopCart");
        }else{
          this.$toast({
          message: '请登录。。。',
          position: 'center',
          duration: 1500
        });
        }
      })
    },
    fenx() {
      this.popupVisible = true;
    }
  },
  created(){
      console.log(123)
      this.loadMore();
    }
};
</script>
<style scoped>
.mint-header {
  height: 44px;
}
a {
  text-decoration: none;
  color: #fff;
  font-size: 18px;
}
.swipe {
  width: 100%;
  height: 300px;
}
.swipe img {
  height: 100%;
  width: 100%;
}
.app_title > div {
  padding-top: 15px;
  background: #f8cc50;
  height: 48px;
}
div.app_title > .aa {
  background: #f8cc50;
}
div.app_title > div {
  display: inline-block;
  padding: 0 20px;
  width: 70%;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  color: #fff;
}
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

div.app_body {
  margin-top: 44px;
}
div.app_body > p {
  font-size: 14px;
  color: #555;
  padding: 8px 10px;
  background: #fff;
}
div.app_body > div:first-child {
  border-top: 1px solid #ddd;
}
.app_price {
  padding: 20px 10px;
  border-top: 1px solid #ddd;
  background: #fff;
}
div.app_title > .aa[data-v-caae0290] {
  height: 60px;
  font-size: 16px;
}

div.app_body > div > p:first-child {
  color: #f00;
  font-size: 12px;
  margin-bottom: 10px;
}
div.app_body > div > p:nth-child(2) {
  font-size: 12px;
  color: #555;
}
.app_appraise {
  background: #f5f5f5;
  padding: 20px 0;
}
.app_store {
  background: #f5f5f5;
  padding-bottom: 20px;
}
.app_appraise > div {
  background: #fff;
  display: flex;
  justify-content: space-between;
  padding: 12px 10px;
}

.app_store > div {
  background: #fff;
  display: flex;
  justify-content: space-between;
  padding: 6px 10px;
  font-size: 13px;
  color: #555;
}
.app_store > div > img {
  width: 50px;
  height: 50px;
}
.app_store > div p:first-child {
  margin-bottom: 8px;
}
.app_appraise > div > a {
  color: #555;

  font-size: 13px;
}
.myimg1 {
  width: 18px;
  height: 18px;
  margin-top: 2px;
  vertical-align: middle;
  margin-top: -3px;
}
.btn {
  font-size: 14px;
  color: #555;
  border: 1px solid #555;
}

.app_foot div > p {
  padding: 8px 10px;
  border-bottom: 1px solid #eeeeee;
  margin-bottom: 10px;
  font-size: 13px;
  color: #555;
  background: #fff;
}
.app_foot img {
  width: 100%;
}
.footer {
  width: 100%;
  height: 40px;
  background: #eee;
  position: fixed;
  bottom: 0;
  display: flex;
  justify-content: space-between;
}

.footer > div > button {
  height: 100%;
  width: 90px;
  border: 0;
  color: #fff;
  padding: 10px 10px;
}
.footer > div > button:first-child {
  background: #f8cc50;
}
.footer > div > button:nth-child(2) {
  background: #f00;
}
.footer > div > img {
  width: 24px;
  margin: 8px 25px 0 7px;
}
/* .footer>div>img:last-child{
  margin-bottom: 40px;
} */
</style>


