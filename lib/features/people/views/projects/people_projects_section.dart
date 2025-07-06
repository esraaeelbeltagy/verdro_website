import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/projects/projects_section.dart';
import 'package:verdro_web/features/people/models/projects_model.dart';

class PeopleProjectsSection extends StatelessWidget {
  const PeopleProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  ProjectsSection(projectsItems: projectsList, people: true ,);
  }
}