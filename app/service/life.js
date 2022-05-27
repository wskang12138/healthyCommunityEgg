"use strict";

const Service = require("egg").Service;

class LifeService extends Service {
  //根据不同条件查询文章
  async queryLife(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除
  async deleteLife(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from Life where l_id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async exist(l_user_id) {
    try {
      const result = await this.app.mysql.query(
        `select count(*) as total from life where l_user_id='${l_user_id}'`
      );
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //根据条件总计总数
  async countLife(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //保存与插入
  async saveOrUpdateLife(obj) {
    const { app } = this;
    let sql;
    if (obj.l_id) {
      //id存在则是执行更新操作。
      try {
        sql = `update life set l_user_id="${obj.l_user_id}" , physical="${obj.physical}",exercise='${obj.exercise}',dietary='${obj.dietary}',time='${obj.time}',sleep='${obj.sleep}',smoking='${obj.smoking}',drinking='${obj.drinking}'  where l_id=${obj.l_id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入

      try {
        sql = `insert life (l_user_id,physical,exercise,dietary,sleep,smoking,drinking,time) value ('${obj.l_user_id}','${obj.physical}','${obj.exercise}','${obj.dietary}','${obj.sleep}','${obj.smoking}','${obj.drinking}','${obj.time}')`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
  async addSimCard(result) {
    const values = []; //[ [1,'张三','13519105845',...] ,[],[]...    ]
    result.forEach((item) => {
      let _arr = [];
      _arr[0] = item["用户编号"];
      _arr[1] = item["体育锻炼"];
      _arr[2] = item["锻炼时间"];
      _arr[3] = item["饮食爱好"];
      _arr[4] = item["睡眠情况"];
      _arr[5] = item["吸烟情况"];
      _arr[6] = item["喝酒情况"];
      _arr[7] = item["记录时间"];

      values.push(_arr);
    });
    // 重点sql语句
    const addSql =
      "INSERT INTO life (l_user_id,physical,exercise,dietary,sleep,smoking,drinking,time) VALUES ?";
    const res = await this.app.mysql.query(addSql, [values]);
    return res;
  }
}
module.exports = LifeService;
