import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/footer/footer_section.dart';

class InvestorsFooterSection extends StatelessWidget {
  const InvestorsFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: const FooterSection());
  }
}
