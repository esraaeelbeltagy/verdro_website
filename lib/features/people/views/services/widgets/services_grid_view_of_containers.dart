import 'package:flutter/material.dart';
import 'package:verdro_web/features/people/models/services_model.dart';
import 'package:verdro_web/features/people/views/services/widgets/services_custom_container.dart';

class ServicesGridViewOfContainers extends StatelessWidget {
  const ServicesGridViewOfContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3.5,
          crossAxisCount: 2,
          mainAxisSpacing: 100.0,
          crossAxisSpacing: 200.0,
        ),
        padding: EdgeInsets.all(8.0),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ServicesCustomContainer(serviceModel: servicesSectionList[index],);
        },
      ),
    );
  }
}
