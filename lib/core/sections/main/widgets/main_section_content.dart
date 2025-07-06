import 'package:flutter/material.dart';
import 'package:verdro_web/core/widgets/contact_social_media_column.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MainSectionContent extends StatefulWidget {
  const MainSectionContent({
    super.key,
    required this.mainSectionTitleWidget,
  });

  final Widget mainSectionTitleWidget;

  @override
  State<MainSectionContent> createState() => _MainSectionContentState();
}

class _MainSectionContentState extends State<MainSectionContent>
    with SingleTickerProviderStateMixin {
  bool _visible = false;
  late AnimationController _controller;
  late Animation<Offset> _slideUpAnimation;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _slideUpAnimation = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeInAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _triggerAnimation() {
    if (!_visible) {
      _controller.reset();
      _controller.forward();
      _visible = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('main_section_content'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.3) {
          _triggerAnimation();
        } else {
          _visible = false;
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.mainSectionTitleWidget,
            SlideTransition(
              position: _slideUpAnimation,
              child: FadeTransition(
                opacity: _fadeInAnimation,
                child: const ContactSocialMediaColumn(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
