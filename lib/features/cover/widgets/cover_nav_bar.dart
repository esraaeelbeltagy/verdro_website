
import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/features/cover/widgets/cover_custom_button.dart';
import 'package:verdro_web/features/cover/widgets/cover_logo.dart';


class CoverNavBar extends StatelessWidget {
  const CoverNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CoverLogo(),
          CoverCustomButton(text: AppStrings.joinUs , 
          onPressed: () {
            // Handle join us button press
          },
          ),
        ],
      ),
    );
  }
}
