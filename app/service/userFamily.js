"use strict";

const Service = require("egg").Service;

class DieaseService extends Service {
  //根据不同条件查询文章
  async findDiease(obj) {
    try {
      const result = await this.app.mysql.query(
        `select *  from familydiease where f_user_id = ${obj.user_id}`
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
    try {
      sql = `insert familydiease  (f_user_id, diease_name,beifen) value ('${obj.f_user_id}','${obj.diease_name}','${obj.beifen}')`;
      const res = await app.mysql.query(sql);
      return res;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}
module.exports = DieaseService;
