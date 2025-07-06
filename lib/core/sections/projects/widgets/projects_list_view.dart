
// projects_list_view.dart
import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/projects/widgets/projects_container_image.dart';
import 'package:verdro_web/features/people/models/projects_model.dart';

class ProjectsListViewWidget extends StatelessWidget {
  const ProjectsListViewWidget({super.key, required this.projectsItems});
  final List<ProjectsModel> projectsItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: projectsItems.length,
        separatorBuilder: (context, index) => const SizedBox(width: 20),
        itemBuilder: (context, index) => ProjectsImageContainer(
          projectsModel: projectsItems[index],
          delay: Duration(milliseconds: 0 * index),
        ),
      ),
    );
  }
}