import Vue from 'vue'
import App from './App.vue'
import router from './router'
// import store from './store'

// 1.完整引入mint-ui库
import MintUI from 'mint-ui'

// 引入axios
import axios from 'axios'
// 引入vuex
import Vuex from 'vuex'
// 引入 MD5
import md5 from 'js-md5';
Vue.prototype.$md5 = md5
// 2.单独引入mint-ui样式
import 'mint-ui/lib/style.css'

import "./font/iconfont"

// 3.将mint-ui注册vue
Vue.use(MintUI)
// 注册vuex组件
Vue.use(Vuex)

axios.defaults.withCredentials = true
axios.defaults.baseURL = "http://127.0.0.1:888/"
Vue.prototype.axios = axios

Vue.config.productionTip = false


// 创建vuex实例 store
var store = new Vuex.Store({
  // vuex中全局共享数据
  state: {
    obj: {
      uname: ""
    }
  },
  // 修改vuex中全局共享数据
  mutations: {
    increment(state, obj) {
      state.obj = obj
    }
  },
  // 获取vuex中全局共享数据
  getters: {
    getobj: function (state) {
      return state.obj
    }
  }
})

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
