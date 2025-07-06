import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class CooperationCustomContainer extends StatefulWidget {
  const CooperationCustomContainer({
    super.key,
    required this.title,
    required this.desc,
  });

  final String title;
  final String desc;

  @override
  State<CooperationCustomContainer> createState() => _CooperationCustomContainerState();
}

class _CooperationCustomContainerState extends State<CooperationCustomContainer> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(), // مهم علشان كل container يبقى له key مختلف
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.2 && !_visible) {
          setState(() => _visible = true);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 800),
        opacity: _visible ? 1 : 0,
        child: AnimatedSlide(
          duration: const Duration(milliseconds: 800),
          offset: _visible ? Offset.zero : const Offset(-0.3, 0),
          child: Container(
            margin: const EdgeInsets.symmetric( horizontal: 10 ,vertical: 20),
            height: 420,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xff07bd10),
                  offset: Offset(8, 8),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: AppStyles.styleRegular40White(context).copyWith(
                    color: AppColors.darkOrange,
                    fontSize: 25,
                  ),
                ),
                Text(
                  widget.desc,
                  style: AppStyles.styleRegular40White(context).copyWith(
                    color: AppColors.darkGreen,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
