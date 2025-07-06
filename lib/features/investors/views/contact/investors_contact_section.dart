import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/contact/contact_section.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_images.dart';

class InvestorsContactSection extends StatelessWidget {
  const InvestorsContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ContactSection(imagPath: Assets.imagesInvestorsContactBackground , 
    titleColor: AppColors.meduimOrange,
    buttonGridentColor: LinearGradient(
        colors: [
          Color(0xffFFCE05),
          Color(0xffFEB502),
          Color(0xffFD9C00),
          Color(0xffFD9400),
          
        ],
      ),
    );
  }
}
