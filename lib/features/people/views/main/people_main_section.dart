import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/main/main_section.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/features/people/models/people_nav_items.dart';
import 'package:verdro_web/features/people/views/main/widgets/people_main_section_title.dart';

// class PeopleMainSection extends StatelessWidget {
//   const PeopleMainSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: CustomMainSection(
//         imagePath: Assets.imagesMainSection,
//         navItems: peopleNavItems,
//         mainSectionTitleWidget: PeopleMainSectionTitle(),
//       ),
//     );
//   }
// }



// class PeopleMainSection extends StatelessWidget {
//   const PeopleMainSection({super.key, required this.navKeys});

//   final Map<String, GlobalKey> navKeys;

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: CustomMainSection(
//         imagePath: Assets.imagesMainSection,
//         navItems: peopleNavItems,
//         navKeys: navKeys,
//         mainSectionTitleWidget: PeopleMainSectionTitle(),
//       ),
//     );
//   }
// }





// class PeopleMainSection extends StatelessWidget {
//   const PeopleMainSection({super.key, required this.navKeys});

//   final Map<String, GlobalKey> navKeys;

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: CustomMainSection(
//         imagePath: Assets.imagesMainSection,
//         navItems: peopleNavItems,
//         navKeys: navKeys,
//         mainSectionTitleWidget: PeopleMainSectionTitle(),
//       ),
//     );
//   }
// }





class PeopleMainSection extends StatelessWidget {
  const PeopleMainSection({
    super.key,
    required this.navKeys,
    required this.onNavItemClicked,
  });

  final Map<String, GlobalKey> navKeys;
  final void Function(String) onNavItemClicked;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomMainSection(
        imagePath: Assets.imagesMainSection,
        navItems: peopleNavItems,
        navKeys: navKeys,
        onNavItemClicked: onNavItemClicked,
        mainSectionTitleWidget: PeopleMainSectionTitle(),
      ),
    );
  }
}




