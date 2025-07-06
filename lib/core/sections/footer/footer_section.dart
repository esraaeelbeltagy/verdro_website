
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_content.dart';
import 'package:verdro_web/core/widgets/site_logo.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGreen,
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 50),
            child: SiteLogo(),
          ),
          SizedBox(height: 20),
          FooterContent(),
        ],
      ),
    );
  }
}
