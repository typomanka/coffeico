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
  pathOptions: {
    css: "flutter/lib/coffeico.dart",
  },
  getIconId: ({ basename }) => basename.substring(5),
}
