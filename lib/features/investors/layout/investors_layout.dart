import 'package:flutter/material.dart';
import 'package:verdro_web/features/investors/views/inverstors_desktop_view.dart';


// class InvestorsLayout extends StatelessWidget {
//   const InvestorsLayout({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  AdaptiveLayout(
//         mobileLayout: (context) => SizedBox(),
//         tabletLayout: (context) => const SizedBox(),
//         desktopLayout: (context) =>  InverstorsDesktopView ());
//   }
// }






// class InvestorsLayout extends StatelessWidget {
//   InvestorsLayout({super.key});

//   final Map<String, GlobalKey> sectionKeys = {
//     'About': GlobalKey(),
//     'Advantages': GlobalKey(),
//     'Energy': GlobalKey(),
//     'Projects': GlobalKey(),
//     'Offers': GlobalKey(),
//     'Questions': GlobalKey(),
//     'Contact': GlobalKey(),
//   };

//   @override
//   Widget build(BuildContext context) {
//     return InvestorsDesktopView(sectionKeys: sectionKeys); // ✅
//   }
// }




class InvestorsLayout extends StatelessWidget {
  InvestorsLayout({super.key});

  final Map<String, GlobalKey> sectionKeys = {
    'About': GlobalKey(),
    'Advantages': GlobalKey(),
    'Energy': GlobalKey(),
    'Projects': GlobalKey(),
    'Offers': GlobalKey(),
    'Questions': GlobalKey(),
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
    return InvestorsDesktopView(
      sectionKeys: sectionKeys,
      scrollController: _scrollController,
      onNavItemClicked: _onNavItemClicked,
    );
  }
}
