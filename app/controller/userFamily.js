"use strict";

const Controller = require("egg").Controller;

class DieaseController extends Controller {
  async findDiease() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.userFamily.findDiease(obj);

    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }

  async saveOrUpdateDiease() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const res = await ctx.service.userFamily.saveOrUpdateDiease(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
}

module.exports = DieaseController;
