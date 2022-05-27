"use strict";

const Service = require("egg").Service;

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
  //删除运动
  async deleteDiease(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from familydiease where fid in(${id})`
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

  //保存与插入
  async saveOrUpdateDiease(obj) {
    const { app } = this;
    let sql;
    if (obj.fid) {
      //id存在则是执行更新操作。
      try {
        sql = `update familydiease set f_user_id="${obj.f_user_id}" , diease_name="${obj.diease_name}",beifen='${obj.beifen}' where fid=${obj.fid}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入
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
}
module.exports = DieaseService;
