"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class DieaseController extends Controller {
  async findDiease() {
    const { ctx } = this;
    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from familydiease,user where f_user_id=user_id `;

    obj.diease_name ? (sql1 += `diease_name like '%${obj.diease_name}%'`) : "";
    obj.diease_name && obj.username ? (sql1 += ` and `) : "";
    obj.username ? (sql1 += `username like '%${obj.username}%'`) : "";

    let total = await ctx.service.familyDiease.countDiease(sql1);

    let sql = `select username,age,sex,user_id,fid,diease_name,beifen from familydiease,user where f_user_id=user_id `;

    obj.diease_name || obj.username ? (sql += ` and `) : "";
    obj.diease_name ? (sql += `diease_name like '%${obj.diease_name}%'`) : "";
    obj.diease_name && obj.username ? (sql += ` and `) : "";
    obj.username ? (sql += `username like '%${obj.username}%'`) : "";

    sql += ` order by fid desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.familyDiease.findDiease(sql);

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
  async deleteDiease() {
    const { ctx } = this;

    const res = await ctx.service.familyDiease.deleteDiease(ctx.query.fid);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }

  async saveOrUpdateDiease() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const res = await ctx.service.familyDiease.saveOrUpdateDiease(obj);
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
      ctx.helper.headersFamily,
      data,
      "家族疾病表"
    );
    if (res) {
      ctx.body = res;
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
}

module.exports = DieaseController;
