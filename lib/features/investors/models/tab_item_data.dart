import 'package:verdro_web/core/utils/app_images.dart';
import 'package:verdro_web/core/utils/app_strings.dart';

class TabItemData {
  final String title;
  final String image;
  final List<String> description;

  TabItemData({
    required this.title,
    required this.image,
    required this.description,
  });
}


  final List<TabItemData> items = [
    TabItemData(
      title: 'Solar',
      image: Assets.imagesSolar,
      description: [
        AppStrings.solarTitle,
        AppStrings.solarDescription,
        AppStrings.researchTitle,
        AppStrings.researchSolarDescription,
      ],
    ),
    TabItemData(
      title: 'Wind',
      image: Assets.imagesWind,
      description: [
        AppStrings.windTitle,
        AppStrings.windDescription,
        AppStrings.researchTitle,
        AppStrings.researchWindDescription,
      ],
    ),
    TabItemData(
      title: 'Hydrogen',
      image: Assets.imagesHydrogen,
      description: [
        AppStrings.hydrogenTitle,
        AppStrings.hydrogenDescription,
        AppStrings.researchTitle,
        AppStrings.researchHydrogenDescription,
      ],
    ),
  ];


