
import 'package:flutter/widgets.dart';
import 'package:verdro_web/core/utils/app_images.dart';

class CoverLogo extends StatelessWidget {
  const CoverLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.imagesLogo, width: 100, height: 100);
  }
}
