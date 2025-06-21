

import 'package:flutter/material.dart';
import 'package:verdro_web/core/functions/font_size_function.dart';
import 'package:verdro_web/core/utils/app_colors.dart';

abstract class AppStyles{
static TextStyle styleSemiBold70DarkOrange(BuildContext context) {
    return TextStyle(
   color : AppColors.darkOrange , 
    fontSize: getResponsiveFontSize(context, fontSize: 70),
    fontFamily: 'AraHamahHoms',
    fontWeight: FontWeight.w500,
  );
  }
static TextStyle styleRegular40White(BuildContext context) {
    return TextStyle(
   color : AppColors.white , 
    fontSize: getResponsiveFontSize(context, fontSize: 40),
    fontFamily: 'AraHamahHoms',
    fontWeight: FontWeight.w400,
  );
  }
}