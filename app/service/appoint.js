"use strict";

const Service = require("egg").Service;

class AppointService extends Service {
  //根据不同条件查询文章
  async findAppoint(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除运动
  async deleteAppoint(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from appoint where a_id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //根据条件总计总数
  async countAppoint(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //保存与插入
  async saveOrUpdateAppoint(obj) {
    const { app } = this;
    let sql;
    if (obj.a_id) {
      //id存在则是执行更新操作。
      try {
        sql = `update appoint set a_status="${obj.a_status}" where a_id=${obj.a_id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
}
module.exports = AppointService;
