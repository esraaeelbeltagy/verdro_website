import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:verdro_web/core/widgets/custom_dark_orange_button.dart';
import 'package:verdro_web/core/widgets/site_logo.dart';
import 'package:visibility_detector/visibility_detector.dart';

// class CustomNavBar extends StatefulWidget {
//   const CustomNavBar({super.key, required this.navItems});

//   final List<String> navItems;

//   @override
//   State<CustomNavBar> createState() => _CustomNavBarState();
// }

// class _CustomNavBarState extends State<CustomNavBar> with TickerProviderStateMixin {
//   late List<AnimationController> _controllers;
//   late List<Animation<Offset>> _slideAnimations;
//   late List<Animation<double>> _fadeAnimations;

//   bool _isVisible = false;

//   @override
//   void initState() {
//     super.initState();

//     _controllers = List.generate(widget.navItems.length, (index) {
//       return AnimationController(
//         vsync: this,
//         duration: const Duration(milliseconds: 500),
//       );
//     });

//     _slideAnimations = _controllers.map((controller) {
//       return Tween<Offset>(
//         begin: const Offset(0.2, 0),
//         end: Offset.zero,
//       ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
//     }).toList();

//     _fadeAnimations = _controllers.map((controller) {
//       return Tween<double>(begin: 0.0, end: 1.0).animate(controller);
//     }).toList();
//   }

//   void _startAnimations() {
//     for (int i = 0; i < _controllers.length; i++) {
//       _controllers[i].reset();
//       Future.delayed(Duration(milliseconds: i * 100), () {
//         if (mounted) _controllers[i].forward();
//       });
//     }
//   }

