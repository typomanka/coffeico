# Coffeico Plus

Coffeico Plus is a maintained Flutter icon font for coffee brewing methods,
equipment, beans, bags, and cupping. It continues
[Coffeico](https://github.com/typomanka/coffeico), originally created by
[typomanka](https://github.com/typomanka), while preserving its `Coffeico`
class, icon names, and codepoints.

The package is available on pub.dev as
[`coffeico_plus`](https://pub.dev/packages/coffeico_plus).

## Repository layout

- `svg/` contains the numbered source icons. The numeric prefix determines the
  permanent font codepoint, so existing files must never be renumbered.
- `flutter/` is the package root used for analysis, tests, and publication.
- `flutter/lib/coffeico_plus.dart` and `flutter/fonts/Coffeico.ttf` are generated
  and committed so package consumers do not need the Node toolchain.
- `ICON_PROVENANCE.md` records authorship and licensing information.

## Generate the icon font

Install the exact locked toolchain and regenerate the derived files:

```sh
npm ci
npm run generate
dart format flutter/lib/coffeico_plus.dart
```

SVG optimization is a separate, explicit operation because it modifies source
assets:

```sh
npm run optimize:svg
```

To add an icon, append the next four-digit filename prefix, generate the font,
add the constant to the regression test inventory, and update the changelog and
provenance file.

## Verify the package

Run these commands from `flutter/`:

```sh
dart format --output=none --set-exit-if-changed lib test example
flutter analyze
flutter test
dart doc
dart pub publish --dry-run
```

The final command validates and displays the archive; it does not publish it.

## License and trademarks

The project is licensed under the MIT License and retains the original
copyright notice. Product and company names identify the depicted brewing
equipment only. Coffeico Plus is not affiliated with or endorsed by those
trademark owners.
