import 'package:blubank/constant/colors.dart';
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
