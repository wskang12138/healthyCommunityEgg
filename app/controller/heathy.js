"use strict";
const Controller = require("egg").Controller;
const xlsx = require("xlsx");

const fs = require("fs");
const path = require("path");

let moment = require("moment");

class HeathyController extends Controller {
  async queryHeathy() {
    const { ctx } = this;
    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from heathy_data,user where cf_user_id=user_id  `;

    obj.username ? (sql1 += ` and  username like '%${obj.username}%'`) : "";
    obj.blood ? (sql1 += ` and blood like '%${obj.blood}%'`) : "";
    obj.status ? (sql1 += ` and status like '%${obj.status}%'`) : "";

    if (obj.beginTime && obj.EndTime) {
      obj.beginTime = moment(obj.beginTime).format("YYYY-MM-DD hh:mm");
      obj.EndTime = moment(obj.EndTime).format("YYYY-MM-DD hh:mm");
    }
    obj.beginTime && obj.EndTime
      ? (sql1 += ` and time between '${obj.beginTime}' and '${obj.EndTime}' `)
      : "";

    let total = await ctx.service.heathy.countHeathy(sql1);

    let sql = ` select username,age,user_id,sex,hid,height,weight,blodpres_shrink,blodpres_relax,oxygen,spygmus,temperature,status,BMI,blood,time from heathy_data,user where cf_user_id=user_id `;

    obj.username ? (sql += ` and  username like '%${obj.username}%'`) : "";
    obj.blood ? (sql += ` and blood like '%${obj.blood}%'`) : "";
    obj.status ? (sql += ` and status like '%${obj.status}%'`) : "";

    if (obj.beginTime && obj.EndTime) {
      obj.beginTime = moment(obj.beginTime).format("YYYY-MM-DD hh:mm");
      obj.EndTime = moment(obj.EndTime).format("YYYY-MM-DD hh:mm");
    }
    obj.beginTime && obj.EndTime
      ? (sql += ` and time between '${obj.beginTime}' and '${obj.EndTime}' `)
      : "";

    sql += ` order by time desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.heathy.queryHeathy(sql);

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
  async deleteHeathy() {
    const { ctx } = this;

    const res = await ctx.service.heathy.deleteHeathy(ctx.query.hid);

    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }

  async saveOrUpdateHeathy() {
    const { ctx } = this;
    const obj = ctx.request.body;
    obj.time ? (obj.time = moment(obj.time).format("YYYY-MM-DD hh:mm")) : "";
    const res = await ctx.service.heathy.saveOrUpdateHeathy(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
  async exportExcel() {
    const { ctx } = this;
    const data = Array.from(JSON.parse(ctx.query.data));
    let name = "";
    let res;
    if (data.length === 0) {
      name = "健康生理数据表模板";
      res = await ctx.service.exportExcel.excelCommon(
        ctx.helper.headersHeathymoban,
        data,
        name
      );
    } else {
      name = "健康生理数据表";
      res = await ctx.service.exportExcel.excelCommon(
        ctx.helper.headersHeathy,
        data,
        name
      );
    }

    if (res) {
      ctx.body = res;
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "操作是失败的", 500);
    }
  }
  async uploadFiles_file() {
    const { ctx } = this;
    let res = "";
    const file = ctx.request.files[0]; //获取上传文件，config没有配置，这里file拿不到
    if (!file) return ctx.throw(404);
    const filename = ctx.request.body.name
      ? ctx.request.body.name
      : file.filename; //文件名称,如果前端没传就直接用文件的
    const distPath = path.join("", "app/public/excel");
    const stat = fs.statSync(distPath);
    if (!stat.isDirectory()) {
      fs.mkdirSync(distPath);
    }
    const targetPath = path.join("", "app/public/excel", filename); //目标文件地址
    //将上传的文件保存到本地，如果本地有就覆盖
    fs.readFile(file.filepath, function (err, data) {
      // 异步读取文件内容
      fs.writeFile(targetPath, data, function (err) {
        // des_file是文件名，data，文件数据，异步写入到文件
        if (err) {
          console.log("文件保存到本地失败，原因：");
          console.log(err);
        } else {
          // 读取内容
          const workbook = xlsx.readFile(targetPath);
          const sheetNames = workbook.SheetNames; //获取表名
          const sheet = workbook.Sheets[sheetNames[0]]; //通过表名得到表对象

          const exceldata = xlsx.utils.sheet_to_json(sheet); //通过工具将表对象的数据读出来并转成json

          if (exceldata.length > 0) {
            //将excel数据增添到库里
            for (let key in exceldata) {
              for (let i in exceldata[key]) {
                if (i == "记录时间") {
                  exceldata[key][i] = moment().format("YYYY-MM-DD hh:mm");
                }
              }
            }
            ctx.service.heathy.addSimCard(exceldata);
          }
        }
      });
    });
    ctx.body = ctx.helper.responseCode(true, "success", res, 200);
  }
}

module.exports = HeathyController;
