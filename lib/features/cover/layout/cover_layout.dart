import 'package:flutter/material.dart';
import 'package:verdro_web/core/widgets/adaptive_layout_widget.dart';
import 'package:verdro_web/features/cover/views/cover_desktop_view.dart';

class CoverLayout extends StatelessWidget {
  const CoverLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const CoverDesktopView());
  }
}