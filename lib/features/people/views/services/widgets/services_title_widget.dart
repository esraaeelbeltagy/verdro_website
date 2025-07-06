import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/utils/app_styles.dart';

class ServiceTitleWidget extends StatefulWidget {
  const ServiceTitleWidget({super.key});

  @override
  State<ServiceTitleWidget> createState() => _ServiceTitleWidgetState();
}

class _ServiceTitleWidgetState extends State<ServiceTitleWidget> with SingleTickerProviderStateMixin {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('service-title'),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.3 && !_visible) {
          setState(() => _visible = true);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 800),
        opacity: _visible ? 1 : 0,
        child: AnimatedSlide(
          duration: const Duration(milliseconds: 800),
          offset: _visible ? Offset.zero : const Offset(-0.3, 0),
          child: Text(
            AppStrings.servicies,
            style: AppStyles.styleSemiBold65DarkOrange(context).copyWith(fontSize: 45),
          ),
        ),
      ),
    );
  }
}
