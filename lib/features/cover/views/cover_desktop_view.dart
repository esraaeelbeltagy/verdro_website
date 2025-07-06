import 'package:flutter/material.dart';
import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/features/cover/widgets/cover_content.dart';
import 'package:verdro_web/features/cover/widgets/cover_nav_bar.dart';

class CoverDesktopView extends StatelessWidget {
  const CoverDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCoverBackGround),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            CoverNavBar(),
            CoverContent(),
          ],
        ),
      ),
    );
  }
}