"use strict";

const Service = require("egg").Service;

class ElectronService extends Service {
  //根据不同条件查询文章
  async queryElectron(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //根据条件总计总数
  async countElectron(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //保存与插入
  async saveOrUpdateElectron(obj) {
    const { app, ctx } = this;
    obj.allergen ? "" : (obj.allergen = "");
    obj.suggestion ? "" : (obj.suggestion = "");
    obj.sport ? "" : (obj.sport = "");
    obj.food ? "" : (obj.food = "");
    await ctx.service.historyDiease.saveOrUpdateDiease(obj);
    await ctx.service.appoint.saveOrUpdateAppoint(obj);
    obj.ids ? await ctx.service.store.updateNum(obj) : "";
    let sql;
    try {
      sql = `insert electron (b_user_id,diease_name,description,content_count,count_time,suggestion,sport,food) value ('${obj.b_user_id}','${obj.diease_name}','${obj.description}','${obj.content_count}','${obj.q_time}','${obj.suggestion}','${obj.sport}','${obj.food}')`;
      const res = await app.mysql.query(sql);
      return res;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async findUser(id) {
    try {
      const result = await this.app.mysql.query(
        ` select username,user_id,age,sex,phone,sendEmail,address,community,borth,registerDate,qq,level,marriage,political,number,identity from user where user_id=${id} `
      );
      return result[0];
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async findHeathy(id) {
    try {
      const result = await this.app.mysql.select("heathy_data", {
        // 搜索 post 表
        where: { cf_user_id: id }, // WHERE 条件
        orders: [["time", "desc"]], // 排序方式
        limit: 1, // 返回数据量
        offset: 0, // 数据偏移量
      });
      return result[0];
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async findLife(id) {
    try {
      const result = await this.app.mysql.select("life", {
        // 搜索 post 表
        where: { l_user_id: id }, // WHERE 条件
        orders: [["time", "desc"]], // 排序方式
        limit: 1, // 返回数据量
        offset: 0, // 数据偏移量
      });
      return result[0];
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async findDiease(id) {
    try {
      const result = await this.app.mysql.query(
        ` select diease_name,flage,q_time,z_time,allergen,disabled_orno,disabled_con,j_id from history_diease where jw_user_id=${id}`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async familyDiease(id) {
    try {
      const result = await this.app.mysql.query(
        `select fid,diease_name,beifen from familydiease where f_user_id=${id}`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async findElectron(id) {
    try {
      const result = await this.app.mysql.select("electron", {
        where: { b_user_id: id },
      });
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async findMedicine() {
    try {
      const result = await this.app.mysql.query(
        `select medicine_name,effects,scale,consumption, num,store.id as id from medicine,store where medicine.id=m_id`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}
module.exports = ElectronService;
