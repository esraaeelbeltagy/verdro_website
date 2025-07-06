import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';
import 'package:verdro_web/features/people/models/services_model.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ServicesCustomContainer extends StatefulWidget {
  const ServicesCustomContainer({super.key , 
  
  required this.serviceModel , 
  });
  final ServicesModel serviceModel ; 
  @override
  State<ServicesCustomContainer> createState() => _ServicesCustomContainerState();
}

class _ServicesCustomContainerState extends State<ServicesCustomContainer> with SingleTickerProviderStateMixin {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(), // لازم يكون unique لكل container
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.3 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 1000),
        opacity: _isVisible ? 1 : 0,
        child: AnimatedSlide(
          duration: const Duration(milliseconds: 1000),
          offset: _isVisible ? Offset.zero : const Offset(0, 0.2),
          child: Container(
            width: 200,
            height: 100,
            padding: EdgeInsets.all(20),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: AppColors.lightGreen,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.greenShadow,
                  blurRadius: 12,
                  offset: Offset(5, 5),
                  spreadRadius: 2.5,
                ),
              ],
            ),
            child: Center(
              child: Text(
                widget.serviceModel.serviceContent,
                style: AppStyles.styleSemiBold65DarkOrange(context).copyWith(fontSize: 20, color: AppColors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
