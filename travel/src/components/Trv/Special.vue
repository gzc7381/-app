<template>
  <div class="mySpecial">
    <div class="spe_span">
      特产店
      <img src="../../assets/Special/spe_search.png" />
    </div>
    <!-- 轮播图片 -->
    <div class="swp">
      <mt-swipe :auto="4000">
        <mt-swipe-item class="a">
          <img src="../../assets/Special/spe_food2.jpg" />
        </mt-swipe-item>
        <mt-swipe-item class="a">
          <img src="../../assets/Special/spe_food07.jpg" />
        </mt-swipe-item>
        <mt-swipe-item class="a">
          <img src="../../assets/Special/spe_food08.jpg" />
        </mt-swipe-item>
      </mt-swipe>
      <!-- <img src="../../assets/Special/spe_food07.jpg" /> -->
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
          <div class="leftimgandtxt" @click="techan" v-for="(item,i) of list" :key="i">
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
          <div class="leftimgandtxt" v-for="(item,i) of list2" :key="i">
            <img class="imgstyle" :src="item.href" />
            <div class="rightOfImg">
              <span class="title">{{item.title}}</span>
              <span class="subtitle">{{item.subtitle}}</span>
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
          href: require("../../assets/Special/ql.jpg"),
          title: "沁漓特产专卖店",
          subtitle: "地址:广西壮族自治区桂林市灵川县一路72号"
        },
        {
          // tb: "tb2",
          // id: 2,
          href: require("../../assets/Special/spe_log02.jpg"),
          title: "秦合楼特产",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        },
        {
          // tb: "tb3",
          // id: 3,
          href: require("../../assets/Special/spe_log03.jpg"),
          title: "金顺昌桂林特产专卖店",
          subtitle: "地址:广西壮族自治区桂林市灵川县桂康路25号"
        }
      ],
      list1: [
        {
          // tb: "tb2",
          href: require("../../assets/Special/spe_log02.jpg"),
          title: "秦合楼特产",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        },
        {
          // tb: "tb1",
          href: require("../../assets/Special/ql.jpg"),
          title: "沁漓特产专卖店",
          subtitle: "地址:广西壮族自治区桂林市灵川县一路72号"
        },
        {
          // tb: "tb1",
          href: require("../../assets/Special/ql.jpg"),
          title: "沁漓特产专卖店",
          subtitle: "地址:广西壮族自治区桂林市灵川县一路72号"
        }
      ],
      list2: [
        {
          // tb: "tb2",
          href: require("../../assets/Special/spe_log02.jpg"),
          title: "秦合楼特产",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        },
        {
          // tb: "tb1",
          href: require("../../assets/Special/ql.jpg"),
          title: "沁漓特产专卖店",
          subtitle: "地址:广西壮族自治区桂林市灵川县一路72号"
        },
        {
          // tb: "tb2",
          href: require("../../assets/Special/spe_log02.jpg"),
          title: "秦合楼特产",
          subtitle: "地址:广西壮族自治区桂林市灵川县上海路256号"
        }
      ]
    };
  },
  methods: {
    techan() {
      this.$router.push("/List");
    },
    itemClick() {
      console.log(123);
    }
    // setActive(e) {
    //   //获取自定义属性
    //   var idx = parseInt(e.target.dataset.idx);
    //   //修改active值
    //   console.log(idx);
    //   this.selected = "tb" + (idx + 1);
    // }
  }
};
</script>
<style scoped>
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
/* 上导航 */
.mySpecial .spe_span {
  color: #fff;
  text-align: center;
  padding: 2.8%;
  background-image: url("../../assets/Special/spe01.png");
  background-size: 100%;
  position: relative;
}
.mySpecial .spe_span img {
  width: 12%;
  position: absolute;
  top: 6%;
  left: 84%;
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
.mySpecial .mint-button--default {
  color: #656b79;
  background-color: #fff !important;
  -webkit-box-shadow: 0 0 0 #fff !important;
  box-shadow: 0 0 0 #fff !important;
  /* border-bottom: 3px solid red; */
}
</style>