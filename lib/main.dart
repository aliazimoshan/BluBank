import 'package:blubank/view/screens/mainScreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
        fontFamily: "Vazir",
        primaryColor: BluColor.primaryColor,
      ),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("fa", "IR"),
      ],
      locale: Locale("fa", "IR"),
      home: MainScreen(),
    );
  }
}
