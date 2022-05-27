"use strict";
const Controller = require("egg").Controller;

class LogController extends Controller {
  async queryLog() {
    const { ctx } = this;

    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from  log `;

    let total = await ctx.service.log.countLog(sql1);
    let sql = ` select * from log`;
    sql += ` order by by_time desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.log.queryLog(sql);
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
  async deleteLog() {
    const { ctx } = this;
    const res = await ctx.service.log.deleteLog(ctx.query.log_id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
}

module.exports = LogController;
