"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class StoreController extends Controller {
  async findStore() {
    const { ctx } = this;
    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from store,medicine where m_id=medicine.id `;

    obj.medicine_name
      ? (sql1 += `medicine_name like '%${obj.medicine_name}%'`)
      : "";

    let total = await ctx.service.store.countStore(sql1);

    let sql = `select medicine_name,num,position,entry_time,store.id as id from store,medicine  where m_id=medicine.id `;

    obj.medicine_name
      ? (sql += `medicine_name like '%${obj.medicine_name}%'`)
      : "";

    sql += ` order by entry_time desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.store.findStore(sql);

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
  async deleteStore() {
    const { ctx } = this;
    const res = await ctx.service.store.deleteStore(ctx.query.id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  //查找社区用户名字
  async findName() {
    const { ctx } = this;
    const res = await ctx.service.store.findName();
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  async saveOrUpdateStore() {
    const { ctx } = this;
    const obj = ctx.request.body;
    let total = await ctx.service.store.find(obj);
    if (total > 0 && !obj.id) {
      return (ctx.body = ctx.helper.responseCode(
        false,
        "架子上已有这种药品请勿随便放",
        "架子上已有这种药品请勿随便放",
        500
      ));
    }
    const res = await ctx.service.store.saveOrUpdateStore(obj);
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
      ctx.helper.headersStore,
      data,
      "药品库存"
    );
    if (res) {
      ctx.body = res;
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
}

module.exports = StoreController;
