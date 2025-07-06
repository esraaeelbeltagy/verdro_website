import 'package:flutter/material.dart';
import 'package:verdro_web/features/people/views/about_us/people_about_us_section.dart';
import 'package:verdro_web/features/people/views/analysis/people_analysis_section.dart';
import 'package:verdro_web/features/people/views/contact/people_contact_section.dart';
import 'package:verdro_web/features/people/views/cooperation/people_cooperation_section.dart';
import 'package:verdro_web/features/people/views/footer/people_footer_section.dart';
import 'package:verdro_web/features/people/views/our_advantages/people_our_advantages_section.dart';
import 'package:verdro_web/features/people/views/projects/people_projects_section.dart';
import 'package:verdro_web/features/people/views/success/people_success_section.dart';
import 'package:verdro_web/features/people/views/main/people_main_section.dart';
import 'package:verdro_web/features/people/views/services/people_services_section.dart';

// class PeopleDesktopView extends StatelessWidget {
//   const PeopleDesktopView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           //* Main section
//           PeopleMainSection(),
//           //* About Us Section
//           PeopleAboutUsSection(),
//           //* Our Advantages
//           PeopleOurAdvantagesSection(),
//           //* services Section
//           PeopleServicesSection(),
//           //* Projects
//           PeopleProjectsSection(),
//           //* Anlysis Section
//           PeopleAnalysisSection(),
//           //* sucesss Section
//           PeopleSuccessSection(),
//           //* International Cooperation Section
//           PeopleCooperationSection(),
//           //* Footer Section
//           PeopleFooterSection(),
//           //* contact Section
//           PeopleContactSection(),
//         ],
//       ),
//     );
//   }
// }







class PeopleDesktopView extends StatelessWidget {
  const PeopleDesktopView({
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
          PeopleMainSection(
            navKeys: sectionKeys,
            onNavItemClicked: onNavItemClicked,
          ),
          _wrapWithKey(PeopleAboutUsSection(), sectionKeys['About']!),
          _wrapWithKey(PeopleOurAdvantagesSection(), sectionKeys['Advantages']!),
          _wrapWithKey(PeopleServicesSection(), sectionKeys['Services']!),
          _wrapWithKey(PeopleProjectsSection(), sectionKeys['Projects']!),
          _wrapWithKey(PeopleAnalysisSection(), sectionKeys['Analysis']!),
          _wrapWithKey(PeopleSuccessSection(), sectionKeys['Success']!),
          _wrapWithKey(PeopleCooperationSection(), sectionKeys['Cooperation']!),
          const PeopleFooterSection(),
          _wrapWithKey(PeopleContactSection(), sectionKeys['Contact']!),
          
        ],
      ),
    );
  }
}




