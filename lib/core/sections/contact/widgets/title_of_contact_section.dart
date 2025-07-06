import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class TitleOfContactSection extends StatelessWidget {
  const TitleOfContactSection({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.welcomeToVerdro,
      textAlign: TextAlign.center,
      style: AppStyles.styleRegular40White(
        context,
      ).copyWith(fontSize: 70, fontWeight: FontWeight.w500, letterSpacing: 2 , 
      color: color ?? Colors.white
      ),
    );
  }
}
