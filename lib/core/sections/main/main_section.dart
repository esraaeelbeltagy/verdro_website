import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/main/widgets/main_section_content.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/core/sections/main/widgets/custom_nav_bar.dart';
import 'package:verdro_web/core/widgets/main_section_bottom_curve_widget.dart';


// class CustomMainSection extends StatelessWidget {
//   const CustomMainSection({super.key, required this.imagePath, required this.navItems, required this.mainSectionTitleWidget});
//  final String imagePath  ; 
//  final List<String> navItems ; 
// final Widget mainSectionTitleWidget; 
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       height: 900,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(imagePath), 
//           fit: BoxFit.fill, 
//         ),
//       ),
//       child: Stack(
//         children: [
//           Align(
//             alignment: Alignment.topCenter,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CustomNavBar(navItems: navItems,),
//                 SizedBox(height: 50),
//                 MainSectionContent(mainSectionTitleWidget: mainSectionTitleWidget) , 
//                 SizedBox(height: 50),
//               ],
//             ),
//           ),
//           SectionBottomCurveWidget(imagfePath: Assets.imagesMainSectionBottomCurve,),
//         ],
//       ),
//     );
//   }
// }




class CustomMainSection extends StatelessWidget {
  const CustomMainSection({
    super.key,
    required this.imagePath,
    required this.navItems,
    required this.mainSectionTitleWidget,
    required this.navKeys,
    required this.onNavItemClicked,
  });

  final String imagePath;
  final List<String> navItems;
  final Widget mainSectionTitleWidget;
  final Map<String, GlobalKey> navKeys;
  final void Function(String) onNavItemClicked; // ✅ هنا ضفنا الفنكشن

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomNavBar(
                  navItems: navItems,
                  navKeys: navKeys,
                  onNavItemClicked: onNavItemClicked, // ✅ هنا استخدمناها
                ),
                const SizedBox(height: 50),
                MainSectionContent(mainSectionTitleWidget: mainSectionTitleWidget),
                const SizedBox(height: 50),
              ],
            ),
          ),
          const SectionBottomCurveWidget(imagfePath: Assets.imagesMainSectionBottomCurve),
        ],
      ),
    );
  }
}
