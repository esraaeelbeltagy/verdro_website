
import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class CoverSubTitleWidget extends StatelessWidget {
  const CoverSubTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.coverSubTitle,
      style: AppStyles.styleRegular40White(context),
    );
  }
}
