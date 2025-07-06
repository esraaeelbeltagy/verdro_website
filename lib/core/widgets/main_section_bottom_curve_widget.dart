
import 'package:flutter/material.dart';

class SectionBottomCurveWidget extends StatelessWidget {
  const SectionBottomCurveWidget({
    super.key,
    required this.imagfePath,
  });
final String imagfePath ; 
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
         imagfePath,  
          width: double.infinity,
        ),
      ),
    );
  }
}
