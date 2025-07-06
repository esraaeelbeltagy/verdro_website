
// import 'package:flutter/widgets.dart';
// import 'package:verdro_web/core/utils/app_images.dart';

// class SiteLogo extends StatelessWidget {
//   const SiteLogo({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(Assets.imagesLogo, width: 100, height: 100);
//   }
// }




import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_images.dart';

class SiteLogo extends StatefulWidget {
  const SiteLogo({super.key});

  @override
  State<SiteLogo> createState() => _SiteLogoState();
}

class _SiteLogoState extends State<SiteLogo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    ));

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
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
    return FadeTransition(
      opacity: _opacityAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Image.asset(
          Assets.imagesLogo,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
