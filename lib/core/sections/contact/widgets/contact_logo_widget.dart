
import 'package:flutter/material.dart';
import 'package:verdro_web/core/widgets/site_logo.dart';

class ContactSetionLogoWidget extends StatelessWidget {
  const ContactSetionLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: SiteLogo(),
    );
  }
}
