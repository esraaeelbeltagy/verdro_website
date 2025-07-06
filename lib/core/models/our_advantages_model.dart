import 'package:verdro_web/core/utils/app_images.dart';

class OurAdvantagesModel {
  final String title;
  final String restTitle;
  final String description;
  final String imageUrl;

  OurAdvantagesModel({
    required this.title,
    required this.restTitle , 
    required this.description,
    required this.imageUrl,
  });



}


List<OurAdvantagesModel> ourAdvantagesList = [
  OurAdvantagesModel(
    title: '20 Years ',
    restTitle: 'Warranty',
    description:
        'With the increasing use of renewable energy systems such as solar panels, wind turbines, and batteries, recycling their components at the end of their life is becoming increasingly important.',
    imageUrl: Assets.imagesYearsWarrnery,
  ),
  OurAdvantagesModel(
    title: 'Long Time ',
    restTitle: 'Battery',
    description:
        'They are widely used to store electrical energy produced from renewable sources, both on a small scale (for homes) and large scale (at the grid). Battery technology is constantly evolving.',
    imageUrl: Assets.imagesBattery,
  ),
  OurAdvantagesModel(
    title: 'ECO ',
    restTitle: "Friendly",
    description:
        'Renewable energy sources such as solar, wind, and water do not produce direct greenhouse gas emissions during electricity generation, contributing to the fight against climate change.',
    imageUrl: Assets.imagesEcoFriendly,
  ),
  OurAdvantagesModel(
    title: 'Fast ',
    restTitle: "Charging",
    description:
        'Developing chargers capable of providing large amounts of energy in a very short time. These chargers require a robust infrastructure capable of handling high electrical loads.',
    imageUrl: Assets.imagesFastCharching,
  ),
];