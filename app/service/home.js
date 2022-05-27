"use strict";

const Service = require("egg").Service;

class HomeService extends Service {
  async index() {
    const { app } = this;
    const arr = [];
    for (let i = 6; i >= 0; i--) {
      const check = await app.mysql.query(
        `select count(*) as total from appoint where  DATEDIFF(now(),b_time)=${i} `
      );
      const [{ total }] = check;
      if (i == 0) {
        arr.push({
          type: "今天",
          value: Number(total),
        });
      } else {
        arr.push({
          type: "距离今天" + i + "天",
          value: Number(total),
        });
      }
    }
    return arr;
  }
  async count() {
    const { app } = this;
    let arr = [];
    let res = await app.mysql.query(
      `select count(distinct x_user_id) as total from now_disase `
    );
    const [{ total }] = res;
    arr.push({
      text: "现患病总人数",
      total: total,
    });
    let temp = await app.mysql.query(`select count(*) as total1 from user `);
    const [{ total1 }] = temp;
    arr.push({
      text: "社区总人数",
      total: total1,
    });
    let temp1 = await app.mysql.query(
      `select count(*) as total2 from history_diease where flage="是" `
    );
    const [{ total2 }] = temp1;
    arr.push({
      text: "治愈总次数",
      total: total2,
    });
    let temp3 = await app.mysql.query(`select count(*) as total3 from appoint`);
    const [{ total3 }] = temp3;
    arr.push({
      text: "预约总条数",
      total: total3,
    });
    return arr;
  }
  async people() {
    const { app } = this;
    let arr = [];
    let temp = ["未成年人", "青年人", "中年人", "老年人"];
    let [{ total1 }] = await app.mysql.query(
      `select count(*) as total1 from user where age>0 and age<=17 `
    );
    let [{ total2 }] = await app.mysql.query(
      `select count(*) as total2 from user where age>=18 and age<=44 `
    );
    let [{ total3 }] = await app.mysql.query(
      `select count(*) as total3 from user where age>=45 and age<=59`
    );
    let [{ total4 }] = await app.mysql.query(
      `select count(*) as total4 from user where age>=60 `
    );
    arr.push({
      type: temp[0],
      value: total1,
    });
    arr.push({
      type: temp[1],
      value: total2,
    });
    arr.push({
      type: temp[2],
      value: total3,
    });
    arr.push({
      type: temp[3],
      value: total4,
    });

    return arr;
  }
}

module.exports = HomeService;
