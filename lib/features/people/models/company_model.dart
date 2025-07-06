import 'package:verdro_web/core/utils/app_strings.dart';

class CompanyModel {
  final String title;
  final String description;

  const CompanyModel({required this.title, required this.description});
}

final List<CompanyModel> rightCompanies = const [
  CompanyModel(title: 'EQUINOR', description: AppStrings.equinor),
  CompanyModel(title: 'TESLA (US)', description: AppStrings.teslaDescription),
];

final List<CompanyModel> leftCompanies = const [
  CompanyModel(title: 'SWEDE ELECTRIC', description: AppStrings.swedeElectric),
  CompanyModel(title: 'RØSTED', description: AppStrings.rosted),
];
