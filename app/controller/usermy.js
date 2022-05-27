"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class UserController extends Controller {
  async queryUser() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.usermy.queryUser(obj);
    const heathy = await ctx.service.usermy.findData(obj);
    if (res) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", res, 200),
        heathy: heathy,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }

  async UpdateUser() {
    const { ctx, app } = this;
    const obj = ctx.request.body;
    obj.borth ? (obj.borth = moment(obj.borth).format("YYYY-MM-DD")) : "";
    obj.age = moment().diff(moment(obj.borth), "years");
    const res = await ctx.service.resident.saveOrUpdateResident(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }

  async statusChange() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.user.statusChange(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  async passwordChang() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const res = await ctx.service.user.passwordChang(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "失败的", 500);
    }
  }
  async changeImge() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const res = await ctx.service.user.changeImge(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "失败的", 500);
    }
  }
  async updatePeople() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const res = await ctx.service.user.updatePeople(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "失败的", 500);
    }
  }
}

module.exports = UserController;
