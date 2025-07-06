import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/about_us/about_us_section.dart';
import 'package:verdro_web/core/utils/app_strings.dart';

class PeopleAboutUsSection extends StatelessWidget {
  const PeopleAboutUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AboutUsSection(
            contentText: AppStrings.peopleAboutUsDescription,
          );
  }
}