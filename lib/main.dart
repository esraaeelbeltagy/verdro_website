import 'package:flutter/material.dart';
import 'package:verdro_web/features/cover/layout/cover_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verdro Website',
      debugShowCheckedModeBanner: false,
      home: CoverLayout(),
    );
  }
}
