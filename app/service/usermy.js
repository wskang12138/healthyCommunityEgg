"use strict";

const Service = require("egg").Service;
var sd = require("silly-datetime");
var time = sd.format(new Date(), "YYYY-MM-DD HH:mm");

class UserMyService extends Service {
  //根据不同条件查询文章
  async queryUser(obj) {
    try {
      let sql = ` select username,user_id,age,sex,phone,sendEmail,address,community,borth,registerDate,qq,level,marriage,political,number,identity from user  where user_id=${obj.user_id} `;

      const result = await this.app.mysql.query(sql);
      return result[0];
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async findData(obj) {
    try {
      const result = await this.app.mysql.query(
        `select * from  heathy_data where cf_user_id =${obj.user_id}  order by time desc limit 1 `
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
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
module.exports = UserMyService;
