"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class DieaseController extends Controller {
  async findDiease() {
    const { ctx } = this;
    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from now_disase,user where x_user_id=user_id `;

    obj.diease_name ? (sql1 += `diease_name like '%${obj.diease_name}%'`) : "";
    obj.diease_name && obj.username ? (sql1 += ` and `) : "";
    obj.username ? (sql1 += `username like '%${obj.username}%'`) : "";

    let total = await ctx.service.nowDiease.countDiease(sql1);

    let sql = `select username,user_id,sex,age,phone,now_id,diease_name,q_time from now_disase,user where x_user_id=user_id `;

    obj.diease_name || obj.username ? (sql += ` and `) : "";
    obj.diease_name ? (sql += `diease_name like '%${obj.diease_name}%'`) : "";
    obj.diease_name && obj.username ? (sql += ` and `) : "";
    obj.username ? (sql += `username like '%${obj.username}%'`) : "";

    sql += ` order by now_id desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.nowDiease.findDiease(sql);

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
    let sql = `select * from now_disase where now_id in(${ctx.query.now_id}) `;
    let result = await ctx.service.nowDiease.findDiease(sql);
    let obj = {
      diease_name: result[0].diease_name,
      q_time: moment(result[0].q_time).format("YYYY-MM-DD hh:mm"),
    };
    let temp = await ctx.service.nowDiease.updateHistory(obj);

    const res = await ctx.service.nowDiease.deleteDiease(ctx.query.now_id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  //查找社区用户名字
  async findUser() {
    const { ctx } = this;
    const res = await ctx.service.nowDiease.findUser();
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  async saveOrUpdateDiease() {
    const { ctx } = this;
    const obj = ctx.request.body;
    obj.q_time = moment(obj.q_time).format("YYYY-MM-DD hh:mm"); //对时间进行处理，不然mysql报错
    const res = await ctx.service.nowDiease.saveOrUpdateDiease(obj);
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
      ctx.helper.headersNow,
      data,
      "现患疾病表"
    );
    if (res) {
      ctx.body = res;
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
}

module.exports = DieaseController;
