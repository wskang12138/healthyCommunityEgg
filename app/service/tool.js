"use strict";

const Service = require("egg").Service;

const nodemailer = require("nodemailer");
const user_email = "1853316945@qq.com";
const auth_code = "oinhxhdnaysecbja";

const transporter = nodemailer.createTransport({
  service: "qq",
  secureConnection: true,
  port: 465,
  auth: {
    user: user_email, // 账号
    pass: auth_code, // 授权码
  },
});

class ToolService extends Service {
  async sendMail(email, subject, text) {
    const mailOptions = {
      from: user_email, // 发送者,与上面的user一致
      to: email, // 接收者,可以同时发送多个,以逗号隔开
      subject, // 标题
      text, // 文本
    };
    try {
      await transporter.sendMail(mailOptions);
      return true;
    } catch (err) {
      return false;
    }
  }
  async checkuser() {
    const { app } = this;
    try {
      const result = await app.mysql
        .query(`select * from appoint  where  TIMESTAMPDIFF(MINUTE, NOW(), b_time)>=0 and TIMESTAMPDIFF(MINUTE, NOW(), b_time)<=30 and a_status='待处理'
      `);
      return result;
    } catch (error) {
      return null;
    }
  }
  async getDocter(id) {
    const { app } = this;
    try {
      const result = await app.mysql.query(
        `select rolesName as doctorName from user,roles where  r_id=roles_id and user_id =${id} `
      );
      return result[0];
    } catch (error) {
      return null;
    }
  }
  async getuser(id) {
    const { app } = this;
    try {
      const result = await app.mysql.query(
        `select username,sendEmail from user where user_id=${id} `
      );
      return result[0];
    } catch (error) {
      return null;
    }
  }
}

module.exports = ToolService;
