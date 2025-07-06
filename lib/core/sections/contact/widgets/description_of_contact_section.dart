
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class DescriptionOfContactSection extends StatelessWidget {
  const DescriptionOfContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.weLookForwardToYourValuable,
      textAlign: TextAlign.center,
      style: AppStyles.styleRegular40White(context).copyWith(fontSize: 20),
    );
  }
}
