"use strict";

const Service = require("egg").Service;
let moment = require("moment");

class SportService extends Service {
  //根据不同条件查询文章
  async findSport(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async foryouSport(obj) {
    try {
      const result = await this.app.mysql.query(
        `select * from history_diease where flage='否' and jw_user_id=${obj.user_id} order by q_time desc limit 1 `
      );
      if (result.length == 1) {
        let time = moment(result[0].q_time).format("YYYY-MM-DD hh:mm");
        const res = await this.app.mysql.query(
          `select sport from  electron where b_user_id =${obj.user_id} and count_time='${time}'  order by count_time desc limit 1 `
        );
        if (res.length !== 0) {
          return res[0].sport;
        } else {
          return "暂无历史病历";
        }
      } else {
        return "暂无历史病历";
      }
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async age(obj) {
    try {
      const result = await this.app.mysql.query(
        `select age from user where user_id=${obj.user_id}`
      );
      return result[0].age;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}
module.exports = SportService;
