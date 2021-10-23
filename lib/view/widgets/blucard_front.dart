import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/screens/profileScreen.dart';
import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:blubank/view/widgets/card_cartScreen_widget.dart';
import 'package:blubank/view/widgets/cartscreen_modal_widget.dart';
import 'package:blubank/view/widgets/contactModal_widget.dart';
import 'package:blubank/view/widgets/rectangleCard_homeScreen_widget.dart';
import 'package:flutter/material.dart';

class BlucardFront extends StatelessWidget {
  const BlucardFront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: BluColor.primaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      width: 250,
      child: Column(
        children: [
          Spacer(),
          Container(
            width: 75,
            height: 75,
            child: Image.asset(
              "assets/img/blu.png",
            ),
          ),
          SizedBox(height: 20),
          Text(
            'bank, but lovely',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Spacer(),
          Icon(
            Icons.flip_rounded,
            size: 24,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
