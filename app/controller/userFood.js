"use strict";

const Controller = require("egg").Controller;

class FoodController extends Controller {
  async findFood() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.userFood.findFood(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  //推荐的逻辑
  async foryouFood() {
    const { ctx } = this;
    let obj = ctx.query;
    let res = await ctx.service.userFood.foryouFood(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
}

module.exports = FoodController;
