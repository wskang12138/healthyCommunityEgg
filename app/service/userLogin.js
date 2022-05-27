"use strict";

const Service = require("egg").Service;
const svgCaptcha = require("svg-captcha");
var sd = require("silly-datetime");

class LoginService extends Service {
  async login(query) {
    const data = await this.app.mysql.query(
      `select username,avatar,roles,status,password,user_id from roles,user where r_id=roles_id and account='${query.userName}'`
    );
    const result = JSON.parse(JSON.stringify(data));
    return result[0];
  }
  async register(obj) {
    const { ctx, app } = this;
    let time = sd.format(new Date(), "YYYY-MM-DD HH:mm");

    let password = await ctx.helper.genPassword(obj.password);
    try {
      let sql = `insert user (r_id, username,account,password,phone,registerDate,avatar) value ('10','${obj.name}','${obj.userName}','${password}','${obj.phone}','${time}','moren.jpg')`;
      const res = await app.mysql.query(sql);
      return res;
    } catch (error) {
      console.log(error);
      return null;
    }
  }
  // 产生验证码
  async captcha() {
    const captcha = svgCaptcha.create({
      size: 4,
      fontSize: 50,
      width: 160,
      height: 50,
      ignoreChars: "0oO1ilI", // 验证码字符中排除 0o1i
      noise: 2, // 干扰线条的数量
      color: true, // 验证码的字符是否有颜色，默认没有，如果设定了背景，则默认有
      bacground: "#cc9966",
    });

    global.userCode = captcha.text;
    return captcha;
  }
}

module.exports = LoginService;
