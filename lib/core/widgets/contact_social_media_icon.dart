
import 'package:flutter/material.dart';

class ContactSocialMediaCustomIcon extends StatelessWidget {
  const ContactSocialMediaCustomIcon({super.key, required this.iconUrl});
  final String iconUrl;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Image.asset(iconUrl, height: 22, width: 22),
    );
  }
}
