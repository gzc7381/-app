//vue_app_00/src/axios.js
//将引入axios库单独保存一个文件中
//减少main.js代码量
//1.引入vue实例
import Vue from 'vue'
//2.引入axios库
import axios from 'axios'
//3.请求时保存session
axios.defaults.withCredentials=true;
//4.设置请求基础路径
axios.defaults.baseURL="http://127.0.0.1:888"
//5.将axios注册vue实例
Vue.prototype.axios=axios;//强行添加到原型对象中
//6.在main.js引入axios.js文件
