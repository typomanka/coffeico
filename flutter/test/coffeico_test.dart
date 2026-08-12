import 'package:coffeico_plus/coffeico.dart' as compatibility;
import 'package:coffeico_plus/coffeico_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const icons = <IconData>[
    Coffeico.aeropress,
    Coffeico.chemex,
    Coffeico.clever_dripper,
    Coffeico.french_press,
    Coffeico.hario_v60,
    Coffeico.kalita_wave,
    Coffeico.origami,
    Coffeico.wilfa_svart,
    Coffeico.bean,
    Coffeico.coffee_maker,
    Coffeico.portafilter,
    Coffeico.bag,
    Coffeico.bag_with_bean,
    Coffeico.hario_switch,
    Coffeico.melita_cone,
    Coffeico.bee_house_dripper,
    Coffeico.phin_filter,
    Coffeico.neapolitan_flip_pot,
    Coffeico.moka_pot,
    Coffeico.siphon_brewer,
    Coffeico.cezve,
    Coffeico.tricolate,
    Coffeico.pulsar,
    Coffeico.ufo_dripper,
    Coffeico.orea_brewer,
    Coffeico.april_brewer,
    Coffeico.ceado_hoop_brewer,
    Coffeico.oxo_rapid_brewer,
    Coffeico.timermore_b75,
    Coffeico.espro_bloom,
    Coffeico.menu,
    Coffeico.weber_workshops_bird,
    Coffeico.cafec_flower,
    Coffeico.cupping_bowl,
  ];

  test('exports all stable codepoints in order', () {
    expect(icons, hasLength(34));
    expect(
      icons.map((icon) => icon.codePoint),
      orderedEquals(List<int>.generate(34, (index) => 0xf101 + index)),
    );
    expect(icons.map((icon) => icon.codePoint).toSet(), hasLength(34));
  });

  test('uses the renamed package font asset', () {
    for (final icon in icons) {
      expect(icon.fontFamily, 'Coffeico');
      expect(icon.fontPackage, 'coffeico_plus');
    }
  });

  test('keeps representative historic and new assignments', () {
    expect(Coffeico.aeropress.codePoint, 0xf101);
    expect(Coffeico.menu.codePoint, 0xf11f);
    expect(Coffeico.weber_workshops_bird.codePoint, 0xf120);
    expect(Coffeico.cafec_flower.codePoint, 0xf121);
    expect(Coffeico.cupping_bowl.codePoint, 0xf122);
  });

  test('retains the original library filename as a compatibility export', () {
    expect(compatibility.Coffeico.aeropress, Coffeico.aeropress);
  });
}
