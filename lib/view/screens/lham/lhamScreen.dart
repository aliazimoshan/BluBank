import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/screens/lham/profileScreen.dart';
import 'package:blubank/view/widgets/card_cartScreen_widget.dart';
import 'package:blubank/view/widgets/contactModal_widget.dart';
import 'package:blubank/view/widgets/rectangleCard_homeScreen_widget.dart';
import 'package:flutter/material.dart';

class LhamScreen extends StatelessWidget {
  const LhamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lham"),
      ),
      body: Container(
        width: BluDimensions.width(context),
        height: BluDimensions.height(context),
        color: Colors.black,
        child: Center(
            child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            width: 150,
            height: 75,
            child: Center(
              child: Text("Profile Screen"),
            ),
          ),
        )),
      ),
    );
  }
}
