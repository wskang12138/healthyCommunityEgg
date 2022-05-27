"use strict";

const Service = require("egg").Service;
let moment = require("moment");

class StoreService extends Service {
  //根据不同条件查询文章
  async findStore(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async deleteStore(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from store where id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async updateNum(obj) {
    try {
      let sql = `update store set num=num-1 where id in(${obj.ids})`;
      const res = await this.app.mysql.query(sql);
      return res;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //根据条件总计总数
  async countStore(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async findName() {
    try {
      const result = await this.app.mysql.query(
        "select DISTINCT id,medicine_name from medicine"
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async find(obj) {
    try {
      const result = await this.app.mysql.query(
        `select count(*) as total from store where m_id='${obj.m_id}'`
      );
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //保存与插入
  async saveOrUpdateStore(obj) {
    const { app } = this;
    let time = moment().format("YYYY-MM-DD HH:mm");
    let sql;
    if (obj.id) {
      //id存在则是执行更新操作。
      try {
        sql = `update store set m_id="${obj.m_id}" , num="${obj.num}",position='${obj.position}' where id=${obj.id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入
      try {
        sql = `insert store (m_id,num,position,entry_time) value ('${obj.m_id}','${obj.num}','${obj.position}','${time}')`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
}
module.exports = StoreService;
