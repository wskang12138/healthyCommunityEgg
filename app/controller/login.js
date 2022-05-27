"use strict";

const Controller = require("egg").Controller;

class LoginController extends Controller {
  async login() {
    const { ctx } = this;
    const query = ctx.request.body;
    if (
      `'${global.code}'`.toLowerCase() !== `'${query.captcha}'`.toLowerCase()
    ) {
      return (ctx.body = ctx.helper.responseCode(false, "验证码错误", "", 500));
    }
    const result = await ctx.service.login.login(query);

    if (!result) {
      return (ctx.body = ctx.helper.responseCode(false, "用户不存在", "", 500));
    } else {
      let password = await ctx.helper.genPassword(query.password);
      let checkPwd = password == result.password ? true : false; // 对比两次密码是否一致
      if (!checkPwd) {
        return (ctx.body = ctx.helper.responseCode(
          false,
          "账号或密码错误",
          "",
          500
        ));
      } else if (result.status === "停用") {
        return (ctx.body = ctx.helper.responseCode(
          false,
          "该用户已被停用",
          "",
          500
        ));
      } else if (result.roles === 0) {
        return (ctx.body = ctx.helper.responseCode(false, "权限不够", "", 401));
      } else {
        const token = this.app.jwt.sign(
          {
            username: result.username,
            avatar: result.avatar,
            roles: result.roles, //需要存储的 token 数据
            user_id: result.user_id,
          },
          this.app.config.jwt.secret,
          { expiresIn: 60 * 60 * 24 }
        ); // 2分钟token过期
        ctx.body = ctx.helper.responseCode(true, "success", token, 200);
      }
    }
  }
  //用户注销
  async logout() {
    const { ctx } = this;
    return (ctx.body = ctx.helper.responseCode(true, "退出成功", "", 200));
  }
  //
  async getUserInfo() {
    const { ctx, app } = this;
    let { token } = ctx.query;
    // 获取token解析后的用户信息
    let decode = ctx.app.jwt.verify(token, app.config.jwt.secret); //验证token
    const { username, avatar, roles, user_id } = decode;
    const obj = {
      username,
      avatar,
      roles,
      user_id,
    };
    return (ctx.body = ctx.helper.responseCode(true, "获取成功", obj, 200));
  }
  async captcha() {
    const { ctx } = this;
    let captcha = await ctx.service.login.captcha(); // 服务里面的方法
    ctx.response.type = "image/svg+xml"; // 知道你个返回的类型
    // 返回一张图片
    ctx.body = ctx.helper.responseCode(true, "success", captcha.data, 200);
  }
}

module.exports = LoginController;
