import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class ProjectsTitle extends StatefulWidget {
  const ProjectsTitle({super.key, required this.people});
  final bool people;

  @override
  State<ProjectsTitle> createState() => _ProjectsTitleState();
}

class _ProjectsTitleState extends State<ProjectsTitle>
    with TickerProviderStateMixin {
  bool _isVisible = false;
  bool _startTyping = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('projects-title'),
      onVisibilityChanged: (info) async {
        print("Visible fraction: ${info.visibleFraction}"); // ⬅️ هنا

        if (info.visibleFraction > 0.3 && !_isVisible) {
          setState(() {
            _isVisible = true;
          });
          // ننتظر لحد ما الـ Fade & Slide يشتغلوا
          await Future.delayed(const Duration(milliseconds: 800));
          if (mounted) {
            setState(() => _startTyping = true);
          }
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 800),
        opacity: _isVisible ? 1 : 0,
        child: AnimatedSlide(
          duration: const Duration(milliseconds: 800),
          offset: _isVisible ? Offset.zero : const Offset(-0.3, 0),
          child: _startTyping
              ? DefaultTextStyle(
                  style: AppStyles.styleRegular40White(context).copyWith(
                    fontSize: 45,
                    color: widget.people
                        ? AppColors.white
                        : AppColors.darkGreen,
                  ),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        AppStrings.projects,
                        speed: const Duration(milliseconds: 80),
                      ),
                    ],
                  ),
                )
              : Text(
                  AppStrings.projects,
                  style: AppStyles.styleRegular40White(context).copyWith(
                    fontSize: 45,
                    color: widget.people
                        ? AppColors.white
                        : AppColors.darkGreen,
                  ),
                ),
        ),
      ),
    );
  }
}
