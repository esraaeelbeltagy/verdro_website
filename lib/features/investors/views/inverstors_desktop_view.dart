import 'package:flutter/material.dart';

class InverstorsDesktopView extends StatelessWidget {
  const InverstorsDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(color: Colors.green, height: 500),
          Container(color: Colors.red, height: 500),
          Container(color: Colors.blue, height: 500),
          Container(color: Colors.yellow, height: 500),
          Container(color: Colors.purple, height: 500),
        ],
      ),
    );
  }
}
