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
              shape: BoxShape.circle,
              color: BluColor.primaryColor,
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
          Container(
            child: Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
