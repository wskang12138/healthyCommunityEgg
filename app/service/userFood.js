"use strict";

const Service = require("egg").Service;
let moment = require("moment");

class FoodService extends Service {
  //根据不同条件查询文章
  async findFood(obj) {
    let sql = `select * from food `;
    if (obj.bloean == 0) {
      obj.type ? (sql += ` where type=${obj.type} `) : "";
    } else {
      obj.type ? (sql += ` where type!=${obj.type}`) : "";
    }
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async foryouFood(obj) {
    try {
      const result = await this.app.mysql.query(
        `select * from history_diease where flage='否' and jw_user_id=${obj.user_id} order by q_time desc limit 1 `
      );
      if (result.length == 1) {
        let time = moment(result[0].q_time).format("YYYY-MM-DD hh:mm");
        const res = await this.app.mysql.query(
          `select food from  electron where b_user_id =${obj.user_id} and count_time='${time}'  order by count_time desc limit 1 `
        );
        //  console.log(res);
        if (res.length !== 0) {
          if (res[0].food.includes(",")) {
            return "除主食外";
          } else {
            if (res[0].food == "多吃蔬菜水果") {
              return 2;
            }
            if (res[0].food == "多吃肉蛋奶") {
              return 1;
            }
            if (res[0].food == null || res[0].food == "") {
              return "所有";
            }
          }
        } else {
          return "所有";
        }
      } else {
        return "暂无历史病历";
      }
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}
module.exports = FoodService;
