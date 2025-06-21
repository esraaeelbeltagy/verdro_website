import 'package:flutter/material.dart';
import 'package:verdro_web/core/widgets/adaptive_layout_widget.dart';
import 'package:verdro_web/features/investors/views/inverstors_desktop_view.dart';


class InvestorsLayout extends StatelessWidget {
  const InvestorsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const InverstorsDesktopView ());
  }
}