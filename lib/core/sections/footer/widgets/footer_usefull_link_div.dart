import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_custom_list_view.dart';
import 'package:verdro_web/core/models/footer_models.dart';

class FooterUsefullLinksDiv extends StatelessWidget {
  const FooterUsefullLinksDiv({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: FooterCustomListView(
        title: AppStrings.usefulLinks,
        textList: usefullLinks,
      ),
    );
  }
}
