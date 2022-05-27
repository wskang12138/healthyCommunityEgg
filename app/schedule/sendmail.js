const Subscription = require("egg").Subscription;
class UpdateCache extends Subscription {
  // 通过 schedule 属性来设置定时任务的执行间隔等配置
  static get schedule() {
    return {
      interval: "30m", //  分钟间隔
      // cron: '* */2 * * * *', // 也可以通过 cron 表达式来构建时间间隔
      type: "all", // 指定所有的 worker 都需要执行
    };
  }
  // subscribe 是真正定时任务执行时被运行的函数
  async subscribe() {
    const { ctx } = this;
    const res = await ctx.service.tool.checkuser();
    let arr = Array.from(res);
    if (arr.length > 0) {
      const subject = "预约提醒通知";
      for (let i = 0; i < arr.length; i++) {
        const ress = await ctx.service.tool.getuser(arr[i].a_user_id);
        const { username, sendEmail } = ress;
        if (ctx.helper.checkMail(sendEmail)) {
          const { doctorName } = await ctx.service.tool.getDocter(
            arr[i].doctor
          );
          const text = `${username}你有个预约医生${doctorName}看病的的时间即将开始`;
          await ctx.service.tool.sendMail(sendEmail, subject, text);
        }
      }
    }
  }
}
module.exports = UpdateCache;
