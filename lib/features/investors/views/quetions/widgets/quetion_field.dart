import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:verdro_web/features/investors/views/quetions/widgets/textfiled.dart';

class QuestionField extends StatelessWidget {
  const QuestionField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: const Row(
            children: [
              Expanded(child: CustomTextfiled(maxLine: 1, hintText: 'Name')),
              SizedBox(width: 10),
              Expanded(child: CustomTextfiled(maxLine: 1, hintText: 'Email')),
            ],
          ),
        ),
        const SizedBox(height: 15),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: const CustomTextfiled(maxLine: 2, hintText: 'Subject'),
        ),
        const SizedBox(height: 10),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: const CustomTextfiled(maxLine: 5, hintText: 'Message'),
        ),
        const SizedBox(height: 15),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.lightGreen),
                ),
                onPressed: () {},
                child: Text(
                  'SEND',
                  style: AppStyles.styleRegular40White(context).copyWith(
                    fontSize: 25 , 
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
