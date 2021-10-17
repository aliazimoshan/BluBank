import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';

class Cardcartscreenwidget extends StatelessWidget {
  final IconData whiteicon;
  final String title;
  final String text;
  final Color? circlecolor;

  const Cardcartscreenwidget({
    required this.whiteicon,
    required this.title,
    required this.text,
    this.circlecolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: BluDimensions.width(context),
      height: 50,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: circlecolor ?? BluColor.primaryColor,
            ),
            width: 50,
            child: Center(
              child: Icon(
                whiteicon,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
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
