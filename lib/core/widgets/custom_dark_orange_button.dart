import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class CustomDarkOrangeButton extends StatefulWidget {
  const CustomDarkOrangeButton({
    super.key,
    this.fontSize,
    this.onPressed,
    required this.text,
  });

  final double? fontSize;
  final VoidCallback? onPressed;
  final String text;

  @override
  State<CustomDarkOrangeButton> createState() => _CustomDarkOrangeButtonState();
}

class _CustomDarkOrangeButtonState extends State<CustomDarkOrangeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 2,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hoveredColor = AppColors.darkOrange.withOpacity(0.9);

    return SlideTransition(
      position: _slideAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: AnimatedScale(
            duration: const Duration(milliseconds: 200),
            scale: _isHovered ? 1.1 : 1.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: _isHovered
                    ? hoveredColor
                    : AppColors.darkOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              onPressed: widget.onPressed,
              child: AnimatedTextKit(
                totalRepeatCount: 1,
                isRepeatingAnimation: false,
                animatedTexts: [
                  TyperAnimatedText(
                    widget.text,
                    speed: const Duration(milliseconds: 200),
                    textStyle: AppStyles.styleRegular40White(context).copyWith(
                      fontSize: widget.fontSize ?? 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
