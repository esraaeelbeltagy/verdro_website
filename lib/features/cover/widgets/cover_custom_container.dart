
import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';


class CoverCustomContainer extends StatelessWidget {
  const CoverCustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: AppColors.darkGreen,
        borderRadius: BorderRadius.circular(60),
        boxShadow: [
          BoxShadow(
            color: AppColors.white,
            blurRadius: 1,
            offset: Offset(8, 8),
          ),
        ],
      ),
      child: Text(
        AppStrings.whoAreYou,
        style: AppStyles.styleRegular40White(
          context,
        ).copyWith(fontWeight: FontWeight.w700, fontSize: 60),
      ),
    );
  }
}

