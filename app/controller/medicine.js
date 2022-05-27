"use strict";

const Controller = require("egg").Controller;
const xlsx = require("xlsx");

const fs = require("fs");
const path = require("path");

let moment = require("moment");

class MedicineController extends Controller {
  async findMedicine() {
    const { ctx } = this;
    let sql = `select * from medicine`;
    let obj = ctx.query;
    obj.medicine_name
      ? (sql += ` where medicine_name like '%${obj.medicine_name}%'`)
      : "";

    const res = await ctx.service.medicine.findMedicine(sql);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "获取是失败的", 500);
    }
  }
  async deleteMedicine() {
    const { ctx } = this;

    const res = await ctx.service.medicine.deleteMedicine(ctx.query.id);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }
  async saveUpdateMedicine() {
    const { ctx } = this;
    const obj = ctx.request.body;
    const res = await ctx.service.medicine.saveUpdateMedicine(obj);
    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "删除是失败的", 500);
    }
  }

  async exportExcel() {
    const { ctx } = this;
    let data = [];
    let id = ctx.query.id;
    if (id == 1) {
      let sql = `select * from medicine`;
      data = await ctx.service.medicine.findMedicine(sql);
    }
    let name = "";
    let res = "";
    if (data.length === 0) {
      name = "药品信息导入表模板";
      res = await ctx.service.exportExcel.excelCommon(
        ctx.helper.headersMedicine,
        data,
        name
      );
    } else {
      name = "药品信息";
      res = await ctx.service.exportExcel.excelCommon(
        ctx.helper.headersMedicine,
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
            ctx.service.medicine.addSimCard(exceldata);
          }
        }
      });
    });
    ctx.body = ctx.helper.responseCode(true, "success", res, 200);
  }
}

module.exports = MedicineController;
