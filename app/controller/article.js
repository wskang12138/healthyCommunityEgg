"use strict";

const Controller = require("egg").Controller;

let moment = require("moment");

class ArticleController extends Controller {
  async findArticle() {
    const { ctx } = this;
    let { page, pageSize } = ctx.query;
    let obj = ctx.query;
    let startIndex = (page - 1) * pageSize;
    let total = await ctx.service.article.findAllArticle(obj);
    const res = await ctx.service.article.queryArticle(
      obj,
      startIndex,
      pageSize
    );

    if (res) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", res, 200),
        total: total,
        page: page,
        pageSize: pageSize,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  //模糊联表查询
  async queryArticle() {
    const { ctx } = this;
    let obj = ctx.query;

    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql = `SELECT  title, publish_time,description,author,url,id,count  FROM articles  where type="${obj.type}"`;

    obj.title ? (sql += `and title like '%${obj.title}%' `) : "";
    obj.author ? (sql += ` and author like '%${obj.author}%' `) : "";
    sql += ` order by id desc  limit ${startIndex},${obj.pageSize}`;

    let total = await ctx.service.article.findAllArticle(obj);
    const res = await ctx.service.article.queryArticles(sql);

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

  async deleteArticle() {
    const { ctx } = this;
    const res = await ctx.service.article.deleteArticle(ctx.query.id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }

  async saveOrUpdateArticle() {
    const { ctx } = this;
    const obj = ctx.request.body;
    obj.publish_time = moment(obj.publish_time).format("YYYY-MM-DD hh:mm"); //对时间进行处理，不然mysql报错
    const res = await ctx.service.article.saveOrUpdateArticle(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
  //查找所有作者去重
  async findAllauthor() {
    const { ctx } = this;
    const res = await ctx.service.article.findauthor();
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
  //查找文章详情，
  async detailsArticle() {
    const { ctx } = this;
    const res = await ctx.service.article.detailsArticle(ctx.query.id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
}

module.exports = ArticleController;
