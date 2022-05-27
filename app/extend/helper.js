"use strict";
const crypto = require("crypto");

// 密匙
const SECRET_KEY = "HealtH_z02O#"; // 密匙是自定的，但需要保存好

// md5 加密
function md5(content) {
  let md5 = crypto.createHash("md5");
  return md5.update(content).digest("hex"); // 把输出编程16进制的格式
}

// 加密函数
function genPassword(password) {
  const str = `password=${password}&key=${SECRET_KEY}`; // 拼接方式是自定的，只要包含密匙即可
  return md5(str);
}

let headersHistory = [
  [
    { t: "姓名", f: "username", totalRow: true },
    { t: "性别", f: "sex", totalRow: true },
    { t: "年龄", f: "age", totalRow: true },
    { t: "电话", f: "phone", totalRow: true },
    { t: "疾病名称", f: "diease_name", totalRow: true },
    { t: "是否治愈", f: "flage", totalRow: true },
    { t: "过敏物质", f: "allergen", totalRow: true },
    { t: "有无残疾", f: "disabled_orno", totalRow: true },
    { t: "残疾编号", f: "disabled_con", totalRow: true },
    { t: "确诊时间", f: "q_time", totalRow: true },
    { t: "治愈时间", f: "z_time", totalRow: true },
  ],
];
let headersNow = [
  [
    { t: "姓名", f: "username", totalRow: true },
    { t: "年龄", f: "age", totalRow: true },
    { t: "性别", f: "sex", totalRow: true },
    { t: "电话", f: "phone", totalRow: true },
    { t: "疾病名称", f: "diease_name", totalRow: true },
    { t: "确诊时间", f: "q_time", totalRow: true },
  ],
];
let headersFamily = [
  [
    { t: "姓名", f: "username", totalRow: true },
    { t: "年龄", f: "age", totalRow: true },
    { t: "性别", f: "sex", totalRow: true },
    { t: "疾病名称", f: "diease_name", totalRow: true },
    { t: "辈分", f: "beifen", totalRow: true },
  ],
];
let headersElectron = [
  [
    { t: "姓名", f: "username", totalRow: true },
    { t: "年龄", f: "age", totalRow: true },
    { t: "性别", f: "sex", totalRow: true },
    { t: "电话", f: "phone", totalRow: true },
    { t: "体查记录", f: "examination_count", totalRow: true },
    { t: "病情描述", f: "description", totalRow: true },
    { t: "本机用药记录", f: "content_count", totalRow: true },
    { t: "记录时间", f: "count_time", totalRow: true },
  ],
];
let headersLife = [
  [
    { t: "姓名", f: "username", totalRow: true },
    { t: "体育锻炼", f: "physical", totalRow: true },
    { t: "锻炼时间", f: "exercise", totalRow: true },
    { t: "饮食爱好", f: "dietary", totalRow: true },
    { t: "睡眠情况", f: "sleep", totalRow: true },
    { t: "吸烟情况", f: "smoking", totalRow: true },
    { t: "喝酒情况", f: "drinking", totalRow: true },
    { t: "记录时间", f: "time", totalRow: true },
  ],
];

