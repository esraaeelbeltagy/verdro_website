List<String> servicesList = [
  " Feasibility Studies",
  "Technical Consulting",
  "Encouraging Innovation",
  "Awareness Campaigns",
  "Training Programs",
  "Project Management",
];

List<String> usefullLinks = [
  "NREA",
  "PV-Hub  ",
  "RCREEE ",
  "EETC",
  "Masdar Egypt ",
  "Egypt Energy",
];



class ContactItemModel {
  final String iconPath;
  final String text;

  ContactItemModel({  required this.iconPath, required this.text});
}


List<ContactItemModel> contactItems = [
  ContactItemModel(iconPath: "assets/images/phone_icon.png", text: "123456-78-90 "),
  ContactItemModel(iconPath: "assets/images/email_icon.png", text: "123456-78-90 "),
 
];
