"use strict";

const Service = require("egg").Service;
let moment = require("moment");

class DieaseService extends Service {
  //根据不同条件查询文章
  async findDiease(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //更新历史疾病
  async updateHistory(obj) {
    try {
      let time = moment().format("YYYY-MM-DD HH:mm");
      const result = await this.app.mysql.query(
        `update history_diease set flage='是',z_time='${time}'  where diease_name='${obj.diease_name}' and q_time='${obj.q_time}'`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async deleteDiease(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from now_disase where now_id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //根据条件总计总数
  async countDiease(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async findUser() {
    try {
      const result = await this.app.mysql.query(
        "select DISTINCT user_id,username from user"
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //保存与插入
  async saveOrUpdateDiease(obj) {
    const { app } = this;
    let sql;
    if (obj.now_id) {
      //id存在则是执行更新操作。
      try {
        sql = `update now_disase set x_user_id="${obj.x_user_id}" , diease_name="${obj.diease_name}",q_time='${obj.q_time}' where now_id=${obj.now_id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入
      try {
        sql = `insert now_disase (x_user_id, diease_name,q_time) value ('${obj.x_user_id}','${obj.diease_name}','${obj.q_time}')`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
}
module.exports = DieaseService;
