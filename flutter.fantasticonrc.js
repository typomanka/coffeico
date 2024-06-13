const fs = require("fs")
const path = require("path")

module.exports = {
  prefix: "coffeico",
  name: "Coffeico",
  inputDir: "./svg",
  outputDir: "./flutter/fonts",
  fontTypes: ["ttf"],
  assetTypes: ["css"],
  templates: {
    css: "./flutter.hbs",
  },
  codepoints: fs
    .readdirSync(path.join(__dirname, "svg"))
    .reduce((codepoints, basename) => {
      if (basename.endsWith(".svg")) {
        codepoints[basename.substring(5, basename.length - 4)] =
          0xf100 + parseInt(basename.substring(0, 4), 10)
      }
      return codepoints
    }, {}),
  pathOptions: {
    css: "flutter/lib/coffeico.dart",
  },
  getIconId: ({ basename }) => basename.substring(5),
}
