import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class InvestorsMainSectionTitle extends StatefulWidget {
  const InvestorsMainSectionTitle({super.key});

  @override
  State<InvestorsMainSectionTitle> createState() => _InvestorsMainSectionTitleState();
}

class _InvestorsMainSectionTitleState extends State<InvestorsMainSectionTitle> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppStyles.styleBold120HotOrange(context).copyWith(color: AppColors.white);

    return VisibilityDetector(
      key: const Key('investors_main_title'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.3 && !_visible) {
          setState(() {
            _visible = true;
          });
        } else if (info.visibleFraction == 0 && _visible) {
          setState(() {
            _visible = false;
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _visible
              ? [
                  AnimatedTextKit(
                    key: const ValueKey('line1'),
                    animatedTexts: [
                      TyperAnimatedText(
                        AppStrings.renawable,
                        textStyle: textStyle,
                        speed: const Duration(milliseconds: 300),
                      ),
                    ],
                    totalRepeatCount: 1,
                    isRepeatingAnimation: false,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  AnimatedTextKit(
                    key: const ValueKey('line2'),
                    animatedTexts: [
                      TyperAnimatedText(
                        AppStrings.isTheNew,
                        textStyle: textStyle,
                        speed: const Duration(milliseconds: 300),
                      ),
                    ],
                    totalRepeatCount: 1,
                    isRepeatingAnimation: false,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                  AnimatedTextKit(
                    key: const ValueKey('line3'),
                    animatedTexts: [
                      TyperAnimatedText(
                        AppStrings.future,
                        textStyle: textStyle,
                        speed: const Duration(milliseconds: 300),
                      ),
                    ],
                    totalRepeatCount: 1,
                    isRepeatingAnimation: false,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ]
              : [
                  const SizedBox(height: 100),
                ],
        ),
      ),
    );
  }
}
