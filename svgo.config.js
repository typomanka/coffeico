module.exports = {
  multipass: true,
  js2svg: {
    pretty: true,
    indent: 2,
  },
  plugins: [
    {
      name: "preset-default",
      params: {
        overrides: {
          removeEditorsNSData: {
            additionalNamespaces: ["http://vectornator.io"],
          },
        },
      },
    },
    "convertStyleToAttrs",
    {
      name: "removeAttrs",
      params: {
        attrs: [
          "xml.space",
          "clip-rule",
          "stroke-linecap",
          "stroke-linejoin",
          "stroke-miterlimit",
        ],
      },
    },
  ],
}
