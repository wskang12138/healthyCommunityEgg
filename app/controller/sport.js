"use strict";

const Controller = require("egg").Controller;

class SportController extends Controller {
  async findSport() {
    const { ctx } = this;
    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = "select count(*) as total from sport ";
    if (obj.type || obj.name) {
      sql1 += ` where `;
    }
    obj.type ? (sql1 += ` type='${obj.type}'`) : "";
    obj.name && obj.type ? (sql1 += " and ") : "";
    obj.name ? (sql1 += ` name like '%${obj.name}%'`) : "";

    let total = await ctx.service.sport.countSport(sql1);

    let sql = `select * from sport`;
    obj.type || obj.name ? (sql += ` where `) : "";

    obj.type ? (sql += ` type='${obj.type}'`) : "";
    obj.type && obj.name ? (sql = "and") : "";
    obj.name ? (sql += ` name like '%${obj.name}%'`) : "";
    sql += ` order by sport_id desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.sport.findSport(sql);

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
  async deleteSport() {
    const { ctx } = this;

    const res = await ctx.service.sport.deleteSport(ctx.query.sport_id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  async saveUpdateSport() {
    const { ctx } = this;
    const obj = ctx.request.body;

    const res = await ctx.service.sport.saveUpdateSport(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
}

module.exports = SportController;
