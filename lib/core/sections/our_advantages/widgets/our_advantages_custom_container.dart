
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:verdro_web/core/models/our_advantages_model.dart';

class OurAdvandatgesCustomContainer extends StatelessWidget {
  const OurAdvandatgesCustomContainer({
    super.key,
    required this.ourAdvantagesModel,
  });
  final OurAdvantagesModel ourAdvantagesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: AppColors.white,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.darkGreen,
            radius: 30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(ourAdvantagesModel.imageUrl),
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: ourAdvantagesModel.title,
                  style: AppStyles.styleBold60MeduimGreen(
                    context,
                  ).copyWith(color: AppColors.meduimOrange, fontSize: 30),
                ),
                TextSpan(
                  text: ourAdvantagesModel.restTitle,
                  style: AppStyles.styleBold60MeduimGreen(
                    context,
                  ).copyWith(fontSize: 30),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              ourAdvantagesModel.description,
              style: AppStyles.styleSemBold35MeduimGreen(
                context,
              ).copyWith(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}


