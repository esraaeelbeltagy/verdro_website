import 'package:flutter/material.dart';
import 'package:verdro_web/features/people/views/cooperation/widgets/cooperation_list_of_containers.dart';
import 'package:verdro_web/features/people/views/cooperation/widgets/cooperation_title.dart';

class PeopleCooperationSection extends StatelessWidget {
  const PeopleCooperationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 50 , ),
      child: Column(
        children: [
          CooperationTitle(),
          const SizedBox(height: 16),
          CoperationListOfContainers(),
        ],
      ),
    );
  }
}
