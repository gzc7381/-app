<template>
  <div class="ordertickets">
    <mt-header title="订购门票">
      <router-link to="/" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
    </mt-header>
    <div>
      <mt-navbar v-model="selected">
        <mt-tab-item id="1">
          <p>全部</p>
        </mt-tab-item>
        <mt-tab-item id="2">
          <p class="pborder">人气</p>
        </mt-tab-item>
        <mt-tab-item id="3">
          <p class="pborder">销量</p>
        </mt-tab-item>
        <mt-tab-item id="4">
          <p @click="jths" class="pborder">价格 {{jt}}</p>
        </mt-tab-item>
      </mt-navbar>
      <mt-tab-container v-model="selected">
        <mt-tab-container-item id="1">
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="2">
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="3">
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="4">
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
          </div>
          <div class="jingqu">
            <p>桂林乐满地主题乐园</p>
            <p>周一到周日|免预约</p>
            <div>
              <p>￥35.00</p>
              <p>
                售出:
                <span>2</span>
              </p>
            </div>
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
      selected: "1",
      jt: "↑"
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
</style>

