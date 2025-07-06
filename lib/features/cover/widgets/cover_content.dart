
import 'package:flutter/widgets.dart';
import 'package:verdro_web/features/cover/widgets/cover_custom_container.dart';
import 'package:verdro_web/features/cover/widgets/cover_row_of_buttons.dart';
import 'package:verdro_web/features/cover/widgets/cover_sub_title.dart';
import 'package:verdro_web/features/cover/widgets/cover_title.dart';


class CoverContent extends StatelessWidget {
  const CoverContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CoverTitleWidget(),
                CoverSubTitleWidget(),
                SizedBox(height: 40),
                CoverCustomContainer(),
                SizedBox(height: 50),
                CoverRowOfButtons(),
              ],
            ),
          ),
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
