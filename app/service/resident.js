"use strict";

const Service = require("egg").Service;
var sd = require("silly-datetime");

class ResidentService extends Service {
  //根据不同条件查询文章
  async queryResident(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除
  async deleteResident(id) {
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
  async countResident(sql) {
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async exist(phone) {
    try {
      const result = await this.app.mysql.query(
        `select count(*) as total from user where account='${phone}'`
      );
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //保存与插入
  async saveOrUpdateResident(obj) {
    const { app } = this;
    let time = sd.format(new Date(), "YYYY-MM-DD HH:mm");

    obj.qq ? "" : (obj.spygmus = "");
    obj.number ? "" : (obj.number = "");
    obj.sendEmail ? "" : (obj.sendEmail = "");
    let sql = "";
    if (obj.user_id) {
      //id存在则是执行更新操作。
      try {
        sql = `update user set user_id="${obj.user_id}" , username="${obj.username}",age='${obj.age}',sex='${obj.sex}',phone='${obj.phone}',borth='${obj.borth}',address='${obj.address}',qq='${obj.qq}',level='${obj.level}',marriage='${obj.marriage}',sendEmail='${obj.sendEmail}',political='${obj.political}',number='${obj.number}',identity='${obj.identity}',community='健康社区'  where user_id=${obj.user_id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入

      try {
        sql = `insert user (account,username,password,sex,age,phone,sendEmail,address,community,borth,registerDate,qq,level,marriage,political,number,identity,r_id ) value ('${obj.account}','${obj.username}','${obj.password}','${obj.sex}','${obj.age}','${obj.phone}','${obj.sendEmail}','${obj.address}','健康社区','${obj.borth}','${time}','${obj.qq}','${obj.level}','${obj.marriage}','${obj.political}','${obj.number}','${obj.identity}','10')`;
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
      _arr[0] = item["姓名"];
      _arr[1] = item["出生日期"];
      _arr[2] = item["性别"];
      _arr[3] = item["电话"];
      _arr[4] = item["地址"];
      _arr[5] = item["电子邮件"];
      _arr[6] = item["qq号"];
      _arr[7] = item["文化水平"];
      _arr[8] = item["是否已婚"];
      _arr[9] = item["政治面貌"];
      _arr[10] = item["门牌号"];
      _arr[11] = item["身份证号"];
      _arr[12] = item["account"];
      _arr[13] = item["password"];
      _arr[14] = item["age"];
      _arr[15] = item["社区"];
      _arr[16] = item["r_id"];
      values.push(_arr);
    });
    // 重点sql语句
    const addSql =
      "INSERT INTO user (username,borth,sex,phone,address,sendEmail,qq,level,marriage,political,number,identity,account,password,age,community,r_id) VALUES ?";
    const res = await this.app.mysql.query(addSql, [values]);
    return res;
  }
}
module.exports = ResidentService;
