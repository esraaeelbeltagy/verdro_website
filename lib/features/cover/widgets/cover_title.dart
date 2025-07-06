
import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class CoverTitleWidget extends StatelessWidget {
  const CoverTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: AppStyles.styleSemiBold65DarkOrange(context).copyWith(height: 0.9),
      child: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              AppStrings.coverTitle,
              speed: const Duration(milliseconds: 100),
            ),
          ],
          totalRepeatCount: 1,
        ),
      ),
    );
  }
}
