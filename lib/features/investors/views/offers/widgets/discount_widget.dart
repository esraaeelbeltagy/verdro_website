import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class DiscountWidget extends StatelessWidget {
  final String discountRate;

  const DiscountWidget({super.key, required this.discountRate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 140,
      decoration: const BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'GET UP TO',
            style: AppStyles.styleRegular40White(
              context,
            ).copyWith(fontSize: 20),
          ),
          Text(
            discountRate,
            style: AppStyles.styleRegular40White(
              context,
            ).copyWith(color: AppColors.darkGreen),
          ),
          Text(
            'Discount',
            style: AppStyles.styleRegular40White(
              context,
            ).copyWith(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
