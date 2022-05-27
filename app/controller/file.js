const { Controller } = require("egg");
const path = require("path");
const fs = require("fs");

const saveater = (sourcerfile, target) => {
  fs.writeFileSync(target, sourcerfile);
};

class UserController extends Controller {
  async imgFn() {
    // console.log(this.ctx.request.files[0]);
    const { filepath, filename } = this.ctx.request.files[0];

    const sourcerfile = fs.readFileSync(filepath); //图片路径

    const target = path.join(process.cwd(), "app/public/upload", filename); // 拼接文件

    saveater(sourcerfile, target);
    this.ctx.body = {
      status: 200,
      messge: "succes",
      avater: filename,
    };
  }
}

module.exports = UserController;
