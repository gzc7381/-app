<template>
  <div>
    <div class="title">
      <mt-header title="景点视频" fixed>
        <router-link to="/" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
    </div>
    <div class="body">
        <div v-for="(item,i) of list" :key="i">
            <img :src="item.href" alt="">
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
</template>
<script>
export default {
  data() {
    return {
        list:[
            {
                href:require('../../assets/ImgDetail/2.jpg'),
                title:'桂林经典景点---两江四湖',
                span1:'0',
                span2:'131',
                date:'2019-6-1'
            },
            {
                href:require('../../assets/ImgDetail/10.jpg'),
                title:'桂林旅游景点刘三姐大观园',
                span1:'6',
                span2:'83',
                date:'2019-7-30'
            },
            {
                href:require('../../assets/ImgDetail/7.jpg'),
                title:'桂林象山五景点',
                span1:'1',
                span2:'37',
                date:'2019-5-1'
            },
            {
                href:require('../../assets/ImgDetail/9.jpg'),
                title:'桂林、阳朔景点',
                span1:'4',
                span2:'24',
                date:'2018-9-26'
            }
        ]
    };
  }
};
</script>
<style scoped>
.mint-header {
  height: 44px;
  background-image: url("../../assets/ImgDetail/spe01.png");
  background-size: 100%;
}
/* .mint-header-title{
    font-size: 20px !important;
} */
.body{
    background: #fff;
    margin-top: 44px;
}
img{
    width:100%;
}
.details{
    border-bottom: 2px solid #ddd;
    background: #fff;
    color:#333;
    padding-right: 10px;
    padding-left: 5px;
    
}
.details img{
    width:15px;
    vertical-align: middle;
    margin-left: 5px;
}
.details>p{
    margin-top: 10px;
}
.details ul{
    display: flex;
    justify-content: space-between;
    list-style: none;
    height: 30px;
    margin-top: 10px;
    color:#aaa;
    font-size: 12px;
}
</style>


