
import 'package:flutter/material.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_custom_text.dart';
import 'package:verdro_web/core/sections/footer/widgets/footer_title_text.dart';

class FooterCustomListView extends StatelessWidget {
  const FooterCustomListView({
    super.key,
    required this.title,
    required this.textList,
  });
  final String title;
  final List<String> textList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FooterTtileText(title: title),
          for (int i = 0; i < textList.length; i++)
            FooterCustomText(text: textList[i]),
        ],
      ),
    );
  }
}
