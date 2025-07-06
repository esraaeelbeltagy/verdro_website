
import 'package:flutter/material.dart';
import 'package:verdro_web/features/people/views/services/widgets/services_grid_view_of_containers.dart';
import 'package:verdro_web/features/people/views/services/widgets/services_title_widget.dart';

class ServiceContent extends StatelessWidget {
  const ServiceContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, right: 60, bottom: 70, top: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ServiceTitleWidget(),
          SizedBox(height: 30),
          ServicesGridViewOfContainers(),
        ],
      ),
    );
  }
}
