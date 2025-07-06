import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_strings.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_custom_list_view.dart';
import 'package:verdro_web/core/models/footer_models.dart';

class FooterServicesDiv extends StatelessWidget {
  const FooterServicesDiv({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: FooterCustomListView(
        title: AppStrings.servicies,
        textList: servicesList,
      ),
    );
  }
}
