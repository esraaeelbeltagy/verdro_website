import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class OurAdvantagesDescription extends StatefulWidget {
  const OurAdvantagesDescription({super.key, required this.triggerAnimation});
  final bool triggerAnimation;

  @override
  State<OurAdvantagesDescription> createState() => _OurAdvantagesDescriptionState();
}

class _OurAdvantagesDescriptionState extends State<OurAdvantagesDescription>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _opacity = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void didUpdateWidget(covariant OurAdvantagesDescription oldWidget) {
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
      position: _offsetAnimation,
      child: FadeTransition(
        opacity: _opacity,
        child: Text(
          AppStrings.directFinancialSupport,
          textAlign: TextAlign.center,
          style: AppStyles.styleSemBold35MeduimGreen(context).copyWith(fontSize: 20),
        ),
      ),
    );
  }
}
