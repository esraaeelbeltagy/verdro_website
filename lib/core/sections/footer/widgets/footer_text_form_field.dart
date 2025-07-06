
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class FooterTextFormFeild extends StatelessWidget {
  const FooterTextFormFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: AppColors.white,
        hintText: AppStrings.yourEmail,
        hintStyle: AppStyles.styleRegular40White(
          context,
        ).copyWith(fontSize: 20, color: AppColors.darkGreen),
      ),
    );
  }
}
