import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class AnalysisTitle extends StatefulWidget {
  const AnalysisTitle({super.key});

  @override
  State<AnalysisTitle> createState() => _AnalysisTitleState();
}

class _AnalysisTitleState extends State<AnalysisTitle> {
  bool _visible = false;
  bool _startTyping = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('analysis-title'),
      onVisibilityChanged: (info) async {
        if (info.visibleFraction > 0.2 && !_visible) {
          setState(() => _visible = true);
          await Future.delayed(const Duration(milliseconds: 700));
          if (mounted) setState(() => _startTyping = true);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 800),
        opacity: _visible ? 1 : 0,
        child: AnimatedSlide(
          duration: const Duration(milliseconds: 800),
          offset: _visible ? Offset.zero : const Offset(-0.2, 0),
          child: _startTyping
              ? DefaultTextStyle(
                  style: AppStyles.styleRegular40White(context).copyWith(
                    fontSize: 45,
                    color: AppColors.lightOrange,
                  ),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        'ANALYSIS',
                        speed: const Duration(milliseconds: 80),
                      ),
                    ],
                  ),
                )
              : Text(
                  'ANALYSIS',
                  style: AppStyles.styleRegular40White(context).copyWith(
                    fontSize: 45,
                    color: AppColors.lightOrange,
                  ),
                ),
        ),
      ),
    );
  }
}
