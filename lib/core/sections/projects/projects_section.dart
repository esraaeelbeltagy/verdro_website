
// projects_section.dart
import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/projects/widgets/projects_content.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/core/widgets/main_section_bottom_curve_widget.dart';
import 'package:verdro_web/features/people/models/projects_model.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key, required this.projectsItems, required this.people});
  final List<ProjectsModel> projectsItems;
  final bool people;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 700,
          decoration: BoxDecoration(color: people ? AppColors.lightGreen : AppColors.white),
          child: Stack(
            children: [
              ProjectsContent(projectsItems: projectsItems, people: people),
              SectionBottomCurveWidget(imagfePath: Assets.imagesProjectsBottomCurve),
            ],
          ),
        ),
      ],
    );
  }
}


