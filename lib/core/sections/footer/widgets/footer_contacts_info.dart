
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/sections/contact/widgets/contact_item_widget.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_custom_text.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_title_text.dart';
import 'package:verdro_web/core/models/footer_models.dart';

class FooterContactsInfo extends StatelessWidget {
  const FooterContactsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FooterTtileText(title: AppStrings.contacts),
            for (int i = 0; i < contactItems.length; i++)
              ContactItemWidget(contactItemModel: contactItems[i]),

            FooterCustomText(text: "verdro@website.com "),
          ],
        ),
      ),
    );
  }
}
