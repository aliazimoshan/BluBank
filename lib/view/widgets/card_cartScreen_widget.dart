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
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: circlecolor ?? BluColor.primaryColor,
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
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      title,
                      maxLines: 1,
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
