"use strict";

const Controller = require("egg").Controller;

class DieaseHistoryController extends Controller {
  async queryDiease() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.userDiease.queryDiease(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  async queryLife() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.userDiease.queryLife(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
}

module.exports = DieaseHistoryController;
