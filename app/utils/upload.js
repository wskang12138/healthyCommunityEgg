"use strict";

const fs = require("fs");

async function _getImages() {
  return new Promise((resolve, reject) => {
    fs.readdir("app/public/images", async (err, data) => {
      if (err) {
        reject(err);
      } else {
        resolve(data);
      }
    });
  });
}

async function getImages() {
  const img_lis = await _getImages();
  const data = [];
  for (const item of img_lis) {
    data.push(`${item}`);
  }
  return data;
}

module.exports = {
  getImages,
};
