
import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class ContactCustomElevetedButton extends StatelessWidget {
  const ContactCustomElevetedButton({super.key , 
  this.gradient , 
  });
  final Gradient? gradient ; 
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: gradient ?? LinearGradient(
          colors: [
            Color(0xff00BA28),
            Color(0xff00B025),
            Color(0xff00961F),
            Color(0xff00841B),
            Color(0xff007918),
            Color(0xff017618),
          ],
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            AppStrings.login,
            style: AppStyles.styleRegular40White(context),
          ),
        ),
      ),
    );
  }
}
