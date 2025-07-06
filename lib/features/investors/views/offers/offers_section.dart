import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:verdro_web/features/investors/views/offers/widgets/discount_widget.dart';

class InvestorsOffersSection extends StatelessWidget {
  const InvestorsOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 70),
              Text(
                'Offers',
                style: AppStyles.styleRegular40White(
                  context,
                ).copyWith(color: AppColors.darkOrange),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DiscountWidget(discountRate: '30%'),
              DiscountWidget(discountRate: '20%'),
              DiscountWidget(discountRate: '45%'),
            ],
          ),
        ],
      ),
    );
  }
}
