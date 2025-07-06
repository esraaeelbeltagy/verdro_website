import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/features/people/views/cooperation/widgets/cooperation_custom_container.dart';

class CoperationListOfContainers extends StatelessWidget {
  const CoperationListOfContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          SizedBox(width: 20),
          SizedBox(
            width: 350,
            child: CooperationCustomContainer(
              title: 'United Arab Emirates:',
              desc: AppStrings.uaeCooperation,
            ),
          ),
          SizedBox(width: 30),
          SizedBox(
            width: 350,
            child: CooperationCustomContainer(
              title: 'France (Engie):',
              desc: '${AppStrings.franceEngie}\n${AppStrings.ebrd}',
            ),
          ),
          SizedBox(width: 30),
          SizedBox(
            width: 350,
            child: CooperationCustomContainer(
              title: 'Norway (Scatec):',
              desc: '${AppStrings.norwayScatec}\n${AppStrings.europeanUnion}',
            ),
          ),
        ],
      ),
    );
  }
}
