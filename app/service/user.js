"use strict";

const Service = require("egg").Service;
var sd = require("silly-datetime");

class UserService extends Service {
  //根据不同条件查询文章
  async queryUser(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除
  async deleteUser(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from user where user_id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //根据条件总计总数
  async countUser(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async findRoles() {
    try {
      const result = await this.app.mysql.query(
        "select DISTINCT roles_id,rolesName from roles"
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async exist(account) {
    try {
      const result = await this.app.mysql.query(
        `select count(*) as total from user where account='${account}'`
      );
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //保存与插入
  async saveOrUpdateUser(obj) {
    const { ctx, app } = this;
    let sql;
    if (obj.user_id) {
      //id存在则是执行更新操作。
      try {
        sql = `update user set r_id="${obj.r_id}" , username="${obj.username}",account='${obj.account}',phone='${obj.phone}' where user_id=${obj.user_id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入
      let password = await ctx.helper.genPassword(obj.password);
      let time = sd.format(new Date(), "YYYY-MM-DD HH:mm");
      try {
        sql = `insert user (r_id, username,account,password,phone,registerDate) value ('${obj.r_id}','${obj.username}','${obj.account}','${password}','${obj.phone}','${time}')`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
  async statusChange(obj) {
    try {
      const result = await this.app.mysql.query(
        `update roles set status='${obj.status}' where roles_id=${obj.roles_id}`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async passwordChang(obj) {
    const { ctx } = this;
    let password = await ctx.helper.genPassword(obj.password);
    try {
      const result = await this.app.mysql.query(
        `update user set password='${password}' where user_id=${obj.user_id}`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async findPeople(id) {
    try {
      const result = await this.app.mysql.query(
        `select username,sex,age,phone,address,account,avatar,registerDate,status,rolesName,user_id from user,roles where user_id=${id} and r_id=roles_id`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async changeImge(obj) {
    try {
      const result = await this.app.mysql.query(
        `update user set avatar='${obj.avater}' where user_id='${obj.user_id}'`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async updatePeople(obj) {
    try {
      const result = await this.app.mysql.query(
        `update user set username='${obj.username}',sex='${obj.sex}',phone='${obj.phone}' where user_id='${obj.user_id}'`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}
module.exports = UserService;
