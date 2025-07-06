import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/features/people/views/services/widgets/service_content.dart';

class PeopleServicesSection extends StatelessWidget {
  const PeopleServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesServices),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Image.asset(Assets.imagesServicesTopCurve, width: double.infinity),
          ServiceContent(),
        ],
      ),
    );
  }
}
