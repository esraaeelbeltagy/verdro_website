// import 'package:flutter/material.dart';
// import 'package:verdro_web/features/investors/views/about_us/investors_about_us_section.dart';
// import 'package:verdro_web/features/investors/views/contact/investors_contact_section.dart';
// import 'package:verdro_web/features/investors/views/energy/investors_energy_section.dart';
// import 'package:verdro_web/features/investors/views/footer/investors_footer_section.dart';
// import 'package:verdro_web/features/investors/views/main/investors_main_section.dart';
// import 'package:verdro_web/features/investors/views/our_advantages/investors_our_advantages_section.dart';
// import 'package:verdro_web/features/investors/views/projects/investors_projects_section.dart';
// import 'package:verdro_web/features/investors/views/quetions/questions_section.dart';
// import 'package:verdro_web/features/investors/views/offers/offers_section.dart';

// class InverstorsDesktopView extends StatelessWidget {
//   const InverstorsDesktopView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           //* main section
//           InvestorsMainSection(),

//           //* About Us section
//           InvestorsAboutUsSection(),
//           //* Our Advantages section
//           InvestorsOurAdvantagesSection(),
//             //* Energy section
//            InvestorsEnergySection(),
//             //* Projects Section
//             InvestorsProjectsSection(),
//             //* offers Section
//             InvestorsOffersSection(),
//             //* Quetions  Section
//             InvestorsQuestionsSection(),
//             //* Footer Section
//             InvestorsFooterSection(),

//           //   //! Contact Section
//           InvestorsContactSection(
            
//           ),
//         ],
//       ),
//     );
//   }
// }







import 'package:flutter/material.dart';
import 'package:verdro_web/features/investors/views/about_us/investors_about_us_section.dart';
import 'package:verdro_web/features/investors/views/contact/investors_contact_section.dart';
import 'package:verdro_web/features/investors/views/energy/investors_energy_section.dart';
import 'package:verdro_web/features/investors/views/footer/investors_footer_section.dart';
import 'package:verdro_web/features/investors/views/main/investors_main_section.dart';
import 'package:verdro_web/features/investors/views/our_advantages/investors_our_advantages_section.dart';
import 'package:verdro_web/features/investors/views/projects/investors_projects_section.dart';
import 'package:verdro_web/features/investors/views/quetions/questions_section.dart';
import 'package:verdro_web/features/investors/views/offers/offers_section.dart';


// class InvestorsDesktopView extends StatefulWidget {
//   const InvestorsDesktopView({super.key, required this.sectionKeys});

//   final Map<String, GlobalKey> sectionKeys;

//   @override
//   State<InvestorsDesktopView> createState() => _InvestorsDesktopViewState();
// }

// class _InvestorsDesktopViewState extends State<InvestorsDesktopView> {
//   final ScrollController _scrollController = ScrollController();

//   void _onNavItemClicked(String keyName) {
//   final key = widget.sectionKeys[keyName];
//   if (key?.currentContext != null) {
//     Scrollable.ensureVisible(
//       key!.currentContext!,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//     );
//   }
// }

//   Widget _wrapWithKey(Widget child, GlobalKey key) {
//     return SliverToBoxAdapter(
//       key: key,
//       child: child,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         controller: _scrollController,
//         slivers: [
//           InvestorsMainSection(
//             navKeys: widget.sectionKeys,
//             onNavItemClicked: _onNavItemClicked,
//           ),
//           _wrapWithKey(InvestorsAboutUsSection(), widget.sectionKeys['About']!),
//           _wrapWithKey(InvestorsOurAdvantagesSection(), widget.sectionKeys['Advantages']!),
//           _wrapWithKey(InvestorsEnergySection(), widget.sectionKeys['Energy']!),
//           _wrapWithKey(InvestorsProjectsSection(), widget.sectionKeys['Projects']!),
//           _wrapWithKey(InvestorsOffersSection(), widget.sectionKeys['Offers']!),
//           _wrapWithKey(InvestorsQuestionsSection(), widget.sectionKeys['Questions']!),
//           const InvestorsFooterSection(),
//           _wrapWithKey(InvestorsContactSection(), widget.sectionKeys['Contact']!),
//         ],
//       ),
//     );
//   }
// }





class InvestorsDesktopView extends StatelessWidget {
  const InvestorsDesktopView({
    super.key,
    required this.sectionKeys,
    required this.scrollController,
    required this.onNavItemClicked,
  });

  final Map<String, GlobalKey> sectionKeys;
  final ScrollController scrollController;
  final void Function(String keyName) onNavItemClicked;

  Widget _wrapWithKey(Widget child, GlobalKey key) {
    return SliverToBoxAdapter(
      key: key,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          InvestorsMainSection(
            navKeys: sectionKeys,
            onNavItemClicked: onNavItemClicked,
          ),
          _wrapWithKey(InvestorsAboutUsSection(), sectionKeys['About']!),
          _wrapWithKey(InvestorsOurAdvantagesSection(), sectionKeys['Advantages']!),
          _wrapWithKey(InvestorsEnergySection(), sectionKeys['Energy']!),
          _wrapWithKey(InvestorsProjectsSection(), sectionKeys['Projects']!),
          _wrapWithKey(InvestorsOffersSection(), sectionKeys['Offers']!),
          _wrapWithKey(InvestorsQuestionsSection(), sectionKeys['Questions']!),
          const InvestorsFooterSection(),
          _wrapWithKey(InvestorsContactSection(), sectionKeys['Contact']!),
        ],
      ),
    );
  }
}
