import 'package:coffeico_plus/coffeico_plus.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CoffeicoExample());

class CoffeicoExample extends StatelessWidget {
  const CoffeicoExample({super.key});

  static const _icons = <(String, IconData)>[
    ('AeroPress', Coffeico.aeropress),
    ('Hario V60', Coffeico.hario_v60),
    ('Coffee bag', Coffeico.bag_with_bean),
    ('Weber Workshops bird', Coffeico.weber_workshops_bird),
    ('CAFEC flower', Coffeico.cafec_flower),
    ('Cupping bowl', Coffeico.cupping_bowl),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Coffeico Plus')),
        body: GridView.extent(
          maxCrossAxisExtent: 180,
          padding: const EdgeInsets.all(24),
          children: [
            for (final (label, icon) in _icons)
              Semantics(
                label: label,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon, size: 48),
                    const SizedBox(height: 12),
                    Text(label, textAlign: TextAlign.center),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
