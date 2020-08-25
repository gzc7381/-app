<template>
  <div class="myEact">
    <div class="spe_span">
      <img @click="goBack" src="../../assets/Special/list_left.png" />
      <span>吃在桂林</span>
    </div>
    <div class="product_app">
      <div class="goods-item" v-for="(item,i) of list" :key="i" @click="bbb(i)">
        <img :src="'http://127.0.0.1:888/'+item.img_url" />
        <p>{{item.title}}</p>
        <p class="comment">
          <img src="../../assets/Special/eact_msg.png" alt />
          {{item.eact_msg}}
          <img src="../../assets/Special/eye.png" alt />
          {{item.eact_eye}}
        </p>
      </div>
      <!-- 改 -->
      <mt-button size="large" @click="loadMore">{{jzgd}}</mt-button>
    </div>
  </div>
</template>
<script>
export default {
  name: "",
  data() {
    return {
      list: [],
      pno: 0,
      ps: 6,
      jzgd: "加载更多"
    };
  },
  methods: {
    bbb(i) {
      this.$router.push("Eacttopic?did=" + (parseInt(i) + 1));
    },
    loadMore() {
      console.log(123);
      //加载更多的数据
      var url = "Eact";
      //将当前页码加1 10:28
      this.pno++;
      //创建参数对象
      var obj = { pno: this.pno, pageSize: this.ps };
      this.axios.get(url, { params: obj }).then(result => {
        //数据覆盖
        //this.list = //result.data.data
        //数据追加
        var rows = this.list.concat(result.data.data);
        this.list = rows;
        if (result.data.data.length == 0) {
          this.jzgd = "亲,没有更多了~";
        }
      });
    },
    goBack() {
      this.$router.push("/index");
    }
  },
  created() {
    this.loadMore();
  }
};
</script>
<style scoped>
.myEact {
  background-color: #f1f1f1;
}
/* 上导航 */
.myEact .spe_span {
  color: #fff;
  font-size: 16px;
  text-align: center;
  padding: 2.8%;
  background-image: url("../../assets/Special/spe01.png");
  background-size: 100%;
  width: 100%;
  position: fixed;
  top: 0%;
}
.myEact .spe_span img {
  width: 5%;
  position: absolute;
  top: 32%;
  left: 3%;
}
.myEact .product_app {
  /* position: relative; */
  margin-top: 12%;
  display: flex;
  flex-wrap: wrap; /*子元素换行*/
  justify-content: space-around;
  width: 100%;
}
.myEact .product_app .goods-item {
  background-color: #fff;
  width: 48%;
  margin: 1%;
}
/* 照片标题样式 */
.myEact .product_app .goods-item p {
  font-size: 14px;
  margin: 1% 0% 8% 4%;
}
.myEact .product_app .goods-item > img {
  width: 100%;
}
.myEact .product_app .goods-item .comment {
  font-size: 10px;
  margin: 0% 0% 4% 4%;
}
.myEact .product_app .goods-item .comment img {
  vertical-align: bottom;
  width: 8%;
}
</style>

