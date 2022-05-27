"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class DieaseHistoryController extends Controller {
  async queryDiease() {
    const { ctx } = this;
    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from history_diease,user where jw_user_id=user_id `;

    let isMore = false; //是否有多个查询参数
    obj.username ? (sql1 += ` and username like '%${obj.username}%' `) : "";
    obj.diease_name
      ? (sql1 += ` and diease_name like '%${obj.diease_name}%' `)
      : "";
    obj.flage ? (sql1 += ` and flage='${obj.flage}' `) : "";
    if (obj.beginTime && obj.EndTime) {
      obj.beginTime = moment(obj.beginTime).format("YYYY-MM-DD hh:mm");
      obj.EndTime = moment(obj.EndTime).format("YYYY-MM-DD hh:mm");
    }
    obj.beginTime && obj.EndTime
      ? (sql1 += ` and q_time between '${obj.beginTime}' and '${obj.EndTime}' `)
      : "";

    let total = await ctx.service.historyDiease.countDiease(sql1);

    let sql = `select username,user_id,sex,age,phone,diease_name,flage,q_time,z_time,allergen,disabled_orno,disabled_con,j_id from history_diease,user where jw_user_id=user_id `;

    obj.username ? (sql += ` and username like '%${obj.username}%'`) : "";
    obj.diease_name
      ? (sql += ` and diease_name like '%${obj.diease_name}%' `)
      : "";
    obj.flage ? (sql += ` and flage='${obj.flage}' `) : "";
    if (obj.beginTime && obj.EndTime) {
      obj.beginTime = moment(obj.beginTime).format("YYYY-MM-DD hh:mm");
      obj.EndTime = moment(obj.EndTime).format("YYYY-MM-DD hh:mm");
    }
    obj.beginTime && obj.EndTime
      ? (sql += ` and q_time between '${obj.beginTime}' and '${obj.EndTime}' `)
      : "";

    sql += ` order by j_id desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.historyDiease.queryDiease(sql);

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
    let sql = `select * from  history_diease where j_id in(${ctx.query.j_id})`;
    const result = await ctx.service.historyDiease.queryDiease(sql);
    let obj = {
      diease_name: result[0].diease_name,
      count_time: moment(result[0].q_time).format("YYYY-MM-DD hh:mm"),
    };
    await ctx.service.historyDiease.deleteElectron(obj);
    const res = await ctx.service.historyDiease.deleteDiease(ctx.query.j_id);

    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }

  async saveOrUpdateDiease() {
    const { ctx } = this;
    const obj = ctx.request.body;
    //对时间进行处理，不然mysql报错
    const res = await ctx.service.historyDiease.saveOrUpdateDiease(obj);

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
      ctx.helper.headersHistory,
      data,
      "历史疾病表"
    );
    if (res) {
      ctx.body = res;
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
}

module.exports = DieaseHistoryController;
