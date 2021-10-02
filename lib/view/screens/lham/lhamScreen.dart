import 'package:flutter/material.dart';

class LhamScreen extends StatelessWidget {
  const LhamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/img/Profile.png")),
              title: Text("")),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/img/Wallet.png")),
              title: Text("")),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/img/Home.png")),
              title: Text("")),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/img/Swap.png")),
              title: Text("")),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/img/Time-Circle.png")),
              title: Text("")),
        ],
      ),
      appBar: AppBar(
        title: Text("Lham"),
      ),
    );
  }
}
