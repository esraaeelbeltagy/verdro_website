
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/features/cover/widgets/cover_custom_button.dart';
import 'package:verdro_web/features/investors/layout/investors_layout.dart';
import 'package:verdro_web/features/people/layout/people_layout.dart';


class CoverRowOfButtons extends StatelessWidget {
  const CoverRowOfButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CoverCustomButton(text: AppStrings.people , 
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => const PeopleLayout(),
            ),
          );
        },
        )),
        SizedBox(width: 20),
        Expanded(
          child: CoverCustomButton(text: AppStrings.investors , 
           onPressed: (){
              Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => const InvestorsLayout(),
            ),
          );

           },
          ),
        ),
      ],
    );
  }
}
