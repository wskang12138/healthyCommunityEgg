"use strict";

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = (app) => {
  // 练习
  const { router, controller, middleware } = app;
  const jwtErr = middleware.checktoken(app.config.jwt);
  const log = middleware.log(app.config.jwt);

  router.get("/", jwtErr, controller.home.index);
  router.get("/captcha", controller.login.captcha);
  router.post("/login", controller.login.login);
  router.post("/logout", controller.login.logout);
  router.get("/getUserInfo", controller.login.getUserInfo);

  router.get("/home", controller.home.index);

  // 实战 文章，公告与通知接口
  router.get("/artilcle/find", jwtErr, log, controller.article.findArticle);
  router.get(
    "/artilcle/deleteById",
    jwtErr,
    log,
    controller.article.deleteArticle
  );
  router.post(
    "/artilcle/saveOrUpdateArticle",
    jwtErr,
    log,
    controller.article.saveOrUpdateArticle
  );

  //文章模糊查询
  router.get(
    "/article/queryArticle",
    jwtErr,
    log,
    controller.article.queryArticle
  );
  //查询所有作者信息
  router.get("/article/author", jwtErr, log, controller.article.findAllauthor);
  //查找文章详情
  router.get(
    "/article/detailsArticle",
    jwtErr,
    log,
    controller.article.detailsArticle
  );

  //食物推荐接口
  router.get("/foods/findAllFood", jwtErr, log, controller.foods.findFood);
  router.get("/foods/deleteFood", jwtErr, log, controller.foods.deleteFood);
  router.post(
    "/foods/saveUpdateFood",
    jwtErr,
    log,
    controller.foods.saveUpdateFood
  );

  //运动推荐接口
  router.get("/sport/findAllSport", jwtErr, log, controller.sport.findSport);
  router.get("/sport/deleteSport", jwtErr, log, controller.sport.deleteSport);
  router.post(
    "/sport/saveUpdateSport",
    jwtErr,
    log,
    controller.sport.saveUpdateSport
  );
  //现患疾病表
  router.get(
    "/nowDiease/findDiease",
    jwtErr,
    log,
    controller.nowDiease.findDiease
  );
  router.get(
    "/nowDiease/deleteDiease",
    jwtErr,
    log,
    controller.nowDiease.deleteDiease
  );
  router.post(
    "/nowDiease/saveOrUpdateDiease",
    jwtErr,
    log,
    controller.nowDiease.saveOrUpdateDiease
  );
  //现在病表下载请求
  router.get("/nowDiease/download", log, controller.nowDiease.exportExcel);

  //家族患疾病表
  router.get(
    "/familyDiease/findDiease",
    jwtErr,
    log,
    controller.familyDiease.findDiease
  );
  router.get(
    "/familyDiease/deleteDiease",
    jwtErr,
    log,
    controller.familyDiease.deleteDiease
  );
  router.post(
    "/familyDiease/saveOrUpdateDiease",
    jwtErr,
    log,
    controller.familyDiease.saveOrUpdateDiease
  );
  //家族病表下载请求
  router.get(
    "/familyDiease/download",
    log,
    controller.familyDiease.exportExcel
  );

  //查询所用的社区用户
  router.get("/findAll/user", jwtErr, log, controller.nowDiease.findUser);
  //历史患者
  router.get(
    "/historyDiease/queryDiease",
    jwtErr,
    log,
    controller.historyDiease.queryDiease
  );
  router.get(
    "/historyDiease/deleteDiease",
    jwtErr,
    log,
    controller.historyDiease.deleteDiease
  );
  router.post(
    "/historyDiease/saveOrUpdateDiease",
    jwtErr,
    log,
    controller.historyDiease.saveOrUpdateDiease
  );
  //历史病表下载请求
  router.get(
    "/historyDiease/download",
    log,
    controller.historyDiease.exportExcel
  );

  //电子病历
  router.get(
    "/electron/queryElectron",
    jwtErr,
    log,
    controller.electron.queryElectron
  );
  router.post(
    "/electron/saveOrUpdateElectron",
    jwtErr,
    log,
    controller.electron.saveOrUpdateElectron
  );
  router.get("/electron/findPeple", jwtErr, log, controller.electron.findPeple);

  //生活习惯管理
  router.get("/life/queryLife", jwtErr, log, controller.life.queryLife);
  router.get("/life/deleteLife", jwtErr, log, controller.life.deleteLife);
  router.post(
    "/life/saveOrUpdateLife",
    jwtErr,
    log,
    controller.life.saveOrUpdateLife
  );
  router.get("/life/download", log, controller.life.exportExcel);
  router.post("/life/upload", log, controller.life.uploadFiles_file);

  //健康数据管理
  router.get("/heathy/queryHeathy", jwtErr, log, controller.heathy.queryHeathy);
  router.get(
    "/heathy/deleteHeathy",
    jwtErr,
    log,
    controller.heathy.deleteHeathy
  );
  router.post(
    "/heathy/saveOrUpdateHeathy",
    jwtErr,
    log,
    controller.heathy.saveOrUpdateHeathy
  );

  router.get("/heathy/download", log, controller.heathy.exportExcel);
  router.post("/heathy/upload", log, controller.heathy.uploadFiles_file);
  //用户管理
  router.get("/users/findUsers", jwtErr, log, controller.user.queryUser);
  router.get("/users/deleteUsers", jwtErr, log, controller.user.deleteUser);
  router.post(
    "/users/saveOrUpdateUsers",
    jwtErr,
    log,
    controller.user.saveOrUpdateUser
  );
  router.get("/users/findRoles", jwtErr, log, controller.user.findRoles);
  //更改用户状态
  router.get("/users/statusChange", jwtErr, log, controller.user.statusChange);
  //修改密码
  router.post(
    "/users/passwordChange",
    jwtErr,
    log,
    controller.user.passwordChang
  );

  //角色管理
  router.get("/roles/findRoles", jwtErr, log, controller.roles.findRoles);
  router.get("/roles/deleteRoles", jwtErr, log, controller.roles.deleteRoles);
  router.post(
    "/roles/saveOrUpdateRoles",
    jwtErr,
    log,
    controller.roles.saveOrUpdateRoles
  );

  //居民信息管理
  router.get(
    "/resident/queryResident",
    jwtErr,
    log,
    controller.resident.queryResident
  );
  router.get(
    "/resident/deleteResident",
    jwtErr,
    log,
    controller.resident.deleteResident
  );
  router.post(
    "/resident/saveOrUpdateResident",
    jwtErr,
    log,
    controller.resident.saveOrUpdateResident
  );

  router.get("/resident/download", log, controller.resident.exportExcel);
  router.post("/resident/upload", log, controller.resident.uploadFiles_file);
  //图片处理，上传与删除
  router.post("/images/uploadImage", log, controller.uploadImg.uploadImage);
  router.post("/images/delImage", controller.uploadImg.delImage);
  //个人信息
  router.get("/users/findPeople", jwtErr, controller.user.findPeople);
  router.post("/users/changeImg", jwtErr, controller.user.changeImge);

  router.post("/users/updatePeople", log, controller.user.updatePeople);
  //单图上传

  //预约管理
  //现患疾病表
  router.get(
    "/appoint/findAppoint",
    jwtErr,
    log,
    controller.appoint.findAppoint
  );
  router.get(
    "/appoint/deleteAppoint",
    jwtErr,
    log,
    controller.appoint.deleteAppoint
  );
  router.post(
    "/appoint/saveOrUpdateAppoint",
    jwtErr,
    log,
    controller.appoint.saveOrUpdateAppoint
  );
  //现在病表下载请求
  router.get("/appoint/download", log, controller.appoint.exportExcel);
  router.post("/images/upload", log, controller.file.imgFn);

  //日志管理
  router.get("/log/query", jwtErr, controller.log.queryLog);
  router.get("/log/delete", jwtErr, controller.log.deleteLog);

  router.get(
    "/medicine/findAll",
    jwtErr,
    log,
    controller.medicine.findMedicine
  );
  router.get(
    "/medicine/delete",
    jwtErr,
    log,
    controller.medicine.deleteMedicine
  );
  router.post(
    "/medicine/saveUpdate",
    jwtErr,
    log,
    controller.medicine.saveUpdateMedicine
  );
  router.get("/medicine/download", log, controller.medicine.exportExcel);
  router.post("/medicine/upload", log, controller.medicine.uploadFiles_file);

  router.get("/store/findAll", jwtErr, log, controller.store.findStore);
  router.get("/store/delete", jwtErr, log, controller.store.deleteStore);
  router.post(
    "/store/saveUpdate",
    jwtErr,
    log,
    controller.store.saveOrUpdateStore
  );
  router.get("/store/findName", jwtErr, log, controller.store.findName);

  router.get("/store/download", log, controller.store.exportExcel);

  // 用户端的东西
  router.get("/userCaptcha", controller.userLogin.captcha);
  router.post("/userLogin", controller.userLogin.login);
  router.post("/userLogout", controller.userLogin.logout);
  router.get("/userGetUserInfo", controller.userLogin.getUserInfo);
  router.post("/userRegister", controller.userLogin.register);

  router.get("/user/querFindAll", jwtErr, log, controller.usermy.queryUser);
  router.post("/user/UpdateUser", jwtErr, log, controller.usermy.UpdateUser);

  router.get(
    "/user/findDiease",
    jwtErr,
    log,
    controller.userDiease.queryDiease
  );

  //家族病史
  router.get(
    "/user/familyDiease",
    jwtErr,
    log,
    controller.userFamily.findDiease
  );
  router.post(
    "/user/saveFamily",
    jwtErr,
    log,
    controller.userFamily.saveOrUpdateDiease
  );

  router.get("/user/queryLife", jwtErr, log, controller.userDiease.queryLife);
  //预约
  router.get(
    "/user/userappoint",
    jwtErr,
    log,
    controller.userAppoint.findAppoint
  );
  router.get(
    "/user/queryDoctor",
    jwtErr,
    log,
    controller.userAppoint.queryDoctor
  );
  router.get(
    "/user/findDoctor",
    jwtErr,
    log,
    controller.userAppoint.findDoctor
  );
  router.get(
    "/user/panAppoint",
    jwtErr,
    log,
    controller.userAppoint.panAppoint
  );
  router.post(
    "/user/saveAppoint",
    jwtErr,
    log,
    controller.userAppoint.saveAppoint
  );

  router.post(
    "/user/updateStatusAppoint",
    jwtErr,
    log,
    controller.userAppoint.updateStatusAppoint
  );
  //文章
  router.get(
    "/user/queryArticle",
    jwtErr,
    log,
    controller.userArticle.queryArticle
  );
  router.get(
    "/user/detailsArticle",
    jwtErr,
    log,
    controller.userArticle.detailsArticle
  );
  router.post(
    "/user/updateCount",
    jwtErr,
    log,
    controller.userArticle.updateCount
  );

  //运动
  router.get("/user/findSport", jwtErr, log, controller.userSport.findSport);
  router.get(
    "/user/foryouSport",
    jwtErr,
    log,
    controller.userSport.foryouSport
  );

  //膳食
  router.get("/user/findFood", jwtErr, log, controller.userFood.findFood);
  router.get("/user/foryouFood", jwtErr, log, controller.userFood.foryouFood);
};
