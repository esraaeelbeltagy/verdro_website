import 'package:flutter/widgets.dart';
import 'package:verdro_web/features/people/views/people_desktop_view.dart';

// class PeopleLayout extends StatelessWidget {
//   const PeopleLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AdaptiveLayout(
//         mobileLayout: (context) => SizedBox(),
//         tabletLayout: (context) => const SizedBox(),
//         desktopLayout: (context) => PeopleDesktopView());
//   }
// }



// class PeopleLayout extends StatefulWidget {
//   const PeopleLayout({super.key});

//   @override
//   State<PeopleLayout> createState() => _PeopleLayoutState();
// }

// class _PeopleLayoutState extends State<PeopleLayout> {
//   final ScrollController _scrollController = ScrollController();

//   final Map<String, GlobalKey> sectionKeys = {
//     'About': GlobalKey(),
//     'Advantages': GlobalKey(),
//     'Services': GlobalKey(),
//     'Projects': GlobalKey(),
//     'Analysis': GlobalKey(),
//     'Success': GlobalKey(),
//     'Cooperation': GlobalKey(),
//     'Contact': GlobalKey(),
//   };

//   void _scrollToSection(String keyName) {
//     final context = sectionKeys[keyName]?.currentContext;
//     if (context != null) {
//       Scrollable.ensureVisible(
//         context,
//         duration: const Duration(milliseconds: 600),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PeopleDesktopView(
//       scrollController: _scrollController,
//       sectionKeys: sectionKeys,
//       onNavItemClicked: _scrollToSection,
//     );
//   }
// }






class PeopleLayout extends StatelessWidget {
  PeopleLayout({super.key});

  final Map<String, GlobalKey> sectionKeys = {
    'About': GlobalKey(),
    'Advantages': GlobalKey(),
    'Services': GlobalKey(),
    'Projects': GlobalKey(),
    'Analysis': GlobalKey(),
    'Success': GlobalKey(),
    'Cooperation': GlobalKey(),
    'Contact': GlobalKey(),
  };

  final ScrollController _scrollController = ScrollController();

  void _onNavItemClicked(String keyName) {
    final key = sectionKeys[keyName];
    if (key?.currentContext != null) {
      Scrollable.ensureVisible(
        key!.currentContext!,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return PeopleDesktopView(
      sectionKeys: sectionKeys,
      scrollController: _scrollController,
      onNavItemClicked: _onNavItemClicked,
    );
  }
}
