import 'package:flutter/material.dart';
import 'package:verdro_web/features/cover/layout/cover_layout.dart';
import 'package:visibility_detector/visibility_detector.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  VisibilityDetectorController.instance.updateInterval = Duration(milliseconds: 100);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verdro Website',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  CoverLayout(), 

           
      ),
    );
  }
}
