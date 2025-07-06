import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class PeopleMainSectionTitle extends StatefulWidget {
  const PeopleMainSectionTitle({super.key});

  @override
  State<PeopleMainSectionTitle> createState() => _PeopleMainSectionTitleState();
}

class _PeopleMainSectionTitleState extends State<PeopleMainSectionTitle> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    final textStyle = AppStyles.styleBold120HotOrange(context);

    return VisibilityDetector(
      key: const Key('people_main_title'),
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
                        AppStrings.takeCareOf,
                        textStyle: textStyle,
                        speed: const Duration(milliseconds: 100),
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
                        AppStrings.yourPlanet,
                        textStyle: textStyle,
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],
                    totalRepeatCount: 1,
                    isRepeatingAnimation: false,
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ]
              : [
                  const SizedBox(height: 100), // أو أي placeholder بسيط
                ],
        ),
      ),
    );
  }
}
