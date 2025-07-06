import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class AboutUsTitle extends StatelessWidget {
  const AboutUsTitle({super.key, required this.triggerAnimation});
  final bool triggerAnimation;

  @override
  Widget build(BuildContext context) {
    final style = AppStyles.styleBold60MeduimGreen(context);

    return triggerAnimation
        ? AnimatedTextKit(
            key: ValueKey(triggerAnimation),
            animatedTexts: [
              TyperAnimatedText(
                AppStrings.aboutUs,
                textStyle: style,
                speed: const Duration(milliseconds: 100),
              ),
            ],
            totalRepeatCount: 1,
            isRepeatingAnimation: false,
          )
        : Text(
            AppStrings.aboutUs,
            style: style,
          );
  }
}
