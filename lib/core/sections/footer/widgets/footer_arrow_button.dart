
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_images.dart';

class FooterArrowButton extends StatelessWidget {
  const FooterArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.meduimOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        padding: EdgeInsets.all(10),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(child: Image.asset(Assets.imagesArrow)),
      ),
    );
  }
}
