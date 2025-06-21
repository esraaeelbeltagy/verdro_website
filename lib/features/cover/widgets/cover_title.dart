
import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class CoverTitleWidget extends StatelessWidget {
  const CoverTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.coverTitle,
      textAlign: TextAlign.center,
      maxLines: 2,

      style: AppStyles.styleSemiBold70DarkOrange(context),
    );
  }
}
