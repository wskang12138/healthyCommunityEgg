//中间件是一个函数，在请求与响应之间执行
//在egg中定义中间件：在app目录下创建middleware目录，然后创建js文件

module.exports = (options, app) => {
  return async function jwtErr(ctx, next) {
    const token = ctx.request.header.authorization;
    if (token) {
      try {
        decode = ctx.app.jwt.verify(token, options.secret); //验证token
        await next();
      } catch (error) {
        ctx.status = 401;
        ctx.body = {
          massage: "token已过期，请重新登录",
          status: -1,
        };
        return;
      }
    } else {
      ctx.status = 401;
      ctx.body = {
        message: "token不存在",
      };
      return;
    }
  };
};
