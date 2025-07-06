import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class AnalysisDescription extends StatefulWidget {
  const AnalysisDescription({super.key});

  @override
  State<AnalysisDescription> createState() => _AnalysisDescriptionState();
}

class _AnalysisDescriptionState extends State<AnalysisDescription> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('analysis-desc'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_visible) {
          setState(() => _visible = true);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 800),
        opacity: _visible ? 1 : 0,
        child: AnimatedSlide(
          duration: const Duration(milliseconds: 800),
          offset: _visible ? Offset.zero : const Offset(0, 0.2),
          child: Text(
            AppStrings.analysisText,
            style: AppStyles.styleRegular40White(context).copyWith(
              fontSize: 25,
              color: AppColors.lightGreen,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
