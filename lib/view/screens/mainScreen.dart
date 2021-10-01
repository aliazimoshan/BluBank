import 'package:blubank/view/screens/asal/asalScreen.dart';
import 'package:blubank/view/screens/lham/lhamScreen.dart';
import 'package:blubank/view/screens/roya/royaScreen.dart';
import 'package:blubank/view/widgets/cardTest_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BluBank")),
      body: Column(
        children: [
          CardTestWidget(
            title: "Roya Screen",
            route: RoyaScreen(),
            textColor: Colors.purple,
            backgroundColor: Colors.purple[50],
            shadowColor: Colors.purple[100],
          ),
          CardTestWidget(
            title: "Asal Screen",
            route: AsalScreen(),
          ),
          CardTestWidget(
            title: "Lham Screen",
            route: LhamScreen(),
            textColor: Colors.yellow[800],
            backgroundColor: Colors.yellow[100],
            shadowColor: Colors.yellow[200],
          ),
          CardTestWidget(
            title: "Ali Screen",
          ),
        ],
      ),
    );
  }
}
