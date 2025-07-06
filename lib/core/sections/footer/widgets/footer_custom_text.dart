
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class FooterCustomText extends StatelessWidget {
  const FooterCustomText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.styleRegular40White(context).copyWith(fontSize: 20),
    );
  }
}
