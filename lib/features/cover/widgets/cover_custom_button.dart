
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';


class CoverCustomButton extends StatelessWidget {
  const CoverCustomButton({super.key, required this.text , 
  required this.onPressed
  });
  final String text;
  final  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.darkOrange,
        borderRadius: BorderRadius.circular(60),
      ),
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(text, style: AppStyles.styleRegular40White(context)),
        ),
      ),
    );
  }
}
