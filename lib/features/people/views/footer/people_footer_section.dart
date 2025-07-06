import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/footer/footer_section.dart';

class PeopleFooterSection extends StatelessWidget {
  const PeopleFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(child: FooterSection());
  }
}