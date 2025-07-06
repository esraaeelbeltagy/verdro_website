import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:verdro_web/features/investors/views/energy/widgets/energy_section.dart';

class InvestorsEnergySection extends StatelessWidget {
  const InvestorsEnergySection({super.key});

  @override
  Widget build(BuildContext context) {
    return   ClipPath(
            clipper: WaveClipperOne(reverse: true),
            child: EnergySection(),
          );
  }
}