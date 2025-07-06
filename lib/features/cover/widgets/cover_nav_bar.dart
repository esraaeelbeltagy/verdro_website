
import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/widgets/custom_dark_orange_button.dart';
import 'package:verdro_web/core/widgets/site_logo.dart';


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
          SiteLogo(),
          CustomDarkOrangeButton(
            text: AppStrings.signIn,
            onPressed: (){},
          )
        ],
      ),
    );
  }
}
