"use strict";

const Controller = require("egg").Controller;

class SportController extends Controller {
  async findSport() {
    const { ctx } = this;
    let obj = ctx.query;

    let sql = `select * from sport`;
    obj.type || obj.suit ? (sql += ` where `) : "";

    obj.type ? (sql += ` type='${obj.type}'`) : "";
    obj.type && obj.suit ? (sql += "and") : "";
    obj.suit ? (sql += ` suit like '%${obj.suit}%'`) : "";

    const res = await ctx.service.userSport.findSport(sql);

    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  //推荐的逻辑
  async foryouSport() {
    const { ctx } = this;
    let obj = ctx.query;
    let res = await ctx.service.userSport.foryouSport(obj);
    let age = await ctx.service.userSport.age(obj);
    if (res) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", res, 200),
        age: age,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
}

module.exports = SportController;
