import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/widgets/adaptive_layout_widget.dart';
import 'package:verdro_web/features/people/views/people_desktop_view.dart';

class PeopleLayout extends StatelessWidget {
  const PeopleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => PeopleDesktopView());
  }
}