"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class RolesController extends Controller {
  async findRoles() {
    const { ctx } = this;
    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from  roles`;

    obj.rolesName || obj.status ? (sql1 += ` where `) : "";

    obj.rolesName ? (sql1 += `rolesName like '%${obj.rolesName}%'`) : "";
    obj.rolesName && obj.status ? (sql1 += ` and `) : "";
    obj.status ? (sql1 += `status like '%${obj.status}%'`) : "";

    let total = await ctx.service.roles.countRoles(sql1);

    let sql = `select * from roles `;

    obj.rolesName || obj.status ? (sql += ` where `) : "";

    obj.rolesName ? (sql += ` rolesName like '%${obj.rolesName}%'`) : "";
    obj.rolesName && obj.status ? (sql += ` and `) : "";
    obj.status ? (sql += `status like '%${obj.status}%'`) : "";

    sql += ` order by orders desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.roles.findRoles(sql);

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
  async deleteRoles() {
    const { ctx } = this;

    const res = await ctx.service.roles.deleteRoles(ctx.query.roles_id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }

  async saveOrUpdateRoles() {
    const { ctx } = this;
    const obj = ctx.request.body;

    const res = await ctx.service.roles.saveOrUpdateRoles(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
}

module.exports = RolesController;
