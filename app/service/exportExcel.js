"use strict";

const Service = require("egg").Service;
const Excel = require("exceljs");

class ExcelExport extends Service {
  /**
   * 数据并生成excel
   * @param {Array} headers excel标题栏
   * @param {Array} param 数据参数
   * @param {string} name 文件名称
   */
  async excelCommon(headers, data, name) {
    let columns = []; // exceljs要求的columns
    let hjRow = {}; // 合计行
    let titleRows = headers.length; // 标题栏行数

    // 处理表头
    for (let i = 0; i < titleRows; i++) {
      let row = headers[i];
      for (let j = 0, rlen = row.length; j < rlen; j++) {
        let col = row[j];
        let { f, t, w = 15 } = col;
        if (!f) continue; // 不存在f则跳过

        if (col.totalRow) hjRow[f] = true;
        if (col.totalRowText) hjRow[f] = col.totalRowText;
        col.style = { alignment: { vertical: "middle", horizontal: "center" } };
        col.header = t;
        col.key = f;
        col.width = w;
        columns.push(col);
      }
    }

    let workbook = new Excel.Workbook();
    let sheet = workbook.addWorksheet("My Sheet", {
      views: [{ xSplit: 1, ySplit: 1 }],
    });
    sheet.columns = columns;
    sheet.addRows(data);
    // 处理复杂表头
    if (titleRows > 1) {
      for (let i = 1; i < titleRows; i++) sheet.spliceRows(1, 0, []); // 头部插入空行

      for (let i = 0; i < titleRows; i++) {
        let row = headers[i];
        for (let j = 0, rlen = row.length; j < rlen; j++) {
          let col = row[j];
          if (!col.m1) continue;

          sheet.getCell(col.m1).value = col.t;
          sheet.mergeCells(col.m1 + ":" + col.m2);
        }
      }
    }

    // 处理样式、日期、字典项
    sheet.eachRow(function (row, rowNumber) {
      // 设置行高
      row.height = 30;

      row.eachCell({ includeEmpty: true }, (cell) => {
        // 设置边框 黑色 细实线
        const top = { style: "thin", color: { argb: "000000" } };
        const left = { style: "thin", color: { argb: "000000" } };
        const bottom = { style: "thin", color: { argb: "000000" } };
        const right = { style: "thin", color: { argb: "000000" } };
        cell.border = { top, left, bottom, right };

        // 设置标题部分为粗体
        if (rowNumber <= titleRows) {
          cell.font = { bold: true };
          return;
        }
      });
    });

    this.ctx.set("Content-Type", "application/vnd.openxmlformats");
    // 这个地方的空格不要更改
    this.ctx.set(
      "Content-Disposition",
      "attachment;filename*=UTF-8' '" + encodeURIComponent(name) + ".xlsx"
    );
    const res = await workbook.xlsx.writeBuffer();
    return res;
  }
}
module.exports = ExcelExport;
