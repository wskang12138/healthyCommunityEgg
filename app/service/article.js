"use strict";

const Service = require("egg").Service;

class ArticleService extends Service {
  //根据不同条件查询文章
  async queryArticle(obj, startIndex, limit) {
    try {
      let sql = `select * from articles where type="${obj.type}"`;
      obj.title ? (sql += `and title like '%${obj.title}%'`) : "";
      sql += ` order by id desc  limit ${startIndex},${limit}`;
      const result = await this.app.mysql.query(sql);
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  ////  //模糊联表查询
  async queryArticles(sql) {
    try {
      const res = await this.app.mysql.query(sql);
      let dataString = JSON.stringify(res); //数据格式得转化
      let data = JSON.parse(dataString);
      return data;
    } catch (error) {
      console.log(error);
      return null;
    }
  }

  //计算文章总数
  async findAllArticle(obj) {
    let sql = `select count(*) as total from articles where type="${obj.type}"`;
    obj.title ? (sql += ` and title like '%${obj.title}%'`) : "";
    try {
      const result = await this.app.mysql.query(sql);
      return result[0].total;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //删除文章
  async deleteArticle(id) {
    const { app } = this;
    try {
      const res = await app.mysql.query(
        `delete from articles where id in (${id}) `
      );
      return res;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  //保存与插入
  async saveOrUpdateArticle(obj) {
    const { app } = this;
    let sql;
    obj.url ? obj.url : (obj.url = "");
    if (obj.id) {
      //id存在则是执行更新操作。
      try {
        sql = `update articles set title="${obj.title}" , description="${obj.description}",publish_time='${obj.publish_time}',url="${obj.url}" where id=${obj.id}`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    } else {
      //进行插入
      try {
        sql = `insert articles (title, description,publish_time,author,type,url) value ('${obj.title}','${obj.description}','${obj.publish_time}','${obj.author}','${obj.type}','${obj.url}')`;
        const res = await app.mysql.query(sql);
        return res;
      } catch (error) {
        console.log(error);
        return null;
      }
    }
  }

  //查找作者
  async findauthor() {
    const { app } = this;
    try {
      const res = await app.mysql.query(
        'select distinct  author from articles where type="文章" '
      );

      let dataString = JSON.stringify(res); //数据格式得转化
      let data = JSON.parse(dataString);

      return data;
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
}

module.exports = ArticleService;
