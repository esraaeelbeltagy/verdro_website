import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/sections/about_us/widgets/about_us_description.dart';
import 'package:verdro_web/core/sections/about_us/widgets/about_us_title.dart';

class AboutUsSection extends StatefulWidget {
  const AboutUsSection({super.key, required this.contentText});
  final String contentText;

  @override
  State<AboutUsSection> createState() => _AboutUsSectionState();
}

class _AboutUsSectionState extends State<AboutUsSection> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('about_us_section'),
      onVisibilityChanged: (info) {
        setState(() {
          _isVisible = info.visibleFraction > 0.3;
        });
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(50, 50, 150, 50),
        height: 500,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutUsTitle(triggerAnimation: _isVisible),
            const SizedBox(height: 20),
            AboutUsDescription(
              contentText: widget.contentText,
              triggerAnimation: _isVisible,
            ),
          ],
        ),
      ),
    );
  }
}
