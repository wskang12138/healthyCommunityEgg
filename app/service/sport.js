"use strict";

const Service = require("egg").Service;

class SportService extends Service {
  //根据不同条件查询文章
  async findSport(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除运动
  async deleteSport(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from sport where sport_id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //根据条件总计总数
  async countSport(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async saveUpdateSport(obj) {
    const { app } = this;
    let sql = "";

    if (obj.sport_id) {
      try {
        sql = `update sport set sport_id="${obj.sport_id}" , name="${obj.name}",time='${obj.time}',description='${obj.description}',per='${obj.per}',type='${obj.type}',groupes='${obj.groupes}',suit='${obj.suit}',video='${obj.video}',effect='${obj.effect}'  where sport_id=${obj.sport_id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入

      try {
        sql = `insert sport (name,time,description,per,type,groupes,suit,video,effect ) value ('${obj.name}',${obj.time},'${obj.description}','${obj.per}','${obj.type}',${obj.groupes},'${obj.suit}','${obj.video}','${obj.effect}')`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
}
module.exports = SportService;
