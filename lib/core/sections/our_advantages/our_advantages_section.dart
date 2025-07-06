import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:verdro_web/core/utils/app_colors.dart';
import 'package:verdro_web/core/sections/our_advantages/widgets/our_advantages_description.dart';
import 'package:verdro_web/core/sections/our_advantages/widgets/our_advantages_list_view.dart';
import 'package:verdro_web/core/sections/our_advantages/widgets/our_advantages_title.dart';
import 'package:verdro_web/core/models/our_advantages_model.dart';

class OurAdvantagesSection extends StatefulWidget {
  const OurAdvantagesSection({super.key, required this.ourAdvantagesList});
  final List<OurAdvantagesModel> ourAdvantagesList;

  @override
  State<OurAdvantagesSection> createState() => _OurAdvantagesSectionState();
}

class _OurAdvantagesSectionState extends State<OurAdvantagesSection> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: const Key('our_advantages_section'),
      onVisibilityChanged: (info) {
        setState(() {
          _isVisible = info.visibleFraction > 0.3;
        });
      },

      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        height: 700,
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OurAdvantagesTitle(triggerAnimation: _isVisible),
            const SizedBox(height: 20),
            OurAdvantagesDescription(triggerAnimation: _isVisible),
            const SizedBox(height: 20),
            OurAdvantagesListView(
              ourAdvantagesList: widget.ourAdvantagesList,
              triggerAnimation: _isVisible,
            ),
          ],
        ),
      ),
    );
  }
}
