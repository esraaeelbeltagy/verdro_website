
import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_custom_text.dart';
import 'package:verdro_web/core/models/footer_models.dart';

class ContactItemWidget extends StatelessWidget {
  const ContactItemWidget({super.key, required this.contactItemModel});
  final ContactItemModel contactItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          height: 20,
          width: 20,
          contactItemModel.iconPath,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10),
        FooterCustomText(text: contactItemModel.text),
      ],
    );
  }
}