let headersLifemoban = [
  [
    { t: "用户编号", f: "l_user_id", totalRow: true },
    { t: "体育锻炼", f: "physical", totalRow: true },
    { t: "锻炼时间", f: "exercise", totalRow: true },
    { t: "饮食爱好", f: "dietary", totalRow: true },
    { t: "睡眠情况", f: "sleep", totalRow: true },
    { t: "吸烟情况", f: "smoking", totalRow: true },
    { t: "喝酒情况", f: "drinking", totalRow: true },
    { t: "记录时间", f: "time", totalRow: true },
  ],
];
let headersHeathy = [
  [
    { t: "姓名", f: "username", totalRow: true },
    { t: "身高(cm)", f: "height", totalRow: true },
    { t: "体重(kg)", f: "weight", totalRow: true },
    { t: "收缩压(mmHg)", f: "blodpres_shrink", totalRow: true },
    { t: "舒张压(mmHg)", f: "blodpres_relax", totalRow: true },
    { t: "血氧值(%)", f: "oxygen", totalRow: true },
    { t: "脉搏(分/次)", f: "spygmus", totalRow: true },
    { t: "体温(.C)", f: "temperature", totalRow: true },
    { t: "指数", f: "BMI", totalRow: true },
    { t: "血型", f: "blood", totalRow: true },
    { t: "健康状态", f: "status", totalRow: true },
    { t: "记录时间", f: "time", totalRow: true },
  ],
];
let headersHeathymoban = [
  [
    { t: "用户编号", f: "cf_user_id", totalRow: true },
    { t: "身高(cm)", f: "height", totalRow: true },
    { t: "体重(kg)", f: "weight", totalRow: true },
    { t: "收缩压(mmHg)", f: "blodpres_shrink", totalRow: true },
    { t: "舒张压(mmHg)", f: "blodpres_relax", totalRow: true },
    { t: "血氧值(%)", f: "oxygen", totalRow: true },
    { t: "脉搏(分/次)", f: "spygmus", totalRow: true },
    { t: "体温(.C)", f: "temperature", totalRow: true },
    { t: "指数", f: "BMI", totalRow: true },
    { t: "血型", f: "blood", totalRow: true },
    { t: "健康状态", f: "status", totalRow: true },
    { t: "记录时间", f: "time", totalRow: true },
  ],
];
let headersResident = [
  [
    { t: "姓名", f: "username", totalRow: true },
    { t: "出生日期", f: "borth", totalRow: true },
    { t: "性别", f: "sex", totalRow: true },
    { t: "电话", f: "phone", totalRow: true },
    { t: "地址", f: "address", totalRow: true },
    { t: "电子邮件", f: "sendEmail", totalRow: true },
    { t: "qq号", f: "qq", totalRow: true },
    { t: "文化水平", f: "level", totalRow: true },
    { t: "是否已婚", f: "marriage", totalRow: true },
    { t: "政治面貌", f: "political", totalRow: true },
    { t: "门牌号", f: "number", totalRow: true },
    { t: "身份证号", f: "identity", totalRow: true },
  ],
];
let headersAppoint = [
  [
    { t: "姓名", f: "username", totalRow: true },
    { t: "年龄", f: "age", totalRow: true },
    { t: "性别", f: "sex", totalRow: true },
    { t: "电话", f: "phone", totalRow: true },
    { t: "身份证号", f: "identity", totalRow: true },
    { t: "状态", f: "a_status", totalRow: true },
    { t: "排号", f: "cno", totalRow: true },
    { t: "预约时间", f: "a_time", totalRow: true },
    { t: "预计到达时间", f: "b_time", totalRow: true },
  ],
];

let headersMedicine = [
  [
    { t: "药品名称", f: "medicine_name", totalRow: true },
    { t: "批准文号", f: "approval_num", totalRow: true },
    { t: "批次号", f: "batch_num", totalRow: true },
    { t: "规格", f: "scale", totalRow: true },
    { t: "用法用量", f: "consumption", totalRow: true },
    { t: "药品疗效", f: "effects", totalRow: true },
    { t: "图片路劲", f: "url", totalRow: true },
  ],
];

let headersStore = [
  [
    { t: "药品名称", f: "medicine_name", totalRow: true },
    { t: "药品数量", f: "num", totalRow: true },
    { t: "存储位置", f: "position", totalRow: true },
    { t: "入库时间", f: "entry_time", totalRow: true },
  ],
];
function checkMail(value) {
  const regCN =
    /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
  if (!regCN.test(value)) {
    return false;
  } else {
    return true;
  }
}

module.exports = {
  /**
   * @param {boolean} flag 接口成功还是失败
   * @param {string} msg 返回信息
   * @param {*} data 返回数据
   * @return {obj} 统一封装返回格式
   */
  responseCode(flag, msg, data, code) {
    const obj = {
      success: flag,
      data,
      message: msg,
      status: code,
    };
    return obj;
  },
  checkMail,
  headersHistory,
  headersNow,
  headersFamily,
  headersElectron,
  headersLife,
  headersLifemoban,
  headersHeathy,
  headersHeathymoban,
  headersResident,
  headersAppoint,
  headersMedicine,
  headersStore,
  genPassword,
};
