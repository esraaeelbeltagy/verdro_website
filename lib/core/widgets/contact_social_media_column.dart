
// // import 'package:flutter/material.dart';
// // import 'package:verdro_web/core/widgets/contact_social_media_icon.dart';
// // import 'package:verdro_web/core/utils/app_images.dart';

// // class ContactSocialMediaColumn extends StatelessWidget {
// //   const ContactSocialMediaColumn({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisSize: MainAxisSize.min,
// //       mainAxisAlignment: MainAxisAlignment.center,

// //       children: [
// //         ContactSocialMediaCustomIcon(iconUrl: Assets.imagesFacbookIcon),
// //         ContactSocialMediaCustomIcon(iconUrl: Assets.imagesTwitterIcon),
// //         ContactSocialMediaCustomIcon(iconUrl: Assets.imagesYoutubeIcon),
// //         ContactSocialMediaCustomIcon(iconUrl: Assets.imagesInstgramIcon),
// //       ],
// //     );
// //   }
// // }





// import 'package:flutter/material.dart';
// import 'package:verdro_web/core/widgets/contact_social_media_icon.dart';
// import 'package:verdro_web/core/utils/app_images.dart';

// class ContactSocialMediaColumn extends StatefulWidget {
//   const ContactSocialMediaColumn({super.key});

//   @override
//   State<ContactSocialMediaColumn> createState() => _ContactSocialMediaColumnState();
// }

// class _ContactSocialMediaColumnState extends State<ContactSocialMediaColumn> with TickerProviderStateMixin {
//   late final List<AnimationController> _controllers;
//   late final List<Animation<Offset>> _animations;

//   final List<String> icons = [
//     Assets.imagesFacbookIcon,
//     Assets.imagesTwitterIcon,
//     Assets.imagesYoutubeIcon,
//     Assets.imagesInstgramIcon,
//   ];

//   @override

//   void initState() {
//     super.initState();

//     _controllers = List.generate(
//       icons.length,
//       (index) => AnimationController(
//         vsync: this,
//         duration: Duration(milliseconds: 1000 + (index * 150)), // stagger
//       ),
//     );

//     _animations = _controllers.map((controller) {
//       return Tween<Offset>(
//         begin: Offset(0, 0.7), // from bottom
//         end: Offset.zero,
//       ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
//     }).toList();

//     // Trigger animations with delay between each one
//     for (int i = 0; i < _controllers.length; i++) {
//       Future.delayed(Duration(milliseconds: i * 250), () {
//         _controllers[i].forward();
//       });
//     }
//   }

//   @override
//   void dispose() {
//     for (var controller in _controllers) {
//       controller.dispose();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(icons.length, (index) {
//         return SlideTransition(
//           position: _animations[index],
//           child: FadeTransition(
//             opacity: _controllers[index],
//             child: ContactSocialMediaCustomIcon(iconUrl: icons[index]),
//           ),
//         );
//       }),
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:verdro_web/core/widgets/contact_social_media_icon.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactSocialMediaColumn extends StatefulWidget {
  const ContactSocialMediaColumn({super.key});

  @override
  State<ContactSocialMediaColumn> createState() => _ContactSocialMediaColumnState();
}

class _ContactSocialMediaColumnState extends State<ContactSocialMediaColumn> with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;
  late final List<Animation<Offset>> _animations;
  bool _triggered = false;

  final List<String> icons = [
    Assets.imagesFacbookIcon,
    Assets.imagesTwitterIcon,
    Assets.imagesYoutubeIcon,
    Assets.imagesInstgramIcon,
  ];

  @override
  void initState() {
    super.initState();

    _controllers = List.generate(
      icons.length,
      (index) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
      ),
    );

    _animations = _controllers.map((controller) {
      return Tween<Offset>(
        begin: const Offset(0, 0.7),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    }).toList();
  }

  void _triggerAnimations() {
    if (_triggered) return;
    _triggered = true;
    for (int i = 0; i < _controllers.length; i++) {
      Future.delayed(Duration(milliseconds: i * 250), () {
        if (mounted) _controllers[i].forward();
      });
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('contact_social_column'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.3) {
          _triggerAnimations();
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(icons.length, (index) {
          return SlideTransition(
            position: _animations[index],
            child: FadeTransition(
              opacity: _controllers[index],
              child: ContactSocialMediaCustomIcon(iconUrl: icons[index]),
            ),
          );
        }),
      ),
    );
  }
}
