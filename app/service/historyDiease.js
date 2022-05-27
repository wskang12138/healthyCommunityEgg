"use strict";

const Service = require("egg").Service;
let moment = require("moment");

class DieasehistoryService extends Service {
  //根据不同条件查询文章
  async queryDiease(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除
  async deleteElectron(obj) {
    try {
      const result = await this.app.mysql.query(
        `delete from electron where diease_name='${obj.diease_name}'  and count_time='${obj.count_time}'`
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
        `delete from history_diease where j_id in(${id})`
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
    const { app, ctx } = this;
    obj.z_time
      ? (obj.z_time = moment(obj.z_time).format("YYYY-MM-DD hh:mm"))
      : "";
    obj.q_time
      ? (obj.q_time = moment(obj.q_time).format("YYYY-MM-DD hh:mm"))
      : "";
    obj.allergen ? "" : (obj.allergen = "");
    if (obj.z_time == "" || obj.z_time == null || obj.z_time == undefined) {
      obj.z_time = "";
    }
    if (obj.flage == "否" && !obj.j_id) {
      await ctx.service.nowDiease.saveOrUpdateDiease(obj);
    }
    let sql;
    if (obj.j_id) {
      //id存在则是执行更新操作。
      try {
        if (obj.z_time == "") {
          sql = `update history_diease set jw_user_id="${obj.x_user_id}" , diease_name="${obj.diease_name}", q_time='${obj.q_time}',flage='${obj.flage}',disabled_orno='${obj.disabled_orno}',disabled_con='${obj.disabled_con}',allergen='${obj.allergen}' where j_id=${obj.j_id}`;
        } else {
          sql = `update history_diease set jw_user_id="${obj.x_user_id}" , diease_name="${obj.diease_name}",z_time='${obj.z_time}', q_time='${obj.q_time}',flage='${obj.flage}',disabled_orno='${obj.disabled_orno}',disabled_con='${obj.disabled_con}',allergen='${obj.allergen}' where j_id=${obj.j_id}`;
        }
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入
      obj.disabled_con
        ? (obj.disabled_con = obj.disabled_con)
        : (obj.disabled_con = "");

      try {
        if (obj.z_time) {
          sql = `insert history_diease (jw_user_id, diease_name,flage,q_time,z_time,disabled_orno,disabled_con,allergen) value ('${obj.x_user_id}','${obj.diease_name}','${obj.flage}','${obj.q_time}','${obj.z_time}','${obj.disabled_orno}','${obj.disabled_con}','${obj.allergen}')`;
        } else {
          sql = `insert history_diease (jw_user_id, diease_name,flage,q_time,disabled_orno,disabled_con,allergen) value ('${obj.x_user_id}','${obj.diease_name}','${obj.flage}','${obj.q_time}','${obj.disabled_orno}','${obj.disabled_con}','${obj.allergen}')`;
        }

        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
}
module.exports = DieasehistoryService;
