// import 'package:flutter/material.dart';
// import 'package:verdro_web/core/widgets/contact_social_media_column.dart';
// import 'package:verdro_web/core/utils/app_images.dart';
// import 'package:verdro_web/core/utils/app_strings.dart';
// import 'package:verdro_web/core/sections/contact/widgets/contact_custom_elevated_button.dart';
// import 'package:verdro_web/core/sections/contact/widgets/contact_custom_text_form_feild.dart';
// import 'package:verdro_web/core/sections/contact/widgets/description_of_contact_section.dart';
// import 'package:verdro_web/core/sections/contact/widgets/title_of_contact_section.dart';

// class ContactContent extends StatelessWidget {
//   const ContactContent({super.key, this.titleColor, this.buttonGradientColors});
//   final Color? titleColor;
//   final Gradient? buttonGradientColors;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Row(
//         children: [
//           Expanded(
//             flex: 3,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(height: 100),
//                   TitleOfContactSection(color: titleColor),
//                   DescriptionOfContactSection(),
//                   SizedBox(height: 50),
//                   ContactCustomTestFormFeild(
//                     hintText: AppStrings.userName,
//                     imgUrl: Assets.imagesPersonIcon,
//                   ),

//                   ContactCustomTestFormFeild(
//                     hintText: AppStrings.password,
//                     imgUrl: Assets.imagesLockIcon,
//                     obsecureText: true,
//                   ),
//                   SizedBox(height: 30),
//                   ContactCustomElevetedButton(gradient: buttonGradientColors),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(flex: 2, child: SizedBox()),
//           ContactSocialMediaColumn(),
//         ],
//       ),
//     );
//   }
// }









// contact_content.dart

import 'package:flutter/material.dart';
import 'package:verdro_web/core/widgets/contact_social_media_column.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/sections/contact/widgets/contact_custom_elevated_button.dart';
import 'package:verdro_web/core/sections/contact/widgets/contact_custom_text_form_feild.dart';
import 'package:verdro_web/core/sections/contact/widgets/description_of_contact_section.dart';
import 'package:verdro_web/core/sections/contact/widgets/title_of_contact_section.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactContent extends StatefulWidget {
  const ContactContent({super.key, this.titleColor, this.buttonGradientColors});
  final Color? titleColor;
  final Gradient? buttonGradientColors;

  @override
  State<ContactContent> createState() => _ContactContentState();
}

class _ContactContentState extends State<ContactContent> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('contact-section'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.3 && !_visible) {
          setState(() => _visible = true);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 100),
                      _animatedItem(
                        delay: 0,
                        child: TitleOfContactSection(color: widget.titleColor),
                      ),
                      _animatedItem(
                        delay: 200,
                        child: const DescriptionOfContactSection(),
                      ),
                      const SizedBox(height: 50),
                      _animatedItem(
                        delay: 400,
                        child: ContactCustomTestFormFeild(
                          hintText: AppStrings.userName,
                          imgUrl: Assets.imagesPersonIcon,
                        ),
                      ),
                      _animatedItem(
                        delay: 600,
                        child: ContactCustomTestFormFeild(
                          hintText: AppStrings.password,
                          imgUrl: Assets.imagesLockIcon,
                          obsecureText: true,
                        ),
                      ),
                      const SizedBox(height: 30),
                      _animatedItem(
                        delay: 800,
                        child: ContactCustomElevetedButton(
                          gradient: widget.buttonGradientColors,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Expanded(flex: 2, child: SizedBox()),
            const ContactSocialMediaColumn(),
          ],
        ),
      ),
    );
  }


  Widget _animatedItem({required Widget child, required int delay}) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 800),
      opacity: _visible ? 1 : 0,
      child: AnimatedSlide(
        duration: Duration(milliseconds: 800),
        offset: _visible ? Offset.zero : const Offset(0, 0.2),
        child: child,
      ),
    );
  }
}
