
// projects_content.dart
import 'package:flutter/material.dart';
import 'projects_title.dart';
import 'projects_list_view.dart';
import 'package:verdro_web/features/people/models/projects_model.dart';

class ProjectsContent extends StatelessWidget {
  const ProjectsContent({super.key, required this.projectsItems, required this.people});
  final List<ProjectsModel> projectsItems;
  final bool people;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectsTitle(people: people),
          const SizedBox(height: 30),
          ProjectsListViewWidget(projectsItems: projectsItems),
        ],
      ),
    );
  }
}