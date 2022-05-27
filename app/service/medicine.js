"use strict";

const Service = require("egg").Service;

class MedicineService extends Service {
  //根据不同条件查询文章
  async findMedicine(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async deleteMedicine(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from  medicine where id in('${id}')`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async saveUpdateMedicine(obj) {
    const { app } = this;
    let sql = "";
    obj.url ? "" : (obj.url = "");

    if (obj.id) {
      try {
        sql = `update medicine set medicine_name="${obj.medicine_name}",url='${obj.url}',scale='${obj.scale}',batch_num='${obj.batch_num}',approval_num='${obj.approval_num}',effects='${obj.effects}',consumption='${obj.consumption}'   where id=${obj.id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入
      try {
        sql = `insert medicine (medicine_name,scale,batch_num,approval_num,effects,consumption,url) value ('${obj.medicine_name}','${obj.scale}','${obj.batch_num}','${obj.approval_num}','${obj.effects}','${obj.consumption}','${obj.url}')`;
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
      _arr[0] = item["药品名称"];
      _arr[1] = item["批准文号"];
      _arr[2] = item["批次号"];
      _arr[3] = item["规格"];
      _arr[4] = item["用法用量"];
      _arr[5] = item["药品疗效"];
      _arr[6] = item["图片路劲"];
      values.push(_arr);
    });
    // 重点sql语句
    const addSql =
      "INSERT INTO medicine (medicine_name,approval_num,batch_num,scale,consumption,effects,url) VALUES ?";
    const res = await this.app.mysql.query(addSql, [values]);
    return res;
  }
}
module.exports = MedicineService;
