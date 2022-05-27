/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1574668172307_3445';

  // add your middleware config here
  config.middleware = [];

  config.security = {
    csrf: {
      enable: false
    },
    domainWhiteList: [ 'http://localhost:9525','http://localhost:9528']
    // domainWhiteList: ['*']

  };
  //设置jwt的secret密钥，通过这个来加密
  config.jwt = {
    secret: "wushikang"
  };
  config.cors = {
    credentials: true,
    allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH',
  };

  // config.view = {
  //   mapping: {
  //     '.html': 'ejs',
  //   },
  // };
  config.mysql = {
    // database configuration
    client: {
      // host
      host: '127.0.0.1',
      // port
      port: '3306',
      // username
      user: 'healthdbuser',
      // password
      password: '123456',
      // database
      database: 'community_ health',
      timzone:"+08:00"
    },
    // load into app, default is open
    app: true,
    // load into agent, default is close
    agent: false,
  };
  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };
  config.session = {
    key :"Test_SESS",   // 设置Key的默认值
    httpOnly:true,      // 设置服务端操作
    maxAge:1000*60  ,   // 设置最大有效时间
    renew: true,        // 页面有访问动作自动刷新session 
}

  config.multipart = {
    mode: 'file',
    fileExtensions: [
      '.xlsx',
    ],
  };
  return {
    ...config,
    ...userConfig,
  };
};
