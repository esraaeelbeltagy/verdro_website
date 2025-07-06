import 'package:flutter/widgets.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class CoverSubTitleWidget extends StatelessWidget {
  const CoverSubTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppStyles.styleRegular40White(context),
      child: AnimatedTextKit(
        totalRepeatCount: 1,
        isRepeatingAnimation: false,
        animatedTexts: [
          TyperAnimatedText(
            AppStrings.coverSubTitle,
            speed: const Duration(milliseconds: 100),
          ),
        ],
      ),
    );
  }
}
