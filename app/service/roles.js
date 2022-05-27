"use strict";

const Service = require("egg").Service;
var sd = require("silly-datetime");

class RolesService extends Service {
  //根据不同条件查询文章
  async findRoles(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async deleteRoles(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from roles where roles_id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //根据条件总计总数
  async countRoles(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //保存与插入
  async saveOrUpdateRoles(obj) {
    let time = sd.format(new Date(), "YYYY-MM-DD HH:mm");
    const { app } = this;
    let sql;
    if (obj.roles_id) {
      //id存在则是执行更新操作。
      try {
        sql = `update roles set rolesName="${obj.rolesName}" , description="${obj.description}",orders=${obj.orders} where roles_id=${obj.roles_id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入
      try {
        sql = `insert roles (rolesName, description,roles,orders,time,status) value ('${obj.rolesName}','${obj.description}',${obj.roles},${obj.orders},'${time}','正常')`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
}
module.exports = RolesService;
