# Coffeico Plus

A maintained Flutter icon font for coffee brewing methods, equipment, beans,
bags, and cupping. It continues
[Coffeico](https://github.com/typomanka/coffeico), originally created by
[typomanka](https://github.com/typomanka), while preserving the public
`Coffeico` class, icon names, and codepoints.

## Installation

Add the package to your Flutter application:

```sh
flutter pub add coffeico_plus
```

Or add it directly to `pubspec.yaml`:

```yaml
dependencies:
  coffeico_plus: ^1.0.1
```

## Usage

Import the library and pass any constant to Flutter's `Icon` widget:

```dart
import 'package:coffeico_plus/coffeico_plus.dart';
import 'package:flutter/material.dart';

const Icon(Coffeico.hario_v60);
const Icon(Coffeico.cupping_bowl, semanticLabel: 'Cupping bowl');
```

Icons inherit the usual `Icon` size and color properties.

## Included icons

- Brewers: `aeropress`, `chemex`, `clever_dripper`, `french_press`,
  `hario_v60`, `kalita_wave`, `origami`, `hario_switch`, `melita_cone`,
  `bee_house_dripper`, `phin_filter`, `neapolitan_flip_pot`, `moka_pot`,
  `siphon_brewer`, `cezve`, `tricolate`, `pulsar`, `ufo_dripper`,
  `orea_brewer`, `april_brewer`, `ceado_hoop_brewer`, `oxo_rapid_brewer`,
  `timermore_b75`, `espro_bloom`, `wilfa_svart`, `weber_workshops_bird`, and
  `cafec_flower`.
- Coffee and equipment: `bean`, `coffee_maker`, `portafilter`, `bag`,
  `bag_with_bean`, `menu`, and `cupping_bowl`.

See the bundled [example](example/README.md) for a runnable gallery.

## Migrating from `coffeico`

Change the dependency name and import path:

```diff
-import 'package:coffeico/coffeico.dart';
+import 'package:coffeico_plus/coffeico_plus.dart';
```

The `Coffeico` class, existing constant names, and codepoints are retained. A
`package:coffeico_plus/coffeico.dart` compatibility export is also included for
fork users who already adopted that entrypoint.

## Fork, licensing, and trademarks

This is an independently maintained fork of the original MIT-licensed
[Coffeico repository](https://github.com/typomanka/coffeico). Upstream
attribution is retained in `LICENSE`; added icon provenance is documented in
the repository's `ICON_PROVENANCE.md`.

Product and company names identify the depicted brewing equipment only.
Coffeico Plus is not affiliated with or endorsed by those trademark owners.

Issues and contributions are welcome in the
[GitHub repository](https://github.com/antonkarliner/coffeico).
