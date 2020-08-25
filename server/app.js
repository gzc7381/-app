// 1.1引入第三方模块
const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const session = require('express-session');
// 2.配置第三方模块
// 2.1配置连接池
var pool = mysql.createPool({
    host: "127.0.0.1",
    user: "root",
    password: "",
    port: 3306,
    database: "trv",
    connectionLimit: 15
})
// 2.2跨域
var server = express();
server.use(cors({
    origin: ['http://127.0.0.1:8080', 'http://localhost:8080'],
    credentials: true
}));
// 2.3:session
server.use(session({
    secret: "128位字符串",
    resave: true,
    saveUninitialized: true
}));
server.use(express.static("public"))
server.listen(888);
console.log('888')
// 登录
server.get("/login", (req, res) => {
    // 1.参数
    var phone = req.query.phone;
    var upwd = req.query.upwd;
    // 1.1:正则表达式验证用户名
    var sql = `SELECT uid,uname,email,phone,upwd FROM trv_user WHERE phone='${phone}' AND upwd=md5('${upwd}')`;
    // 3.json
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        if (result.length == 0) {
            res.send({
                code: -1,
                msg: "用户名或密码错误"
            });
        } else {
            // 将当前登录用户的uid保存到session对象
            req.session.uid = result[0].uid;
            // console.log(req.session.uid);
            res.send({
                code: 1,
                obj: result[0],
                msg: "登录成功"
            });
        }
    });
});
server.get("/reg", (req, res) => {
    // 1.参数
    var phone = req.query.phone;
    var upwd = req.query.upwd;
    var email = req.query.email;
    var uname = req.query.uname;
    // 1.1:正则表达式验证用户名
    // 2.sql
    var sql = `INSERT INTO trv_user(uname,upwd,email,phone) VALUES('${uname}',md5('${upwd}'),'${email}','${phone}')`;
    pool.query(sql, (err, result) => {
        if (err) {
            throw err;
        }
        if (result.affectedRows > 0) {
            res.send({
                code: 1,
                msg: "注册成功"
            });
        } else {
            res.send({
                code: -1,
                msg: "注册失败"
            });
        }
    });
});

// 首页
server.get("/index", (req, res) => {
    var obj = req.query;
    var sql = 'SELECT * FROM trv_list';
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result)
    })
})

// 吃在桂林列表
server.get("/Eact", (req, res) => {
    //-参数
    var pno = req.query.pno;
    var ps = req.query.pageSize;
    // -设置默认值
    if (!pno) { pno = 1 }
    if (!ps) { ps = 6 }
    //-创建第一条 sql语句 当前页
    var obj = { code: 1, msg: "查询成功" };
    var sql = "SELECT eid,eact_msg";
    sql += " ,title,img_url,eact_eye";
    sql += " FROM trv_eact";
    sql += " LIMIT ?,?";
    var off = (pno - 1) * ps;
    ps = parseInt(ps);
    pool.query(sql, [off, ps], (err, result) => {
        if (err) throw err;
        obj.data = result;
        // console.log(obj);
        var sql = "SELECT count(*) AS c FROM trv_eact";
        pool.query(sql, (err, result) => {
            if (err) throw err;
            // console.log(result)
            //result[{c:43}]
            var pc = Math.ceil(result[0].c / ps);
            obj.pc = pc;
            res.send(obj);
        })
    });
});
// eact评论详情页面
server.get("/Eacttopic", (req, res) => {
    // 参数
    var did = req.query.did;
    if (!did) {
        res.send({ code: 1, msg: "查询成功" })
    }
    var sql = "SELECT * FROM trv_eact_details where did=?";
    pool.query(sql, [did], (err, result) => {
        if (err) throw err;
        console.log(result);
        res.send(result);
    })
})
// spe商品列表列表
server.get("/List", (req, res) => {
    //-参数
    var obj = req.query;
    if (!obj) {
        res.send({ code: 1, msg: "查询成功" })
    }
    var sql = "SELECT * FROM trv_spe_list";
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    })
});

// 商品详情
server.get("/detail", (req, res) => {
    var lid = req.query.lid
    var sql = "select * from trv_details where eid=?";
    pool.query(sql, [lid], (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})
// 查询购物车
server.get("/selectCart", (req, res) => {
    var uid = req.session.uid;
    if (!uid) {
        res.send({ code: -1, msg: "亲,你的购物车为空" })
        return;
    }
    var sql = `SELECT * FROM trv_cart WHERE eid=${uid}`
    pool.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    })
})

// app.js加入购物车
server.get("/shopcart", (req, res) => {
    var obj = req.query;
    var bid = req.query.aid;
    // console.log(Object.keys(obj).length == 0)
    var uid = req.session.uid;
    obj.eid = uid;
    if (!uid) {
        res.send({ code: -1, msg: '请登录...' })
        return
    }
    var sql = `select * from trv_cart where eid=${uid} and aid=${bid}`
    pool.query(sql, (err, result) => {
        console.log(result)
        if (err) throw err;
        if (result.length > 0) {
            var count = result[0].count + 1
            console.log(count)
            var sql = `UPDATE trv_cart SET count=${count} WHERE aid=${bid}`
            pool.query(sql, [obj], (err, result) => {
                if (err) { throw err }
                if (result.affectedRows > 0) {
                    res.send({
                        code: 1, msg: "修改成功"
                    })
                } else {
                    res.send({ code: -1, msg: "修改失败" })
                }
            })
        } else {
            var sql = `INSERT INTO trv_cart SET ?`
            pool.query(sql, [obj], (err, result) => {
                if (err) { throw err }
                console.log(123)
                if (result.affectedRows > 0) {
                    res.send({
                        code: 1, msg: "插入成功"
                    })
                } else {
                    res.send({ code: -1, msg: "插入失败" })
                }
            })
        }
    })
})
// 删除购物车指定商品
server.get('/deleteShop', (req, res) => {
    var cid = req.query.cid;
    if (!cid) {
        res.send({ code: 1, msg: '没有删除的商品' })
    }
    var sql = `DELETE FROM trv_cart WHERE cid=${cid}`
    pool.query(sql, (err, reuslt) => {
        if (err) throw err
        if (result.affectedRows > 0) {
            res.send({ code: 1, msg: '删除成功' })
        } else {
            res.send({ code: -1, msg: '删除失败' })
        }
    })
})



