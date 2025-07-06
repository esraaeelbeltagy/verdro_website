import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:verdro_web/features/investors/views/quetions/widgets/quetion_field.dart';

class InvestorsQuestionsSection extends StatelessWidget {
  const InvestorsQuestionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '''QUESTION?
    CONTACT US''',
            style: AppStyles.styleRegular40White(
              context,
            ).copyWith(color: AppColors.orange),
          ),
          SizedBox(height: 25),
          QuestionField(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
