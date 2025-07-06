import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class TextContent extends StatelessWidget {
  final String energyTitle;
  final String energyDescription;
  final String researchTitle;
  final String researchDescription;

  const TextContent({
    super.key,
    required this.energyTitle,
    required this.energyDescription,
    required this.researchTitle,
    required this.researchDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(energyTitle, style: AppStyles.styleRegular40White(context)),
          Text(
            energyDescription,
            style: AppStyles.styleRegular40White(context).copyWith(fontSize: 25 , ),
          ),
          SizedBox(height: 20),
          Text(researchTitle, style: AppStyles.styleRegular40White(context)),
          Text(
            researchDescription,
            style: AppStyles.styleRegular40White(context).copyWith(
              fontSize: 25 , 
            ),
          ),
        ],
      ),
    );
  }
}
