<template>
  <div>
    <div class="Scart">
      <mt-header title="购物车" fixed>
        <router-link to="/" slot="left">
          <mt-button icon="back" @click="prev"></mt-button>
        </router-link>
        <mt-button  slot="right" @click="guanli">管理</mt-button>
      </mt-header>
      <div class="bigCart1" :class="bigCart">
        <img src="../../assets/ImgDetail/shop-big.png" alt />
        <p>购物车还是空的，去逛逛吧</p>
      </div>
      <div :class="aaa" style="margin-top:20px;">
        <div style="border-bottom:2px solid #ddd;background:#fff;margin-top:60px;">
          <div class="check">
            <input type="checkbox" />
          </div>
          <p>沁漓桂林特产专卖店</p>
        </div>
        <div class="list-pro" v-for="(item,i) of detail" :key="i">
          <ul>
            <li>
              <input type="checkbox" />
            </li>
            <li>
              <img :src="'http://127.0.0.1:888/'+item.img_url" alt />
            </li>
            <li>
              <p>{{item.titile}}</p>
              <span>单价:{{item.price}}.00</span>
              <div style="display:inline-block">
                <mt-button type="default" size="small" @click="jian">-</mt-button>
                <input type="text" :value="item.count" />
                <mt-button type="default" size="small" @click="jia">+</mt-button>
              </div>
            </li>
          </ul>
        </div>
        <div class="footer">
          <div>
            <input type="checkbox" />
            <p>总额{{xprice.toFixed(2)}}元(不含运费)</p>
          </div>
          <div style="height:60px;line-height:60px;">
            <mt-button type="danger" class="btn">去结算</mt-button>
          </div>
        </div>
      </div>
    </div>
    <div style="height:60px;"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      detail: {},
      foucs: false,
      check: require("../../assets/ImgDetail/check.png"),
      non: "",
      xprice: 0,
      bigCart: "bigCart",
      aaa: ""
    };
  },
  methods: {
    guanli(){
      
    },
    loadMore() {
      this.axios.get("/selectCart").then(result => {
        var res = result.data;
        this.detail = res;
        console.log(this.detail);
        if (res == "") {
          this.bigCart = "";
          this.aaa = "aaa";
        } else {
          this.bigCart = "bigCart";
          this.aaa = "";
        }
      });
    },
    prev() {
      this.$router.go(-1);
    },
    Checked() {
      if (this.foucs == true) {
        this.foucs = false;
      } else {
        this.foucs = true;
      }
    },
    jian(e) {
      if (e.target.nextElementSibling.value > 1) {
        e.target.nextElementSibling.value--;
        this.xprice = e.target.nextElementSibling.value * this.price;
      }
    },
    jia(e) {
      e.target.previousElementSibling.value++;
      this.xprice = e.target.previousElementSibling.value * this.price;
    },
    delItem(e){
      var id=e.target.dataset.id;
      this.$message.confirm("是否删除该商品").then(action=>{
        this.axios.get('deleteShop',{
          parmas:id
        }).then(result=>{
          console.log(123)
        })
      }).catch(err=>{
        return;
      })
    }
  },
  created() {
    this.loadMore();
  }
};
</script>
<style scoped>
input {
  width: 22px;
  height: 22px;
}
.aaa {
  display: none;
}
.mint-header {
  height: 60px;
  background: #f8cc50;
}
.bigCart1 {
  width: 200px;
  height: 230px;
  margin: 100px auto 0 auto;
}
.bigCart1 p {
  color: #bbb;
}
.bigCart {
  display: none;
}
.check {
  margin: 10px;
  width: 20px;
  height: 20px;
  display: inline-block;
  vertical-align: middle;
}
.Scart > div > div > p {
  display: inline-block;
  font-size: 14px;
  color: #666;
}

.footer {
  width: 100%;
  height: 60px;
  background: #fff;
  position: fixed;
  bottom: 0;
  display: flex;
  justify-content: space-between;
  border: 1px solid #eee;
}
.footer > div > div,
.footer > div > p {
  display: inline-block;
}
.footer > div:first-child p {
  margin-top: 17px;
  color: #666;
  font-size: 14px;
}
.footer input {
  margin: 20px;
}
.btn {
  margin-right: 15px;
  width: 92px;
}

.list-pro {
  background: #fff;
  border-bottom: 2px solid #eee;
}
.list-pro > ul {
  display: flex;
  list-style: none;
  padding: 10px;
  justify-content: space-between;
  align-items: center;
}
.list-pro > ul > li:first-child > div {
  width: 20px;
  height: 20px;
  margin: 10px;
  border-radius: 50%;
  border: 1px solid #ddd;
}
.list-pro img {
  width: 100%;
  /* height: 70px; */
}
.list-pro > ul > li:first-child {
  width: 10%;
  overflow: hidden;
}
.list-pro > ul > li:nth-child(2) {
  width: 25%;
  overflow: hidden;
}
.list-pro > ul > li:nth-child(3) {
  width: 65%;
  overflow: hidden;
  text-align: center;
  color: #666;
}
.list-pro > ul > li:nth-child(3) p {
  margin-bottom: 40px;
}
.list-pro > ul > li:nth-child(3) input {
  width: 30px;
  height: 30px;
  border: 1px solid #ccc;
  outline: none;
  text-align: center;
}
.list-pro > ul > li:nth-child(3) div {
  margin-left: 47px;
}
.list-pro .mint-button {
  border: 1px solid #ccc;
  border-radius: 0;
  height: 32px;
  vertical-align: middle;
}
.list-pro .mint-button:first-child {
  border-top-left-radius: 5px;
  border-bottom-left-radius: 5px;
}
.list-pro .mint-button:last-child {
  border-top-right-radius: 5px;
  border-bottom-right-radius: 5px;
}
.mint-button--default {
  box-shadow: 0;
}
</style>


