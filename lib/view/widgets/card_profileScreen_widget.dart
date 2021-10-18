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
      height: 48,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              color: BluColor.primaryColor,
            ),
            height: 48,
            width: 48,
            child: Center(
              child: Icon(
                whiteicon,
                color: Colors.white,
                size: 24,
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            child: Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ),
          Spacer(),
          Container(
            child: Center(
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}