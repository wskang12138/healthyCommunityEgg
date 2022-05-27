"use strict";

const Controller = require("egg").Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    const res = await ctx.service.home.index();
    const count = await ctx.service.home.count();
    const people = await ctx.service.home.people();
    if (res) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", res, 200),
        count: count,
        people: people,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  async test() {
    console.log(111111111);
  }
}

module.exports = HomeController;
