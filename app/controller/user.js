"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class UserController extends Controller {
  async queryUser() {
    const { ctx } = this;

    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from roles,user where r_id=roles_id `;

    obj.username ? (sql1 += ` and  username like '%${obj.username}%'`) : "";
    obj.rolesName ? (sql1 += `and rolesName like '%${obj.rolesName}%'`) : "";
    obj.status ? (sql1 += `and status like '%${obj.status}%'`) : "";
    obj.roles ? (sql1 += ` and roles=${obj.roles}`) : "";

    let total = await ctx.service.user.countUser(sql1);

    let sql = ` select  rolesName,roles,status,username,account,phone,registerDate,user_id,r_id from roles,user where r_id=roles_id `;

    obj.username ? (sql += ` and  username like '%${obj.username}%'`) : "";
    obj.rolesName ? (sql += `and rolesName like '%${obj.rolesName}%'`) : "";
    obj.status ? (sql += `and status like '%${obj.status}%'`) : "";
    obj.roles ? (sql += ` and roles=${obj.roles}`) : "";

    sql += ` order by roles_id desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.user.queryUser(sql);

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
  async deleteUser() {
    const { ctx } = this;

    const res = await ctx.service.user.deleteUser(ctx.query.user_id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }

  async saveOrUpdateUser() {
    const { ctx } = this;
    const obj = ctx.request.body;
    let result = await ctx.service.user.exist(obj.account);
    if (result > 0 && !obj.user_id) {
      return (ctx.body = ctx.helper.responseCode(
        false,
        "账号已经存在了",
        " ",
        500
      ));
    }

    const res = await ctx.service.user.saveOrUpdateUser(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
  async exportExcel() {
    const { ctx } = this;
    const data = Array.from(JSON.parse(ctx.query.data));
    const res = await ctx.service.exportExcel.excelCommon(
      ctx.helper.headersUser,
      data,
      "电子疾病表"
    );
    if (res) {
      ctx.body = res;
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
  async findRoles() {
    const { ctx } = this;
    const res = await ctx.service.user.findRoles();
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  async findPeople() {
    const { ctx, app } = this;
    let { token } = ctx.query;
    // 获取token解析后的用户信息
    let decode = await ctx.app.jwt.verify(token, app.config.jwt.secret); //验证token
    const { user_id } = decode;
    let res = await ctx.helper.service.user.findPeople(user_id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
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
