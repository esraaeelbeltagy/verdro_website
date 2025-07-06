
import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_arrow_button.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_text_form_field.dart';

class FooterRowOfTextFormOfFooter extends StatelessWidget {
  const FooterRowOfTextFormOfFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 80),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Expanded(child: FooterTextFormFeild()),
            FooterArrowButton(),
          ],
        ),
      ),
    );
  }
}
