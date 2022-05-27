"use strict";

const Controller = require("egg").Controller;

class FoodController extends Controller {
  async findFood() {
    const { ctx } = this;
    let sql = `select * from food`;
    let isMore = false;

    if (ctx.query.type) {
      sql += ` where type=${ctx.query.type}`;
      isMore = true;
    }

    if (ctx.query.name) {
      if (isMore) {
        sql += ` and name like '%${ctx.query.name}%'`;
      } else {
        sql += ` where name like  '%${ctx.query.name}%' `;
      }
      isMore = true;
    }

    const res = await ctx.service.foods.findFood(sql);

    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  async deleteFood() {
    const { ctx } = this;

    const res = await ctx.service.foods.deleteFood(ctx.query.food_id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  async saveUpdateFood() {
    const { ctx } = this;
    const obj = ctx.request.body;

    const res = await ctx.service.foods.saveUpdateFood(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
}

module.exports = FoodController;
