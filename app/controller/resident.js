"use strict";
const Controller = require("egg").Controller;
const xlsx = require("xlsx");

const fs = require("fs");
const path = require("path");

let moment = require("moment");

class ResidentController extends Controller {
  async queryResident() {
    const { ctx } = this;

    let obj = ctx.query;
    let startIndex = (obj.page - 1) * obj.pageSize;

    let sql1 = `select count(*) as total from user `;
    let isMore = false;

    if (obj.username) {
      sql1 += ` where username like '%${obj.username}%' `;
      isMore = true;
    }
    if (obj.sex) {
      if (isMore) {
        sql1 += ` and sex like '%${obj.sex}%' `;
      } else {
        sql1 += ` where sex like '%${obj.sex}%'`;
      }
      isMore = true;
    }
    if (obj.address) {
      if (isMore) {
        sql1 += ` and address like '%${obj.address}%' `;
      } else {
        sql1 += ` where address like '%${obj.address}%'`;
      }
      isMore = true;
    }
    if (obj.level) {
      if (isMore) {
        sql1 += ` and level like '%${obj.level}%' `;
      } else {
        sql1 += ` where level like '%${obj.level}%'`;
      }
      isMore = true;
    }
    if (obj.political) {
      if (isMore) {
        sql1 += ` and political like '%${obj.political}%' `;
      } else {
        sql1 += ` where political like '%${obj.political}%'`;
      }
      isMore = true;
    }

    let total = await ctx.service.resident.countResident(sql1);
    isMore = false;

    let sql = ` select username,user_id,age,sex,phone,sendEmail,address,community,borth,registerDate,qq,level,marriage,political,number,identity from user  `;

    if (obj.username) {
      sql += ` where username like '%${obj.username}%' `;
      isMore = true;
    }
    if (obj.sex) {
      if (isMore) {
        sql += ` and sex like '%${obj.sex}%' `;
      } else {
        sql += ` where sex like '%${obj.sex}%'`;
      }
      isMore = true;
    }
    if (obj.address) {
      if (isMore) {
        sql += ` and address like '%${obj.address}%' `;
      } else {
        sql += ` where address like '%${obj.address}%'`;
      }
      isMore = true;
    }
    if (obj.level) {
      if (isMore) {
        sql += ` and level like '%${obj.level}%' `;
      } else {
        sql += ` where level like '%${obj.level}%'`;
      }
      isMore = true;
    }
    if (obj.political) {
      if (isMore) {
        sql += ` and political like '%${obj.political}%' `;
      } else {
        sql += ` where political like '%${obj.political}%'`;
      }
      isMore = true;
    }

    sql += ` order by age desc  limit ${startIndex},${obj.pageSize}`;

    const res = await ctx.service.resident.queryResident(sql);

    if (res) {
      ctx.body = {
        ...ctx.helper.responseCode(true, "success", res, 200),
        total: total,
        page: obj.page,
        pageSize: obj.pageSize,
      };
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "??????????????????", 500);
    }
  }
  async deleteResident() {
    const { ctx } = this;

    const res = await ctx.service.resident.deleteResident(ctx.query.user_id);

    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "??????????????????", 500);
    }
  }

  async saveOrUpdateResident() {
    const { ctx } = this;
    const obj = ctx.request.body;
    obj.borth ? (obj.borth = moment(obj.borth).format("YYYY-MM-DD")) : "";
    obj.age = moment().diff(moment(obj.borth), "years");
    obj.password = await ctx.helper.genPassword(123456);

    obj.account = obj.phone;
    let result = await ctx.service.resident.exist(obj.phone);
    if (result > 0 && !obj.user_id) {
      return (ctx.body = ctx.helper.responseCode(
        false,
        "????????????????????????????????????",
        " ",
        500
      ));
    }
    const res = await ctx.service.resident.saveOrUpdateResident(obj);

    if (res) {
      ctx.body = ctx.helper.responseCode(true, "success", res, 200);
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "??????????????????", 500);
    }
  }
  async exportExcel() {
    const { ctx } = this;
    const data = Array.from(JSON.parse(ctx.query.data));
    let name = "";
    let res;
    if (data.length === 0) {
      name = "???????????????????????????";
      res = await ctx.service.exportExcel.excelCommon(
        ctx.helper.headersResident,
        data,
        name
      );
    } else {
      name = "?????????????????????";
      res = await ctx.service.exportExcel.excelCommon(
        ctx.helper.headersResident,
        data,
        name
      );
    }

    if (res) {
      ctx.body = res;
    } else {
      ctx.body = ctx.helper.responseCode(false, "fail", "??????????????????", 500);
    }
  }

  async uploadFiles_file() {
    const { ctx } = this;
    let res = "";
    const file = ctx.request.files[0]; //?????????????????????config?????????????????????file?????????
    if (!file) return ctx.throw(404);
    const filename = ctx.request.body.name
      ? ctx.request.body.name
      : file.filename; //????????????,???????????????????????????????????????
    const distPath = path.join("", "app/public/excel");
    const stat = fs.statSync(distPath);
    if (!stat.isDirectory()) {
      fs.mkdirSync(distPath);
    }
    const targetPath = path.join("", "app/public/excel", filename); //??????????????????
    //????????????????????????????????????????????????????????????
    fs.readFile(file.filepath, function (err, data) {
      // ????????????????????????
      fs.writeFile(targetPath, data, function (err) {
        // des_file???????????????data???????????????????????????????????????
        if (err) {
          console.log("???????????????????????????????????????");
          console.log(err);
        } else {
          // ????????????
          const workbook = xlsx.readFile(targetPath);
          const sheetNames = workbook.SheetNames; //????????????
          const sheet = workbook.Sheets[sheetNames[0]]; //???????????????????????????

          const exceldata = xlsx.utils.sheet_to_json(sheet); //???????????????????????????????????????????????????json

          if (exceldata.length > 0) {
            //???excel?????????????????????
            let account = "";
            let temp1 = "account";
            let temp2 = "password";
            let temp3 = "age";
            let temp4 = "??????";
            let temp5 = "r_id";
            let year = "";
            let password = ctx.helper.genPassword(123456);

            for (let key in exceldata) {
              for (let i in exceldata[key]) {
                if (i == "????????????") {
                  year = moment().diff(moment(`${exceldata[key][i]}`), "years");
                }
                if (i == "??????") {
                  account = exceldata[key][i];
                }
              }
              exceldata[key][temp1] = `${account}`;
              exceldata[key][temp2] = `${password}`;
              exceldata[key][temp3] = year;
              exceldata[key][temp4] = "????????????";
              exceldata[key][temp5] = 10;
            }
            ctx.service.resident.addSimCard(exceldata);
          }
        }
      });
    });
    ctx.body = ctx.helper.responseCode(true, "success", res, 200);
  }
}

module.exports = ResidentController;
