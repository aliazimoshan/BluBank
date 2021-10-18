import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';

class Cartprofilescreenwidget extends StatelessWidget {
  final IconData whiteicon;
  final String title;

  const Cartprofilescreenwidget({
    required this.whiteicon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: BluDimensions.width(context),
      height: 50,
      child: Row(
        children: [
          Container(
            width: 50,
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.grey,
              ),
            ),
          ),
          Spacer(),
          Container(
            child: Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(width: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: BluColor.primaryColor,
            ),
            width: 50,
            child: Center(
              child: Icon(
                whiteicon,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}