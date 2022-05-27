"use strict";

const Controller = require("egg").Controller;

class ArticleController extends Controller {
  async queryArticle() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.userArticle.queryArticle(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  //查找文章详情，
  async detailsArticle() {
    const { ctx } = this;
    const res = await ctx.service.userArticle.detailsArticle(ctx.query.id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  async updateCount() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const res = await ctx.service.userArticle.updateCount(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
}

module.exports = ArticleController;
