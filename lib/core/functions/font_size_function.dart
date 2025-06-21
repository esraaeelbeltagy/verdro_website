// getting responsive fontSize
// scale factor
// responsive fontSize
// min and max fontSize

import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/size_config.dart';


double getResponsiveFontSize(
  BuildContext context, {
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  //* limit on responsiveFontSize

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp( lowerLimit, upperLimit); 
}

double getScaleFactor(BuildContext context) {

 // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  //* Mobile Layout
  if (width < SizeConfig.tablet) {
    return width / 550;           // 550      // كلما كبر المقام صغر الكسر .. النسبة هتقل
  }
  //* Tablet Layout
  else if (width < SizeConfig.desktop) {
    return width / 1000;     //1000        // 1600 
  }
  //* Desktop Layout
  else {
    return width / 1920;            // 1920       //2732
  }
}
