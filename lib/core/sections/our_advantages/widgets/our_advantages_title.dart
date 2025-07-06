import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class OurAdvantagesTitle extends StatelessWidget {
  const OurAdvantagesTitle({super.key, required this.triggerAnimation});

  final bool triggerAnimation;

  @override
  Widget build(BuildContext context) {
    final greenStyle = AppStyles.styleBold60MeduimGreen(context);
    final orangeStyle = greenStyle.copyWith(color: AppColors.meduimOrange);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (triggerAnimation)
          AnimatedTextKit(
            key: ValueKey(triggerAnimation),
            totalRepeatCount: 1,
            isRepeatingAnimation: false,
            animatedTexts: [
              TyperAnimatedText(
                AppStrings.our,
                textStyle: greenStyle,
                speed: const Duration(milliseconds: 70),
              ),
            ],
          )
        else
          Text(AppStrings.our, style: greenStyle),
        const SizedBox(width: 8),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: triggerAnimation
              ? Text(
                  AppStrings.advantages,
                  key: const ValueKey('advantages-text'),
                  style: orangeStyle,
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