//   @override
//   void dispose() {
//     for (final controller in _controllers) {
//       controller.dispose();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return VisibilityDetector(
//       key: const Key('custom_navbar_visibility'),
//       onVisibilityChanged: (info) {
//         final shouldAnimate = info.visibleFraction > 0.3;
//         if (shouldAnimate != _isVisible) {
//           setState(() {
//             _isVisible = shouldAnimate;
//             if (_isVisible) {
//               _startAnimations();
//             }
//           });
//         }
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Row(
//           children: [
//             const SiteLogo(),
//             const Spacer(),
//             for (int i = 0; i < widget.navItems.length; i++)
//               SlideTransition(
//                 position: _slideAnimations[i],
//                 child: FadeTransition(
//                   opacity: _fadeAnimations[i],
//                   child: TextButton(
//                     onPressed: () {},
//                     child: AnimatedTextKit(
//                       key: ValueKey(_isVisible),
//                       isRepeatingAnimation: false,
//                       totalRepeatCount: 1,
//                       animatedTexts: [
//                         TyperAnimatedText(
//                           widget.navItems[i],
//                           speed: const Duration(milliseconds: 150),
//                           textStyle: AppStyles.styleRegular40White(context).copyWith(fontSize: 20),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             const SizedBox(width: 20),
//             CustomDarkOrangeButton(text: AppStrings.joinUs, onPressed: () {}),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomNavBar extends StatefulWidget {
//   const CustomNavBar({
//     super.key,
//     required this.navItems,
//     required this.navKeys,
//   });

//   final List<String> navItems;
//   final Map<String, GlobalKey> navKeys;

//   @override
//   State<CustomNavBar> createState() => _CustomNavBarState();
// }

// class _CustomNavBarState extends State<CustomNavBar> with TickerProviderStateMixin {
//   late List<AnimationController> _controllers;
//   late List<Animation<Offset>> _slideAnimations;
//   late List<Animation<double>> _fadeAnimations;

//   bool _isVisible = false;

//   @override
//   void initState() {
//     super.initState();
//     _controllers = List.generate(widget.navItems.length, (index) {
//       return AnimationController(
//         vsync: this,
//         duration: const Duration(milliseconds: 500),
//       );
//     });

//     _slideAnimations = _controllers.map((controller) {
//       return Tween<Offset>(
//         begin: const Offset(0.2, 0),
//         end: Offset.zero,
//       ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
//     }).toList();

//     _fadeAnimations = _controllers.map((controller) {
//       return Tween<double>(begin: 0.0, end: 1.0).animate(controller);
//     }).toList();
//   }

//   void _startAnimations() {
//     for (int i = 0; i < _controllers.length; i++) {
//       _controllers[i].reset();
//       Future.delayed(Duration(milliseconds: i * 100), () {
//         if (mounted) _controllers[i].forward();
//       });
//     }
//   }

//   void _scrollToSection(String sectionName) {
//     final key = widget.navKeys[sectionName];
//     if (key != null) {
//       final context = key.currentContext;
//       if (context != null) {
//         Scrollable.ensureVisible(
//           context,
//           duration: const Duration(milliseconds: 600),
//           curve: Curves.easeInOut,
//         );
//       }
//     }
//   }

//   @override
//   void dispose() {
//     for (final controller in _controllers) {
//       controller.dispose();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return VisibilityDetector(
//       key: const Key('custom_navbar_visibility'),
//       onVisibilityChanged: (info) {
//         final shouldAnimate = info.visibleFraction > 0.3;
//         if (shouldAnimate != _isVisible) {
//           setState(() {
//             _isVisible = shouldAnimate;
//             if (_isVisible) _startAnimations();
//           });
//         }
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Row(
//           children: [
//             const SiteLogo(),
//             const Spacer(),
//             for (int i = 0; i < widget.navItems.length; i++)
//               SlideTransition(
//                 position: _slideAnimations[i],
//                 child: FadeTransition(
//                   opacity: _fadeAnimations[i],
//                   child: TextButton(
//                     onPressed: () {
//                       _scrollToSection(widget.navItems[i]);
//                     },
//                     child: AnimatedTextKit(
//                       key: ValueKey(_isVisible),
//                       isRepeatingAnimation: false,
//                       totalRepeatCount: 1,
//                       animatedTexts: [
//                         TyperAnimatedText(
//                           widget.navItems[i],
//                           speed: const Duration(milliseconds: 150),
//                           textStyle: AppStyles.styleRegular40White(context).copyWith(fontSize: 20),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             const SizedBox(width: 20),
//             CustomDarkOrangeButton(text: AppStrings.joinUs, onPressed: () {}),
//           ],
//         ),
//       ),
//     );
//   }
// }

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({
    super.key,
    required this.navItems,
    required this.navKeys,
    required this.onNavItemClicked,
  });

  final List<String> navItems;
  final Map<String, GlobalKey> navKeys;
  final void Function(String) onNavItemClicked;

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late List<Animation<Offset>> _slideAnimations;
  late List<Animation<double>> _fadeAnimations;

  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    _controllers = List.generate(widget.navItems.length, (index) {
      return AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
      );
    });

    _slideAnimations = _controllers.map((controller) {
      return Tween<Offset>(
        begin: const Offset(0.2, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));
    }).toList();

    _fadeAnimations = _controllers.map((controller) {
      return Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    }).toList();
  }

  void _startAnimations() {
    for (int i = 0; i < _controllers.length; i++) {
      _controllers[i].reset();
      Future.delayed(Duration(milliseconds: i * 100), () {
        if (mounted) _controllers[i].forward();
      });
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('custom_navbar_visibility'),
      onVisibilityChanged: (info) {
        final shouldAnimate = info.visibleFraction > 0.3;
        if (shouldAnimate != _isVisible) {
          setState(() {
            _isVisible = shouldAnimate;
            if (_isVisible) {
              _startAnimations();
            }
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            const SiteLogo(),
            const Spacer(),
            for (int i = 0; i < widget.navItems.length; i++)
              SlideTransition(
                position: _slideAnimations[i],
                child: FadeTransition(
                  opacity: _fadeAnimations[i],
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(5),
                    child: TextButton(
                    
                      onPressed: () {
                        widget.onNavItemClicked(widget.navItems[i]);
                      },
                      child: AnimatedTextKit(
                        key: ValueKey(_isVisible),
                        isRepeatingAnimation: false,
                        totalRepeatCount: 1,
                        animatedTexts: [
                          TyperAnimatedText(
                            widget.navItems[i],
                            speed: const Duration(milliseconds: 150),
                            textStyle: AppStyles.styleRegular40White(
                              context,
                            ).copyWith(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(width: 20),
            CustomDarkOrangeButton(text: AppStrings.joinUs, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
