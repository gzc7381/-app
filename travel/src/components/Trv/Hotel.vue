<template>
  <div class="mySpecial">
    <div class="spe_span">
      <mt-header title="住在桂林">
        <router-link to="/index" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
        <mt-button slot="right" class="Sousuo">
          <img src="../../assets/ImgDetail/sousuo.png" />
        </mt-button>
      </mt-header>
    </div>
    <!-- navbar -->
    <div>
      <mt-navbar class="tabBer" v-model="selected">
        <mt-tab-item id="tb1">
          <p>综合</p>
        </mt-tab-item>
        <mt-tab-item id="tb2">
          <p class="nav_p">人气</p>
        </mt-tab-item>
        <mt-tab-item id="tb3">
          <p class="nav_p">距离</p>
        </mt-tab-item>
      </mt-navbar>
      <!-- tabcontainer -->
      <mt-tab-container class="container" v-model="selected">
        <!-- 综合列表 -->
        <mt-tab-container-item id="tb1">
          <div class="leftimgandtxt" v-for="(item,i) of list" :key="i">
            <img class="imgstyle" :src="item.href" />
            <div class="rightOfImg">
              <span class="title">{{item.title}}</span>
              <span class="subtitle">{{item.subtitle}}</span>
            </div>
          </div>
        </mt-tab-container-item>
        <!-- 人气列表 -->
        <mt-tab-container-item id="tb2">
          <div class="leftimgandtxt" v-for="(item,i) of list1" :key="i">
            <img class="imgstyle" :src="item.href" />
            <div class="rightOfImg">
              <span class="title">{{item.title}}</span>
              <span class="subtitle">{{item.subtitle}}</span>
            </div>
          </div>
        </mt-tab-container-item>
        <!-- 距离列表 -->
        <mt-tab-container-item id="tb3">
          <div
            class="leftimgandtxt"
            @click="shangpin"
            :data-ids="i"
            v-for="(item,i) of list2"
            :key="i"
          >
            <img :data-ids="i" class="imgstyle" :src="item.href" />
            <div :data-ids="i" class="rightOfImg">
              <span :data-ids="i" class="title">{{item.title}}</span>
              <span :data-ids="i" class="subtitle">{{item.subtitle}}</span>
            </div>
          </div>
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
      list: [
        {
          // tb: "tb1",
          // id: 1,
          href: require("../../assets/Special/hotel_logo01.jpg"),
          title: "桂林绿舍田畔小院",
          subtitle: "地址:桂林市秀峰区桂林绿舍江畔小院江畔小院"
        },
        {
          // tb: "tb2",
          // id: 2,
          href: require("../../assets/Special/h02.jpg"),
          title: "观江景客栈",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        },
        {
          // tb: "tb3",
          // id: 3,
          href: require("../../assets/Special/h03.jpg"),
          title: "桂林康福特酒店",
          subtitle: "地址:广西壮族自治区桂林市灵川县桂康路25号"
        },
        {
          // tb: "tb2",
          href: require("../../assets/Special/h04.jpg"),
          title: "桂林桂山华星酒店",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        }
      ],
      list1: [
        {
          // tb: "tb1",
          // id: 1,
          href: require("../../assets/Special/h03.jpg"),
          title: "桂林绿舍田畔小院",
          subtitle: "地址:桂林市秀峰区桂林绿舍江畔小院江畔小院"
        },
        {
          // tb: "tb2",
          // id: 2,
          href: require("../../assets/Special/h02.jpg"),
          title: "观江景客栈",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        },
        {
          // tb: "tb3",
          // id: 3,
          href: require("../../assets/Special/hotel_logo01.jpg"),
          title: "桂林康福特酒店",
          subtitle: "地址:广西壮族自治区桂林市灵川县桂康路25号"
        },
        {
          // tb: "tb2",
          href: require("../../assets/Special/h04.jpg"),
          title: "桂林桂山华星酒店",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        }
      ],
      list2: [
        {
          // tb: "tb1",
          // id: 1,
          href: require("../../assets/Special/h02.jpg"),
          title: "桂林绿舍田畔小院",
          subtitle: "地址:桂林市秀峰区桂林绿舍江畔小院江畔小院"
        },
        {
          // tb: "tb2",
          // id: 2,
          href: require("../../assets/Special/hotel_logo01.jpg"),
          title: "观江景客栈",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        },
        {
          // tb: "tb3",
          // id: 3,
          href: require("../../assets/Special/h04.jpg"),
          title: "桂林康福特酒店",
          subtitle: "地址:广西壮族自治区桂林市灵川县桂康路25号"
        },
        {
          // tb: "tb2",
          href: require("../../assets/Special/h03.jpg"),
          title: "桂林桂山华星酒店",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        }
      ]
    };
  },
  methods: {
    shangpin(e) {
      var ids = e.target.dataset.ids;
      this.$router.push("/HotelList");
    }
  }
};
</script>
<style scoped>
.Sousuo img {
  width: 20px;
}
.mint-header {
  height: 44px;
  background-image: url("../../assets/ImgDetail/spe01.png");
  background-size: 100%;
}
.mySpecial .leftimgandtxt {
  margin-top: 1px;
  background-color: #fff;
}
.mySpecial .is-selected {
  z-index: 1;
}
.mySpecial .mint-navbar .mint-tab-item.is-selected {
  border-bottom: 2px solid #feb63d;
  color: #feb63d;
  margin-bottom: -0.08rem;
}
/* .mySpecial .mint-tab-item + .mint-tab-item {
  border-left: 1px solid #ddd;
} */
/*2:图片与文本样式*/
.mySpecial .leftimgandtxt {
  display: flex;
}
/*3:图片样式*/
.mySpecial .imgstyle {
  margin: 3%;
  width: 50px;
  height: 50px;
  border-radius: 2px;
}
/*4:图片右侧文本*/
.mySpecial .rightOfImg {
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-left: 1%;
}
/*主标题*/
.mySpecial .title {
  color: #000;
  font-size: 14px;
}
/*子标题*/
.mySpecial .subtitle {
  color: gray;
  margin-top: 4px;
  font-size: 12px;
}
/* 轮播样式 */
.mySpecial .swp {
  width: 100%;
  height: 150px;
}
.mySpecial .swp img {
  width: 100%;
  height: 100%;
}
/* 点击导航条下border颜色 */
/* .active {
  border-bottom: 2px solid #feb63d;
}
.mint-button--default + .active {
  color: #feb63d;
} */
/*  */
.mySpecial {
  background-color: #f0efed;
}

.mySpecial > div:nth-child(2) > img {
  width: 100%;
  display: block;
}

.mySpecial .mt_bar {
  display: flex;
  justify-content: space-around;
}
.mySpecial .page-tab-container hr {
  height: 2px;
  width: 100%;
  border: none;
}
.mySpecial .page-tab-container img {
  margin: 2%;
}
.mySpecial .mint-button::after {
  background-color: #fff !important;
}
/* .mySpecial .mint-button + .mint-button {
  content: "|";
  border-left: 1px solid #ccc;
} */
.mySpecial .tabBer .nav_p {
  border-left: 1px solid #ccc;
}
.mySpecial .tabBer p {
  font-size: 14px;
}
.mySpecial .mint-button {
  border-radius: 0px !important;
  border-top: 0px !important;
  font-size: 14px !important;
}
</style>