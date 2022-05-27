"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class AppointController extends Controller {
  async findAppoint() {
    const { ctx } = this;
    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from appoint,user where a_user_id=user_id `;
    if (obj.roles_id == 1) {
      sql1 += `and doctor='${obj.doctor} ' `;
    }

    obj.username ? (sql1 += ` and username like '%${obj.username}%' `) : "";
    obj.sex ? (sql1 += ` and sex like '%${obj.sex}%'`) : "";
    obj.phone ? (sql1 += ` and phone like '%${obj.phone}%'`) : "";
    obj.identity ? (sql1 += ` and identity like '%${obj.identity}%'`) : "";
    obj.a_status ? (sql1 += ` and a_status like '%${obj.a_status}%'`) : "";

    if (obj.beginTime && obj.EndTime) {
      obj.beginTime = moment(obj.beginTime).format("YYYY-MM-DD hh:mm");
      obj.EndTime = moment(obj.EndTime).format("YYYY-MM-DD hh:mm");
    }
    obj.beginTime && obj.EndTime
      ? (sql1 += ` and b_time between '${obj.beginTime}' and '${obj.EndTime}' `)
      : "";

    let total = await ctx.service.appoint.countAppoint(sql1);

    let sql;
    if (obj.roles_id == 1) {
      sql = `select username,a_id,sex,age,phone,identity,a_user_id,a_time,b_time,a_status,cno from appoint,user where a_user_id=user_id and doctor='${obj.doctor}' `;
    } else {
      sql = `select username,a_id,sex,age,phone,identity,a_id,a_user_id,a_time,b_time,a_status,cno,doctor  from appoint,user where a_user_id=user_id`;
    }
    obj.username ? (sql += ` and username like '%${obj.username}%' `) : "";
    obj.sex ? (sql += ` and sex like '%${obj.sex}%'`) : "";
    obj.phone ? (sql += ` and phone like '%${obj.phone}%'`) : "";
    obj.identity ? (sql += ` and identity like '%${obj.identity}%'`) : "";
    obj.a_status ? (sql += ` and a_status like '%${obj.a_status}%'`) : "";

    if (obj.beginTime && obj.EndTime) {
      obj.beginTime = moment(obj.beginTime).format("YYYY-MM-DD hh:mm");
      obj.EndTime = moment(obj.EndTime).format("YYYY-MM-DD hh:mm");
    }
    obj.beginTime && obj.EndTime
      ? (sql += ` and b_time between '${obj.beginTime}' and '${obj.EndTime}' `)
      : "";

    sql += ` order by cno desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.appoint.findAppoint(sql);

    if (res) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", res, 200),
        total: total,
        page: obj.page,
        pageSize: obj.pageSize,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  async deleteAppoint() {
    const { ctx } = this;

    const res = await ctx.service.appoint.deleteAppoint(ctx.query.a_id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  //查找社区用户名字

  async saveOrUpdateAppoint() {
    const { ctx } = this;
    const obj = ctx.request.body;

    const res = await ctx.service.appoint.saveOrUpdateAppoint(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
  async exportExcel() {
    const { ctx } = this;
    const data = Array.from(JSON.parse(ctx.query.data));
    const res = await ctx.service.exportExcel.excelCommon(
      ctx.helper.headersAppoint,
      data,
      "预约表"
    );
    if (res) {
      ctx.body = res;
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
}

module.exports = AppointController;
