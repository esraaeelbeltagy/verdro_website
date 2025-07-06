
import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_custom_text.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_row_of_text_form_field.dart';

class FooterCopyRightDiv extends StatelessWidget {
  const FooterCopyRightDiv({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FooterRowOfTextFormOfFooter(),
            SizedBox(height: 10),
            FooterCustomText(text: "© Agency 2016"),
            FooterCustomText(
              text: "Copyright 2018 All Right Reserved © Maxzip",
            ),
          ],
        ),
      ),
    );
  }
}
