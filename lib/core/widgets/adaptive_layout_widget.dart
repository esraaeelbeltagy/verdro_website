import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
   
    required this.mobileLayout,
    required this.tabletLayout,
     required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      //* Call back function ffor performance >> Lazy Building >> call function when needed only when returned 
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        } else if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context) ;
        } else {
          return desktopLayout(context) ;
        }
      },
    );
  }
}


