import 'package:blubank/view/screens/mainScreen.dart';
import 'package:flutter/material.dart';
import 'constant/colors.dart';

void main() {
  runApp(BluBank());
}

class BluBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BluBank',
      theme: ThemeData(
        primaryColor: BluColor.primaryColor,
      ),
      home: MainScreen(),
    );
  }
}
