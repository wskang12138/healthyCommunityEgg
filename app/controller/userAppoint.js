"use strict";

const Controller = require("egg").Controller;
let moment = require("moment");

class AppointController extends Controller {
  async findAppoint() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.userAppoint.findAppoint(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  async panAppoint() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.userAppoint.panAppoint(obj);
    if (res || res == 0) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }

  async findDoctor() {
    const { ctx } = this;
    let obj = ctx.query;
    const res = await ctx.service.userAppoint.findDoctor();
    const ranks = await ctx.service.userAppoint.findRank(obj);
    const container = await ctx.service.userAppoint.container(obj);
    if (res) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", res, 200),
        ranks: ranks,
        container: container,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  async queryDoctor() {
    const { ctx } = this;
    const res = await ctx.service.userAppoint.findDoctor();
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "失败的", 500);
    }
  }

  async updateStatusAppoint() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const res = await ctx.service.userAppoint.updateStatusAppoint(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }

  async saveAppoint() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const rank = await ctx.service.userAppoint.findRank(obj);
    const container = await ctx.service.userAppoint.container(obj);
    let ranks = Array.from(rank);
    obj.cno = -1;
    if (ranks.length == 0) {
      obj.cno = 1;
    } else {
      for (let key in ranks) {
        if (ranks[key].doctor == obj.doctor) {
          if (ranks[key].ranks == null) {
            obj.cno = 1;
          } else {
            obj.cno = ranks[key].ranks + 1;
          }
        }
      }
      if (obj.cno == -1) {
        obj.cno = 1;
      }
    }
    for (let key in container) {
      if (container[key].doctor == obj.doctor) {
        if (container[key].container >= 15) {
          return (ctx.body = ctx.helper.responseCode(
            false,
            "啊哦手慢了，没有了哦",
            "啊哦手慢了，没有了哦",
            500
          ));
        }
      }
    }

    let time = moment(obj.b_time).format("HH:mm");
    let count = -1;
    if (time >= "8:00" && time <= "9:30") {
      obj.start = "8:00";
      obj.end = "9:30";
    }
    if (time >= "10:00" && time <= "11:30") {
      obj.start = "10:00";
      obj.end = "11:30";
    }
    if (time >= "12:30" && time <= "13:30") {
      return (ctx.body = ctx.helper.responseCode(
        false,
        `医生处于休息时间段还请选择其它时间${"12:30"}-${"13:30"}`,
        `医生处于休息时间段还请选择其它时间${"12:30"}-${"13:30"}`,
        500
      ));
    }
    if (time >= "14:00" && time <= "15:30") {
      obj.start = "14:00";
      obj.end = "15:30";
    }
    if (time >= "16:00" && time <= "17:30") {
      obj.start = "16:00";
      obj.end = "17:30";
    }
    if (time >= "18:00" && time <= "18:30") {
      count = 1;
      obj.start = "18:00";
      obj.end = "18:30";
    }
    const [{ date1 }] = await ctx.service.userAppoint.countTime(obj);

    if (date1 >= 2 && count == 1) {
      return (ctx.body = ctx.helper.responseCode(
        false,
        `该时间段已经只能预约俩人了${obj.start}-${obj.end}`,
        `该时间段已经只能预约俩人了${obj.start}-${obj.end}`,
        500
      ));
    }
    if (date1 >= 4 && count == -1) {
      return (ctx.body = ctx.helper.responseCode(
        false,
        `该时间段已经预约四人了${obj.start}-${obj.end}`,
        `该时间段已经预约四人了${obj.start}-${obj.end}`,
        500
      ));
    }

    const res = await ctx.service.userAppoint.saveAppoint(obj);
    if (res) {
      let text = `${obj.username}你好！恭喜你预约时间为${obj.b_time}预约医生${obj.doctorName}预约成功！------------------预约时间${obj.a_time}`;
      let subject = "预约成功提醒";
      if (ctx.helper.checkMail(obj.sendEmail)) {
        setTimeout(() => {
          ctx.service.tool.sendMail(obj.sendEmail, subject, text);
        }, 0);
      }
      return (ctx.body = ctx.helper.responseCode(true, "预约成功", res, 200));
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
}

module.exports = AppointController;
