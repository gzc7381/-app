<template>
  <div class="ordertickets">
    <mt-header title="特价民宿">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div>
      <mt-navbar v-model="selected">
        <mt-tab-item id="tb1">
          <p>全部</p>
        </mt-tab-item>
        <mt-tab-item id="tb2">
          <p class="pborder">人气</p>
        </mt-tab-item>
        <mt-tab-item id="tb3">
          <p class="pborder">销量</p>
        </mt-tab-item>
        <mt-tab-item id="tb4">
          <p @click="jths" class="pborder">价格 {{jt}}</p>
        </mt-tab-item>
      </mt-navbar>
      <mt-tab-container v-model="selected">
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
        <mt-tab-container-item id="tb2" @click="itemClick(id)">
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
        <mt-tab-container-item id="tb3" @click="itemClick(id)">
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
        <mt-tab-container-item id="tb4" @click="itemClick(id)">
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
      </mt-tab-container>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      selected: "tb1",
      jt: "↑",
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
      ]
    };
  },
  methods: {
    jths() {
      if (this.jt == "↑") {
        this.jt = "↓";
      } else {
        this.jt = "↑";
      }
    }
  }
};
</script>
<style scoped>
/* .ordertickets {
  background: #fff;
} */
.mint-header {
  height: 44px;
  background-image: url("../../assets/ImgDetail/spe01.png");
  background-size: 100%;
}
.pborder {
  border-left: 1px solid #ccc;
}
.jingqu {
  background: #fff;
  margin-top: 1px;
  padding: 10px;
  font-size: 14px;
}
.jingqu p:nth-child(2) {
  font-size: 12px;
  color: #aaa;
}
.jingqu > div {
  display: flex;
  font-size: 12px;
  justify-content: space-between;
  color: red;
}
.product_app {
  display: flex;
  flex-wrap: wrap; /*子元素换行*/
  justify-content: space-between;
}
.product_app .goods-item {
  width: 100%; /*元素宽度*/
  box-sizing: border-box;
  margin: 2px 0;
  min-height: 100%; /*高度*/
  background-color: #fff;
}
.product_app .goods-item img {
  width: 100%;
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
.product_app .goods-item span {
  font-size: 12px;
}
.product_app .goods-item .comment {
  color: red;
}
/* 酒店下面文字位置 */
.product_app .goods-item .title_call {
  margin: 1% 0% 3% 2%;
}
.footline {
  width: 100%;
  height: 26px;
  text-align: center;
  font-size: 12px;
  margin-top: 2%;
  /* background-image: url("../../assets/Special/footline.png"); */
  background-size: cover;
}
</style>

