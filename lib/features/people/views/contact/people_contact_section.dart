import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/contact/contact_section.dart';
import 'package:verdro_web/core/utils/app_images.dart';

class PeopleContactSection extends StatelessWidget {
  const PeopleContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  ContactSection(imagPath: Assets.imagesPeopleContactBackground);
  }
}