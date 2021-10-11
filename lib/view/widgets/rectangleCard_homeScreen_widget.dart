import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';

class Rectanglecardhomescreenwidget extends StatelessWidget {
  final Color? cardcolor;
  final IconData cardicon;
  final String title;

  const Rectanglecardhomescreenwidget({
    required this.cardcolor,
    required this.cardicon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: cardcolor,
          ),
          child: Icon(
            cardicon,
            color: Colors.white,
            size: 30,
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
