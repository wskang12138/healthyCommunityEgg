"use strict";

const Service = require("egg").Service;

class AppointService extends Service {
  //根据不同条件查询文章
  async findAppoint(obj) {
    try {
      const result = await this.app.mysql.select("appoint", {
        where: { a_user_id: obj.user_id },
      });
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async panAppoint(obj) {
    try {
      const [{ tatol }] = await this.app.mysql.query(
        `SELECT count(*) as tatol from appoint WHERE  a_status='待处理' and DATEDIFF(b_time,now())=${obj.time}   and a_user_id=${obj.user_id} `
      );
      return tatol;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async updateStatusAppoint(obj) {
    try {
      const res = await this.app.mysql.query(
        `update appoint set a_status='${obj.a_status}'  where a_id=${obj.a_id} `
      );
      return res;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async findDoctor() {
    try {
      const result = await this.app.mysql.query(
        "select rolesName,description,user_id,r_id,avatar from user,roles where r_id=roles_id and roles.roles=1"
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async findRank(obj) {
    try {
      const result = await this.app.mysql.query(
        `SELECT doctor, max(cno)as ranks from appoint WHERE  DATEDIFF(b_time,now())=${obj.time}  and doctor GROUP BY doctor `
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async container(obj) {
    try {
      const result = await this.app.mysql.query(
        `SELECT doctor, count(*) as container from appoint WHERE  a_status!='取消' and  DATEDIFF(b_time,now())=${obj.time}  and doctor GROUP BY doctor `
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async countTime(obj) {
    try {
      const result = await this.app.mysql.query(
        `select count(*)as date1 from appoint where DATE_FORMAT(b_time,'%H:%i') BETWEEN '${obj.start}' and '${obj.end}' and  DATEDIFF(b_time,now())=${obj.time} and a_status!='取消'  and doctor=${obj.doctor} `
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  async deleteAppoint(id) {
    try {
      const result = await this.app.mysql.query(
        `delete from appoint where a_id in(${id})`
      );
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //保存与插入
  async saveAppoint(obj) {
    const { app } = this;
    let sql;
    try {
      sql = `insert appoint (a_user_id,a_time,b_time,a_status,cno,doctor) value ('${obj.a_user_id}','${obj.a_time}','${obj.b_time}','${obj.a_status}','${obj.cno}','${obj.doctor}')`;
      const res = await app.mysql.query(sql);
      return res;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}
module.exports = AppointService;
