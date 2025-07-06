
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class FooterTtileText extends StatelessWidget {
  const FooterTtileText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.styleRegular40White(context).copyWith(fontSize: 30),
    );
  }
}
