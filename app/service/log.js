"use strict";

const Service = require("egg").Service;

class LogService extends Service {
  async queryLog(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除
  async deleteLog(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from log where log_id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //根据条件总计总数
  async countLog(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //保存与插入
  async saveLog(obj) {
    const { app } = this;
    try {
      let sql = `insert log (ip,method,username,url,by_time) value ('${obj.ip}','${obj.method}','${obj.username}','${obj.url}','${obj.by_time}')`;
      const res = await app.mysql.query(sql);
      return res;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}
module.exports = LogService;
