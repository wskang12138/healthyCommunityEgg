"use strict";

const Service = require("egg").Service;

class FoodService extends Service {
  //根据不同条件查询文章
  async findFood(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async deleteFood(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from  food where food_id in('${id}')`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async saveUpdateFood(obj) {
    const { app } = this;
    let sql = "";

    if (obj.food_id) {
      try {
        sql = `update food set name="${obj.name}",url='${obj.url}',description='${obj.description}',unit='${obj.unit}',type='${obj.type}',calorie='${obj.calorie}'   where food_id=${obj.food_id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入

      try {
        sql = `insert food (name,description,url,type,unit,calorie) value ('${obj.name}','${obj.description}','${obj.url}','${obj.type}','${obj.unit}','${obj.calorie}')`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }
}
module.exports = FoodService;
