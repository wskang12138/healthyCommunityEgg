"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class ElectronController extends Controller {
  async queryElectron() {
    const { ctx } = this;
    let obj = ctx.query;
    let sql1 = `select count(*) as total from appoint,user where a_user_id=user_id and DATEDIFF(b_time,now())=0 `;
    if (obj.roles_id == 1) {
      sql1 += ` and doctor='${obj.doctor}' `;
    }
    obj.username ? (sql1 += ` and username like '%${obj.username}%' `) : "";
    obj.phone ? (sql1 += ` and phone like '%${obj.phone}%'`) : "";
    obj.a_status ? (sql1 += ` and a_status like '%${obj.a_status}%'`) : "";

    let total = await ctx.service.electron.countElectron(sql1);

    let sql = "";
    if (obj.roles_id == 1) {
      sql = `select username,a_id,sex,age,phone,identity,a_time,b_time,a_status,a_user_id,cno,doctor from appoint,user where a_user_id=user_id and doctor='${obj.doctor}' and DATEDIFF(b_time,now())=0`;
    } else {
      sql = `select username,a_id,sex,age,phone,identity,a_time,b_time,a_user_id,a_status,cno,doctor from appoint,user where a_user_id=user_id and DATEDIFF(b_time,now())=0`;
    }
    obj.username ? (sql += ` and username like '%${obj.username}%' `) : "";
    obj.phone ? (sql += ` and phone like '%${obj.phone}%'`) : "";
    obj.a_status ? (sql += ` and a_status like '%${obj.a_status}%'`) : "";

    sql += ` order by cno asc `;
    const res = await ctx.service.electron.queryElectron(sql);

    if (res) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", res, 200),
        total: total,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }

  async saveOrUpdateElectron() {
    const { ctx } = this;
    const obj = ctx.request.body;
    obj.count_time
      ? (obj.count_time = moment(obj.q_time).format("YYYY-MM-DD hh:mm"))
      : "";
    const res = await ctx.service.electron.saveOrUpdateElectron(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
  async findPeple(obj) {
    const { ctx } = this;
    let id = ctx.query.user_id;
    const user = await ctx.service.electron.findUser(id);
    const heathy = await ctx.service.electron.findHeathy(id);
    const life = await ctx.service.electron.findLife(id);
    const diease = await ctx.service.electron.findDiease(id);
    const familyDiease = await ctx.service.electron.familyDiease(id);
    const electron = await ctx.service.electron.findElectron(id);
    const medicine = await ctx.service.electron.findMedicine();

    if (user) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", user, 200),
        heathy: heathy,
        life: life,
        diease: diease,
        familyDiease: familyDiease,
        electron: electron,
        medicine: medicine,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
}

module.exports = ElectronController;
