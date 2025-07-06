import 'package:flutter/material.dart';
import 'package:verdro_web/core/models/our_advantages_model.dart';
import 'package:verdro_web/core/sections/our_advantages/our_advantages_section.dart';

class InvestorsOurAdvantagesSection extends StatelessWidget {
  const InvestorsOurAdvantagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  OurAdvantagesSection(ourAdvantagesList: ourAdvantagesList,);
  }
}