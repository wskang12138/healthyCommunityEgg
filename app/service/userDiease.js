"use strict";

const Service = require("egg").Service;

class DieaseService extends Service {
  //根据不同条件查询文章
  async queryDiease(obj) {
    try {
      const result = await this.app.mysql.select("history_diease", {
        where: { jw_user_id: obj.user_id },
      });
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  async queryLife(obj) {
    try {
      const result = await this.app.mysql.select("life", {
        where: { l_user_id: obj.user_id },
      });
      return result;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
}
module.exports = DieaseService;
