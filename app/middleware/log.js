//中间件是一个函数，在请求与响应之间执行
//在egg中定义中间件：在app目录下创建middleware目录，然后创建js文件
let moment = require("moment");
module.exports = (options, app) => {
  return async function log(ctx, next) {
    let user = "";
    if (
      ctx.request.path.includes("upload") ||
      ctx.request.path.includes("download")
    ) {
      user = ctx.request.ip;
    } else {
      const token = ctx.request.header.authorization;
      decode = ctx.app.jwt.verify(token, options.secret); //验证token
      const { username } = decode;
      user = username;
    }
    const obj = {
      username: user,
      method: ctx.method,
      url: ctx.request.path,
      ip: ctx.request.ip,
      by_time: moment().format("YYYY-MM-DD HH:mm"),
    };
    await ctx.service.log.saveLog(obj);
    await next();
  };
};
