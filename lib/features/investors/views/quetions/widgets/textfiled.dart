import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled({
    super.key,
    required this.hintText,
    required this.maxLine,
  });

  final int maxLine;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: maxLine,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.styleRegular40White(
            context,
          ).copyWith(color: AppColors.lightOrange),
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: outlineBorderStyle(),
          enabledBorder: outlineBorderStyle(),
          border: outlineBorderStyle(),
        ),
        style: AppStyles.styleRegular40White(
          context,
        ).copyWith(color: AppColors.lightOrange, fontSize: 25),
      ),
    );
  }

  OutlineInputBorder outlineBorderStyle() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.lightGreen, width: 1.5),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
