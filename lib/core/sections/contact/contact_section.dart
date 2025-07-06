// import 'package:flutter/material.dart';
// import 'package:verdro_web/core/utils/app_images.dart';
// import 'package:verdro_web/core/sections/contact/widgets/contact_content.dart';
// import 'package:verdro_web/core/sections/contact/widgets/contact_logo_widget.dart';
// import 'package:verdro_web/core/widgets/main_section_bottom_curve_widget.dart';

// class ContactSection extends StatelessWidget {
//   const ContactSection({
//     super.key,
//     required this.imagPath,
//     this.titleColor,
//     this.buttonGridentColor,
//   });
//   final String imagPath;
//   final Color? titleColor;
//   final Gradient? buttonGridentColor;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 900,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         image: DecorationImage(image: AssetImage(imagPath), fit: BoxFit.cover),
//       ),
//       child: Stack(
//         children: [
//           Align(
//             alignment: Alignment.topCenter,
//             child: SizedBox(
//               width: double.infinity,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ContactSetionLogoWidget(),
//                   ContactContent(
//                     titleColor: titleColor,
//                     buttonGradientColors: buttonGridentColor,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SectionBottomCurveWidget(
//             imagfePath: Assets.imagesContactSectionBottomCurve,
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/core/sections/contact/widgets/contact_content.dart';
import 'package:verdro_web/core/sections/contact/widgets/contact_logo_widget.dart';
import 'package:verdro_web/core/widgets/main_section_bottom_curve_widget.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({
    super.key,
    required this.imagPath,
    this.titleColor,
    this.buttonGridentColor,
  });
  final String imagPath;
  final Color? titleColor;
  final Gradient? buttonGridentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagPath), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ContactSetionLogoWidget(),
                  ContactContent(
                    titleColor: titleColor,
                    buttonGradientColors: buttonGridentColor,
                  ),
                  SizedBox(height: 100,) , 
                ],
              ),
            ),
          ),
          const SectionBottomCurveWidget(
            imagfePath: Assets.imagesContactSectionBottomCurve,
          ),
        ],
      ),
    );
  }
}