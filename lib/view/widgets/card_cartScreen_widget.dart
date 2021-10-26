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
              shape: BoxShape.circle,
              color: circlecolor ?? BluColor.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                whiteicon,
                color: Colors.white,
                size: 22,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      title,
                      maxLines: 1,
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 13, color: BluColor.textgray),
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
