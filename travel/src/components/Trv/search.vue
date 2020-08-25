<template>
  <div class="search">
    <div class="searchBg">
      <div class="searchDiv">
        <img src="../../assets/indexImg/search.png" alt />
        <input class="searchInput" type="text" placeholder="搜索" />
      </div>
      <span @click="close">取消</span>
    </div>
    <div class="rmSearch">
      <div class="rmss">
        <p>热门搜索</p>
      </div>
      <hr style="background-color:#eee;height: 1px;width:100%;border: none;" />
      <div class="rmBtn">
        <mt-button type="default" size="small">酒店</mt-button>
        <mt-button type="default" size="small">特产</mt-button>
        <mt-button type="default" size="small">景</mt-button>
      </div>
    </div>
    <div class="rmSearch">
      <div class="rmss">
        <p>历史记录</p>
        <p>×</p>
      </div>
    </div>
    <div class="lsjl">
      <ul>
        <li>酒店</li>
        <li>特产</li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  },
  methods: {
    close() {
      this.$router.go(-1);
    }
  }
};
</script>
<style scoped>
.search .searchBg {
  width: 100%;
  height: 50px;
  background: #f8cc50;
}
.search .searchBg .searchInput {
  border: none;
  margin-right: 3%;
  width: 85%;
  height: 30px;
  outline: none;
}
.search .searchBg img {
  width: 15px;
  margin-right: 10px;
  margin-left: 10px;
  vertical-align: middle;
}
.search .searchBg .searchDiv {
  display: inline-block;
  width: 85%;
  margin-right: 3%;
  background: #fff;
  border-radius: 3px;
  margin-top: 10px;
  box-shadow: -4px -1px 5px #ccc;
  margin-left: 1%;
}
.search .searchBg span {
  color: #fff;
}
.search .rmSearch {
  background: #fff;
}
.search .mint-button {
  background: #fff !important;
  border: 1px solid #ccc !important;
  font-size: 12px;
  margin: 10px 0 10px 9px;
}
.search .rmss {
  padding: 10px;
  font-size: 12px;
  margin-top: 10px;
  display: flex;
  justify-content: space-between;
}
.search .rmss p {
  margin: 0;
}
.search .rmss p:nth-child(2) {
  font-size: 18px;
}
.search .lsjl ul {
  display: flex;
}
.search .lsjl ul > li {
  width: 50%;
  margin-top: 2px;
  background: #fff;
  padding: 5px;
  font-size: 12px;
}
.search .lsjl ul > li:nth-child(2n-1) {
  margin-right: 5px;
}
</style>
