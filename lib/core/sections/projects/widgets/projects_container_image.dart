
// projects_image_container.dart
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/features/people/models/projects_model.dart';

class ProjectsImageContainer extends StatefulWidget {
  const ProjectsImageContainer({super.key, required this.projectsModel, required this.delay});
  final ProjectsModel projectsModel;
  final Duration delay;

  @override
  State<ProjectsImageContainer> createState() => _ProjectsImageContainerState();
}

class _ProjectsImageContainerState extends State<ProjectsImageContainer> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) async {
        if (info.visibleFraction > 0.2 && !_isVisible) {
          await Future.delayed(widget.delay);
          if (mounted) setState(() => _isVisible = true);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 700),
        opacity: _isVisible ? 1 : 0,
        child: AnimatedSlide(
          duration: const Duration(milliseconds: 700),
          offset: _isVisible ? Offset.zero : const Offset(0.2, 0),
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(widget.projectsModel.imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// dummy data (for example only)
final dummyProjects = List.generate(
  5,
  (i) => ProjectsModel(imgUrl: 'assets/sample_project_$i.jpg'),
);
