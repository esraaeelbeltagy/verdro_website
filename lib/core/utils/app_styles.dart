

import 'package:flutter/material.dart';
import 'package:verdro_web/core/functions/font_size_function.dart';
import 'package:verdro_web/core/utils/app_colors.dart';

abstract class AppStyles{
static TextStyle styleSemiBold65DarkOrange(BuildContext context) {
    return TextStyle(
   color : AppColors.darkOrange , 
    fontSize: getResponsiveFontSize(context, fontSize: 65),
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
static TextStyle styleBold120HotOrange(BuildContext context) {
    return TextStyle(
   color : AppColors.hotOrange , 
    fontSize: getResponsiveFontSize(context, fontSize: 120),
    fontFamily: 'AraHamahHoms',
    fontWeight: FontWeight.w800,
  );
  }

static TextStyle styleBold60MeduimGreen(BuildContext context) {
    return TextStyle(
   color : AppColors.meduimGreen , 
    fontSize: getResponsiveFontSize(context, fontSize: 60),
    fontFamily: 'AraHamahHoms',
    fontWeight: FontWeight.w800,
  );
  }
static TextStyle styleSemBold35MeduimGreen(BuildContext context) {
    return TextStyle(
   color : AppColors.meduimGreen , 
    fontSize: getResponsiveFontSize(context, fontSize: 35),
    fontFamily: 'AraHamahHoms',
    fontWeight: FontWeight.w600,
  );
  }
}