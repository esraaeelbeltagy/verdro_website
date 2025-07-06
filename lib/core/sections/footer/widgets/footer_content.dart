import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_contacts_info.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_copy_right_div.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_custom_vertical_divider.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_service_div.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_usefull_link_div.dart';

class FooterContent extends StatelessWidget {
  const FooterContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FooterCopyRightDiv(),
        FooterCustomVerticalDivider(),
        FooterServicesDiv(),
        FooterCustomVerticalDivider(),

        FooterUsefullLinksDiv(),
        FooterCustomVerticalDivider(),

        FooterContactsInfo(),
      ],
    );
  }
}
