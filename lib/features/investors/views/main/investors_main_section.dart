// import 'package:flutter/material.dart';
// import 'package:verdro_web/core/sections/main/main_section.dart';
// import 'package:verdro_web/core/utils/app_images.dart';
// import 'package:verdro_web/features/investors/models/investors_nav_item.dart';
// import 'package:verdro_web/features/investors/views/main/widgets/investors_main_section_title.dart';

// class InvestorsMainSection extends StatelessWidget {
//   const InvestorsMainSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: CustomMainSection(
//         imagePath: Assets.imagesInvestorsMainSectionBackground,
//         navItems: investorsNavItems,
//         mainSectionTitleWidget: InvestorsMainSectionTitle(),
//       ),
//     );
//   }
// }








import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/main/main_section.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/features/investors/models/investors_nav_item.dart';
import 'package:verdro_web/features/investors/views/main/widgets/investors_main_section_title.dart';

// class InvestorsMainSection extends StatelessWidget {
//   const InvestorsMainSection({super.key, required this.navKeys});

//   final Map<String, GlobalKey> navKeys;

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: CustomMainSection(
//         imagePath: Assets.imagesInvestorsMainSectionBackground,
//         navItems: investorsNavItems,
//         navKeys: navKeys,
//         mainSectionTitleWidget: InvestorsMainSectionTitle(),
//       ),
//     );
//   }
// }




class InvestorsMainSection extends StatelessWidget {
  const InvestorsMainSection({
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
        imagePath: Assets.imagesInvestorsMainSectionBackground,
        navItems: investorsNavItems,
        navKeys: navKeys,
        onNavItemClicked: onNavItemClicked,
        mainSectionTitleWidget: InvestorsMainSectionTitle(),
      ),
    );
  }
}
