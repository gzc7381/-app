<template>
  <div>
    <mt-header title="出行头条">
      <mt-button slot="right" class="Sousuo">
        <img src="../../assets/ImgDetail/sousuo.png" alt @click="sousuo " />
      </mt-button>
    </mt-header>
    <div class="body">
      <div class="titlebar">
        <mt-navbar v-model="selected">
          <mt-tab-item id="tb1">出行注意</mt-tab-item>
          <mt-tab-item id="tb2">旅游热点</mt-tab-item>
        </mt-navbar>
        <!-- 综合列表 -->
        <mt-tab-container class="container" v-model="selected">
          <!-- 出行安全 -->
          <mt-tab-container-item id="tb1">
            <div class="news" v-for="(item,i) of list1" :key="i">
              <p>{{item.title}}</p>
              <ul>
                <li>
                  <img src="../../assets/ImgDetail/eye.png" alt />
                  <span>{{item.span1}}</span>
                  <img src="../../assets/ImgDetail/info-s.png" alt />
                  <span>{{item.span2}}</span>
                </li>
                <li>{{item.date}}</li>
              </ul>
            </div>
          </mt-tab-container-item>
          <!--旅游热点 -->
          <mt-tab-container-item id="tb2">
            <div class="news" v-for="(item,i) of list2" :key="i">
              <p>{{item.title}}</p>
              <ul>
                <li>
                  <img src="../../assets/ImgDetail/eye.png" alt />
                  <span>{{item.span1}}</span>
                  <img src="../../assets/ImgDetail/info-s.png" alt />
                  <span>{{item.span2}}</span>
                </li>
                <li>{{item.date}}</li>
              </ul>
            </div>
          </mt-tab-container-item>
        </mt-tab-container>
      </div>
    </div>
    <div style="height:55px;"></div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      selected: "tb1",
      list1: [
        {
          title: "野外活动 ，注意人身安全。",
          span1: 154,
          span2: 7,
          date: "2017-10-11"
        },
        {
          title: "选择正规的宾馆住宿。",
          span1: 60,
          span2: 4,
          date: "2018-2-15"
        },
        {
          title: "不轻易将自己的信息告知他人。",
          span1: 44,
          span2: 0,
          date: "2018-10-1"
        },
        {
          title: "尽量少带现金，贵重物品保管好。",
          span1: 154,
          span2: 44,
          date: "2017-10-11"
        },
        {
          title: "不坐非法运营车辆。",
          span1: 434,
          span2: 78,
          date: "2017-10-11"
        },
        {
          title: "保持手机通畅。",
          span1: 134,
          span2: 1,
          date: "2017-10-11"
        },
        {
          title: "不轻易将自己的信息告知他人。",
          span1: 44,
          span2: 0,
          date: "2018-10-1"
        },
        {
          title: "尽量少带现金，贵重物品保管好。",
          span1: 154,
          span2: 44,
          date: "2017-10-11"
        },
        {
          title: "不坐非法运营车辆。",
          span1: 434,
          span2: 78,
          date: "2017-10-11"
        }
      ],
      list2: [
        {
          title: "旅游景区秩序良好。",
          span1: 154,
          span2: 7,
          date: "2017-10-11"
        },
        {
          title: "万佛湖景区节庆活动引关注。",
          span1: 60,
          span2: 4,
          date: "2018-2-15"
        },
        {
          title: "城市综合体人气爆棚。",
          span1: 44,
          span2: 0,
          date: "2018-10-1"
        },
        {
          title: "九华山天台景区--携手救助暖人心。",
          span1: 154,
          span2: 44,
          date: "2017-10-11"
        },
        {
          title: "乡村旅游成热点 一大批景区接待量增加。",
          span1: 434,
          span2: 78,
          date: "2017-10-11"
        },
        {
          title: "国内热门景区热闹非凡。",
          span1: 134,
          span2: 1,
          date: "2017-10-11"
        },
        {
          title: "万佛湖景区节庆活动引关注。",
          span1: 60,
          span2: 4,
          date: "2018-2-15"
        },
        {
          title: "城市综合体人气爆棚。",
          span1: 44,
          span2: 0,
          date: "2018-10-1"
        },
        {
          title: "九华山天台景区--携手救助暖人心。",
          span1: 154,
          span2: 44,
          date: "2017-10-11"
        },
        {
          title: "乡村旅游成热点 一大批景区接待量增加。",
          span1: 434,
          span2: 78,
          date: "2017-10-11"
        }
      ]
    };
  },
  methods: {
    sousuo() {
      this.$router.push("/search");
    }
  }
};
</script>
<style scoped>
.title {
  width: 100%;
  height: 44px;
  color: #fff;
  text-align: center;
  line-height: 44px;
}
.Sousuo img {
  width: 20px;
}
.mint-header {
  height: 44px;
  background-image: url("../../assets/ImgDetail/spe01.png");
  background-size: 100%;
}
.news {
  border-top: 1px solid #eee;
  background: #fff;
  color: #333;
  padding-right: 10px;
  padding-left: 10px;
}
.news img {
  width: 20px;
  vertical-align: middle;
  margin-left: 10px;
}
.news > p {
  margin-top: 10px;
}
.news ul {
  display: flex;
  justify-content: space-between;
  list-style: none;
  height: 30px;
  margin-top: 20px;
  color: #aaa;
}
/* .news ul>li:first-child{
    line-height: 30px;
} */
.mint-navbar .mint-tab-item.is-selected {
  color: #f8cc50;
  border-bottom: 4px solid #f8cc50;
}
.mint-navbar .mint-tab-item {
  color: #bbb;
}
</style>



