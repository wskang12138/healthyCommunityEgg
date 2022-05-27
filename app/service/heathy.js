"use strict";

const Service = require("egg").Service;

class HeathyService extends Service {
  //根据不同条件查询文章
  async queryHeathy(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除

  async deleteHeathy(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from heathy_data where hid in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //根据条件总计总数
  async countHeathy(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //保存与插入
  async saveOrUpdateHeathy(obj) {
    const { app } = this;
    let sql;
    let data = [];
    let BMI = (Number(obj.weight) * 10000) / Number(obj.height) ** 2;
    obj.BMI = BMI.toFixed(1);
    if (Number(BMI) >= 25) {
      data.push("偏胖");
    }
    if (Number(BMI) <= 18.4) {
      data.push("偏瘦");
    }
    if (Number(obj.temperature) > 37.2 && Number(obj.temperature) <= 38.5) {
      data.push("低烧");
    }
    if (Number(obj.temperature) > 38.5) {
      data.push("高烧");
    }
    if (
      obj.blodpres_shrink &&
      obj.blodpres_relax &&
      obj.blodpres_shrink <= 90 &&
      obj.blodpres_relax <= 60
    ) {
      data.push("低血压");
    }
    if (
      obj.blodpres_shrink &&
      obj.blodpres_relax &&
      obj.blodpres_shrink >= 140 &&
      obj.blodpres_relax >= 90
    ) {
      data.push("高血压");
    }
    if (obj.spygmus) {
      if (Number(obj.spygmus) > 100) {
        data.push("心率过高");
      }
    }
    if (data.length == 0) {
      data.push("正常");
    }
    obj.status = data.join(",");

    obj.spygmus ? "" : (obj.spygmus = "");
    obj.oxygen ? "" : (obj.oxygen = "");

    if (obj.hid) {
      //id存在则是执行更新操作。
      try {
        sql = `update heathy_data set cf_user_id="${obj.cf_user_id}" , height="${obj.height}",weight='${obj.weight}',blodpres_relax='${obj.blodpres_relax}',time='${obj.time}',blodpres_shrink='${obj.blodpres_shrink}',oxygen='${obj.oxygen}',spygmus='${obj.spygmus}',temperature='${obj.temperature}',status='${obj.status}',blood='${obj.blood}',BMI='${obj.BMI}'  where hid=${obj.hid}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入

      try {
        sql = `insert heathy_data (cf_user_id,height,weight,blodpres_relax,blodpres_shrink,oxygen,spygmus,temperature,status,blood,BMI,time) value ('${obj.cf_user_id}','${obj.height}','${obj.weight}','${obj.blodpres_relax}','${obj.blodpres_shrink}','${obj.oxygen}','${obj.spygmus}','${obj.temperature}','${obj.status}','${obj.blood}','${obj.BMI}','${obj.time}')`;
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
      _arr[1] = item["身高(cm)"];
      _arr[2] = item["体重(kg)"];
      _arr[3] = item["收缩压(mmHg)"];
      _arr[4] = item["舒张压(mmHg)"];
      _arr[5] = item["血氧值(%)"];
      _arr[6] = item["脉搏(分/次)"];
      _arr[7] = item["体温(.C)"];
      _arr[8] = item["指数"];
      _arr[9] = item["血型"];
      _arr[10] = item["健康状态"];
      _arr[11] = item["记录时间"];

      values.push(_arr);
    });
    // 重点sql语句
    const addSql =
      "INSERT INTO heathy_data (cf_user_id,height,weight,blodpres_shrink,blodpres_relax,oxygen,spygmus,temperature,BMI,blood,status,time) VALUES ?";
    const res = await this.app.mysql.query(addSql, [values]);
    return res;
  }
}
module.exports = HeathyService;
