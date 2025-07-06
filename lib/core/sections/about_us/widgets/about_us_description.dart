import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class AboutUsDescription extends StatefulWidget {
  const AboutUsDescription({
    super.key,
    required this.contentText,
    required this.triggerAnimation,
  });

  final String contentText;
  final bool triggerAnimation;

  @override
  State<AboutUsDescription> createState() => _AboutUsDescriptionState();
}

class _AboutUsDescriptionState extends State<AboutUsDescription>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offset;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 900));

    _offset = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _opacity = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void didUpdateWidget(covariant AboutUsDescription oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.triggerAnimation) {
      _controller.forward();
    } else {
      _controller.reset();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offset,
      child: FadeTransition(
        opacity: _opacity,
        child: Text(
          widget.contentText,
          style: AppStyles.styleSemBold35MeduimGreen(context),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
