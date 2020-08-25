//引入vue
import Vue from 'vue'
import Router from 'vue-router'
//自定义组件
// import HelloContainer from "./components/HelloWorld.vue"
// 1:引入Exam01.vue 组件
import index from "./components/Trv/index.vue"
import Detail from "./components/Trv/Detail.vue"
import search from "./components/Trv/search.vue"
import message from "./components/Trv/message.vue"
import shopCart from "./components/Trv/shopCart.vue"
import Kefu from "./components/Trv/kefu.vue"
import Special from "./components/Trv/Special.vue"
import Linkman from "./components/Trv/Linkman.vue"
import Headline from "./components/Trv/Headline.vue"
import Ordertickets from "./components/Trv/Ordertickets.vue"
import My from './components/Trv/My.vue'
import Login from './components/Trv/Login.vue'
import Reg from './components/Trv/Reg.vue'
import Reg2 from './components/Trv/Reg2.vue'
import Forget from './components/Trv/Forget.vue'
import Settings from './components/Trv/Settings.vue'
import Information from './components/Trv/Information.vue'
import Password from './components/Trv/Password.vue'
import Eact from "./components/Trv/Eact.vue"
import Hotel from "./components/Trv/Hotel.vue"
import HotelList from "./components/Trv/HotelList.vue"
import List from "./components/Trv/List.vue"
import Spots from "./components/Trv/Spots.vue"
import Strategy from "./components/Trv/Strategy.vue"
import Entranceticket from "./components/Trv/Entranceticket.vue"
import Homestay from "./components/Trv/Homestay.vue"
import order from "./components/Trv/Order.vue"
// import Eacttopic from "./components/Trv/EactTopic.vue"


Vue.use(Router)
//2.为Exam01.vue配置路径
export default new Router({

  routes: [
    { path: '/', component: index },
    { path: '/index', component: index },
    { path: '/Detail', component: Detail },
    { path: '/search', component: search },
    { path: '/message', component: message },
    { path: '/ShopCart', component: shopCart },
    { path: '/Kefu', component: Kefu },
    { path: '/Special', component: Special },
    { path: '/Linkman', component: Linkman },
    { path: '/Headline', component: Headline },
    { path: '/Ordertickets', component: Ordertickets },
    { path: '/my', component: My },
    {
      path: '/login',
      component: Login
    },
    {
      path: '/reg',
      component: Reg
    },
    {
      path: '/reg2',
      component: Reg2
    },
    {
      path: '/forget',
      component: Forget
    },
    {
      path: '/settings',
      component: Settings
    },
    {
      path: '/information',
      component: Information
    },
    {
      path: '/password',
      component: Password
    },
    { path: '/Eact', component: Eact },
    { path: '/Hotel', component: Hotel },
    { path: '/HotelList', component: HotelList },
    { path: '/List', component: List },
    { path: '/Spots', component: Spots },
    { path: '/Strategy', component: Strategy },
    { path: '/Entranceticket', component: Entranceticket },
    { path: '/Homestay', component: Homestay },
    { path: '/order', component: order },
    // { path: '/Eacttopic', component: Eacttopic },
  ]
})

