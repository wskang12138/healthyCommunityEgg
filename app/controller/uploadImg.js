"use strict";

const Controller = require("egg").Controller;
const fs = require("fs");
const path = require("path");
const { getImages } = require("../utils/upload");

class ImagesController extends Controller {
  async init() {
    const { ctx } = this;
    ctx.body = {
      img_lis: await getImages(),
    };
  }

  async uploadImage() {
    const { ctx } = this;
    const s_in = await ctx.getFileStream();
    const filename = s_in.filename;
    const s_out = fs.createWriteStream(
      path.join(this.config.baseDir, `app/public/images/${filename}`)
    );
    s_in.pipe(s_out);
    const img_lis = await getImages();
    ctx.body = {
      img_lis,
    };
  }

  async delImage() {
    const { ctx } = this;
    const { filename } = ctx.query;
    let code;
    const promise = new Promise((resolve, reject) => {
      fs.unlink(`app/public/images/${filename}`, (err) => {
        if (err) {
          reject(err);
        } else {
          resolve();
        }
      });
    });
    await promise.then(
      () => {
        code = 200;
      },
      () => {
        code = 403;
      }
    );
    ctx.body = {
      code,
    };
  }
}

module.exports = ImagesController;
