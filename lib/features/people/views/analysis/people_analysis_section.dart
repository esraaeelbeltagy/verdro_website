import 'package:flutter/material.dart';
import 'package:verdro_web/features/people/views/analysis/widgets/analysis_chart.dart';
import 'package:verdro_web/features/people/views/analysis/widgets/analysis_description.dart';
import 'package:verdro_web/features/people/views/analysis/widgets/analysis_title.dart';

class PeopleAnalysisSection extends StatelessWidget {
  const PeopleAnalysisSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 70 , vertical: 50 , ),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            AnalysisTitle(),
            const SizedBox(height: 10),
            AnalysisDescription(),
            const SizedBox(height: 250, child: AnalysisChart()),
          ],
        ),
      ),
    );
  }
}
