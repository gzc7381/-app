<template>
  <div>
    <div class="title">
      <mt-header title="确认订单">
        <router-link to="/" slot="left">
          <mt-button icon="back"></mt-button>
        </router-link>
      </mt-header>
    </div>
    <div class="body">
      <div class="addr" style="margin-top:30px;">
        <mt-cell title="收货地址" to="#" is-link></mt-cell>
        <mt-cell title="点击添加地址...">
          <span>
            <img src="../../assets/ImgDetail/phone.png" alt />
          </span>
          <img slot="icon" src="../../assets/ImgDetail/user.png" width="24" height="24" />
        </mt-cell>
      </div>
      <div class="shop">
        <div>
          <p>沁漓桂林特产专卖店</p>
          <div>
            <img src="../../assets/ImgDetail/01.png" alt />
            <div>
              <p>桂林 广西桂林特产 麻绳 桂花酒20度750ml桂花酒。。。</p>
              <p>
                <span>2</span>×
                <span>99</span>
              </p>
            </div>
          </div>
          <mt-cell title="商品价格" value="198"></mt-cell>
          <mt-cell title="优惠(无)" value></mt-cell>
          <mt-cell title="小计" value="198"></mt-cell>
          <mt-cell title="邮费" value="0"></mt-cell>
          <div class="pay" style="height:65px;">
            <div><p>支付方式</p></div>
            <div>
              <button class="btn">在线支付</button>
              <button class="btn">货到付款</button>
            </div>
          </div>
          <!-- <mt-cell title="支付方式:">
            <button class="btn">在线支付</button>
            <button class="btn">货到付款</button>
          </mt-cell> -->
          <mt-cell title="订单备注:请告诉卖家您对商品的特殊要求" to="#" is-link  ></mt-cell>
        </div>
      </div>
    </div>
    <div class="footer">
          <div>
            <p>总额198.00元</p>
          </div>
          <div style="height:60px;line-height:60px;">
            <mt-button type="danger" class="btns">确认订单</mt-button>
          </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {};
  }
};
</script>
<style scoped>

.pay>div>p{
  padding-top: 12px;
}
.footer {
  width: 100%;
  height: 58px;
  background: #fff;
  position: fixed;
  bottom: 0;
  display: flex;
  justify-content: space-between;
}
.footer > div > p {
  display: inline-block;
  margin-left: 20px;
}
.btns {
  margin-right: 15px;
  width: 92px;
  height: 34px;
  font-size: 12px;
}


.footer > div:first-child p {
  margin-top: 17px;
  color: #666;
  font-size: 14px;
}
.mint-header {
  height: 44px;
  background: #f8cc50;
}
.mint-cell {
  border-bottom: 1px solid #ddd;
}
.addr img {
  width: 24px;
}
.shop {
  margin-top: 30px;
}
.shop > div > p {
  padding: 10px;
  background: #f7f2f2;
  font-size: 14px;
  color: #666;
}
.shop > div > div {
  background: #fff;
  display: flex;
  border-bottom: 1px solid #ddd;
}
.shop > div > div > div {
  width: 65%;
  padding: 10px;
  color: #666;
}
.shop > div > div > div > p:first-child {
  width: 90%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  margin-bottom: 30px;
}
.shop > div img {
  padding: 20px;
  width: 50px;
  height: 50px;
}
.btn {
  width: 80px;
  height: 36px;
  margin: 5px;
  background: #fff;
  border-radius: 5px;
  border: 1px solid #ddd;
}
</style>

