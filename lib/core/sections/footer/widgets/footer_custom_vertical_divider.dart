
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';

class FooterCustomVerticalDivider extends StatelessWidget {
  const FooterCustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: AppColors.darkOrange, height: 300, width: 2.5);
  }
}
