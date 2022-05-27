'use strict';

/** @type Egg.EggPlugin */
// exports.ejs = {
//   enable: true,
//   package: 'egg-view-ejs',
// };
exports.mysql = {
  enable: true,
  package: 'egg-mysql',
};
exports.cors = {
  enable: true,
  package: 'egg-cors',
};
exports.jwt={
  enable: true,
  package: "egg-jwt"
}