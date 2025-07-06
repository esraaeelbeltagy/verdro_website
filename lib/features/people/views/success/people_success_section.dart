import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:verdro_web/features/people/models/company_model.dart';
import 'package:verdro_web/features/people/views/success/widgets/company_card.dart';

class PeopleSuccessSection extends StatelessWidget {
  const PeopleSuccessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.lightGreen,
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text('SUCCESS', style: AppStyles.styleRegular40White(context).copyWith(
              fontSize: 45 , 
              color: AppColors.white, 
            )),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    children: leftCompanies
                        .map((company) => CompanyCard(company: company))
                        .toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Image.asset(
                        Assets.imagesMan,
                        width: 300,
                        height: 400,
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: rightCompanies
                        .map((company) => CompanyCard(company: company))
                        .toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
