"use strict";

const Service = require("egg").Service;

class ArticleService extends Service {
  //根据不同条件查询文章
  async queryArticle(obj) {
    let sql = `select * from articles where type="${obj.type}" `;
    obj.title ? (sql += ` and title like '%${obj.title}%'`) : "";
    if (obj.type == "文章") {
      sql += `order by count desc`;
    } else {
      sql += `order by publish_time desc`;
    }

    try {
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //查找文章详情
  async detailsArticle(id) {
    const { app } = this;
    try {
      const res = await app.mysql.query(
        `select * from articles where id=${id} `
      );
      let dataString = JSON.stringify(res); //数据格式得转化
      let data = JSON.parse(dataString);

      return data;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async updateCount(obj) {
    const { app } = this;

    try {
      const res = await app.mysql.query(
        `update articles set count='${obj.count}' where id=${obj.id} `
      );
      let dataString = JSON.stringify(res); //数据格式得转化
      let data = JSON.parse(dataString);

      return data;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}

module.exports = ArticleService;
