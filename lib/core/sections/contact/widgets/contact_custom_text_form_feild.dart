import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class ContactCustomTestFormFeild extends StatelessWidget {
  const ContactCustomTestFormFeild({
    super.key,
    required this.hintText,
    required this.imgUrl,
    this.obsecureText, 
  });
  final String hintText;
  final String imgUrl;
  final bool? obsecureText ; 
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 150),

      child: TextFormField(
        
        cursorColor: AppColors.darkGreen,
      obscureText: obsecureText ?? false,
        decoration: InputDecoration(
          
          hint: Text(
            hintText,
            style: AppStyles.styleRegular40White(
              context,
            ).copyWith(color: AppColors.meduimOrange, fontSize: 25),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              imgUrl,
              width: 20,
              height: 20,
              fit: BoxFit.fitHeight,
            ),
          ),
        
          filled: true,
          fillColor: AppColors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
